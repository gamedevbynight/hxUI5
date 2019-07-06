package sap.ui.layout.form;

@:native("sap.ui.layout.form.ResponsiveGridLayout")

/**
* The <code>ResponsiveGridLayout</code> control renders a <code>Form</code> using a responsive grid. Internally the <code>Grid</code> control is used for rendering. Using this layout, the <code>Form</code> is rendered in a responsive way. Depending on the available space, the <code>FormContainers</code> are rendered in one or different columns and the labels are rendered in the same row as the fields or above the fields. This behavior can be influenced by the properties of this layout control.

On the <code>FormContainers</code>, labels and content fields, <code>GridData</code> can be used to change the default rendering. <code>GridData</code> is not supported for <code>FormElements</code>.

<b>Note:</b> If <code>GridData</code> is used, this may result in a much more complex layout than the default one. This means that in some cases, the calculation for the other content may not bring the expected result. In such cases, <code>GridData</code> should be used for all content controls to disable the default behavior.

This control cannot be used stand-alone, it just renders a <code>Form</code>, so it must be assigned to a <code>Form</code> using the <code>layout</code> aggregation.
*/
extern class ResponsiveGridLayout extends sap.ui.layout.form.FormLayout
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveGridLayoutArgs):Void {})
	public function new(?mSettings:ResponsiveGridLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.form.ResponsiveGridLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.FormLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAdjustLabelSpan adjustLabelSpan}.

If set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the number of <code>FormContainers</code> in one row. If only one <code>FormContainer</code> is displayed in one row, <code>labelSpanM</code> is used to define the size of the label. This is the same for medium and large <code>Forms</code>. This is done to align the labels on forms where full-size <code>FormContainers</code> and multiple-column rows are used in the same <code>Form</code> (because every <code>FormContainer</code> has its own <code>Grid</code> inside).

If not set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the <code>Form</code> size. The number of <code>FormContainers</code> doesn't matter in this case.

Default value is <code>true</code>.
	* @return	Value of property <code>adjustLabelSpan</code>
	*/
	public function getAdjustLabelSpan( ):Bool;

	/**
	* Gets current value of property {@link #getBreakpointL breakpointL}.

Breakpoint (in pixel) between Medium size and Large size.

Default value is <code>1024</code>.
	* @return	Value of property <code>breakpointL</code>
	*/
	public function getBreakpointL( ):Int;

	/**
	* Gets current value of property {@link #getBreakpointM breakpointM}.

Breakpoint (in pixel) between Small size and Medium size.

Default value is <code>600</code>.
	* @return	Value of property <code>breakpointM</code>
	*/
	public function getBreakpointM( ):Int;

	/**
	* Gets current value of property {@link #getBreakpointXL breakpointXL}.

Breakpoint (in pixel) between large size and extra large (XL) size.

Default value is <code>1440</code>.
	* @return	Value of property <code>breakpointXL</code>
	*/
	public function getBreakpointXL( ):Int;

	/**
	* Gets current value of property {@link #getColumnsL columnsL}.

Number of columns for large size.

The number of columns for large size must not be smaller than the number of columns for medium size.

Default value is <code>2</code>.
	* @return	Value of property <code>columnsL</code>
	*/
	public function getColumnsL( ):Int;

	/**
	* Gets current value of property {@link #getColumnsM columnsM}.

Number of columns for medium size.

Default value is <code>1</code>.
	* @return	Value of property <code>columnsM</code>
	*/
	public function getColumnsM( ):Int;

	/**
	* Gets current value of property {@link #getColumnsXL columnsXL}.

Number of columns for extra large size.

The number of columns for extra large size must not be smaller than the number of columns for large size. <b>Note:</b> If the default value -1 is not overwritten with the meaningful one then the <code>columnsL</code> value is used (from the backward compatibility reasons).

Default value is <code>-1</code>.
	* @return	Value of property <code>columnsXL</code>
	*/
	public function getColumnsXL( ):Int;

	/**
	* Gets current value of property {@link #getEmptySpanL emptySpanL}.

Number of grid cells that are empty at the end of each line on large size.

Default value is <code>0</code>.
	* @return	Value of property <code>emptySpanL</code>
	*/
	public function getEmptySpanL( ):Int;

	/**
	* Gets current value of property {@link #getEmptySpanM emptySpanM}.

Number of grid cells that are empty at the end of each line on medium size.

Default value is <code>0</code>.
	* @return	Value of property <code>emptySpanM</code>
	*/
	public function getEmptySpanM( ):Int;

	/**
	* Gets current value of property {@link #getEmptySpanS emptySpanS}.

Number of grid cells that are empty at the end of each line on small size.

Default value is <code>0</code>.
	* @return	Value of property <code>emptySpanS</code>
	*/
	public function getEmptySpanS( ):Int;

	/**
	* Gets current value of property {@link #getEmptySpanXL emptySpanXL}.

Number of grid cells that are empty at the end of each line on extra large size.

<b>Note:</b> If the default value -1 is not overwritten with the meaningful one then the <code>emptySpanL</code> value is used.

Default value is <code>-1</code>.
	* @return	Value of property <code>emptySpanXL</code>
	*/
	public function getEmptySpanXL( ):Int;

	/**
	* Gets current value of property {@link #getLabelSpanL labelSpanL}.

Default span for labels in large size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set, this property is only used if more than 1 <code>FormContainer</code> is in one line. If only 1 <code>FormContainer</code> is in the line, then the <code>labelSpanM</code> value is used.

Default value is <code>4</code>.
	* @return	Value of property <code>labelSpanL</code>
	*/
	public function getLabelSpanL( ):Int;

	/**
	* Gets current value of property {@link #getLabelSpanM labelSpanM}.

Default span for labels in medium size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set this property is used for full-size <code>FormContainers</code>. If more than one <code>FormContainer</code> is in one line, <code>labelSpanL</code> is used.

Default value is <code>2</code>.
	* @return	Value of property <code>labelSpanM</code>
	*/
	public function getLabelSpanM( ):Int;

	/**
	* Gets current value of property {@link #getLabelSpanS labelSpanS}.

Default span for labels in small size.

Default value is <code>12</code>.
	* @return	Value of property <code>labelSpanS</code>
	*/
	public function getLabelSpanS( ):Int;

	/**
	* Gets current value of property {@link #getLabelSpanXL labelSpanXL}.

Default span for labels in extra large size.

<b>Note:</b> If the default value -1 is not overwritten with the meaningful one then the <code>labelSpanL</code> value is used.

Default value is <code>-1</code>.
	* @return	Value of property <code>labelSpanXL</code>
	*/
	public function getLabelSpanXL( ):Int;

	/**
	* Returns a metadata object for class sap.ui.layout.form.ResponsiveGridLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getSingleContainerFullSize singleContainerFullSize}.

If the <code>Form</code> contains only one single <code>FormContainer</code> and this property is set, the <code>FormContainer</code> is displayed using the full size of the <code>Form</code>. In this case the properties <code>columnsXL</code>, <code>columnsL</code> and <code>columnsM</code> are ignored.

In all other cases the <code>FormContainer</code> is displayed in the size of one column.

Default value is <code>true</code>.
	* @return	Value of property <code>singleContainerFullSize</code>
	*/
	public function getSingleContainerFullSize( ):Bool;

	/**
	* Sets a new value for property {@link #getAdjustLabelSpan adjustLabelSpan}.

If set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the number of <code>FormContainers</code> in one row. If only one <code>FormContainer</code> is displayed in one row, <code>labelSpanM</code> is used to define the size of the label. This is the same for medium and large <code>Forms</code>. This is done to align the labels on forms where full-size <code>FormContainers</code> and multiple-column rows are used in the same <code>Form</code> (because every <code>FormContainer</code> has its own <code>Grid</code> inside).

If not set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the <code>Form</code> size. The number of <code>FormContainers</code> doesn't matter in this case.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAdjustLabelSpan New value for property <code>adjustLabelSpan</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdjustLabelSpan( bAdjustLabelSpan:Bool):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getBreakpointL breakpointL}.

Breakpoint (in pixel) between Medium size and Large size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1024</code>.
	* @param	iBreakpointL New value for property <code>breakpointL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBreakpointL( iBreakpointL:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getBreakpointM breakpointM}.

Breakpoint (in pixel) between Small size and Medium size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>600</code>.
	* @param	iBreakpointM New value for property <code>breakpointM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBreakpointM( iBreakpointM:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getBreakpointXL breakpointXL}.

Breakpoint (in pixel) between large size and extra large (XL) size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1440</code>.
	* @param	iBreakpointXL New value for property <code>breakpointXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBreakpointXL( iBreakpointXL:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getColumnsL columnsL}.

Number of columns for large size.

The number of columns for large size must not be smaller than the number of columns for medium size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	iColumnsL New value for property <code>columnsL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsL( iColumnsL:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getColumnsM columnsM}.

Number of columns for medium size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iColumnsM New value for property <code>columnsM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsM( iColumnsM:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getColumnsXL columnsXL}.

Number of columns for extra large size.

The number of columns for extra large size must not be smaller than the number of columns for large size. <b>Note:</b> If the default value -1 is not overwritten with the meaningful one then the <code>columnsL</code> value is used (from the backward compatibility reasons).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iColumnsXL New value for property <code>columnsXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsXL( iColumnsXL:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getEmptySpanL emptySpanL}.

Number of grid cells that are empty at the end of each line on large size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iEmptySpanL New value for property <code>emptySpanL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmptySpanL( iEmptySpanL:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getEmptySpanM emptySpanM}.

Number of grid cells that are empty at the end of each line on medium size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iEmptySpanM New value for property <code>emptySpanM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmptySpanM( iEmptySpanM:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getEmptySpanS emptySpanS}.

Number of grid cells that are empty at the end of each line on small size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iEmptySpanS New value for property <code>emptySpanS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmptySpanS( iEmptySpanS:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getEmptySpanXL emptySpanXL}.

Number of grid cells that are empty at the end of each line on extra large size.

<b>Note:</b> If the default value -1 is not overwritten with the meaningful one then the <code>emptySpanL</code> value is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iEmptySpanXL New value for property <code>emptySpanXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmptySpanXL( iEmptySpanXL:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getLabelSpanL labelSpanL}.

Default span for labels in large size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set, this property is only used if more than 1 <code>FormContainer</code> is in one line. If only 1 <code>FormContainer</code> is in the line, then the <code>labelSpanM</code> value is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>4</code>.
	* @param	iLabelSpanL New value for property <code>labelSpanL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelSpanL( iLabelSpanL:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getLabelSpanM labelSpanM}.

Default span for labels in medium size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set this property is used for full-size <code>FormContainers</code>. If more than one <code>FormContainer</code> is in one line, <code>labelSpanL</code> is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	iLabelSpanM New value for property <code>labelSpanM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelSpanM( iLabelSpanM:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getLabelSpanS labelSpanS}.

Default span for labels in small size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>12</code>.
	* @param	iLabelSpanS New value for property <code>labelSpanS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelSpanS( iLabelSpanS:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getLabelSpanXL labelSpanXL}.

Default span for labels in extra large size.

<b>Note:</b> If the default value -1 is not overwritten with the meaningful one then the <code>labelSpanL</code> value is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iLabelSpanXL New value for property <code>labelSpanXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelSpanXL( iLabelSpanXL:Int):sap.ui.layout.form.ResponsiveGridLayout;

	/**
	* Sets a new value for property {@link #getSingleContainerFullSize singleContainerFullSize}.

If the <code>Form</code> contains only one single <code>FormContainer</code> and this property is set, the <code>FormContainer</code> is displayed using the full size of the <code>Form</code>. In this case the properties <code>columnsXL</code>, <code>columnsL</code> and <code>columnsM</code> are ignored.

In all other cases the <code>FormContainer</code> is displayed in the size of one column.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSingleContainerFullSize New value for property <code>singleContainerFullSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSingleContainerFullSize( bSingleContainerFullSize:Bool):sap.ui.layout.form.ResponsiveGridLayout;
}

typedef ResponsiveGridLayoutArgs = sap.ui.layout.form.FormLayout.FormLayoutArgs & {

	/**
	* Default span for labels in extra large size.

<b>Note:</b> If the default value -1 is not overwritten with the meaningful one then the <code>labelSpanL</code> value is used.
	*/
	@:optional var labelSpanXL:haxe.extern.EitherType<String,Int>;

	/**
	* Default span for labels in large size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set, this property is only used if more than 1 <code>FormContainer</code> is in one line. If only 1 <code>FormContainer</code> is in the line, then the <code>labelSpanM</code> value is used.
	*/
	@:optional var labelSpanL:haxe.extern.EitherType<String,Int>;

	/**
	* Default span for labels in medium size.

<b>Note:</b> If <code>adjustLabelSpan</code> is set this property is used for full-size <code>FormContainers</code>. If more than one <code>FormContainer</code> is in one line, <code>labelSpanL</code> is used.
	*/
	@:optional var labelSpanM:haxe.extern.EitherType<String,Int>;

	/**
	* Default span for labels in small size.
	*/
	@:optional var labelSpanS:haxe.extern.EitherType<String,Int>;

	/**
	* If set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the number of <code>FormContainers</code> in one row. If only one <code>FormContainer</code> is displayed in one row, <code>labelSpanM</code> is used to define the size of the label. This is the same for medium and large <code>Forms</code>. This is done to align the labels on forms where full-size <code>FormContainers</code> and multiple-column rows are used in the same <code>Form</code> (because every <code>FormContainer</code> has its own <code>Grid</code> inside).

If not set, the usage of <code>labelSpanL</code> and <code>labelSpanM</code> are dependent on the <code>Form</code> size. The number of <code>FormContainers</code> doesn't matter in this case.
	*/
	@:optional var adjustLabelSpan:haxe.extern.EitherType<String,Bool>;

	/**
	* Number of grid cells that are empty at the end of each line on extra large size.

<b>Note:</b> If the default value -1 is not overwritten with the meaningful one then the <code>emptySpanL</code> value is used.
	*/
	@:optional var emptySpanXL:haxe.extern.EitherType<String,Int>;

	/**
	* Number of grid cells that are empty at the end of each line on large size.
	*/
	@:optional var emptySpanL:haxe.extern.EitherType<String,Int>;

	/**
	* Number of grid cells that are empty at the end of each line on medium size.
	*/
	@:optional var emptySpanM:haxe.extern.EitherType<String,Int>;

	/**
	* Number of grid cells that are empty at the end of each line on small size.
	*/
	@:optional var emptySpanS:haxe.extern.EitherType<String,Int>;

	/**
	* Number of columns for extra large size.

The number of columns for extra large size must not be smaller than the number of columns for large size. <b>Note:</b> If the default value -1 is not overwritten with the meaningful one then the <code>columnsL</code> value is used (from the backward compatibility reasons).
	*/
	@:optional var columnsXL:haxe.extern.EitherType<String,Int>;

	/**
	* Number of columns for large size.

The number of columns for large size must not be smaller than the number of columns for medium size.
	*/
	@:optional var columnsL:haxe.extern.EitherType<String,Int>;

	/**
	* Number of columns for medium size.
	*/
	@:optional var columnsM:haxe.extern.EitherType<String,Int>;

	/**
	* If the <code>Form</code> contains only one single <code>FormContainer</code> and this property is set, the <code>FormContainer</code> is displayed using the full size of the <code>Form</code>. In this case the properties <code>columnsXL</code>, <code>columnsL</code> and <code>columnsM</code> are ignored.

In all other cases the <code>FormContainer</code> is displayed in the size of one column.
	*/
	@:optional var singleContainerFullSize:haxe.extern.EitherType<String,Bool>;

	/**
	* Breakpoint (in pixel) between large size and extra large (XL) size.
	*/
	@:optional var breakpointXL:haxe.extern.EitherType<String,Int>;

	/**
	* Breakpoint (in pixel) between Medium size and Large size.
	*/
	@:optional var breakpointL:haxe.extern.EitherType<String,Int>;

	/**
	* Breakpoint (in pixel) between Small size and Medium size.
	*/
	@:optional var breakpointM:haxe.extern.EitherType<String,Int>;
}
