package sap.ui.core.tmpl;

@:native("sap.ui.core.tmpl.DOMElement")

/**
* Represents a DOM element. It allows to use databinding for the properties and nested DOM attributes.
*/
extern class DOMElement extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:DOMElementArgs):Void {})
	public function new(?mSettings:DOMElementArgs):Void;

	/**
	* Adds some attribute to the aggregation {@link #getAttributes attributes}.
	* @param	oAttribute The attribute to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAttribute( oAttribute:sap.ui.core.tmpl.DOMAttribute):sap.ui.core.tmpl.DOMElement;

	/**
	* Adds some element to the aggregation {@link #getElements elements}.
	* @param	oElement The element to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addElement( oElement:sap.ui.core.tmpl.DOMElement):sap.ui.core.tmpl.DOMElement;

	/**
	* Returns the value of a DOM attribute if available or undefined if the DOM attribute is not available when using this method with the parameter name only. When using the method with the parameter name and value the method acts as a setter and sets the value of a DOM attribute. In this case the return value is the reference to this DOM element to support method chaining. If you pass null as value of the attribute the attribute will be removed.
	* @param	sName The name of the DOM attribute.
	* @param	sValue The value of the DOM attribute. If the value is undefined the DOM attribute will be removed.
	* @return	value of attribute or <code>this</code> when called as a setter
	*/
	public function attr( sName:String, sValue:String):Dynamic;

	/**
	* Destroys all the attributes in the aggregation {@link #getAttributes attributes}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAttributes( ):sap.ui.core.tmpl.DOMElement;

	/**
	* Destroys all the elements in the aggregation {@link #getElements elements}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyElements( ):sap.ui.core.tmpl.DOMElement;

	/**
	* Creates a new subclass of class sap.ui.core.tmpl.DOMElement with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getAttributes attributes}.

DOM attributes which are rendered as part of the DOM element and bindable
	* @return	null
	*/
	public function getAttributes( ):Array<sap.ui.core.tmpl.DOMAttribute>;

	/**
	* Gets content of aggregation {@link #getElements elements}.

Nested DOM elements to support nested bindable structures
	* @return	null
	*/
	public function getElements( ):Array<sap.ui.core.tmpl.DOMElement>;

	/**
	* Returns a metadata object for class sap.ui.core.tmpl.DOMElement.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTag tag}.

The HTML-tag of the DOM element which contains the text

Default value is <code>'span'</code>.
	* @return	Value of property <code>tag</code>
	*/
	public function getTag( ):String;

	/**
	* Gets current value of property {@link #getText text}.

The text content of the DOM element
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Checks for the provided <code>sap.ui.core.tmpl.DOMAttribute</code> in the aggregation {@link #getAttributes attributes}. and returns its index if found or -1 otherwise.
	* @param	oAttribute The attribute whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAttribute( oAttribute:sap.ui.core.tmpl.DOMAttribute):Int;

	/**
	* Checks for the provided <code>sap.ui.core.tmpl.DOMElement</code> in the aggregation {@link #getElements elements}. and returns its index if found or -1 otherwise.
	* @param	oElement The element whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfElement( oElement:sap.ui.core.tmpl.DOMElement):Int;

	/**
	* Inserts a attribute into the aggregation {@link #getAttributes attributes}.
	* @param	oAttribute The attribute to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the attribute should be inserted at; for a negative value of <code>iIndex</code>, the attribute is inserted at position 0; for a value greater than the current size of the aggregation, the attribute is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAttribute( oAttribute:sap.ui.core.tmpl.DOMAttribute, iIndex:Int):sap.ui.core.tmpl.DOMElement;

	/**
	* Inserts a element into the aggregation {@link #getElements elements}.
	* @param	oElement The element to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the element should be inserted at; for a negative value of <code>iIndex</code>, the element is inserted at position 0; for a value greater than the current size of the aggregation, the element is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertElement( oElement:sap.ui.core.tmpl.DOMElement, iIndex:Int):sap.ui.core.tmpl.DOMElement;

	/**
	* Removes all the controls from the aggregation {@link #getAttributes attributes}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAttributes( ):Array<sap.ui.core.tmpl.DOMAttribute>;

	/**
	* Removes all the controls from the aggregation {@link #getElements elements}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllElements( ):Array<sap.ui.core.tmpl.DOMElement>;

	/**
	* Removes the DOM attribute for the given name and returns the reference to this DOM element to support method chaining.
	* @param	sName The name of the DOM attribute.
	* @return	null
	*/
	public function removeAttr( sName:String):sap.ui.core.tmpl.DOMElement;
	@:overload( function(vAttribute:Int):sap.ui.core.tmpl.DOMAttribute{ })
	@:overload( function(vAttribute:String):sap.ui.core.tmpl.DOMAttribute{ })

	/**
	* Removes a attribute from the aggregation {@link #getAttributes attributes}.
	* @param	vAttribute The attribute to remove or its index or id
	* @return	The removed attribute or <code>null</code>
	*/
	public function removeAttribute( vAttribute:sap.ui.core.tmpl.DOMAttribute):sap.ui.core.tmpl.DOMAttribute;
	@:overload( function(vElement:Int):sap.ui.core.tmpl.DOMElement{ })
	@:overload( function(vElement:String):sap.ui.core.tmpl.DOMElement{ })

	/**
	* Removes a element from the aggregation {@link #getElements elements}.
	* @param	vElement The element to remove or its index or id
	* @return	The removed element or <code>null</code>
	*/
	public function removeElement( vElement:sap.ui.core.tmpl.DOMElement):sap.ui.core.tmpl.DOMElement;

	/**
	* Sets a new value for property {@link #getTag tag}.

The HTML-tag of the DOM element which contains the text

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'span'</code>.
	* @param	sTag New value for property <code>tag</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTag( ?sTag:String):sap.ui.core.tmpl.DOMElement;

	/**
	* Sets a new value for property {@link #getText text}.

The text content of the DOM element

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.ui.core.tmpl.DOMElement;
}

typedef DOMElementArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The text content of the DOM element
	*/
	@:optional var text:String;

	/**
	* The HTML-tag of the DOM element which contains the text
	*/
	@:optional var tag:String;

    /**
    * DOM attributes which are rendered as part of the DOM element and bindable
    */
	@:optional var attributes:Array<haxe.extern.EitherType<String,sap.ui.core.tmpl.DOMAttribute>>;

    /**
    * Nested DOM elements to support nested bindable structures
    */
	@:optional var elements:Array<haxe.extern.EitherType<String,sap.ui.core.tmpl.DOMElement>>;
}
