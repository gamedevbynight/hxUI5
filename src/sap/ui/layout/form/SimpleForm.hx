package sap.ui.layout.form;

@:native("sap.ui.layout.form.SimpleForm")

/**
* The <code>SimpleForm</code> control provides an easy-to-use API to create simple forms. Inside a <code>SimpleForm</code> control, a <code>{@link sap.ui.layout.form.Form Form}</code> control is created along with its <code>{@link sap.ui.layout.form.FormContainer FormContainer}</code> elements and <code>{@link sap.ui.layout.form.FormElement FormElement}</code> elements, but the complexity in the API is not exposed to the user. <ul> <li>A new <code>sap.ui.core.Title</code> element or <code>Toolbar</code> control starts a new group (<code>{@link sap.ui.layout.form.FormContainer FormContainer}</code>) in the form.</li> <li>A new <code>Label</code> control starts a new row (<code>{@link sap.ui.layout.form.FormElement FormElement}</code>) in the form.</li> <li>All other controls will be assigned to the row (<code>{@link sap.ui.layout.form.FormElement FormElement}</code>) that started with the last label.</li> </ul> Use <code>LayoutData</code> to influence the layout for special cases in the Input/Display controls.

<b>Note:</b> If a more complex form is needed, use the <code>{@link sap.ui.layout.form.Form Form}</code> control instead.
*/
extern class SimpleForm extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SimpleFormArgs):Void {})
	public function new(?mSettings:SimpleFormArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.layout.form.SimpleForm{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.layout.form.SimpleForm;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Element):sap.ui.layout.form.SimpleForm;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.layout.form.SimpleForm;

	/**
	* Destroys the title in the aggregation {@link #getTitle title}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitle( ):sap.ui.layout.form.SimpleForm;

	/**
	* Destroys the toolbar in the aggregation {@link #getToolbar toolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyToolbar( ):sap.ui.layout.form.SimpleForm;

	/**
	* Creates a new subclass of class sap.ui.layout.form.SimpleForm with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAdjustLabelSpan adjustLabelSpan}.

If set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the number of <code>FormContainers</code> in one row. If only one <code>FormContainer</code> is displayed in one row, <code>labelSpanM</code> is used to define the size of the label. This is the same for medium and large <code>Forms</code>. This is done to align the labels on forms where full-size <code>FormContainers</code> and multiple-column rows are used in the same <code>Form</code> (because every <code>FormContainer</code> has its own grid inside).

If not set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the <code>Form</code> size. The number of <code>FormContainers</code> doesn't matter in this case.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

Default value is <code>true</code>.
	* @return	Value of property <code>adjustLabelSpan</code>
	*/
	public function getAdjustLabelSpan( ):Bool;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the <code>SimpleForm</code> content.

The visualization of the different options depends on the used theme.

Default value is <code>Translucent</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.ui.layout.BackgroundDesign;

	/**
	* Gets current value of property {@link #getBreakpointL breakpointL}.

Breakpoint between Medium size and Large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

Default value is <code>1024</code>.
	* @return	Value of property <code>breakpointL</code>
	*/
	public function getBreakpointL( ):Int;

	/**
	* Gets current value of property {@link #getBreakpointM breakpointM}.

Breakpoint between Small size and Medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

Default value is <code>600</code>.
	* @return	Value of property <code>breakpointM</code>
	*/
	public function getBreakpointM( ):Int;

	/**
	* Gets current value of property {@link #getBreakpointXL breakpointXL}.

Breakpoint between Medium size and Large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

Default value is <code>1440</code>.
	* @return	Value of property <code>breakpointXL</code>
	*/
	public function getBreakpointXL( ):Int;

	/**
	* Gets current value of property {@link #getColumnsL columnsL}.

Form columns for large size. The number of columns for large size must not be smaller than the number of columns for medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout.

Default value is <code>2</code>.
	* @return	Value of property <code>columnsL</code>
	*/
	public function getColumnsL( ):Int;

	/**
	* Gets current value of property {@link #getColumnsM columnsM}.

Form columns for medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout.

Default value is <code>1</code>.
	* @return	Value of property <code>columnsM</code>
	*/
	public function getColumnsM( ):Int;

	/**
	* Gets current value of property {@link #getColumnsXL columnsXL}.

Form columns for extra large size. The number of columns for extra large size must not be smaller than the number of columns for large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout. If the default value -1 is not overwritten with the meaningful one then the <code>columnsL</code> value is used (from the backward compatibility reasons).

Default value is <code>-1</code>.
	* @return	Value of property <code>columnsXL</code>
	*/
	public function getColumnsXL( ):Int;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content of the form is structured in the following way: <ul> <li>Add a <code>sap.ui.core.Title</code> element or <code>Toolbar</code> control to start a new group (<code>{@link sap.ui.layout.form.FormContainer FormContainer}</code>).</li> <li>Add a <code>Label</code> control to start a new row (<code>{@link sap.ui.layout.form.FormElement FormElement}</code>).</li> <li>Add controls as input fields, text fields or other as needed.</li> <li>Use <code>LayoutData</code> to influence the layout for special cases in the single controls. For example, if a <code>ResponsiveLayout</code> is used as a layout, the form content is weighted using weight 3 for the labels and weight 5 for the fields part. By default the label column is 192 pixels wide. If your input controls should influence their width, you can add <code>sap.ui.layout.ResponsiveFlowLayoutData</code> to them via <code>setLayoutData</code> method. Ensure that the sum of the weights in the <code>ResponsiveFlowLayoutData</code> is not more than 5, as this is the total width of the input control part of each form row.</li> </ul> Example for a row where the <code>Input</code> weight 4 and the second <code>Input</code> weight 1 (using <code>ResponsiveLayout</code>): <pre>
new sap.m.Label({text:"Label"});
new sap.m.Input({value:"Weight 4", layoutData: new sap.ui.layout.ResponsiveFlowLayoutData({weight:4})}),
new sap.m.Input({value:"Weight 1", layoutData: new sap.ui.layout.ResponsiveFlowLayoutData({weight:1})}),
</pre>

For example, if a <code>ResponsiveGridLayout</code> is used as a layout, there are 12 cells in one row. Depending on the screen size the labels use the defined <code>labelSpan</code>. The remaining cells are used for the fields (and <code>emptySpan</code> if defined). The available cells are distributed to all fields in the row. If one field should use a fixed number of cells you can add <code>sap.ui.layout.GridData</code> to them via <code>setLayoutData</code> method. If there are additional fields in the row they will get the remaining cells. </ul> Example for a row with two <code>Input</code> controls where one uses four cells on small screens, one cell on medium screens and 2 cells on larger screens (using <code>ResponsiveGridLayout</code>): <pre>
new sap.m.Label({text:"Label"});
new sap.m.Input({value:"auto size"}),
new sap.m.Input({value:"fix size", layoutData: new sap.ui.layout.GridData({span: "XL1 L1 M2 S4"})}),
</pre>

<b>Warning:</b> Do not put any layout or other container controls in here. This could damage the visual layout, keyboard support and screen-reader support. Only labels, titles, toolbars and form controls are allowed. Views are also not supported. Allowed form controls implement the interface <code>sap.ui.core.IFormContent</code>.

If editable controls are used as content, the <code>editable</code> property must be set to <code>true</code>, otherwise to <code>false</code>. If the <code>editable</code> property is set incorrectly, there will be visual issues like wrong label alignment or wrong spacing between the controls.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Element>;

	/**
	* Gets current value of property {@link #getEditable editable}.

Applies a device-specific and theme-specific line height and label alignment to the form rows if the form has editable content. If set, all (not only the editable) rows of the form will get the line height of editable fields.

The labels inside the form will be rendered by default in the according mode.

<b>Note:</b> The setting of this property does not change the content of the form. For example, <code>Input</code> controls in a form with <code>editable</code> set to false are still editable.

<b>Warning:</b> If this property is wrongly set, this might lead to visual issues. The labels and fields might be misaligned, the labels might be rendered in the wrong mode, and the spacing between the single controls might be wrong. Also, controls that do not fit the mode might be rendered incorrectly.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getEmptySpanL emptySpanL}.

Number of grid cells that are empty at the end of each line on large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout. If a <code>ColumnLayout</code> is used, this property defines the empty cells for large columns.

Default value is <code>0</code>.
	* @return	Value of property <code>emptySpanL</code>
	*/
	public function getEmptySpanL( ):Int;

	/**
	* Gets current value of property {@link #getEmptySpanM emptySpanM}.

Number of grid cells that are empty at the end of each line on medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

Default value is <code>0</code>.
	* @return	Value of property <code>emptySpanM</code>
	*/
	public function getEmptySpanM( ):Int;

	/**
	* Gets current value of property {@link #getEmptySpanS emptySpanS}.

Number of grid cells that are empty at the end of each line on small size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

Default value is <code>0</code>.
	* @return	Value of property <code>emptySpanS</code>
	*/
	public function getEmptySpanS( ):Int;

	/**
	* Gets current value of property {@link #getEmptySpanXL emptySpanXL}.

Number of grid cells that are empty at the end of each line on extra large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout. If the default value -1 is not overwritten with the meaningful one then the <code>emptySpanL</code> value is used (from the backward compatibility reasons).

Default value is <code>-1</code>.
	* @return	Value of property <code>emptySpanXL</code>
	*/
	public function getEmptySpanXL( ):Int;

	/**
	* Gets current value of property {@link #getLabelMinWidth labelMinWidth}.

Specifies the min-width in pixels of the label in all form rows.

<b>Note:</b> This property is only used if a <code>ResponsiveLayout</code> is used as a layout.

Default value is <code>192</code>.
	* @return	Value of property <code>labelMinWidth</code>
	*/
	public function getLabelMinWidth( ):Int;

	/**
	* Gets current value of property {@link #getLabelSpanL labelSpanL}.

Default span for labels in large size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set, this property is only used if more than 1 <code>FormContainer</code> is in one line. If only 1 <code>FormContainer</code> is in the line, then the <code>labelSpanM</code> value is used.

<b>Note:</b> This property is only used if <code>ResponsiveGridLayout</code> or <code>ColumnLayout</code> is used as a layout. If a <code>ColumnLayout</code> is used, this property defines the label size for large columns.

Default value is <code>4</code>.
	* @return	Value of property <code>labelSpanL</code>
	*/
	public function getLabelSpanL( ):Int;

	/**
	* Gets current value of property {@link #getLabelSpanM labelSpanM}.

Default span for labels in medium size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set, this property is used for full-size <code>FormContainers</code>. If more than one <code>FormContainer</code> is in one line, <code>labelSpanL</code> is used.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

Default value is <code>2</code>.
	* @return	Value of property <code>labelSpanM</code>
	*/
	public function getLabelSpanM( ):Int;

	/**
	* Gets current value of property {@link #getLabelSpanS labelSpanS}.

Default span for labels in small size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

Default value is <code>12</code>.
	* @return	Value of property <code>labelSpanS</code>
	*/
	public function getLabelSpanS( ):Int;

	/**
	* Gets current value of property {@link #getLabelSpanXL labelSpanXL}.

Default span for labels in extra large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout. If the default value -1 is not overwritten with the meaningful one then the <code>labelSpanL</code> value is used (from the backward compatibility reasons).

Default value is <code>-1</code>.
	* @return	Value of property <code>labelSpanXL</code>
	*/
	public function getLabelSpanXL( ):Int;

	/**
	* Gets current value of property {@link #getLayout layout}.

The <code>FormLayout</code> that is used to render the <code>SimpleForm</code>.

We recommend using the <code>ResponsiveGridLayout</code> for rendering a <code>SimpleForm</code>, as its responsiveness uses the space available in the best way possible.

<b>Note</b> If possible, set the <code>layout</code> before adding content to prevent calculations for the default layout.

Default value is <code>ResponsiveLayout</code>.
	* @return	Value of property <code>layout</code>
	*/
	public function getLayout( ):sap.ui.layout.form.SimpleFormLayout;

	/**
	* Gets current value of property {@link #getMaxContainerCols maxContainerCols}.

The maximum amount of groups (<code>{@link sap.ui.layout.form.FormContainer FormContainers}</code>) per row that is used before a new row is started.

<b>Note:</b> If <code>{@link sap.ui.layout.form.SimpleFormLayout.ResponsiveGridLayout}</code> is used as <code>layout</code>, this property is not used. Please use the properties <code>ColumnsL</code> and <code>ColumnsM</code> in this case.

Default value is <code>2</code>.
	* @return	Value of property <code>maxContainerCols</code>
	*/
	public function getMaxContainerCols( ):Int;

	/**
	* Returns a metadata object for class sap.ui.layout.form.SimpleForm.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinWidth minWidth}.

The overall minimum width in pixels that is used for the <code>SimpleForm</code>.

If the available width is below the given <code>minWidth</code> the <code>SimpleForm</code> will create a new row for the next group (<code>{@link sap.ui.layout.form.FormContainer FormContainer}</code>). The default value is -1, meaning that inner groups (<code>{@link sap.ui.layout.form.FormContainer FormContainers}</code>) will be stacked until <code>maxContainerCols</code> is reached, irrespective of whether a <code>width</code> is reached or the available parents width is reached.

<b>Note:</b> This property is only used if a <code>ResponsiveLayout</code> is used as a layout.

Default value is <code>-1</code>.
	* @return	Value of property <code>minWidth</code>
	*/
	public function getMinWidth( ):Int;

	/**
	* Gets current value of property {@link #getSingleContainerFullSize singleContainerFullSize}.

If the <code>Form</code> contains only one single <code>FormContainer</code> and this property is set, the <code>FormContainer</code> is displayed using the full size of the <code>Form</code>. In this case the properties <code>columnsL</code> and <code>columnsM</code> are ignored.

In all other cases the <code>FormContainer</code> is displayed in the size of one column.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

Default value is <code>true</code>.
	* @return	Value of property <code>singleContainerFullSize</code>
	*/
	public function getSingleContainerFullSize( ):Bool;

	/**
	* Gets content of aggregation {@link #getTitle title}.

Title element of the <code>SimpleForm</code>. Can either be a <code>Title</code> element, or a string.
	* @return	null
	*/
	public function getTitle( ):Dynamic;

	/**
	* Gets content of aggregation {@link #getToolbar toolbar}.

Toolbar of the <code>SimpleForm</code>.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored. If a title is needed inside the <code>Toolbar</code> it must be added at content to the <code>Toolbar</code>. In this case add the <code>Title</code> to the <code>ariaLabelledBy</code> association.
	* @return	null
	*/
	public function getToolbar( ):sap.ui.core.Toolbar;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the form.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Element</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Element):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Element, iIndex:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Element>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vContent:Int):sap.ui.core.Element{ })
	@:overload( function(vContent:String):sap.ui.core.Element{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Element):sap.ui.core.Element;

	/**
	* Sets a new value for property {@link #getAdjustLabelSpan adjustLabelSpan}.

If set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the number of <code>FormContainers</code> in one row. If only one <code>FormContainer</code> is displayed in one row, <code>labelSpanM</code> is used to define the size of the label. This is the same for medium and large <code>Forms</code>. This is done to align the labels on forms where full-size <code>FormContainers</code> and multiple-column rows are used in the same <code>Form</code> (because every <code>FormContainer</code> has its own grid inside).

If not set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the <code>Form</code> size. The number of <code>FormContainers</code> doesn't matter in this case.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAdjustLabelSpan New value for property <code>adjustLabelSpan</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdjustLabelSpan( ?bAdjustLabelSpan:Bool):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the <code>SimpleForm</code> content.

The visualization of the different options depends on the used theme.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Translucent</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.ui.layout.BackgroundDesign):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getBreakpointL breakpointL}.

Breakpoint between Medium size and Large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1024</code>.
	* @param	iBreakpointL New value for property <code>breakpointL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBreakpointL( ?iBreakpointL:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getBreakpointM breakpointM}.

Breakpoint between Small size and Medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>600</code>.
	* @param	iBreakpointM New value for property <code>breakpointM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBreakpointM( ?iBreakpointM:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getBreakpointXL breakpointXL}.

Breakpoint between Medium size and Large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1440</code>.
	* @param	iBreakpointXL New value for property <code>breakpointXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBreakpointXL( ?iBreakpointXL:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getColumnsL columnsL}.

Form columns for large size. The number of columns for large size must not be smaller than the number of columns for medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	iColumnsL New value for property <code>columnsL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsL( ?iColumnsL:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getColumnsM columnsM}.

Form columns for medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iColumnsM New value for property <code>columnsM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsM( ?iColumnsM:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getColumnsXL columnsXL}.

Form columns for extra large size. The number of columns for extra large size must not be smaller than the number of columns for large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout. If the default value -1 is not overwritten with the meaningful one then the <code>columnsL</code> value is used (from the backward compatibility reasons).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iColumnsXL New value for property <code>columnsXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsXL( ?iColumnsXL:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Applies a device-specific and theme-specific line height and label alignment to the form rows if the form has editable content. If set, all (not only the editable) rows of the form will get the line height of editable fields.

The labels inside the form will be rendered by default in the according mode.

<b>Note:</b> The setting of this property does not change the content of the form. For example, <code>Input</code> controls in a form with <code>editable</code> set to false are still editable.

<b>Warning:</b> If this property is wrongly set, this might lead to visual issues. The labels and fields might be misaligned, the labels might be rendered in the wrong mode, and the spacing between the single controls might be wrong. Also, controls that do not fit the mode might be rendered incorrectly.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( bEditable:Bool):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getEmptySpanL emptySpanL}.

Number of grid cells that are empty at the end of each line on large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout. If a <code>ColumnLayout</code> is used, this property defines the empty cells for large columns.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iEmptySpanL New value for property <code>emptySpanL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmptySpanL( ?iEmptySpanL:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getEmptySpanM emptySpanM}.

Number of grid cells that are empty at the end of each line on medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iEmptySpanM New value for property <code>emptySpanM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmptySpanM( ?iEmptySpanM:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getEmptySpanS emptySpanS}.

Number of grid cells that are empty at the end of each line on small size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iEmptySpanS New value for property <code>emptySpanS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmptySpanS( ?iEmptySpanS:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getEmptySpanXL emptySpanXL}.

Number of grid cells that are empty at the end of each line on extra large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout. If the default value -1 is not overwritten with the meaningful one then the <code>emptySpanL</code> value is used (from the backward compatibility reasons).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iEmptySpanXL New value for property <code>emptySpanXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmptySpanXL( ?iEmptySpanXL:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getLabelMinWidth labelMinWidth}.

Specifies the min-width in pixels of the label in all form rows.

<b>Note:</b> This property is only used if a <code>ResponsiveLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>192</code>.
	* @param	iLabelMinWidth New value for property <code>labelMinWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelMinWidth( ?iLabelMinWidth:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getLabelSpanL labelSpanL}.

Default span for labels in large size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set, this property is only used if more than 1 <code>FormContainer</code> is in one line. If only 1 <code>FormContainer</code> is in the line, then the <code>labelSpanM</code> value is used.

<b>Note:</b> This property is only used if <code>ResponsiveGridLayout</code> or <code>ColumnLayout</code> is used as a layout. If a <code>ColumnLayout</code> is used, this property defines the label size for large columns.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>4</code>.
	* @param	iLabelSpanL New value for property <code>labelSpanL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelSpanL( ?iLabelSpanL:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getLabelSpanM labelSpanM}.

Default span for labels in medium size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set, this property is used for full-size <code>FormContainers</code>. If more than one <code>FormContainer</code> is in one line, <code>labelSpanL</code> is used.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	iLabelSpanM New value for property <code>labelSpanM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelSpanM( ?iLabelSpanM:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getLabelSpanS labelSpanS}.

Default span for labels in small size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>12</code>.
	* @param	iLabelSpanS New value for property <code>labelSpanS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelSpanS( ?iLabelSpanS:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getLabelSpanXL labelSpanXL}.

Default span for labels in extra large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout. If the default value -1 is not overwritten with the meaningful one then the <code>labelSpanL</code> value is used (from the backward compatibility reasons).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iLabelSpanXL New value for property <code>labelSpanXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelSpanXL( ?iLabelSpanXL:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getLayout layout}.

The <code>FormLayout</code> that is used to render the <code>SimpleForm</code>.

We recommend using the <code>ResponsiveGridLayout</code> for rendering a <code>SimpleForm</code>, as its responsiveness uses the space available in the best way possible.

<b>Note</b> If possible, set the <code>layout</code> before adding content to prevent calculations for the default layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>ResponsiveLayout</code>.
	* @param	sLayout New value for property <code>layout</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayout( ?sLayout:sap.ui.layout.form.SimpleFormLayout):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getMaxContainerCols maxContainerCols}.

The maximum amount of groups (<code>{@link sap.ui.layout.form.FormContainer FormContainers}</code>) per row that is used before a new row is started.

<b>Note:</b> If <code>{@link sap.ui.layout.form.SimpleFormLayout.ResponsiveGridLayout}</code> is used as <code>layout</code>, this property is not used. Please use the properties <code>ColumnsL</code> and <code>ColumnsM</code> in this case.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	iMaxContainerCols New value for property <code>maxContainerCols</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxContainerCols( ?iMaxContainerCols:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getMinWidth minWidth}.

The overall minimum width in pixels that is used for the <code>SimpleForm</code>.

If the available width is below the given <code>minWidth</code> the <code>SimpleForm</code> will create a new row for the next group (<code>{@link sap.ui.layout.form.FormContainer FormContainer}</code>). The default value is -1, meaning that inner groups (<code>{@link sap.ui.layout.form.FormContainer FormContainers}</code>) will be stacked until <code>maxContainerCols</code> is reached, irrespective of whether a <code>width</code> is reached or the available parents width is reached.

<b>Note:</b> This property is only used if a <code>ResponsiveLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iMinWidth New value for property <code>minWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinWidth( ?iMinWidth:Int):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getSingleContainerFullSize singleContainerFullSize}.

If the <code>Form</code> contains only one single <code>FormContainer</code> and this property is set, the <code>FormContainer</code> is displayed using the full size of the <code>Form</code>. In this case the properties <code>columnsL</code> and <code>columnsM</code> are ignored.

In all other cases the <code>FormContainer</code> is displayed in the size of one column.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSingleContainerFullSize New value for property <code>singleContainerFullSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSingleContainerFullSize( ?bSingleContainerFullSize:Bool):sap.ui.layout.form.SimpleForm;
	@:overload( function(vTitle:sap.ui.core.Title):sap.ui.layout.form.SimpleForm{ })

	/**
	* Sets the aggregated {@link #getTitle title}.
	* @param	vTitle The title to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( vTitle:String):sap.ui.layout.form.SimpleForm;

	/**
	* Sets the aggregated {@link #getToolbar toolbar}.
	* @param	oToolbar The toolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToolbar( oToolbar:sap.ui.core.Toolbar):sap.ui.layout.form.SimpleForm;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the form.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.layout.form.SimpleForm;
}

typedef SimpleFormArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The maximum amount of groups (<code>{@link sap.ui.layout.form.FormContainer FormContainers}</code>) per row that is used before a new row is started.

<b>Note:</b> If <code>{@link sap.ui.layout.form.SimpleFormLayout.ResponsiveGridLayout}</code> is used as <code>layout</code>, this property is not used. Please use the properties <code>ColumnsL</code> and <code>ColumnsM</code> in this case.
	*/
	@:optional var maxContainerCols:haxe.extern.EitherType<String,Int>;

	/**
	* The overall minimum width in pixels that is used for the <code>SimpleForm</code>.

If the available width is below the given <code>minWidth</code> the <code>SimpleForm</code> will create a new row for the next group (<code>{@link sap.ui.layout.form.FormContainer FormContainer}</code>). The default value is -1, meaning that inner groups (<code>{@link sap.ui.layout.form.FormContainer FormContainers}</code>) will be stacked until <code>maxContainerCols</code> is reached, irrespective of whether a <code>width</code> is reached or the available parents width is reached.

<b>Note:</b> This property is only used if a <code>ResponsiveLayout</code> is used as a layout.
	*/
	@:optional var minWidth:haxe.extern.EitherType<String,Int>;

	/**
	* Width of the form.
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
	* Specifies the min-width in pixels of the label in all form rows.

<b>Note:</b> This property is only used if a <code>ResponsiveLayout</code> is used as a layout.
	*/
	@:optional var labelMinWidth:haxe.extern.EitherType<String,Int>;

	/**
	* The <code>FormLayout</code> that is used to render the <code>SimpleForm</code>.

We recommend using the <code>ResponsiveGridLayout</code> for rendering a <code>SimpleForm</code>, as its responsiveness uses the space available in the best way possible.

<b>Note</b> If possible, set the <code>layout</code> before adding content to prevent calculations for the default layout.
	*/
	@:optional var layout:haxe.extern.EitherType<String,sap.ui.layout.form.SimpleFormLayout>;

	/**
	* Default span for labels in extra large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout. If the default value -1 is not overwritten with the meaningful one then the <code>labelSpanL</code> value is used (from the backward compatibility reasons).
	*/
	@:optional var labelSpanXL:haxe.extern.EitherType<String,Int>;

	/**
	* Default span for labels in large size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set, this property is only used if more than 1 <code>FormContainer</code> is in one line. If only 1 <code>FormContainer</code> is in the line, then the <code>labelSpanM</code> value is used.

<b>Note:</b> This property is only used if <code>ResponsiveGridLayout</code> or <code>ColumnLayout</code> is used as a layout. If a <code>ColumnLayout</code> is used, this property defines the label size for large columns.
	*/
	@:optional var labelSpanL:haxe.extern.EitherType<String,Int>;

	/**
	* Default span for labels in medium size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set, this property is used for full-size <code>FormContainers</code>. If more than one <code>FormContainer</code> is in one line, <code>labelSpanL</code> is used.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.
	*/
	@:optional var labelSpanM:haxe.extern.EitherType<String,Int>;

	/**
	* Default span for labels in small size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.
	*/
	@:optional var labelSpanS:haxe.extern.EitherType<String,Int>;

	/**
	* If set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the number of <code>FormContainers</code> in one row. If only one <code>FormContainer</code> is displayed in one row, <code>labelSpanM</code> is used to define the size of the label. This is the same for medium and large <code>Forms</code>. This is done to align the labels on forms where full-size <code>FormContainers</code> and multiple-column rows are used in the same <code>Form</code> (because every <code>FormContainer</code> has its own grid inside).

If not set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the <code>Form</code> size. The number of <code>FormContainers</code> doesn't matter in this case.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.
	*/
	@:optional var adjustLabelSpan:haxe.extern.EitherType<String,Bool>;

	/**
	* Number of grid cells that are empty at the end of each line on extra large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout. If the default value -1 is not overwritten with the meaningful one then the <code>emptySpanL</code> value is used (from the backward compatibility reasons).
	*/
	@:optional var emptySpanXL:haxe.extern.EitherType<String,Int>;

	/**
	* Number of grid cells that are empty at the end of each line on large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout. If a <code>ColumnLayout</code> is used, this property defines the empty cells for large columns.
	*/
	@:optional var emptySpanL:haxe.extern.EitherType<String,Int>;

	/**
	* Number of grid cells that are empty at the end of each line on medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.
	*/
	@:optional var emptySpanM:haxe.extern.EitherType<String,Int>;

	/**
	* Number of grid cells that are empty at the end of each line on small size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.
	*/
	@:optional var emptySpanS:haxe.extern.EitherType<String,Int>;

	/**
	* Form columns for extra large size. The number of columns for extra large size must not be smaller than the number of columns for large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout. If the default value -1 is not overwritten with the meaningful one then the <code>columnsL</code> value is used (from the backward compatibility reasons).
	*/
	@:optional var columnsXL:haxe.extern.EitherType<String,Int>;

	/**
	* Form columns for large size. The number of columns for large size must not be smaller than the number of columns for medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout.
	*/
	@:optional var columnsL:haxe.extern.EitherType<String,Int>;

	/**
	* Form columns for medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> or a <code>ColumnLayout</code> is used as a layout.
	*/
	@:optional var columnsM:haxe.extern.EitherType<String,Int>;

	/**
	* If the <code>Form</code> contains only one single <code>FormContainer</code> and this property is set, the <code>FormContainer</code> is displayed using the full size of the <code>Form</code>. In this case the properties <code>columnsL</code> and <code>columnsM</code> are ignored.

In all other cases the <code>FormContainer</code> is displayed in the size of one column.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.
	*/
	@:optional var singleContainerFullSize:haxe.extern.EitherType<String,Bool>;

	/**
	* Breakpoint between Medium size and Large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.
	*/
	@:optional var breakpointXL:haxe.extern.EitherType<String,Int>;

	/**
	* Breakpoint between Medium size and Large size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.
	*/
	@:optional var breakpointL:haxe.extern.EitherType<String,Int>;

	/**
	* Breakpoint between Small size and Medium size.

<b>Note:</b> This property is only used if a <code>ResponsiveGridLayout</code> is used as a layout.
	*/
	@:optional var breakpointM:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies the background color of the <code>SimpleForm</code> content.

The visualization of the different options depends on the used theme.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.ui.layout.BackgroundDesign>;

    /**
    * The content of the form is structured in the following way: <ul> <li>Add a <code>sap.ui.core.Title</code> element or <code>Toolbar</code> control to start a new group (<code>{@link sap.ui.layout.form.FormContainer FormContainer}</code>).</li> <li>Add a <code>Label</code> control to start a new row (<code>{@link sap.ui.layout.form.FormElement FormElement}</code>).</li> <li>Add controls as input fields, text fields or other as needed.</li> <li>Use <code>LayoutData</code> to influence the layout for special cases in the single controls. For example, if a <code>ResponsiveLayout</code> is used as a layout, the form content is weighted using weight 3 for the labels and weight 5 for the fields part. By default the label column is 192 pixels wide. If your input controls should influence their width, you can add <code>sap.ui.layout.ResponsiveFlowLayoutData</code> to them via <code>setLayoutData</code> method. Ensure that the sum of the weights in the <code>ResponsiveFlowLayoutData</code> is not more than 5, as this is the total width of the input control part of each form row.</li> </ul> Example for a row where the <code>Input</code> weight 4 and the second <code>Input</code> weight 1 (using <code>ResponsiveLayout</code>): <pre>
new sap.m.Label({text:"Label"});
new sap.m.Input({value:"Weight 4", layoutData: new sap.ui.layout.ResponsiveFlowLayoutData({weight:4})}),
new sap.m.Input({value:"Weight 1", layoutData: new sap.ui.layout.ResponsiveFlowLayoutData({weight:1})}),
</pre>

For example, if a <code>ResponsiveGridLayout</code> is used as a layout, there are 12 cells in one row. Depending on the screen size the labels use the defined <code>labelSpan</code>. The remaining cells are used for the fields (and <code>emptySpan</code> if defined). The available cells are distributed to all fields in the row. If one field should use a fixed number of cells you can add <code>sap.ui.layout.GridData</code> to them via <code>setLayoutData</code> method. If there are additional fields in the row they will get the remaining cells. </ul> Example for a row with two <code>Input</code> controls where one uses four cells on small screens, one cell on medium screens and 2 cells on larger screens (using <code>ResponsiveGridLayout</code>): <pre>
new sap.m.Label({text:"Label"});
new sap.m.Input({value:"auto size"}),
new sap.m.Input({value:"fix size", layoutData: new sap.ui.layout.GridData({span: "XL1 L1 M2 S4"})}),
</pre>

<b>Warning:</b> Do not put any layout or other container controls in here. This could damage the visual layout, keyboard support and screen-reader support. Only labels, titles, toolbars and form controls are allowed. Views are also not supported. Allowed form controls implement the interface <code>sap.ui.core.IFormContent</code>.

If editable controls are used as content, the <code>editable</code> property must be set to <code>true</code>, otherwise to <code>false</code>. If the <code>editable</code> property is set incorrectly, there will be visual issues like wrong label alignment or wrong spacing between the controls.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Element>>;

    /**
    * Hidden, for internal use only.
    */
	@:optional var form:haxe.extern.EitherType<String,sap.ui.layout.form.Form>;

    /**
    * Title element of the <code>SimpleForm</code>. Can either be a <code>Title</code> element, or a string.
    */
	@:optional var title:haxe.extern.EitherType<String,sap.ui.core.Title>;

    /**
    * Toolbar of the <code>SimpleForm</code>.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored. If a title is needed inside the <code>Toolbar</code> it must be added at content to the <code>Toolbar</code>. In this case add the <code>Title</code> to the <code>ariaLabelledBy</code> association.
    */
	@:optional var toolbar:haxe.extern.EitherType<String,sap.ui.core.Toolbar>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute <code>aria-labelledby</code>).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
