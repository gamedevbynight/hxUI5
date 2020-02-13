package sap.m;

@:native("sap.m.SelectionDetailsItemLine")

/**
* This Element provides a means to fill an {@link sap.m.SelectionDetailsItem} with content. It is used for a form-like display of a label followed by a value with an optional unit. If the unit is used, the value is displayed bold. <b><i>Note:</i></b>It is protected and should ony be used within the framework itself.
*/
extern class SelectionDetailsItemLine extends sap.ui.core.Element
{

	/**
	* Creates a new subclass of class sap.m.SelectionDetailsItemLine with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDisplayValue displayValue}.

The display value of the line. If this property is set, it overrides the value property and is displayed as is.
	* @return	Value of property <code>displayValue</code>
	*/
	public function getDisplayValue( ):String;

	/**
	* Gets current value of property {@link #getLabel label}.

The label that is shown as the first part of the line. It may contain the name of the currently selected dimension or measure.
	* @return	Value of property <code>label</code>
	*/
	public function getLabel( ):String;

	/**
	* Gets current value of property {@link #getLineMarker lineMarker}.

A string to be rendered by the control as a line marker. This string must be a valid SVG definition. The only valid tags are: svg, path, line.
	* @return	Value of property <code>lineMarker</code>
	*/
	public function getLineMarker( ):String;

	/**
	* Returns a metadata object for class sap.m.SelectionDetailsItemLine.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getUnit unit}.

The unit of the given value. If this unit is given, the line is displayed bold.
	* @return	Value of property <code>unit</code>
	*/
	public function getUnit( ):String;

	/**
	* Gets current value of property {@link #getValue value}.

The value of the line, for example the value of the currently selected measure. Expected type is a string, number or a plain object, including date and time properties of type string.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):Dynamic;

	/**
	* Sets a new value for property {@link #getDisplayValue displayValue}.

The display value of the line. If this property is set, it overrides the value property and is displayed as is.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDisplayValue New value for property <code>displayValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayValue( sDisplayValue:String):sap.m.SelectionDetailsItemLine;

	/**
	* Sets a new value for property {@link #getLabel label}.

The label that is shown as the first part of the line. It may contain the name of the currently selected dimension or measure.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLabel New value for property <code>label</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabel( sLabel:String):sap.m.SelectionDetailsItemLine;

	/**
	* Sets a new value for property {@link #getLineMarker lineMarker}.

A string to be rendered by the control as a line marker. This string must be a valid SVG definition. The only valid tags are: svg, path, line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLineMarker New value for property <code>lineMarker</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLineMarker( sLineMarker:String):sap.m.SelectionDetailsItemLine;

	/**
	* Sets a new value for property {@link #getUnit unit}.

The unit of the given value. If this unit is given, the line is displayed bold.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUnit New value for property <code>unit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUnit( sUnit:String):sap.m.SelectionDetailsItemLine;

	/**
	* Sets a new value for property {@link #getValue value}.

The value of the line, for example the value of the currently selected measure. Expected type is a string, number or a plain object, including date and time properties of type string.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( oValue:Dynamic):sap.m.SelectionDetailsItemLine;
}

typedef SelectionDetailsItemLineArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The label that is shown as the first part of the line. It may contain the name of the currently selected dimension or measure.
	*/
	@:optional var label:String;

	/**
	* The value of the line, for example the value of the currently selected measure. Expected type is a string, number or a plain object, including date and time properties of type string.
	*/
	@:optional var value:Dynamic;

	/**
	* The display value of the line. If this property is set, it overrides the value property and is displayed as is.
	*/
	@:optional var displayValue:String;

	/**
	* The unit of the given value. If this unit is given, the line is displayed bold.
	*/
	@:optional var unit:String;

	/**
	* A string to be rendered by the control as a line marker. This string must be a valid SVG definition. The only valid tags are: svg, path, line.
	*/
	@:optional var lineMarker:String;
}
