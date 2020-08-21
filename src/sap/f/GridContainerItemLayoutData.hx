package sap.f;

@:native("sap.f.GridContainerItemLayoutData")

/**
* Holds layout data for an item inside a <code>sap.f.GridContainer</code>.
*/
extern class GridContainerItemLayoutData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:GridContainerItemLayoutDataArgs):Void {})
	public function new(?mSettings:GridContainerItemLayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.f.GridContainerItemLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getColumns columns}.

Specifies the number of columns, which the item should take

<b>Note:</b> Make sure that the item does not have more columns than the total columns in the grid. Use {@link sap.f.GridContainer#attachLayoutChange} or a resize listener to handle when columns count is changed for the grid. If item has more columns at some point, they will be automatically reduced to the total grid columns. This is done to prevent broken layout (grid blowout) that affects all items.

Default value is <code>1</code>.
	* @return	Value of property <code>columns</code>
	*/
	public function getColumns( ):Int;

	/**
	* Returns a metadata object for class sap.f.GridContainerItemLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinRows minRows}.

Specifies the minimum number of rows, which the item should take.
	* @return	Value of property <code>minRows</code>
	*/
	public function getMinRows( ):Int;

	/**
	* Gets current value of property {@link #getRows rows}.

Specifies the number of rows, which the item should take.
	* @return	Value of property <code>rows</code>
	*/
	public function getRows( ):Int;

	/**
	* Sets a new value for property {@link #getColumns columns}.

Specifies the number of columns, which the item should take

<b>Note:</b> Make sure that the item does not have more columns than the total columns in the grid. Use {@link sap.f.GridContainer#attachLayoutChange} or a resize listener to handle when columns count is changed for the grid. If item has more columns at some point, they will be automatically reduced to the total grid columns. This is done to prevent broken layout (grid blowout) that affects all items.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iColumns New value for property <code>columns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumns( ?iColumns:Int):sap.f.GridContainerItemLayoutData;

	/**
	* Sets a new value for property {@link #getMinRows minRows}.

Specifies the minimum number of rows, which the item should take.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iMinRows New value for property <code>minRows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinRows( iMinRows:Int):sap.f.GridContainerItemLayoutData;

	/**
	* Sets a new value for property {@link #getRows rows}.

Specifies the number of rows, which the item should take.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iRows New value for property <code>rows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRows( iRows:Int):sap.f.GridContainerItemLayoutData;
}

typedef GridContainerItemLayoutDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Specifies the number of columns, which the item should take

<b>Note:</b> Make sure that the item does not have more columns than the total columns in the grid. Use {@link sap.f.GridContainer#attachLayoutChange} or a resize listener to handle when columns count is changed for the grid. If item has more columns at some point, they will be automatically reduced to the total grid columns. This is done to prevent broken layout (grid blowout) that affects all items.
	*/
	@:optional var columns:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies the minimum number of rows, which the item should take.
	*/
	@:optional var minRows:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies the number of rows, which the item should take.
	*/
	@:optional var rows:haxe.extern.EitherType<String,Int>;
}
