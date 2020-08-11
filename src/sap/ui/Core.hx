package sap.ui;

@:native("sap.ui.core")
extern class Core
{



	/**
	* Applies the support for custom style classes on the prototype of a <code>sap.ui.core.Element</code>.

All controls (subclasses of <code>sap.ui.core.Control</code>) provide the support custom style classes. The control API provides functions to the application which allow it to add, remove or change style classes for the control. In general, this option is not available for elements because elements do not necessarily have a representation in the DOM.

This function can be used by a control developer to explicitly enrich the API of his/her element implementation with the API functions for the custom style class support. It must be called on the prototype of the element.

<b>Usage Example:</b> <pre>
sap.ui.define(['sap/ui/core/Element', 'sap/ui/core/CustomStyleClassSupport'], function(Element, CustomStyleClassSupport) {
   "use strict";
   var MyElement = Element.extend("my.MyElement", {
      metadata : {
         //...
      }
      //...
   });

   CustomStyleClassSupport.apply(MyElement.prototype);

   return MyElement;
}, true);
</pre>

Furthermore, the function <code>oRenderManager.writeClasses(oElement);</code> ({@link sap.ui.core.RenderManager#writeClasses}) must be called within the renderer of the control to which the element belongs, when writing the root tag of the element. This ensures the classes are written to the HTML.

This function adds the following functions to the elements prototype: <ul> <li><code>addStyleClass</code>: {@link sap.ui.core.Control#addStyleClass}</li> <li><code>removeStyleClass</code>: {@link sap.ui.core.Control#removeStyleClass}</li> <li><code>toggleStyleClass</code>: {@link sap.ui.core.Control#toggleStyleClass}</li> <li><code>hasStyleClass</code>: {@link sap.ui.core.Control#hasStyleClass}</li> </ul> In addition the clone function of the element is extended to ensure that the custom style classes are also available on the cloned element.

<b>Note:</b> This function can only be used <i>within</i> control development. An application cannot add style class support on existing elements by calling this function.
	* @return	Void
	*/
	public static function CustomStyleClassSupport( ):Void;
}

