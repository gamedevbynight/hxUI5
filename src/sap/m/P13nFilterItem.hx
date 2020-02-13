package sap.m;

@:native("sap.m.P13nFilterItem")

/**
* Type for <code>filterItems</code> aggregation in P13nFilterPanel control.
*/
extern class P13nFilterItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:P13nFilterItemArgs):Void {})
	public function new(?mSettings:P13nFilterItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.P13nFilterItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumnKey columnKey}.

key of the column
	* @return	Value of property <code>columnKey</code>
	*/
	public function getColumnKey( ):String;

	/**
	* Gets current value of property {@link #getExclude exclude}.

defines if the filter is an include or exclude filter item

Default value is <code>false</code>.
	* @return	Value of property <code>exclude</code>
	*/
	public function getExclude( ):Bool;

	/**
	* Returns a metadata object for class sap.m.P13nFilterItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getOperation operation}.

sap.m.P13nConditionOperation
	* @return	Value of property <code>operation</code>
	*/
	public function getOperation( ):String;

	/**
	* Gets current value of property {@link #getValue1 value1}.

value of the filter
	* @return	Value of property <code>value1</code>
	*/
	public function getValue1( ):String;

	/**
	* Gets current value of property {@link #getValue2 value2}.

to value of the between filter
	* @return	Value of property <code>value2</code>
	*/
	public function getValue2( ):String;

	/**
	* Sets a new value for property {@link #getColumnKey columnKey}.

key of the column

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColumnKey New value for property <code>columnKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnKey( sColumnKey:String):sap.m.P13nFilterItem;

	/**
	* Sets a new value for property {@link #getExclude exclude}.

defines if the filter is an include or exclude filter item

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bExclude New value for property <code>exclude</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExclude( bExclude:Bool):sap.m.P13nFilterItem;

	/**
	* Sets a new value for property {@link #getOperation operation}.

sap.m.P13nConditionOperation

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sOperation New value for property <code>operation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOperation( sOperation:String):sap.m.P13nFilterItem;

	/**
	* Sets a new value for property {@link #getValue1 value1}.

value of the filter

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue1 New value for property <code>value1</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue1( sValue1:String):sap.m.P13nFilterItem;

	/**
	* Sets a new value for property {@link #getValue2 value2}.

to value of the between filter

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue2 New value for property <code>value2</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue2( sValue2:String):sap.m.P13nFilterItem;
}

typedef P13nFilterItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* sap.m.P13nConditionOperation
	*/
	@:optional var operation:String;

	/**
	* value of the filter
	*/
	@:optional var value1:String;

	/**
	* to value of the between filter
	*/
	@:optional var value2:String;

	/**
	* key of the column
	*/
	@:optional var columnKey:String;

	/**
	* defines if the filter is an include or exclude filter item
	*/
	@:optional var exclude:haxe.extern.EitherType<String,Bool>;
}
