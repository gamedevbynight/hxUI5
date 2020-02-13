package sap.ui.layout.form;

@:native("sap.ui.layout.form.Form")

/**
* A <code>Form</code> control arranges labels and fields (like input fields) into groups and rows. There are different ways to visualize forms for different screen sizes.

A <code>Form</code> is structured into <code>FormContainers</code>. Each <code>FormContainer</code> consists of <code>FormElements</code>. The <code>FormElements</code> consists of a label and the form fields. A <code>Form</code> doesn't render its content by itself. The rendering is done by the assigned <code>FormLayout</code>. This is so that the rendering can be adopted to new UI requirements without changing the <code>Form</code> itself.

For the content of a <code>Form</code>, <code>VariantLayoutData</code> are supported to allow simple switching of the <code>FormLayout</code>. <code>LayoutData</code> on the content can be used to overwrite the default layout of the <code>Form</code>.

The <code>Form</code> (and its sub-controls) automatically add label and field assignment to enable screen reader support. It also adds keyboard support to navigate between the fields and groups inside the form.

<b>Warning:</b> Do not put any layout or other container controls into the <code>FormElement</code>. Views are also not supported. This could damage the visual layout, keyboard support and screen-reader support.

If editable controls are used as content, the <code>editable</code> property must be set to <code>true</code>, otherwise to <code>false</code>. If the <code>editable</code> property is set incorrectly, there will be visual issues like wrong label alignment or wrong spacing between the controls.
*/
extern class Form extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:FormArgs):Void {})
	public function new(?mSettings:FormArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.layout.form.Form{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.layout.form.Form;

	/**
	* Adds some formContainer to the aggregation {@link #getFormContainers formContainers}.
	* @param	oFormContainer The formContainer to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addFormContainer( oFormContainer:sap.ui.layout.form.FormContainer):sap.ui.layout.form.Form;

	/**
	* Destroys all the formContainers in the aggregation {@link #getFormContainers formContainers}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFormContainers( ):sap.ui.layout.form.Form;

	/**
	* Destroys the layout in the aggregation {@link #getLayout layout}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayout( ):sap.ui.layout.form.Form;

	/**
	* Destroys the title in the aggregation {@link #getTitle title}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitle( ):sap.ui.layout.form.Form;

	/**
	* Destroys the toolbar in the aggregation {@link #getToolbar toolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyToolbar( ):sap.ui.layout.form.Form;

	/**
	* Creates a new subclass of class sap.ui.layout.form.Form with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getEditable editable}.

Applies a device-specific and theme-specific line height and label alignment to the form rows if the form has editable content. If set, all (not only the editable) rows of the form will get the line height of editable fields.

The labels inside the form will be rendered by default in the according mode.

<b>Note:</b> The setting of this property does not change the content of the form. For example, <code>Input</code> controls in a form with <code>editable</code> set to false are still editable.

<b>Warning:</b> If this property is wrongly set, this might lead to visual issues. The labels and fields might be misaligned, the labels might be rendered in the wrong mode, and the spacing between the single controls might be wrong. Also, controls that do not fit the mode might be rendered incorrectly.

Default value is <code>false</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets content of aggregation {@link #getFormContainers formContainers}.

Containers with the content of the form. A <code>FormContainer</code> represents a group inside the <code>Form</code>.
	* @return	null
	*/
	public function getFormContainers( ):Array<sap.ui.layout.form.FormContainer>;

	/**
	* Gets content of aggregation {@link #getLayout layout}.

Layout of the <code>Form</code>. The assigned <code>Layout</code> renders the <code>Form</code>. We recommend using the <code>ResponsiveGridLayout</code> for rendering a <code>Form</code>, as its responsiveness allows the available space to be used in the best way possible.
	* @return	null
	*/
	public function getLayout( ):sap.ui.layout.form.FormLayout;

	/**
	* Returns a metadata object for class sap.ui.layout.form.Form.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getTitle title}.

Title of the <code>Form</code>. Can either be a <code>Title</code> element or a string. If a <code>Title</code> element it used, the style of the title can be set.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored.
	* @return	null
	*/
	public function getTitle( ):Dynamic;

	/**
	* Gets content of aggregation {@link #getToolbar toolbar}.

Toolbar of the <code>Form</code>.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored. If a title is needed inside the <code>Toolbar</code> it must be added at content to the <code>Toolbar</code>. In this case add the <code>Title</code> to the <code>ariaLabelledBy</code> association.
	* @return	null
	*/
	public function getToolbar( ):sap.ui.core.Toolbar;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the <code>Form</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.layout.form.FormContainer</code> in the aggregation {@link #getFormContainers formContainers}. and returns its index if found or -1 otherwise.
	* @param	oFormContainer The formContainer whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfFormContainer( oFormContainer:sap.ui.layout.form.FormContainer):Int;

	/**
	* Inserts a formContainer into the aggregation {@link #getFormContainers formContainers}.
	* @param	oFormContainer The formContainer to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the formContainer should be inserted at; for a negative value of <code>iIndex</code>, the formContainer is inserted at position 0; for a value greater than the current size of the aggregation, the formContainer is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertFormContainer( oFormContainer:sap.ui.layout.form.FormContainer, iIndex:Int):sap.ui.layout.form.Form;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getFormContainers formContainers}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllFormContainers( ):Array<sap.ui.layout.form.FormContainer>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vFormContainer:Int):sap.ui.layout.form.FormContainer{ })
	@:overload( function(vFormContainer:String):sap.ui.layout.form.FormContainer{ })

	/**
	* Removes a formContainer from the aggregation {@link #getFormContainers formContainers}.
	* @param	vFormContainer The formContainer to remove or its index or id
	* @return	The removed formContainer or <code>null</code>
	*/
	public function removeFormContainer( vFormContainer:sap.ui.layout.form.FormContainer):sap.ui.layout.form.FormContainer;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Applies a device-specific and theme-specific line height and label alignment to the form rows if the form has editable content. If set, all (not only the editable) rows of the form will get the line height of editable fields.

The labels inside the form will be rendered by default in the according mode.

<b>Note:</b> The setting of this property does not change the content of the form. For example, <code>Input</code> controls in a form with <code>editable</code> set to false are still editable.

<b>Warning:</b> If this property is wrongly set, this might lead to visual issues. The labels and fields might be misaligned, the labels might be rendered in the wrong mode, and the spacing between the single controls might be wrong. Also, controls that do not fit the mode might be rendered incorrectly.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( bEditable:Bool):sap.ui.layout.form.Form;

	/**
	* Sets the aggregated {@link #getLayout layout}.
	* @param	oLayout The layout to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayout( oLayout:sap.ui.layout.form.FormLayout):sap.ui.layout.form.Form;
	@:overload( function(vTitle:sap.ui.core.Title):sap.ui.layout.form.Form{ })

	/**
	* Sets the aggregated {@link #getTitle title}.
	* @param	vTitle The title to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( vTitle:String):sap.ui.layout.form.Form;

	/**
	* Sets the aggregated {@link #getToolbar toolbar}.
	* @param	oToolbar The toolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToolbar( oToolbar:sap.ui.core.Toolbar):sap.ui.layout.form.Form;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the <code>Form</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.layout.form.Form;
}

typedef FormArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Width of the <code>Form</code>.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Applies a device-specific and theme-specific line height and label alignment to the form rows if the form has editable content. If set, all (not only the editable) rows of the form will get the line height of editable fields.

The labels inside the form will be rendered by default in the according mode.

<b>Note:</b> The setting of this property does not change the content of the form. For example, <code>Input</code> controls in a form with <code>editable</code> set to false are still editable.

<b>Warning:</b> If this property is wrongly set, this might lead to visual issues. The labels and fields might be misaligned, the labels might be rendered in the wrong mode, and the spacing between the single controls might be wrong. Also, controls that do not fit the mode might be rendered incorrectly.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

    /**
    * Containers with the content of the form. A <code>FormContainer</code> represents a group inside the <code>Form</code>.
    */
	@:optional var formContainers:Array<haxe.extern.EitherType<String,sap.ui.layout.form.FormContainer>>;

    /**
    * Title of the <code>Form</code>. Can either be a <code>Title</code> element or a string. If a <code>Title</code> element it used, the style of the title can be set.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored.
    */
	@:optional var title:haxe.extern.EitherType<String,sap.ui.core.Title>;

    /**
    * Toolbar of the <code>Form</code>.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored. If a title is needed inside the <code>Toolbar</code> it must be added at content to the <code>Toolbar</code>. In this case add the <code>Title</code> to the <code>ariaLabelledBy</code> association.
    */
	@:optional var toolbar:haxe.extern.EitherType<String,sap.ui.core.Toolbar>;

    /**
    * Layout of the <code>Form</code>. The assigned <code>Layout</code> renders the <code>Form</code>. We recommend using the <code>ResponsiveGridLayout</code> for rendering a <code>Form</code>, as its responsiveness allows the available space to be used in the best way possible.
    */
	@:optional var layout:haxe.extern.EitherType<String,sap.ui.layout.form.FormLayout>;

	/**
	* Association to controls / IDs that label this control (see WAI-ARIA attribute <code>aria-labelledby</code>).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
