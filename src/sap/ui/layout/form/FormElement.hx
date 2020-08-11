package sap.ui.layout.form;

@:native("sap.ui.layout.form.FormElement")

/**
* A <code>FormElement</code> represents a row in a <code>FormContainer</code>. A <code>FormElement</code> is a combination of one label and different controls associated to this label.
*/
extern class FormElement extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:FormElementArgs):Void {})
	public function new(?mSettings:FormElementArgs):Void;

	/**
	* Adds some field to the aggregation {@link #getFields fields}.
	* @param	oField The field to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addField( oField:sap.ui.core.Control):sap.ui.layout.form.FormElement;

	/**
	* Destroys all the fields in the aggregation {@link #getFields fields}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFields( ):sap.ui.layout.form.FormElement;

	/**
	* Destroys the label in the aggregation {@link #getLabel label}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLabel( ):sap.ui.layout.form.FormElement;

	/**
	* Creates a new subclass of class sap.ui.layout.form.FormElement with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getFields fields}.

Form controls that belong together to be displayed in one row of a <code>Form</code>.

<b>Warning:</b> Do not put any layout or other container controls in here. This could damage the visual layout, keyboard support and screen-reader support. Only form controls are allowed. Views are also not supported. Allowed controls implement the interface <code>sap.ui.core.IFormContent</code>.
	* @return	null
	*/
	public function getFields( ):Array<sap.ui.core.Control>;

	/**
	* Determines what fields must be rendered.
	* @return	Array of fields to be rendered
	*/
	public function getFieldsForRendering( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getLabel label}.

Label of the fields. Can either be a <code>Label</code> control or a string. If a <code>Label</code> control is used, the properties of the <code>Label</code> can be set. If no assignment between <code>Label</code> and the fields is set via (<code>labelFor</code> property of the <code>Label</code>), it will be done automatically by the <code>FormElement</code>. In this case the <code>Label</code> is assigned to the fields of the <code>FormElement</code>.
	* @return	null
	*/
	public function getLabel( ):Dynamic;

	/**
	* Returns the <code>Label</code> of the <code>FormElement</code>, even if the <code>Label</code> is assigned as string. The <code>FormLayout</code> needs the information of the label to render the <code>Form</code>.
	* @return	<code>Label</code> control used to render the label
	*/
	public function getLabelControl( ):sap.ui.core.Label;

	/**
	* Returns a metadata object for class sap.ui.layout.form.FormElement.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

If set to <code>false</code>, the <code>FormElement</code> is not rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getFields fields}. and returns its index if found or -1 otherwise.
	* @param	oField The field whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfField( oField:sap.ui.core.Control):Int;

	/**
	* Inserts a field into the aggregation {@link #getFields fields}.
	* @param	oField The field to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the field should be inserted at; for a negative value of <code>iIndex</code>, the field is inserted at position 0; for a value greater than the current size of the aggregation, the field is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertField( oField:sap.ui.core.Control, iIndex:Int):sap.ui.layout.form.FormElement;

	/**
	* Determines if the <code>FormElement</code> is visible or not. Per default it just returns the value of the <code>visible</code> property. But this might be overwritten by inherited elements.

For rendering by <code>FormLayouts</code> this function has to be used instead of <code>getVisible</code>.
	* @return	If true, the <code>FormElement</code> is visible, otherwise not
	*/
	public function isVisible( ):Bool;

	/**
	* Removes all the controls from the aggregation {@link #getFields fields}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllFields( ):Array<sap.ui.core.Control>;
	@:overload( function(vField:Int):sap.ui.core.Control{ })
	@:overload( function(vField:String):sap.ui.core.Control{ })

	/**
	* Removes a field from the aggregation {@link #getFields fields}.
	* @param	vField The field to remove or its index or id
	* @return	The removed field or <code>null</code>
	*/
	public function removeField( vField:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vLabel:sap.ui.core.Label):sap.ui.layout.form.FormElement{ })

	/**
	* Sets the aggregated {@link #getLabel label}.
	* @param	vLabel The label to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabel( vLabel:String):sap.ui.layout.form.FormElement;

	/**
	* Sets a new value for property {@link #getVisible visible}.

If set to <code>false</code>, the <code>FormElement</code> is not rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.ui.layout.form.FormElement;
}

typedef FormElementArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* If set to <code>false</code>, the <code>FormElement</code> is not rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Internal property for the <code>editable</code> state of the internal <code>FormElement</code>.
	*/
	@:optional var _editable:haxe.extern.EitherType<String,Bool>;

    /**
    * Label of the fields. Can either be a <code>Label</code> control or a string. If a <code>Label</code> control is used, the properties of the <code>Label</code> can be set. If no assignment between <code>Label</code> and the fields is set via (<code>labelFor</code> property of the <code>Label</code>), it will be done automatically by the <code>FormElement</code>. In this case the <code>Label</code> is assigned to the fields of the <code>FormElement</code>.
    */
	@:optional var label:haxe.extern.EitherType<String,sap.ui.core.Label>;

    /**
    * null
    */
	@:optional var _label:haxe.extern.EitherType<String,sap.ui.core.Label>;

    /**
    * Form controls that belong together to be displayed in one row of a <code>Form</code>.

<b>Warning:</b> Do not put any layout or other container controls in here. This could damage the visual layout, keyboard support and screen-reader support. Only form controls are allowed. Views are also not supported. Allowed controls implement the interface <code>sap.ui.core.IFormContent</code>.
    */
	@:optional var fields:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
