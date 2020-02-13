package sap.ui.table;

@:native("sap.ui.table.AnalyticalColumn")

/**
* This column adds additional properties to the table column which are needed for the analytical binding and table
*/
extern class AnalyticalColumn extends sap.ui.table.Column
{
	@:overload(function(?sId:String, ?mSettings:AnalyticalColumnArgs):Void {})
	public function new(?mSettings:AnalyticalColumnArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.table.AnalyticalColumn with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.table.Column.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getGroupHeaderFormatter groupHeaderFormatter}.

If the column is grouped, this formatter is used to format the value in the group header
	* @return	Value of property <code>groupHeaderFormatter</code>
	*/
	public function getGroupHeaderFormatter( ):Dynamic;

	/**
	* Gets current value of property {@link #getInResult inResult}.

Specifies that the dimension referred to by the column shall be included in the granularity of the data result. It allows a finer distinction between a visible/grouped/(included)inResult column.

Default value is <code>false</code>.
	* @return	Value of property <code>inResult</code>
	*/
	public function getInResult( ):Bool;

	/**
	* Gets current value of property {@link #getLeadingProperty leadingProperty}.

Defines the primary model property which is used inside the Column. In case of the analytical extension this means the property which is grouped by for dimensions or the property which is summed for measures.
	* @return	Value of property <code>leadingProperty</code>
	*/
	public function getLeadingProperty( ):String;

	/**
	* Returns a metadata object for class sap.ui.table.AnalyticalColumn.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowIfGrouped showIfGrouped}.

Specifies whether the column is displayed within the table even if it is grouped or not. A grouped column has the same value for every rows within the group.

Default value is <code>false</code>.
	* @return	Value of property <code>showIfGrouped</code>
	*/
	public function getShowIfGrouped( ):Bool;

	/**
	* Gets current value of property {@link #getSummed summed}.

If defined a sum for this column is calculated

Default value is <code>false</code>.
	* @return	Value of property <code>summed</code>
	*/
	public function getSummed( ):Bool;

	/**
	* Sets a new value for property {@link #getGroupHeaderFormatter groupHeaderFormatter}.

If the column is grouped, this formatter is used to format the value in the group header

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oGroupHeaderFormatter New value for property <code>groupHeaderFormatter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupHeaderFormatter( oGroupHeaderFormatter:Dynamic):sap.ui.table.AnalyticalColumn;

	/**
	* Sets a new value for property {@link #getInResult inResult}.

Specifies that the dimension referred to by the column shall be included in the granularity of the data result. It allows a finer distinction between a visible/grouped/(included)inResult column.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bInResult New value for property <code>inResult</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInResult( bInResult:Bool):sap.ui.table.AnalyticalColumn;

	/**
	* Sets a new value for property {@link #getLeadingProperty leadingProperty}.

Defines the primary model property which is used inside the Column. In case of the analytical extension this means the property which is grouped by for dimensions or the property which is summed for measures.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLeadingProperty New value for property <code>leadingProperty</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLeadingProperty( sLeadingProperty:String):sap.ui.table.AnalyticalColumn;

	/**
	* Sets a new value for property {@link #getShowIfGrouped showIfGrouped}.

Specifies whether the column is displayed within the table even if it is grouped or not. A grouped column has the same value for every rows within the group.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowIfGrouped New value for property <code>showIfGrouped</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowIfGrouped( bShowIfGrouped:Bool):sap.ui.table.AnalyticalColumn;

	/**
	* Sets a new value for property {@link #getSummed summed}.

If defined a sum for this column is calculated

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSummed New value for property <code>summed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSummed( bSummed:Bool):sap.ui.table.AnalyticalColumn;
}

typedef AnalyticalColumnArgs = sap.ui.table.Column.ColumnArgs & {

	/**
	* Defines the primary model property which is used inside the Column. In case of the analytical extension this means the property which is grouped by for dimensions or the property which is summed for measures.
	*/
	@:optional var leadingProperty:String;

	/**
	* If defined a sum for this column is calculated
	*/
	@:optional var summed:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies that the dimension referred to by the column shall be included in the granularity of the data result. It allows a finer distinction between a visible/grouped/(included)inResult column.
	*/
	@:optional var inResult:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the column is displayed within the table even if it is grouped or not. A grouped column has the same value for every rows within the group.
	*/
	@:optional var showIfGrouped:haxe.extern.EitherType<String,Bool>;

	/**
	* If the column is grouped, this formatter is used to format the value in the group header
	*/
	@:optional var groupHeaderFormatter:Dynamic;
}
