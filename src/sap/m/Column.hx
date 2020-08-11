package sap.m;

@:native("sap.m.Column")

/**
* The <code>sap.m.Column</code> allows to define column specific properties that will be applied when rendering the <code>sap.m.Table</code>.

See section "{@link topic:6f778a805bc3453dbb66e246d8271839 Defining Column Width}" in the documentation to understand how to define the <code>width</code> property of the <code>sap.m.Column</code> to render a <code>sap.m.Table</code> control properly.
*/
extern class Column extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ColumnArgs):Void {})
	public function new(?mSettings:ColumnArgs):Void;

	/**
	* Destroys the footer in the aggregation {@link #getFooter footer}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFooter( ):sap.m.Column;

	/**
	* Destroys the header in the aggregation {@link #getHeader header}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeader( ):sap.m.Column;

	/**
	* Creates a new subclass of class sap.m.Column with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAutoPopinWidth autoPopinWidth}.

Defines the auto pop-in width for the column.

If the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>, then the <code>autoPopinWidth</code> property is used to calculate the <code>minScreenWidth</code> property of the column in case a fixed width is not set for the column. See {@link sap.m.Column#getWidth} and {@link sap.m.Table#getAutoPopinMode}. <b>Note:</b> A float value is set for the <code>autoPopinWidth</code> property which is internally treated as a rem value.

Default value is <code>8</code>.
	* @return	Value of property <code>autoPopinWidth</code>
	*/
	public function getAutoPopinWidth( ):Float;

	/**
	* Gets current value of property {@link #getDemandPopin demandPopin}.

According to your minScreenWidth settings, the column can be hidden in different screen sizes. Setting this property to true, shows this column as pop-in instead of hiding it. <b>Note:</b> This property gets overwritten if the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>. See {@link sap.m.Table#getAutoPopinMode}

Default value is <code>false</code>.
	* @return	Value of property <code>demandPopin</code>
	*/
	public function getDemandPopin( ):Bool;

	/**
	* Gets content of aggregation {@link #getFooter footer}.

Control to be displayed in the column footer.
	* @return	null
	*/
	public function getFooter( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getHAlign hAlign}.

Defines the horizontal alignment of the column content.

<b>Note:</b> Text controls with a <code>textAlign</code> property inherits the horizontal alignment.

Default value is <code>Begin</code>.
	* @return	Value of property <code>hAlign</code>
	*/
	public function getHAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets content of aggregation {@link #getHeader header}.

Control to be displayed in the column header.
	* @return	null
	*/
	public function getHeader( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getImportance importance}.

Defines the column importance.

If the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>, then the column importance is taken into consideration for calculating the <code>minScreenWidth</code> property and for setting the <code>demandPopin</code> property of the column. See {@link sap.m.Table#getAutoPopinMode}

Default value is <code>None</code>.
	* @return	Value of property <code>importance</code>
	*/
	public function getImportance( ):sap.ui.core.Priority;

	/**
	* Gets current value of property {@link #getMergeDuplicates mergeDuplicates}.

Set <code>true</code> to merge repeating/duplicate cells into one cell block. See <code>mergeFunctionName</code> property to customize.

<b>Note:</b> Merging only happens when rendering the <code>sap.m.Table</code> control, subsequent changes on the cell or item do not have any effect on the merged state of the cells, therefore this feature should not be used together with two-way binding. This property is ignored if any column is configured to be shown as a pop-in. Merging is not supported if the <code>items</code> aggregation of the <code>sap.m.Table</code> control is bound to an {@link sap.ui.model.odata.v4.ODataModel OData V4 model}.

Default value is <code>false</code>.
	* @return	Value of property <code>mergeDuplicates</code>
	*/
	public function getMergeDuplicates( ):Bool;

	/**
	* Gets current value of property {@link #getMergeFunctionName mergeFunctionName}.

Defines the control serialization function if <code>mergeDuplicates</code> property is set to <code>true</code>. The control itself uses this function to compare values of two repeating cells. Default value "getText" is suitable for <code>sap.m.Label</code> and <code>sap.m.Text</code> controls but for the <code>sap.ui.core.Icon</code> control "getSrc" function should be used to merge icons. <b>Note:</b> You can pass one string parameter to given function after "#" sign. e.g. "data#myparameter"

Default value is <code>getText</code>.
	* @return	Value of property <code>mergeFunctionName</code>
	*/
	public function getMergeFunctionName( ):String;

	/**
	* Returns a metadata object for class sap.m.Column.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinScreenWidth minScreenWidth}.

Defines the minimum screen width to show or hide this column. By default column is always shown. The responsive behavior of the <code>sap.m.Table</code> is determined by this property. As an example by setting <code>minScreenWidth</code> property to "40em" (or "640px" or "Tablet") shows this column on tablet (and desktop) but hides on mobile. As you can give specific CSS sizes (e.g: "480px" or "40em"), you can also use the {@link sap.m.ScreenSize} enumeration (e.g: "Phone", "Tablet", "Desktop", "Small", "Medium", "Large", ....). Please also see <code>demandPopin</code> property for further responsive design options. <b>Note:</b> This property gets overwritten if the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>. See {@link sap.m.Table#getAutoPopinMode}
	* @return	Value of property <code>minScreenWidth</code>
	*/
	public function getMinScreenWidth( ):String;

	/**
	* Gets current value of property {@link #getPopinDisplay popinDisplay}.

Defines enumerated display options for the pop-in.

Default value is <code>Block</code>.
	* @return	Value of property <code>popinDisplay</code>
	*/
	public function getPopinDisplay( ):sap.m.PopinDisplay;

	/**
	* Gets current value of property {@link #getSortIndicator sortIndicator}.

Defines if a column is sorted by setting the sort indicator for this column.

<b>Note:</b> Defining this property does not trigger the sorting.

Default value is <code>None</code>.
	* @return	Value of property <code>sortIndicator</code>
	*/
	public function getSortIndicator( ):sap.ui.core.SortOrder;

	/**
	* Gets current value of property {@link #getStyleClass styleClass}.

CSS class name for column contents(header, cells and footer of column). This property can be used for different column styling. If column is shown as pop-in then this class name is applied to related pop-in row.
	* @return	Value of property <code>styleClass</code>
	*/
	public function getStyleClass( ):String;

	/**
	* Gets current value of property {@link #getVAlign vAlign}.

Defines the vertical alignment of the cells in a column. This property does not affect the vertical alignment of header and footer.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>vAlign</code>
	*/
	public function getVAlign( ):sap.ui.core.VerticalAlign;

	/**
	* Gets current value of property {@link #getVisible visible}.

Specifies whether or not the column is visible. Invisible columns are not rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the column. If you leave it empty then this column covers the remaining space. <b>Note:</b> When setting <code>autoPopinMode=true</code> on the table, the columns with a fixed width must either be in px, rem, or em as the table internally calculates the <code>minScreenWidth</code> property for the column. If a column has a fixed width, then this width is used to calculate the <code>minScreenWidth</code> for the <code>autoPopinMode</code>. If a column has a flexible width, such as % or auto, the <code>autoPopinWidth</code> property is used to calculate the <code>minScreenWidth</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getAutoPopinWidth autoPopinWidth}.

Defines the auto pop-in width for the column.

If the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>, then the <code>autoPopinWidth</code> property is used to calculate the <code>minScreenWidth</code> property of the column in case a fixed width is not set for the column. See {@link sap.m.Column#getWidth} and {@link sap.m.Table#getAutoPopinMode}. <b>Note:</b> A float value is set for the <code>autoPopinWidth</code> property which is internally treated as a rem value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>8</code>.
	* @param	fAutoPopinWidth New value for property <code>autoPopinWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoPopinWidth( ?fAutoPopinWidth:Float):sap.m.Column;

	/**
	* Sets a new value for property {@link #getDemandPopin demandPopin}.

According to your minScreenWidth settings, the column can be hidden in different screen sizes. Setting this property to true, shows this column as pop-in instead of hiding it. <b>Note:</b> This property gets overwritten if the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>. See {@link sap.m.Table#getAutoPopinMode}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDemandPopin New value for property <code>demandPopin</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDemandPopin( ?bDemandPopin:Bool):sap.m.Column;

	/**
	* Sets the aggregated {@link #getFooter footer}.
	* @param	oFooter The footer to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooter( oFooter:sap.ui.core.Control):sap.m.Column;

	/**
	* Sets a new value for property {@link #getHAlign hAlign}.

Defines the horizontal alignment of the column content.

<b>Note:</b> Text controls with a <code>textAlign</code> property inherits the horizontal alignment.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sHAlign New value for property <code>hAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHAlign( ?sHAlign:sap.ui.core.TextAlign):sap.m.Column;

	/**
	* Sets the aggregated {@link #getHeader header}.
	* @param	oHeader The header to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeader( oHeader:sap.ui.core.Control):sap.m.Column;

	/**
	* Sets a new value for property {@link #getImportance importance}.

Defines the column importance.

If the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>, then the column importance is taken into consideration for calculating the <code>minScreenWidth</code> property and for setting the <code>demandPopin</code> property of the column. See {@link sap.m.Table#getAutoPopinMode}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sImportance New value for property <code>importance</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImportance( ?sImportance:sap.ui.core.Priority):sap.m.Column;

	/**
	* Sets a new value for property {@link #getMergeDuplicates mergeDuplicates}.

Set <code>true</code> to merge repeating/duplicate cells into one cell block. See <code>mergeFunctionName</code> property to customize.

<b>Note:</b> Merging only happens when rendering the <code>sap.m.Table</code> control, subsequent changes on the cell or item do not have any effect on the merged state of the cells, therefore this feature should not be used together with two-way binding. This property is ignored if any column is configured to be shown as a pop-in. Merging is not supported if the <code>items</code> aggregation of the <code>sap.m.Table</code> control is bound to an {@link sap.ui.model.odata.v4.ODataModel OData V4 model}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bMergeDuplicates New value for property <code>mergeDuplicates</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMergeDuplicates( ?bMergeDuplicates:Bool):sap.m.Column;

	/**
	* Sets a new value for property {@link #getMergeFunctionName mergeFunctionName}.

Defines the control serialization function if <code>mergeDuplicates</code> property is set to <code>true</code>. The control itself uses this function to compare values of two repeating cells. Default value "getText" is suitable for <code>sap.m.Label</code> and <code>sap.m.Text</code> controls but for the <code>sap.ui.core.Icon</code> control "getSrc" function should be used to merge icons. <b>Note:</b> You can pass one string parameter to given function after "#" sign. e.g. "data#myparameter"

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>getText</code>.
	* @param	sMergeFunctionName New value for property <code>mergeFunctionName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMergeFunctionName( ?sMergeFunctionName:String):sap.m.Column;

	/**
	* Sets a new value for property {@link #getMinScreenWidth minScreenWidth}.

Defines the minimum screen width to show or hide this column. By default column is always shown. The responsive behavior of the <code>sap.m.Table</code> is determined by this property. As an example by setting <code>minScreenWidth</code> property to "40em" (or "640px" or "Tablet") shows this column on tablet (and desktop) but hides on mobile. As you can give specific CSS sizes (e.g: "480px" or "40em"), you can also use the {@link sap.m.ScreenSize} enumeration (e.g: "Phone", "Tablet", "Desktop", "Small", "Medium", "Large", ....). Please also see <code>demandPopin</code> property for further responsive design options. <b>Note:</b> This property gets overwritten if the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>. See {@link sap.m.Table#getAutoPopinMode}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMinScreenWidth New value for property <code>minScreenWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinScreenWidth( sMinScreenWidth:String):sap.m.Column;

	/**
	* Sets a new value for property {@link #getPopinDisplay popinDisplay}.

Defines enumerated display options for the pop-in.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Block</code>.
	* @param	sPopinDisplay New value for property <code>popinDisplay</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPopinDisplay( ?sPopinDisplay:sap.m.PopinDisplay):sap.m.Column;

	/**
	* Sets a new value for property {@link #getSortIndicator sortIndicator}.

Defines if a column is sorted by setting the sort indicator for this column.

<b>Note:</b> Defining this property does not trigger the sorting.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sSortIndicator New value for property <code>sortIndicator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSortIndicator( ?sSortIndicator:sap.ui.core.SortOrder):sap.m.Column;

	/**
	* Sets a new value for property {@link #getStyleClass styleClass}.

CSS class name for column contents(header, cells and footer of column). This property can be used for different column styling. If column is shown as pop-in then this class name is applied to related pop-in row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sStyleClass New value for property <code>styleClass</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStyleClass( sStyleClass:String):sap.m.Column;

	/**
	* Sets a new value for property {@link #getVAlign vAlign}.

Defines the vertical alignment of the cells in a column. This property does not affect the vertical alignment of header and footer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sVAlign New value for property <code>vAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVAlign( ?sVAlign:sap.ui.core.VerticalAlign):sap.m.Column;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Specifies whether or not the column is visible. Invisible columns are not rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.m.Column;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the column. If you leave it empty then this column covers the remaining space. <b>Note:</b> When setting <code>autoPopinMode=true</code> on the table, the columns with a fixed width must either be in px, rem, or em as the table internally calculates the <code>minScreenWidth</code> property for the column. If a column has a fixed width, then this width is used to calculate the <code>minScreenWidth</code> for the <code>autoPopinMode</code>. If a column has a flexible width, such as % or auto, the <code>autoPopinWidth</code> property is used to calculate the <code>minScreenWidth</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.Column;
}

typedef ColumnArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Defines the width of the column. If you leave it empty then this column covers the remaining space. <b>Note:</b> When setting <code>autoPopinMode=true</code> on the table, the columns with a fixed width must either be in px, rem, or em as the table internally calculates the <code>minScreenWidth</code> property for the column. If a column has a fixed width, then this width is used to calculate the <code>minScreenWidth</code> for the <code>autoPopinMode</code>. If a column has a flexible width, such as % or auto, the <code>autoPopinWidth</code> property is used to calculate the <code>minScreenWidth</code>.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the horizontal alignment of the column content.

<b>Note:</b> Text controls with a <code>textAlign</code> property inherits the horizontal alignment.
	*/
	@:optional var hAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Defines the vertical alignment of the cells in a column. This property does not affect the vertical alignment of header and footer.
	*/
	@:optional var vAlign:haxe.extern.EitherType<String,sap.ui.core.VerticalAlign>;

	/**
	* CSS class name for column contents(header, cells and footer of column). This property can be used for different column styling. If column is shown as pop-in then this class name is applied to related pop-in row.
	*/
	@:optional var styleClass:String;

	/**
	* Specifies whether or not the column is visible. Invisible columns are not rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the minimum screen width to show or hide this column. By default column is always shown. The responsive behavior of the <code>sap.m.Table</code> is determined by this property. As an example by setting <code>minScreenWidth</code> property to "40em" (or "640px" or "Tablet") shows this column on tablet (and desktop) but hides on mobile. As you can give specific CSS sizes (e.g: "480px" or "40em"), you can also use the {@link sap.m.ScreenSize} enumeration (e.g: "Phone", "Tablet", "Desktop", "Small", "Medium", "Large", ....). Please also see <code>demandPopin</code> property for further responsive design options. <b>Note:</b> This property gets overwritten if the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>. See {@link sap.m.Table#getAutoPopinMode}
	*/
	@:optional var minScreenWidth:String;

	/**
	* According to your minScreenWidth settings, the column can be hidden in different screen sizes. Setting this property to true, shows this column as pop-in instead of hiding it. <b>Note:</b> This property gets overwritten if the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>. See {@link sap.m.Table#getAutoPopinMode}
	*/
	@:optional var demandPopin:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines enumerated display options for the pop-in.
	*/
	@:optional var popinDisplay:haxe.extern.EitherType<String,sap.m.PopinDisplay>;

	/**
	* Set <code>true</code> to merge repeating/duplicate cells into one cell block. See <code>mergeFunctionName</code> property to customize.

<b>Note:</b> Merging only happens when rendering the <code>sap.m.Table</code> control, subsequent changes on the cell or item do not have any effect on the merged state of the cells, therefore this feature should not be used together with two-way binding. This property is ignored if any column is configured to be shown as a pop-in. Merging is not supported if the <code>items</code> aggregation of the <code>sap.m.Table</code> control is bound to an {@link sap.ui.model.odata.v4.ODataModel OData V4 model}.
	*/
	@:optional var mergeDuplicates:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the control serialization function if <code>mergeDuplicates</code> property is set to <code>true</code>. The control itself uses this function to compare values of two repeating cells. Default value "getText" is suitable for <code>sap.m.Label</code> and <code>sap.m.Text</code> controls but for the <code>sap.ui.core.Icon</code> control "getSrc" function should be used to merge icons. <b>Note:</b> You can pass one string parameter to given function after "#" sign. e.g. "data#myparameter"
	*/
	@:optional var mergeFunctionName:String;

	/**
	* Defines if a column is sorted by setting the sort indicator for this column.

<b>Note:</b> Defining this property does not trigger the sorting.
	*/
	@:optional var sortIndicator:haxe.extern.EitherType<String,sap.ui.core.SortOrder>;

	/**
	* Defines the column importance.

If the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>, then the column importance is taken into consideration for calculating the <code>minScreenWidth</code> property and for setting the <code>demandPopin</code> property of the column. See {@link sap.m.Table#getAutoPopinMode}
	*/
	@:optional var importance:haxe.extern.EitherType<String,sap.ui.core.Priority>;

	/**
	* Defines the auto pop-in width for the column.

If the <code>sap.m.Table</code> control is configured with <code>autoPopinMode=true</code>, then the <code>autoPopinWidth</code> property is used to calculate the <code>minScreenWidth</code> property of the column in case a fixed width is not set for the column. See {@link sap.m.Column#getWidth} and {@link sap.m.Table#getAutoPopinMode}. <b>Note:</b> A float value is set for the <code>autoPopinWidth</code> property which is internally treated as a rem value.
	*/
	@:optional var autoPopinWidth:haxe.extern.EitherType<String,Float>;

    /**
    * Control to be displayed in the column header.
    */
	@:optional var header:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Control to be displayed in the column footer.
    */
	@:optional var footer:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
