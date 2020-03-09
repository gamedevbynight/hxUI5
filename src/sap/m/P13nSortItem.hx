package sap.m;

@:native("sap.m.P13nSortItem")

/**
* Type for <code>sortItems</code> aggregation in P13nSortPanel control.
*/
extern class P13nSortItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:P13nSortItemArgs):Void {})
	public function new(?mSettings:P13nSortItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.P13nSortItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Returns a metadata object for class sap.m.P13nSortItem.
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
	* Sets a new value for property {@link #getColumnKey columnKey}.

key of the column

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColumnKey New value for property <code>columnKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnKey( sColumnKey:String):sap.m.P13nSortItem;

	/**
	* Sets a new value for property {@link #getOperation operation}.

sap.m.P13nConditionOperation

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sOperation New value for property <code>operation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOperation( sOperation:String):sap.m.P13nSortItem;
}

typedef P13nSortItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* sap.m.P13nConditionOperation
	*/
	@:optional var operation:String;

	/**
	* key of the column
	*/
	@:optional var columnKey:String;
}
