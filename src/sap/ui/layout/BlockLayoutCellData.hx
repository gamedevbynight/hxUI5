package sap.ui.layout;

@:native("sap.ui.layout.BlockLayoutCellData")

/**
* Holds layout data for the BlockLayoutCells contents.
*/
extern class BlockLayoutCellData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:BlockLayoutCellDataArgs):Void {})
	public function new(?mSettings:BlockLayoutCellDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.BlockLayoutCellData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getLSize lSize}.

Sets the width of the cell for L size of the BlockLayout.

Default value is <code>1</code>.
	* @return	Value of property <code>lSize</code>
	*/
	public function getLSize( ):Int;

	/**
	* Returns a metadata object for class sap.ui.layout.BlockLayoutCellData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMSize mSize}.

Sets the width of the cell for M size of the BlockLayout.

Default value is <code>1</code>.
	* @return	Value of property <code>mSize</code>
	*/
	public function getMSize( ):Int;

	/**
	* Gets current value of property {@link #getSSize sSize}.

Sets the width of the cell for S size of the BlockLayout.

Default value is <code>1</code>.
	* @return	Value of property <code>sSize</code>
	*/
	public function getSSize( ):Int;

	/**
	* Gets current value of property {@link #getXlSize xlSize}.

Sets the width of the cell for XL size of the BlockLayout.

Default value is <code>1</code>.
	* @return	Value of property <code>xlSize</code>
	*/
	public function getXlSize( ):Int;

	/**
	* Sets a new value for property {@link #getLSize lSize}.

Sets the width of the cell for L size of the BlockLayout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iLSize New value for property <code>lSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLSize( iLSize:Int):sap.ui.layout.BlockLayoutCellData;

	/**
	* Sets a new value for property {@link #getMSize mSize}.

Sets the width of the cell for M size of the BlockLayout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iMSize New value for property <code>mSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMSize( iMSize:Int):sap.ui.layout.BlockLayoutCellData;

	/**
	* Sets width of the cell to all sizes if the width is specified.
	* @param	iValue null
	* @return	null
	*/
	public function setSize( iValue:Dynamic):sap.ui.layout.BlockLayoutCellData;

	/**
	* Sets a new value for property {@link #getSSize sSize}.

Sets the width of the cell for S size of the BlockLayout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iSSize New value for property <code>sSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSSize( iSSize:Int):sap.ui.layout.BlockLayoutCellData;

	/**
	* Sets a new value for property {@link #getXlSize xlSize}.

Sets the width of the cell for XL size of the BlockLayout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iXlSize New value for property <code>xlSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setXlSize( iXlSize:Int):sap.ui.layout.BlockLayoutCellData;
}

typedef BlockLayoutCellDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Sets the width of the cell for S size of the BlockLayout.
	*/
	@:optional var sSize:haxe.extern.EitherType<String,Int>;

	/**
	* Sets the width of the cell for M size of the BlockLayout.
	*/
	@:optional var mSize:haxe.extern.EitherType<String,Int>;

	/**
	* Sets the width of the cell for L size of the BlockLayout.
	*/
	@:optional var lSize:haxe.extern.EitherType<String,Int>;

	/**
	* Sets the width of the cell for XL size of the BlockLayout.
	*/
	@:optional var xlSize:haxe.extern.EitherType<String,Int>;
}
