package sap.m;

@:native("sap.m.P13nGroupItem")

/**
* Type for <code>groupItems</code> aggregation in P13nGroupPanel control.
*/
extern class P13nGroupItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:P13nGroupItemArgs):Void {})
	public function new(?mSettings:P13nGroupItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.P13nGroupItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
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
	* Returns a metadata object for class sap.m.P13nGroupItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getOperation operation}.

sap.m.P13nConditionOperation
	* @return	Value of property <code>operation</code>
	*/
	public function getOperation( ):String;

	/**
	* Gets current value of property {@link #getShowIfGrouped showIfGrouped}.

make the grouped column as normalcolumn visible

Default value is <code>false</code>.
	* @return	Value of property <code>showIfGrouped</code>
	*/
	public function getShowIfGrouped( ):Bool;

	/**
	* Sets a new value for property {@link #getColumnKey columnKey}.

key of the column

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColumnKey New value for property <code>columnKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnKey( sColumnKey:String):sap.m.P13nGroupItem;

	/**
	* Sets a new value for property {@link #getOperation operation}.

sap.m.P13nConditionOperation

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sOperation New value for property <code>operation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOperation( sOperation:String):sap.m.P13nGroupItem;

	/**
	* Sets a new value for property {@link #getShowIfGrouped showIfGrouped}.

make the grouped column as normalcolumn visible

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowIfGrouped New value for property <code>showIfGrouped</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowIfGrouped( bShowIfGrouped:Bool):sap.m.P13nGroupItem;
}

typedef P13nGroupItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* sap.m.P13nConditionOperation
	*/
	@:optional var operation:String;

	/**
	* key of the column
	*/
	@:optional var columnKey:String;

	/**
	* make the grouped column as normalcolumn visible
	*/
	@:optional var showIfGrouped:haxe.extern.EitherType<String,Bool>;
}
