package sap.ui.table;

@:native("sap.ui.table.Column")

/**
* The column allows you to define column specific properties that will be applied when rendering the table.
*/
extern class Column extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ColumnArgs):Void {})
	public function new(?mSettings:ColumnArgs):Void;

	/**
	* Adds some multiLabel to the aggregation {@link #getMultiLabels multiLabels}.
	* @param	oMultiLabel The multiLabel to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMultiLabel( oMultiLabel:sap.ui.core.Control):sap.ui.table.Column;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:columnMenuOpen columnMenuOpen} event of this <code>sap.ui.table.Column</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.Column</code> itself.

Fires before the column menu is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.Column</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachColumnMenuOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Column;

	/**
	* Destroys the label in the aggregation {@link #getLabel label}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLabel( ):sap.ui.table.Column;

	/**
	* Destroys the menu in the aggregation {@link #getMenu menu}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMenu( ):sap.ui.table.Column;

	/**
	* Destroys all the multiLabels in the aggregation {@link #getMultiLabels multiLabels}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMultiLabels( ):sap.ui.table.Column;

	/**
	* Destroys the template in the aggregation {@link #getTemplate template}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTemplate( ):sap.ui.table.Column;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:columnMenuOpen columnMenuOpen} event of this <code>sap.ui.table.Column</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachColumnMenuOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.Column;

	/**
	* Creates a new subclass of class sap.ui.table.Column with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAutoResizable autoResizable}.

Enables auto-resizing of the column on double clicking the resize bar. The width is determined on the widest currently displayed content. It does not consider rows which are currently not scrolled into view. Currently only implemented to work with the following controls: <code>sap.m.Text, sap.m.Label, sap.m.Link, sap.m.Input, sap.ui.commons.TextView, sap.ui.commons.Label, sap.ui.commons.Link and sap.ui.commons.TextField, sap.ui.commons.Checkbox, sap.m.CheckBox</code>

Default value is <code>false</code>.
	* @return	Value of property <code>autoResizable</code>
	*/
	public function getAutoResizable( ):Bool;

	/**
	* Gets current value of property {@link #getDefaultFilterOperator defaultFilterOperator}.

If this property is set, the default filter operator of the column is overridden. By default <code>Contains</code> is used for string and <code>EQ</code> for other types. A valid <code>sap.ui.model.FilterOperator</code> needs to be passed.
	* @return	Value of property <code>defaultFilterOperator</code>
	*/
	public function getDefaultFilterOperator( ):String;

	/**
	* Gets current value of property {@link #getFiltered filtered}.

Indicates if the column is filtered. This property only controls if a filter indicator is displayed in the column header - it does not trigger the filter function. The column can be filtered using {@link sap.ui.table.Table#filter}.

Default value is <code>false</code>.
	* @return	Value of property <code>filtered</code>
	*/
	public function getFiltered( ):Bool;

	/**
	* Gets current value of property {@link #getFilterOperator filterOperator}.

Filter operator to use when filtering this column.
	* @return	Value of property <code>filterOperator</code>
	*/
	public function getFilterOperator( ):String;

	/**
	* Gets current value of property {@link #getFilterProperty filterProperty}.

Specifies the binding property on which the column shall be filtered. Since the column template may have composite bindings, it's not possible to figure out on which binding property the filter shall be applied. Therefore the binding property for filtering must be specified. For example, if the first name and last name are displayed in the same column, only one of the two can be defined as <code>filterProperty</code>.

A column menu entry for filtering can only be generated if the <code>filterProperty</code> is set. The default menu entry is a text input field.
	* @return	Value of property <code>filterProperty</code>
	*/
	public function getFilterProperty( ):String;

	/**
	* Gets current value of property {@link #getFilterType filterType}.

Type of filter. It is used to transform the search term into the specified type and should be the same as defined in the binding for the column template. Default value is <code>sap.ui.model.type.String</code>. It can be set to the class name of the type, e.g.: <code>sap.ui.model.type.Date</code>, or an expression similar to the binding syntax, e.g.: <code>"\{type: 'sap.ui.model.type.Date', formatOptions: \{UTC: true\}, constraints: \{\} \}"</code>. Here the escaping is mandatory to avoid handling by the binding parser. As an alternative, a function can be passed that takes over the conversion. This cannot be done in the XMLView, use {@link #setFilterType} instead.
	* @return	Value of property <code>filterType</code>
	*/
	public function getFilterType( ):Dynamic;

	/**
	* Gets current value of property {@link #getFilterValue filterValue}.

Specifies the value of the filter as string (will be converted into the proper data type). It is possible to provide a filterOperator as string, as shown here: <pre>
&gt; 50
&lt; 100
&gt;= 150
&lt;= 200
= 250
!= 300
something    ends with
something*    starts with
something*   contains
some..thing   between
50..100       between
</pre>
	* @return	Value of property <code>filterValue</code>
	*/
	public function getFilterValue( ):String;

	/**
	* Gets current value of property {@link #getGrouped grouped}.

Indicates if the column is grouped.

Default value is <code>false</code>.
	* @return	Value of property <code>grouped</code>
	*/
	public function getGrouped( ):Bool;

	/**
	* Gets current value of property {@link #getHAlign hAlign}.

Horizontal alignment of the column content. Controls with a text align do not inherit the horizontal alignment. You have to set the text align directly on the template.

Default value is <code>Begin</code>.
	* @return	Value of property <code>hAlign</code>
	*/
	public function getHAlign( ):sap.ui.core.HorizontalAlign;

	/**
	* Gets current value of property {@link #getHeaderSpan headerSpan}.

If this property is set, a span is applied for the header. When moving columns, all columns which are part of the header will be moved. The <code>headerSpan</code> can be either an integer or an array of integers (if you use the multi header feature of the table). If you only specify an integer, this span is applied for all header rows, with multiple integers you can specify a separate span for each header row. <b>Note:</b> Only columns with a span equal to 1 can have a column menu. When setting a column to fixed, all columns which are part of the header with the greatest span will be set to fixed.

Default value is <code>1</code>.
	* @return	Value of property <code>headerSpan</code>
	*/
	public function getHeaderSpan( ):Dynamic;

	/**
	* Gets content of aggregation {@link #getLabel label}.

Label of the column which is displayed in the column header. This aggregation is for the standard behavior, where you only want to display one single row header. If a string is supplied, a default label control will be created. Which control this is depends on the loaded libraries.
	* @return	null
	*/
	public function getLabel( ):Dynamic;

	/**
	* Gets content of aggregation {@link #getMenu menu}.

The menu used by the column. By default the {@link sap.ui.table.ColumnMenu} is used.

<b>Note:</b> Applications must not use or change the default <code>sap.ui.table.ColumnMenu</code> of a column in any way or create own instances of <code>sap.ui.table.ColumnMenu</code>. To add a custom menu to a column, use the aggregation <code>menu</code> with a new instance of <code>sap.ui.unified.Menu</code>.
	* @return	null
	*/
	public function getMenu( ):sap.ui.unified.Menu;

	/**
	* Returns a metadata object for class sap.ui.table.Column.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinWidth minWidth}.

Defines the minimum width of a column in pixels. <p>This property only has an effect if the given column width is flexible, for example with width <code>auto</code>. <p>This property only influences the automatic behavior. If a user adjusts the column width manually, the column width can become smaller. <p>Minimal column width is device-dependent, for example on desktop devices the column will not be smaller than 48px.

Default value is <code>0</code>.
	* @return	Value of property <code>minWidth</code>
	*/
	public function getMinWidth( ):Int;

	/**
	* Gets content of aggregation {@link #getMultiLabels multiLabels}.

Labels of the column which are displayed in the column header. Define a control for each header row in the table. Use this aggregation if you want to use multiple headers per column.
	* @return	null
	*/
	public function getMultiLabels( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getName name}.

The name of the column which is used for the text representation of this column, for example, in menus. If not set, the text from the multiLabels aggregation or the label aggregation (in that order) is used as a fallback option.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets current value of property {@link #getResizable resizable}.

If set to true, the column can be resized either using the resize bar (by mouse) or using the keyboard (SHIFT + Left/Right Arrow keys)

Default value is <code>true</code>.
	* @return	Value of property <code>resizable</code>
	*/
	public function getResizable( ):Bool;

	/**
	* Gets current value of property {@link #getShowFilterMenuEntry showFilterMenuEntry}.

Defines if the filter menu entry is displayed

Default value is <code>true</code>.
	* @return	Value of property <code>showFilterMenuEntry</code>
	*/
	public function getShowFilterMenuEntry( ):Bool;

	/**
	* Gets current value of property {@link #getShowSortMenuEntry showSortMenuEntry}.

Defines if the sort menu entries are displayed

Default value is <code>true</code>.
	* @return	Value of property <code>showSortMenuEntry</code>
	*/
	public function getShowSortMenuEntry( ):Bool;

	/**
	* Gets current value of property {@link #getSorted sorted}.

Indicates if the column is sorted. This property only controls if a sort indicator is displayed in the column header - it does not trigger the sort function. The column can be sorted using {@link sap.ui.table.Table#sort}.

Default value is <code>false</code>.
	* @return	Value of property <code>sorted</code>
	*/
	public function getSorted( ):Bool;

	/**
	* Gets current value of property {@link #getSortOrder sortOrder}.

This property indicates the sort direction (Ascending or Descending). The corresponding icon will be rendered if the property <code>sorted</code> is <code>true</code>

Default value is <code>Ascending</code>.
	* @return	Value of property <code>sortOrder</code>
	*/
	public function getSortOrder( ):sap.ui.table.SortOrder;

	/**
	* Gets current value of property {@link #getSortProperty sortProperty}.

Specifies the binding property on which the column will sort. Since the column template may have composite bindings, it's not possible to figure out on which binding property the sort shall be applied. Therefore the binding property for sorting must be specified. For example, if the first name and last name are displayed in the same column, only one of the two can be defined as <code>sortProperty</code>.

A column menu entry for sorting can only be generated if the <code>sortProperty</code> is set.
	* @return	Value of property <code>sortProperty</code>
	*/
	public function getSortProperty( ):String;

	/**
	* Gets content of aggregation {@link #getTemplate template}.

Template (cell renderer) of this column. A template is decoupled from the column. Each time the template's properties or aggregations have been changed, the template has to be applied again via <code>setTemplate</code> for the changes to take effect. If a string is defined, a default text control will be created with its text property bound to the value of the string. The default template depends on the libraries loaded. If there is no template, the column will not be rendered in the table. The set of supported controls is limited. See section "{@link topic:148892ff9aea4a18b912829791e38f3e Tables: Which One Should I Choose?}" in the documentation for more details. While it is technically possible to also use other controls, doing so might lead to issues with regards to scrolling, alignment, condensed mode, screen reader support, and keyboard support.
	* @return	null
	*/
	public function getTemplate( ):Dynamic;

	/**
	* Gets current value of property {@link #getVisible visible}.

Invisible controls are not rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the column in CSS units. Default value is <code>auto</code>, see <a href="https://www.w3.org/TR/CSS2/tables.html#width-layout"></a> <p>Minimal column width is device-dependent, for example on desktop devices the column will not be smaller than 48px. <p>This property can be changed by the user or by the application configuration/personalization. <p>If a user adjusts the column width manually, the resulting value is always set in pixels. In addition, other columns with width <code>auto</code> get a fixed minimum width and do not shrink after the resizing.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getMultiLabels multiLabels}. and returns its index if found or -1 otherwise.
	* @param	oMultiLabel The multiLabel whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfMultiLabel( oMultiLabel:sap.ui.core.Control):Int;

	/**
	* Inserts a multiLabel into the aggregation {@link #getMultiLabels multiLabels}.
	* @param	oMultiLabel The multiLabel to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the multiLabel should be inserted at; for a negative value of <code>iIndex</code>, the multiLabel is inserted at position 0; for a value greater than the current size of the aggregation, the multiLabel is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMultiLabel( oMultiLabel:sap.ui.core.Control, iIndex:Int):sap.ui.table.Column;

	/**
	* Removes all the controls from the aggregation {@link #getMultiLabels multiLabels}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllMultiLabels( ):Array<sap.ui.core.Control>;
	@:overload( function(vMultiLabel:Int):sap.ui.core.Control{ })
	@:overload( function(vMultiLabel:String):sap.ui.core.Control{ })

	/**
	* Removes a multiLabel from the aggregation {@link #getMultiLabels multiLabels}.
	* @param	vMultiLabel The multiLabel to remove or its index or id
	* @return	The removed multiLabel or <code>null</code>
	*/
	public function removeMultiLabel( vMultiLabel:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getAutoResizable autoResizable}.

Enables auto-resizing of the column on double clicking the resize bar. The width is determined on the widest currently displayed content. It does not consider rows which are currently not scrolled into view. Currently only implemented to work with the following controls: <code>sap.m.Text, sap.m.Label, sap.m.Link, sap.m.Input, sap.ui.commons.TextView, sap.ui.commons.Label, sap.ui.commons.Link and sap.ui.commons.TextField, sap.ui.commons.Checkbox, sap.m.CheckBox</code>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAutoResizable New value for property <code>autoResizable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoResizable( bAutoResizable:Bool):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getDefaultFilterOperator defaultFilterOperator}.

If this property is set, the default filter operator of the column is overridden. By default <code>Contains</code> is used for string and <code>EQ</code> for other types. A valid <code>sap.ui.model.FilterOperator</code> needs to be passed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDefaultFilterOperator New value for property <code>defaultFilterOperator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultFilterOperator( sDefaultFilterOperator:String):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getFiltered filtered}.

Indicates if the column is filtered. This property only controls if a filter indicator is displayed in the column header - it does not trigger the filter function. The column can be filtered using {@link sap.ui.table.Table#filter}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFiltered New value for property <code>filtered</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFiltered( bFiltered:Bool):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getFilterOperator filterOperator}.

Filter operator to use when filtering this column.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFilterOperator New value for property <code>filterOperator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilterOperator( sFilterOperator:String):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getFilterProperty filterProperty}.

Specifies the binding property on which the column shall be filtered. Since the column template may have composite bindings, it's not possible to figure out on which binding property the filter shall be applied. Therefore the binding property for filtering must be specified. For example, if the first name and last name are displayed in the same column, only one of the two can be defined as <code>filterProperty</code>.

A column menu entry for filtering can only be generated if the <code>filterProperty</code> is set. The default menu entry is a text input field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFilterProperty New value for property <code>filterProperty</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilterProperty( sFilterProperty:String):sap.ui.table.Column;

	/**
	* The filter type can be the class name of a type, an expression similar to the binding syntax, or a function. A function receives the entered filter value as a parameter and should return the appropriate value for the filter expression.
	* @param	vType The filter type
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilterType( vType:Dynamic):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getFilterValue filterValue}.

Specifies the value of the filter as string (will be converted into the proper data type). It is possible to provide a filterOperator as string, as shown here: <pre>
&gt; 50
&lt; 100
&gt;= 150
&lt;= 200
= 250
!= 300
something    ends with
something*    starts with
something*   contains
some..thing   between
50..100       between
</pre>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFilterValue New value for property <code>filterValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilterValue( sFilterValue:String):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getGrouped grouped}.

Indicates if the column is grouped.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bGrouped New value for property <code>grouped</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrouped( bGrouped:Bool):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getHAlign hAlign}.

Horizontal alignment of the column content. Controls with a text align do not inherit the horizontal alignment. You have to set the text align directly on the template.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sHAlign New value for property <code>hAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHAlign( sHAlign:sap.ui.core.HorizontalAlign):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getHeaderSpan headerSpan}.

If this property is set, a span is applied for the header. When moving columns, all columns which are part of the header will be moved. The <code>headerSpan</code> can be either an integer or an array of integers (if you use the multi header feature of the table). If you only specify an integer, this span is applied for all header rows, with multiple integers you can specify a separate span for each header row. <b>Note:</b> Only columns with a span equal to 1 can have a column menu. When setting a column to fixed, all columns which are part of the header with the greatest span will be set to fixed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	oHeaderSpan New value for property <code>headerSpan</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderSpan( oHeaderSpan:Dynamic):sap.ui.table.Column;
	@:overload( function(vLabel:sap.ui.core.Control):sap.ui.table.Column{ })

	/**
	* Sets the aggregated {@link #getLabel label}.
	* @param	vLabel The label to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabel( vLabel:String):sap.ui.table.Column;

	/**
	* Sets the aggregated {@link #getMenu menu}.
	* @param	oMenu The menu to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMenu( oMenu:sap.ui.unified.Menu):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getMinWidth minWidth}.

Defines the minimum width of a column in pixels. <p>This property only has an effect if the given column width is flexible, for example with width <code>auto</code>. <p>This property only influences the automatic behavior. If a user adjusts the column width manually, the column width can become smaller. <p>Minimal column width is device-dependent, for example on desktop devices the column will not be smaller than 48px.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMinWidth New value for property <code>minWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinWidth( iMinWidth:Int):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getName name}.

The name of the column which is used for the text representation of this column, for example, in menus. If not set, the text from the multiLabels aggregation or the label aggregation (in that order) is used as a fallback option.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getResizable resizable}.

If set to true, the column can be resized either using the resize bar (by mouse) or using the keyboard (SHIFT + Left/Right Arrow keys)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bResizable New value for property <code>resizable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResizable( bResizable:Bool):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getShowFilterMenuEntry showFilterMenuEntry}.

Defines if the filter menu entry is displayed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowFilterMenuEntry New value for property <code>showFilterMenuEntry</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowFilterMenuEntry( bShowFilterMenuEntry:Bool):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getShowSortMenuEntry showSortMenuEntry}.

Defines if the sort menu entries are displayed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowSortMenuEntry New value for property <code>showSortMenuEntry</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSortMenuEntry( bShowSortMenuEntry:Bool):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getSorted sorted}.

Indicates if the column is sorted. This property only controls if a sort indicator is displayed in the column header - it does not trigger the sort function. The column can be sorted using {@link sap.ui.table.Table#sort}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSorted New value for property <code>sorted</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSorted( bSorted:Bool):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getSortOrder sortOrder}.

This property indicates the sort direction (Ascending or Descending). The corresponding icon will be rendered if the property <code>sorted</code> is <code>true</code>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Ascending</code>.
	* @param	sSortOrder New value for property <code>sortOrder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSortOrder( sSortOrder:sap.ui.table.SortOrder):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getSortProperty sortProperty}.

Specifies the binding property on which the column will sort. Since the column template may have composite bindings, it's not possible to figure out on which binding property the sort shall be applied. Therefore the binding property for sorting must be specified. For example, if the first name and last name are displayed in the same column, only one of the two can be defined as <code>sortProperty</code>.

A column menu entry for sorting can only be generated if the <code>sortProperty</code> is set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSortProperty New value for property <code>sortProperty</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSortProperty( sSortProperty:String):sap.ui.table.Column;
	@:overload( function(vTemplate:sap.ui.core.Control):sap.ui.table.Column{ })

	/**
	* Sets the aggregated {@link #getTemplate template}.
	* @param	vTemplate The template to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTemplate( vTemplate:String):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Invisible controls are not rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.ui.table.Column;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the column in CSS units. Default value is <code>auto</code>, see <a href="https://www.w3.org/TR/CSS2/tables.html#width-layout"></a> <p>Minimal column width is device-dependent, for example on desktop devices the column will not be smaller than 48px. <p>This property can be changed by the user or by the application configuration/personalization. <p>If a user adjusts the column width manually, the resulting value is always set in pixels. In addition, other columns with width <code>auto</code> get a fixed minimum width and do not shrink after the resizing.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.table.Column;
}

typedef ColumnArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Width of the column in CSS units. Default value is <code>auto</code>, see <a href="https://www.w3.org/TR/CSS2/tables.html#width-layout"></a> <p>Minimal column width is device-dependent, for example on desktop devices the column will not be smaller than 48px. <p>This property can be changed by the user or by the application configuration/personalization. <p>If a user adjusts the column width manually, the resulting value is always set in pixels. In addition, other columns with width <code>auto</code> get a fixed minimum width and do not shrink after the resizing.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the minimum width of a column in pixels. <p>This property only has an effect if the given column width is flexible, for example with width <code>auto</code>. <p>This property only influences the automatic behavior. If a user adjusts the column width manually, the column width can become smaller. <p>Minimal column width is device-dependent, for example on desktop devices the column will not be smaller than 48px.
	*/
	@:optional var minWidth:haxe.extern.EitherType<String,Int>;

	/**
	* If set to true, the column can be resized either using the resize bar (by mouse) or using the keyboard (SHIFT + Left/Right Arrow keys)
	*/
	@:optional var resizable:haxe.extern.EitherType<String,Bool>;

	/**
	* Horizontal alignment of the column content. Controls with a text align do not inherit the horizontal alignment. You have to set the text align directly on the template.
	*/
	@:optional var hAlign:haxe.extern.EitherType<String,sap.ui.core.HorizontalAlign>;

	/**
	* Indicates if the column is sorted. This property only controls if a sort indicator is displayed in the column header - it does not trigger the sort function. The column can be sorted using {@link sap.ui.table.Table#sort}.
	*/
	@:optional var sorted:haxe.extern.EitherType<String,Bool>;

	/**
	* This property indicates the sort direction (Ascending or Descending). The corresponding icon will be rendered if the property <code>sorted</code> is <code>true</code>
	*/
	@:optional var sortOrder:haxe.extern.EitherType<String,sap.ui.table.SortOrder>;

	/**
	* Specifies the binding property on which the column will sort. Since the column template may have composite bindings, it's not possible to figure out on which binding property the sort shall be applied. Therefore the binding property for sorting must be specified. For example, if the first name and last name are displayed in the same column, only one of the two can be defined as <code>sortProperty</code>.

A column menu entry for sorting can only be generated if the <code>sortProperty</code> is set.
	*/
	@:optional var sortProperty:String;

	/**
	* Indicates if the column is filtered. This property only controls if a filter indicator is displayed in the column header - it does not trigger the filter function. The column can be filtered using {@link sap.ui.table.Table#filter}.
	*/
	@:optional var filtered:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the binding property on which the column shall be filtered. Since the column template may have composite bindings, it's not possible to figure out on which binding property the filter shall be applied. Therefore the binding property for filtering must be specified. For example, if the first name and last name are displayed in the same column, only one of the two can be defined as <code>filterProperty</code>.

A column menu entry for filtering can only be generated if the <code>filterProperty</code> is set. The default menu entry is a text input field.
	*/
	@:optional var filterProperty:String;

	/**
	* Specifies the value of the filter as string (will be converted into the proper data type). It is possible to provide a filterOperator as string, as shown here: <pre>
&gt; 50
&lt; 100
&gt;= 150
&lt;= 200
= 250
!= 300
*something    ends with
something*    starts with
*something*   contains
some..thing   between
50..100       between
</pre>
	*/
	@:optional var filterValue:String;

	/**
	* Filter operator to use when filtering this column.
	*/
	@:optional var filterOperator:String;

	/**
	* If this property is set, the default filter operator of the column is overridden. By default <code>Contains</code> is used for string and <code>EQ</code> for other types. A valid <code>sap.ui.model.FilterOperator</code> needs to be passed.
	*/
	@:optional var defaultFilterOperator:String;

	/**
	* Type of filter. It is used to transform the search term into the specified type and should be the same as defined in the binding for the column template. Default value is <code>sap.ui.model.type.String</code>. It can be set to the class name of the type, e.g.: <code>sap.ui.model.type.Date</code>, or an expression similar to the binding syntax, e.g.: <code>"\{type: 'sap.ui.model.type.Date', formatOptions: \{UTC: true\}, constraints: \{\} \}"</code>. Here the escaping is mandatory to avoid handling by the binding parser. As an alternative, a function can be passed that takes over the conversion. This cannot be done in the XMLView, use {@link #setFilterType} instead.
	*/
	@:optional var filterType:Dynamic;

	/**
	* Indicates if the column is grouped.
	*/
	@:optional var grouped:haxe.extern.EitherType<String,Bool>;

	/**
	* Invisible controls are not rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* The name of the column which is used for the text representation of this column, for example, in menus. If not set, the text from the multiLabels aggregation or the label aggregation (in that order) is used as a fallback option.
	*/
	@:optional var name:String;

	/**
	* Defines if the filter menu entry is displayed
	*/
	@:optional var showFilterMenuEntry:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines if the sort menu entries are displayed
	*/
	@:optional var showSortMenuEntry:haxe.extern.EitherType<String,Bool>;

	/**
	* If this property is set, a span is applied for the header. When moving columns, all columns which are part of the header will be moved. The <code>headerSpan</code> can be either an integer or an array of integers (if you use the multi header feature of the table). If you only specify an integer, this span is applied for all header rows, with multiple integers you can specify a separate span for each header row. <b>Note:</b> Only columns with a span equal to 1 can have a column menu. When setting a column to fixed, all columns which are part of the header with the greatest span will be set to fixed.
	*/
	@:optional var headerSpan:Dynamic;

	/**
	* Enables auto-resizing of the column on double clicking the resize bar. The width is determined on the widest currently displayed content. It does not consider rows which are currently not scrolled into view. Currently only implemented to work with the following controls: <code>sap.m.Text, sap.m.Label, sap.m.Link, sap.m.Input, sap.ui.commons.TextView, sap.ui.commons.Label, sap.ui.commons.Link and sap.ui.commons.TextField, sap.ui.commons.Checkbox, sap.m.CheckBox</code>
	*/
	@:optional var autoResizable:haxe.extern.EitherType<String,Bool>;

    /**
    * Label of the column which is displayed in the column header. This aggregation is for the standard behavior, where you only want to display one single row header. If a string is supplied, a default label control will be created. Which control this is depends on the loaded libraries.
    */
	@:optional var label:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Labels of the column which are displayed in the column header. Define a control for each header row in the table. Use this aggregation if you want to use multiple headers per column.
    */
	@:optional var multiLabels:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Template (cell renderer) of this column. A template is decoupled from the column. Each time the template's properties or aggregations have been changed, the template has to be applied again via <code>setTemplate</code> for the changes to take effect. If a string is defined, a default text control will be created with its text property bound to the value of the string. The default template depends on the libraries loaded. If there is no template, the column will not be rendered in the table. The set of supported controls is limited. See section "{@link topic:148892ff9aea4a18b912829791e38f3e Tables: Which One Should I Choose?}" in the documentation for more details. While it is technically possible to also use other controls, doing so might lead to issues with regards to scrolling, alignment, condensed mode, screen reader support, and keyboard support.
    */
	@:optional var template:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var creationTemplate:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The menu used by the column. By default the {@link sap.ui.table.ColumnMenu} is used.

<b>Note:</b> Applications must not use or change the default <code>sap.ui.table.ColumnMenu</code> of a column in any way or create own instances of <code>sap.ui.table.ColumnMenu</code>. To add a custom menu to a column, use the aggregation <code>menu</code> with a new instance of <code>sap.ui.unified.Menu</code>.
    */
	@:optional var menu:haxe.extern.EitherType<String,sap.ui.unified.Menu>;

	/**
	* Fires before the column menu is opened.
	*/
	@:optional var columnMenuOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
