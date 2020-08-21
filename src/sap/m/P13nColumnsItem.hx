package sap.m;

@:native("sap.m.P13nColumnsItem")

/**
* Type for <code>columnsItems</code> aggregation in <code>P13nColumnsPanel</code> control.
*/
extern class P13nColumnsItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:P13nColumnsItemArgs):Void {})
	public function new(?mSettings:P13nColumnsItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.P13nColumnsItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getColumnKey columnKey}.

This property contains the unique table column key
	* @return	Value of property <code>columnKey</code>
	*/
	public function getColumnKey( ):String;

	/**
	* Gets current value of property {@link #getIndex index}.

This property contains the index of a table column
	* @return	Value of property <code>index</code>
	*/
	public function getIndex( ):Int;

	/**
	* Returns a metadata object for class sap.m.P13nColumnsItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTotal total}.

This property contains the total flag of a table column.
	* @return	Value of property <code>total</code>
	*/
	public function getTotal( ):Bool;

	/**
	* Gets current value of property {@link #getVisible visible}.

This property decides whether a <code>P13nColumnsItem</code> is visible
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

This property contains the with of a table column.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):String;

	/**
	* Sets a new value for property {@link #getColumnKey columnKey}.

This property contains the unique table column key

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColumnKey New value for property <code>columnKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnKey( sColumnKey:String):sap.m.P13nColumnsItem;

	/**
	* Sets a new value for property {@link #getIndex index}.

This property contains the index of a table column

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iIndex New value for property <code>index</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIndex( iIndex:Int):sap.m.P13nColumnsItem;

	/**
	* Sets a new value for property {@link #getTotal total}.

This property contains the total flag of a table column.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bTotal New value for property <code>total</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTotal( bTotal:Bool):sap.m.P13nColumnsItem;

	/**
	* Sets a new value for property {@link #getVisible visible}.

This property decides whether a <code>P13nColumnsItem</code> is visible

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.m.P13nColumnsItem;

	/**
	* Sets a new value for property {@link #getWidth width}.

This property contains the with of a table column.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:String):sap.m.P13nColumnsItem;
}

typedef P13nColumnsItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* This property contains the unique table column key
	*/
	@:optional var columnKey:String;

	/**
	* This property contains the index of a table column
	*/
	@:optional var index:haxe.extern.EitherType<String,Int>;

	/**
	* This property decides whether a <code>P13nColumnsItem</code> is visible
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* This property contains the with of a table column.
	*/
	@:optional var width:String;

	/**
	* This property contains the total flag of a table column.
	*/
	@:optional var total:haxe.extern.EitherType<String,Bool>;
}
