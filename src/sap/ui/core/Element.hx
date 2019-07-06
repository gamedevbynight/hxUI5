package sap.ui.core;

@:native("sap.ui.core.Element")

/**
* Base Class for Elements.
*/
extern class Element extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:ElementArgs):Void {})
	public function new(?mSettings:ElementArgs):Void;

	/**
	* Adds some customData to the aggregation {@link #getCustomData customData}.
	* @param	oCustomData The customData to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCustomData( oCustomData:sap.ui.core.CustomData):sap.ui.core.Element;

	/**
	* Adds some dependent to the aggregation {@link #getDependents dependents}.
	* @param	oDependent The dependent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addDependent( oDependent:sap.ui.core.Element):sap.ui.core.Element;

	/**
	* Adds some dragDropConfig to the aggregation {@link #getDragDropConfig dragDropConfig}.
	* @param	oDragDropConfig The dragDropConfig to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addDragDropConfig( oDragDropConfig:sap.ui.core.dnd.DragDropBase):sap.ui.core.Element;

	/**
	* Adds a delegate that listens to the events that are fired on this element (as opposed to events which are fired BY this element).

When this element is cloned, the same delegate will be added to all clones. This behavior is well-suited for applications which want to add delegates that also work with templates in aggregation bindings. For control development the internal "addDelegate" method which does not clone delegates by default may be more suitable, as typically each control instance takes care of its own delegates.

To avoid double registrations, all registrations of the given delegate are first removed and then the delegate is added.

<strong>Important:</strong> If event delegates were added the delegate will still be called even if the event was processed and/or cancelled via <code>preventDefault</code> by the Element or another event delegate. <code>preventDefault</code> only prevents the event from bubbling. It should be checked e.g. in the event delegate's listener whether an Element is still enabled via <code>getEnabled</code>. Additionally there might be other things that delegates need to check depending on the event (e.g. not adding a key twice to an output string etc.).
	* @param	oDelegate the delegate object
	* @param	oThis if given, this object will be the "this" context in the listener methods; default is the delegate object itself
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function addEventDelegate( oDelegate:Dynamic, ?oThis:Dynamic):sap.ui.core.Element;
	@:overload( function(vPath:String, ?mParameters:Dynamic):sap.ui.core.Element{ })

	/**
	* Bind the object to the referenced entity in the model, which is used as the binding context to resolve bound properties or aggregations of the object itself and all of its children relatively to the given path. If a relative binding path is used, this will be applied whenever the parent context changes. There is no difference between {@link sap.ui.core.Element#bindElement} and {@link sap.ui.base.ManagedObject#bindObject}.
	* @param	vPath the binding path or an object with more detailed binding options
	* @param	mParameters map of additional parameters for this binding (only taken into account when vPath is a string in that case it corresponds to vPath.parameters). The supported parameters are listed in the corresponding model-specific implementation of <code>sap.ui.model.ContextBinding</code>.
	* @return	reference to the instance itself
	*/
	public function bindElement( vPath:Dynamic, ?mParameters:Dynamic):sap.ui.core.Element;
	@:overload( function(?vKeyOrData:String, ?vValue:String, ?bWriteToDom:Bool):Dynamic{ })
	@:overload( function(?vKeyOrData:String, ?vValue:Dynamic, ?bWriteToDom:Bool):Dynamic{ })
	@:overload( function(?vKeyOrData:Map<String,Dynamic>, ?vValue:String, ?bWriteToDom:Bool):Dynamic{ })
	@:overload( function(?vKeyOrData:Map<String,Dynamic>, ?vValue:Dynamic, ?bWriteToDom:Bool):Dynamic{ })
	@:overload( function(?vKeyOrData:Dynamic, ?vValue:String, ?bWriteToDom:Bool):Dynamic{ })

	/**
	* Retrieves, modifies or removes custom data attached to an <code>Element</code>.

Usage: <pre>
   data("myKey", myData)
</pre> Attaches <code>myData</code> (which can be any JS data type, e.g. a number, a string, an object, or a function) to this element, under the given key "myKey". If the key already exists,the value will be updated.

<pre>
   data("myKey", myData, writeToDom)
</pre> Attaches <code>myData</code> to this element, under the given key "myKey" and (if <code>writeToDom</code> is true) writes key and value to the HTML. If the key already exists,the value will be updated. While <code>oValue</code> can be any JS data type to be attached, it must be a string to be also written to DOM. The key must also be a valid HTML attribute name (it must conform to <code>sap.ui.core.ID</code> and may contain no colon) and may not start with "sap-ui". When written to HTML, the key is prefixed with "data-".

<pre>
   data("myKey")
</pre> Retrieves whatever data has been attached to this element (using the key "myKey") before

<pre>
   data("myKey", null)
</pre> Removes whatever data has been attached to this element (using the key "myKey") before

<pre>
   data(null)
</pre> Removes all data

<pre>
   data()
</pre> Returns all data, as a map

<pre>
   data({"myKey1": myData, "myKey2": null})
</pre> Attaches <code>myData</code> (using the key "myKey1" and removes any data that had been attached for key "myKey2"
	* @param	vKeyOrData Single key to set or remove, or an object with key/value pairs or <code>null</code> to remove all custom data
	* @param	vValue Value to set or <code>null</code> to remove the corresponding custom data
	* @param	bWriteToDom Whether this custom data entry should be written to the DOM during rendering
	* @return	A map with all custom data, a custom data value for a single specified key or <code>null</code> when no custom data exists for such a key or this element when custom data was to be removed.
	*/
	public function data( ?vKeyOrData:Dynamic, ?vValue:Dynamic, ?bWriteToDom:Bool):Dynamic;

	/**
	* Cleans up the resources associated with this element and all its children.

After an element has been destroyed, it can no longer be used in the UI!

Applications should call this method if they don't need the element any longer.
	* @param	bSuppressInvalidate if true, the UI element is removed from DOM synchronously and parent will not be invalidated.
	* @return	Void
	*/
	public function destroy( ?bSuppressInvalidate:Bool):Void;

	/**
	* Destroys all the customData in the aggregation {@link #getCustomData customData}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomData( ):sap.ui.core.Element;

	/**
	* Destroys all the dependents in the aggregation {@link #getDependents dependents}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDependents( ):sap.ui.core.Element;

	/**
	* Destroys all the dragDropConfig in the aggregation {@link #getDragDropConfig dragDropConfig}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDragDropConfig( ):sap.ui.core.Element;

	/**
	* Destroys the layoutData in the aggregation {@link #getLayoutData layoutData}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutData( ):sap.ui.core.Element;

	/**
	* Destroys the tooltip in the aggregation named <code>tooltip</code>.
	* @return	<code>this</code> to allow method chaining
	*/
	public function destroyTooltip( ):sap.ui.core.Element;

	/**
	* Defines a new subclass of Element with the name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> can contain the same information that {@link sap.ui.base.ManagedObject.extend} already accepts, plus the following <code>dnd</code> property to configure drag-and-drop behavior in the metadata object literal:

Example: <pre>
Element.extend('sap.mylib.MyElement', {
  metadata : {
    library : 'sap.mylib',
    properties : {
      value : 'string',
      width : 'sap.ui.core.CSSSize'
    },
    dnd : { draggable: true, droppable: false },
    aggregations : {
      items : { type: 'sap.ui.core.Control', multiple : true, dnd : {draggable: false, dropppable: true, layout: "Horizontal" } },
      header : {type : "sap.ui.core.Control", multiple : false, dnd : true },
    }
  }
});
</pre>

<h3><code>dnd</code> key as a metadata property</h3>

<b>dnd</b>: <i>object|boolean</i><br> Defines draggable and droppable configuration of the element. The following keys can be provided via <code>dnd</code> object literal to configure drag-and-drop behavior of the element: <ul> <li><code>[draggable=false]: <i>boolean</i></code> Defines whether the element is draggable or not. The default value is <code>false</code>.</li> <li><code>[droppable=false]: <i>boolean</i></code> Defines whether the element is droppable (it allows being dropped on by a draggable element) or not. The default value is <code>false</code>.</li> </ul> If <code>dnd</code> property is of type Boolean, then the <code>draggable</code> and <code>droppable</code> configuration are set to this Boolean value.

<h3><code>dnd</code> key as an aggregation metadata property</h3>

<b>dnd</b>: <i>object|boolean</i><br> In addition to draggable and droppable configuration, the layout of the aggregation can be defined as a hint at the drop position indicator. <ul> <li><code>[layout="Vertical"]: </code> The arrangement of the items in this aggregation. This setting is recommended for the aggregation with multiplicity 0..n (<code>multiple: true</code>). Possible values are <code>Vertical</code> (e.g. rows in a table) and <code>Horizontal</code> (e.g. columns in a table). It is recommended to use <code>Horizontal</code> layout if the arrangement is multidimensional.</li> </ul>
	* @param	sClassName fully qualified name of the class that is described by this metadata object
	* @param	oStaticInfo static info to construct the metadata from
	* @return	Void
	*/
	public static function extend( sClassName:String, oStaticInfo:Dynamic):Void;

	/**
	* Searches and returns an array of child elements and controls which are referenced within an aggregation or aggregations of child elements/controls. This can be either done recursive or not.

<b>Take care: this operation might be expensive.</b>
	* @param	bRecursive true, if all nested children should be returned.
	* @return	array of child elements and controls
	*/
	public function findElements( bRecursive:Bool):Array<sap.ui.core.Element>;

	/**
	* Sets the focus to the stored focus DOM reference
	* @param	oFocusInfo null
	* @return	Void
	*/
	public function focus( oFocusInfo:Dynamic):Void;

	/**
	* Gets content of aggregation {@link #getCustomData customData}.

Custom Data, a data structure like a map containing arbitrary key value pairs.
	* @return	null
	*/
	public function getCustomData( ):Array<sap.ui.core.CustomData>;

	/**
	* Gets content of aggregation {@link #getDependents dependents}.

Dependents are not rendered, but their databinding context and lifecycle are bound to the aggregating Element.
	* @return	null
	*/
	public function getDependents( ):Array<sap.ui.core.Element>;

	/**
	* Gets content of aggregation {@link #getDragDropConfig dragDropConfig}.

Defines the drag-and-drop configuration. <b>Note:</b> This configuration might be ignored due to control {@link sap.ui.core.Element.extend metadata} restrictions.
	* @return	null
	*/
	public function getDragDropConfig( ):Array<sap.ui.core.dnd.DragDropBase>;

	/**
	* Get the context binding object for a specific model name.

<b>Note:</b> to be compatible with future versions of this API, you must not use the following model names: <ul> <li><code>null</code></li> <li>empty string <code>""</code></li> <li>string literals <code>"null"</code> or <code>"undefined"</code></li> </ul> Omitting the model name (or using the value <code>undefined</code>) is explicitly allowed and refers to the default model.
	* @param	sModelName Name of the model or <code>undefined</code>
	* @return	Context binding for the given model name or <code>undefined</code>
	*/
	public function getElementBinding( ?sModelName:String):sap.ui.model.ContextBinding;

	/**
	* null
	* @return	Void
	*/
	public function getInterface( ):Void;

	/**
	* Gets content of aggregation {@link #getLayoutData layoutData}.

Defines the layout constraints for this control when it is used inside a Layout. LayoutData classes are typed classes and must match the embedding Layout. See VariantLayoutData for aggregating multiple alternative LayoutData instances to a single Element.
	* @return	null
	*/
	public function getLayoutData( ):sap.ui.core.LayoutData;
@:overload( function():Dynamic{ })

	/**
	* Returns a metadata object for class sap.ui.core.Element.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the tooltip for this element if any or an undefined value. The tooltip can either be a simple string or a subclass of {@link sap.ui.core.TooltipBase}.

Callers that are only interested in tooltips of type string (e.g. to render them as a <code>title</code> attribute), should call the convenience method {@link #getTooltip_AsString} instead. If they want to get a tooltip text no matter where it comes from (be it a string tooltip or the text from a TooltipBase instance) then they could call {@link #getTooltip_Text} instead.
	* @return	The tooltip for this Element.
	*/
	public function getTooltip( ):Dynamic;

	/**
	* Returns the tooltip for this element but only if it is a simple string. Otherwise an undefined value is returned.
	* @return	string tooltip or undefined
	*/
	public function getTooltip_AsString( ):String;

	/**
	* Returns the main text for the current tooltip or undefined if there is no such text. If the tooltip is an object derived from sap.ui.core.Tooltip, then the text property of that object is returned. Otherwise the object itself is returned (either a string or undefined or null).
	* @return	text of the current tooltip or undefined
	*/
	public function getTooltip_Text( ):String;

	/**
	* Checks for the provided <code>sap.ui.core.CustomData</code> in the aggregation {@link #getCustomData customData}. and returns its index if found or -1 otherwise.
	* @param	oCustomData The customData whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCustomData( oCustomData:sap.ui.core.CustomData):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Element</code> in the aggregation {@link #getDependents dependents}. and returns its index if found or -1 otherwise.
	* @param	oDependent The dependent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfDependent( oDependent:sap.ui.core.Element):Int;

	/**
	* Checks for the provided <code>sap.ui.core.dnd.DragDropBase</code> in the aggregation {@link #getDragDropConfig dragDropConfig}. and returns its index if found or -1 otherwise.
	* @param	oDragDropConfig The dragDropConfig whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfDragDropConfig( oDragDropConfig:sap.ui.core.dnd.DragDropBase):Int;

	/**
	* Inserts a customData into the aggregation {@link #getCustomData customData}.
	* @param	oCustomData The customData to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the customData should be inserted at; for a negative value of <code>iIndex</code>, the customData is inserted at position 0; for a value greater than the current size of the aggregation, the customData is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCustomData( oCustomData:sap.ui.core.CustomData, iIndex:Int):sap.ui.core.Element;

	/**
	* Inserts a dependent into the aggregation {@link #getDependents dependents}.
	* @param	oDependent The dependent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the dependent should be inserted at; for a negative value of <code>iIndex</code>, the dependent is inserted at position 0; for a value greater than the current size of the aggregation, the dependent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertDependent( oDependent:sap.ui.core.Element, iIndex:Int):sap.ui.core.Element;

	/**
	* Inserts a dragDropConfig into the aggregation {@link #getDragDropConfig dragDropConfig}.
	* @param	oDragDropConfig The dragDropConfig to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the dragDropConfig should be inserted at; for a negative value of <code>iIndex</code>, the dragDropConfig is inserted at position 0; for a value greater than the current size of the aggregation, the dragDropConfig is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertDragDropConfig( oDragDropConfig:sap.ui.core.dnd.DragDropBase, iIndex:Int):sap.ui.core.Element;

	/**
	* Removes all the controls from the aggregation {@link #getCustomData customData}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCustomData( ):Array<sap.ui.core.CustomData>;

	/**
	* Removes all the controls from the aggregation {@link #getDependents dependents}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllDependents( ):Array<sap.ui.core.Element>;

	/**
	* Removes all the controls from the aggregation {@link #getDragDropConfig dragDropConfig}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllDragDropConfig( ):Array<sap.ui.core.dnd.DragDropBase>;
	@:overload( function(vCustomData:Int):sap.ui.core.CustomData{ })
	@:overload( function(vCustomData:String):sap.ui.core.CustomData{ })

	/**
	* Removes a customData from the aggregation {@link #getCustomData customData}.
	* @param	vCustomData The customData to remove or its index or id
	* @return	The removed customData or <code>null</code>
	*/
	public function removeCustomData( vCustomData:sap.ui.core.CustomData):sap.ui.core.CustomData;
	@:overload( function(vDependent:Int):sap.ui.core.Element{ })
	@:overload( function(vDependent:String):sap.ui.core.Element{ })

	/**
	* Removes a dependent from the aggregation {@link #getDependents dependents}.
	* @param	vDependent The dependent to remove or its index or id
	* @return	The removed dependent or <code>null</code>
	*/
	public function removeDependent( vDependent:sap.ui.core.Element):sap.ui.core.Element;
	@:overload( function(vDragDropConfig:Int):sap.ui.core.dnd.DragDropBase{ })
	@:overload( function(vDragDropConfig:String):sap.ui.core.dnd.DragDropBase{ })

	/**
	* Removes a dragDropConfig from the aggregation {@link #getDragDropConfig dragDropConfig}.
	* @param	vDragDropConfig The dragDropConfig to remove or its index or id
	* @return	The removed dragDropConfig or <code>null</code>
	*/
	public function removeDragDropConfig( vDragDropConfig:sap.ui.core.dnd.DragDropBase):sap.ui.core.dnd.DragDropBase;

	/**
	* Removes the given delegate from this element.

This method will remove all registrations of the given delegate, not only one.
	* @param	oDelegate the delegate object
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function removeEventDelegate( oDelegate:Dynamic):sap.ui.core.Element;

	/**
	* Sets the {@link sap.ui.core.LayoutData} defining the layout constraints for this control when it is used inside a layout.
	* @param	oLayoutData which should be set
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setLayoutData( oLayoutData:sap.ui.core.LayoutData):sap.ui.core.Element;
	@:overload( function(vTooltip:String):Void{ })

	/**
	* Sets a new tooltip for this object. The tooltip can either be a simple string (which in most cases will be rendered as the <code>title</code> attribute of this Element) or an instance of {@link sap.ui.core.TooltipBase}.

If a new tooltip is set, any previously set tooltip is deactivated.
	* @param	vTooltip null
	* @return	Void
	*/
	public function setTooltip( vTooltip:sap.ui.core.TooltipBase):Void;

	/**
	* Returns a simple string representation of this element.

Mainly useful for tracing purposes.
	* @return	a string description of this element
	*/
	public function toString( ):String;

	/**
	* Removes the defined binding context of this object, all bindings will now resolve relative to the parent context again.
	* @param	sModelName null
	* @return	reference to the instance itself
	*/
	public function unbindElement( sModelName:String):sap.ui.base.ManagedObject;
}

typedef ElementArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

    /**
    * The tooltip that should be shown for this Element.

Can either be an instance of a TooltipBase subclass or a simple string.
    */
	@:optional var tooltip:haxe.extern.EitherType<String,sap.ui.core.TooltipBase>;

    /**
    * Custom Data, a data structure like a map containing arbitrary key value pairs.
    */
	@:optional var customData:Array<haxe.extern.EitherType<String,sap.ui.core.CustomData>>;

    /**
    * Defines the layout constraints for this control when it is used inside a Layout. LayoutData classes are typed classes and must match the embedding Layout. See VariantLayoutData for aggregating multiple alternative LayoutData instances to a single Element.
    */
	@:optional var layoutData:haxe.extern.EitherType<String,sap.ui.core.LayoutData>;

    /**
    * Dependents are not rendered, but their databinding context and lifecycle are bound to the aggregating Element.
    */
	@:optional var dependents:Array<haxe.extern.EitherType<String,sap.ui.core.Element>>;

    /**
    * Defines the drag-and-drop configuration. <b>Note:</b> This configuration might be ignored due to control {@link sap.ui.core.Element.extend metadata} restrictions.
    */
	@:optional var dragDropConfig:Array<haxe.extern.EitherType<String,sap.ui.core.dnd.DragDropBase>>;
}
