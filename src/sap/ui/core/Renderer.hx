package sap.ui.core;

@:native("sap.ui.core.Renderer")
extern class Renderer
{
	@:overload( function(vName:String, ?oRendererInfo:Dynamic):Dynamic{ })

	/**
	* Creates a new renderer that extends a given renderer.

This method can be used with two signatures that are explained below. In both variants, the returned renderer inherits all properties (methods, fields) from the given parent renderer. Both variants also add an 'extend' method to the created renderer that behaves like the modern signature variant of this <code>Renderer.extend</code> method, but allows to extend the new renderer instead of <code>sap.ui.core.Renderer</code>.

<h3>Modern Signature</h3>

In the modern signature variant, two parameters must be given: a qualified name for the new renderer (its global name, in dot-notation), and an optional object literal that contains methods or fields to be added to the new renderer class.

This signature has been designed to resemble the class extension mechanism as provided by {@link sap.ui.base.Object.extend Object.extend}.

<pre>
sap.ui.define(['sap/ui/core/Renderer'],
    function(Renderer) {
    "use strict";

    var LabelRenderer = Renderer.extend('sap.m.LabelRenderer', {
        render: function(oRM, oControl) {

            renderPreamble(oRM, oControl);

            // implementation core renderer logic here

            renderPostamble(oRM, oControl);

        },

        renderPreamble : function(oRM, oControl) {
        ...
        },

        renderPostamble : function(oRM, oControl) {
        ...
        }

    });

    return LabelRenderer;
});
</pre>

The extension of renderers works across multiple levels. A <code>FancyLabelRenderer</code> can extend the above <code>LabelRenderer</code>:

<pre>
sap.ui.define(['sap/m/LabelRenderer'],
    function(LabelRenderer) {
    "use strict";

    var FancyLabelRenderer = LabelRenderer.extend('sap.mylib.FancyLabelRenderer', {
        render: function(oRM, oControl) {

            // call base renderer
            LabelRenderer.renderPreamble(oRM, oControl);

            // ... do your own fancy rendering here

            // call base renderer again
            LabelRenderer.renderPostamble(oRM, oControl);
        }
    });

    return FancyLabelRenderer;
});
</pre>

<b>Note:</b> The modern signature no longer requires the <code>bExport</code> flag to be set for the enclosing {@link sap.ui.define} call. The Renderer base class takes care of the necessary global export of the renderer. This allows non-SAP developers to write a renderer that complies with the documented restriction for <code>sap.ui.define</code> (no use of bExport = true outside sap.ui.core projects).

<h3>Deprecated Signature</h3>

The deprecated old signature expects just one parameter: a renderer that should be extended. With that signature, the renderer can't be exported globally as the name of the renderer class is not known.

For compatibility reasons, the class created by the deprecated signature contains a property <code>_super</code> that references the parent class. It shouldn't be used by applications / control developers as it doesn't work reliably for deeper inheritance chains: if the old variant of <code>Renderer.extend</code> is used on two or more levels of the inheritance hierarchy, the <code>_super</code> property of the resulting renderer class will always point to the implementation of the base renderer of the last call to extend. Instead of using <code>this._super</code>, renderer implementations should use the new signature variant and access the base implementation of a method via the AMD reference to the base renderer (as shown in the FancyLabelRenderer example above).

<h3>Use as a Generic Method</h3>

Only renderers that have been created with a call to <code>extend</code> will get their own <code>extend</code> method to create new subclasses. To allow extending from older renderers that have been written from scratch as a plain object, the <code>Renderer.extend</code> method can be called as a <i>generic method</i>, providing the base renderer as <code>this</code>.

Example: Derive from <code>HBoxRenderer</code> (which is assumed to be a plain object) <pre>
sap.ui.define(['sap/ui/core/Renderer', 'sap/m/HBoxRenderer'],
    function(Renderer, HBoxRenderer) {
    "use strict";

    // Call 'extend' as a generic method, providing the HBoxRenderer as 'this'
    var MyRenderer = Renderer.extend.call(HBoxRenderer, 'sap.m.LabelRenderer', {

        someOverriddenHook: function(oRM, oControl) {
        ...
        },

    });

    return LabelRenderer;
});
</pre>

<b>Note:</b> The deprecated signature cannot be used generically, it is only supported when called on <code>sap.ui.core.Renderer</code>.
	* @param	vName Either the name of the new renderer class (modern signature) or the base renderer to extend (deprecated signature)
	* @param	oRendererInfo Methods and/or properties that should be added to the new renderer class
	* @return	A new renderer that can be enriched further
	*/
	public static function extend( vName:Dynamic, ?oRendererInfo:Dynamic):Dynamic;
}

