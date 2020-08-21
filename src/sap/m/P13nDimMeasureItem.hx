package sap.m;

@:native("sap.m.P13nDimMeasureItem")

/**
* Type for <code>columnsItems</code> aggregation in <code>P13nDimMeasurePanel</code> control.
*/
extern class P13nDimMeasureItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:P13nDimMeasureItemArgs):Void {})
	public function new(?mSettings:P13nDimMeasureItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.P13nDimMeasureItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getColumnKey columnKey}.

Specifies the unique chart column key. In this context a column refers to dimensions or measures of a chart.
	* @return	Value of property <code>columnKey</code>
	*/
	public function getColumnKey( ):String;

	/**
	* Gets current value of property {@link #getIndex index}.

Specifies the order of visible dimensions or measures of a chart.

Default value is <code>-1</code>.
	* @return	Value of property <code>index</code>
	*/
	public function getIndex( ):Int;

	/**
	* Returns a metadata object for class sap.m.P13nDimMeasureItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRole role}.

Specifies the role of dimensions or measures. The role determines how dimensions and measures influence the chart.
	* @return	Value of property <code>role</code>
	*/
	public function getRole( ):String;

	/**
	* Gets current value of property {@link #getVisible visible}.

Specifies the visibility of dimensions or measures.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getColumnKey columnKey}.

Specifies the unique chart column key. In this context a column refers to dimensions or measures of a chart.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColumnKey New value for property <code>columnKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnKey( sColumnKey:String):sap.m.P13nDimMeasureItem;

	/**
	* Sets a new value for property {@link #getIndex index}.

Specifies the order of visible dimensions or measures of a chart.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iIndex New value for property <code>index</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIndex( ?iIndex:Int):sap.m.P13nDimMeasureItem;

	/**
	* Sets a new value for property {@link #getRole role}.

Specifies the role of dimensions or measures. The role determines how dimensions and measures influence the chart.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sRole New value for property <code>role</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRole( sRole:String):sap.m.P13nDimMeasureItem;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Specifies the visibility of dimensions or measures.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.m.P13nDimMeasureItem;
}

typedef P13nDimMeasureItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* Specifies the unique chart column key. In this context a column refers to dimensions or measures of a chart.
	*/
	@:optional var columnKey:String;

	/**
	* Specifies the order of visible dimensions or measures of a chart.
	*/
	@:optional var index:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies the visibility of dimensions or measures.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the role of dimensions or measures. The role determines how dimensions and measures influence the chart.
	*/
	@:optional var role:String;
}
