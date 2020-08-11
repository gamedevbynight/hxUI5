package sap.ui.layout.cssgrid;

@:native("sap.ui.layout.cssgrid.ResponsiveColumnItemLayoutData")

/**
* Holds layout data for an item inside a responsive column layout.
*/
extern class ResponsiveColumnItemLayoutData extends sap.ui.core.LayoutData implements sap.ui.layout.cssgrid.IGridItemLayoutData
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveColumnItemLayoutDataArgs):Void {})
	public function new(?mSettings:ResponsiveColumnItemLayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.cssgrid.ResponsiveColumnItemLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumns columns}.

Specifies the number of columns, which the item should take.

Default value is <code>1</code>.
	* @return	Value of property <code>columns</code>
	*/
	public function getColumns( ):Int;

	/**
	* Returns a metadata object for class sap.ui.layout.cssgrid.ResponsiveColumnItemLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRows rows}.

Specifies the number of rows, which the item should take.

Default value is <code>1</code>.
	* @return	Value of property <code>rows</code>
	*/
	public function getRows( ):Int;

	/**
	* Sets a new value for property {@link #getColumns columns}.

Specifies the number of columns, which the item should take.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iColumns New value for property <code>columns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumns( ?iColumns:Int):sap.ui.layout.cssgrid.ResponsiveColumnItemLayoutData;

	/**
	* Sets a new value for property {@link #getRows rows}.

Specifies the number of rows, which the item should take.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iRows New value for property <code>rows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRows( ?iRows:Int):sap.ui.layout.cssgrid.ResponsiveColumnItemLayoutData;
}

typedef ResponsiveColumnItemLayoutDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Specifies the number of columns, which the item should take.
	*/
	@:optional var columns:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies the number of rows, which the item should take.
	*/
	@:optional var rows:haxe.extern.EitherType<String,Int>;
}
