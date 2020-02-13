package sap.ui.layout.form;

@:native("sap.ui.layout.form.GridContainerData")

/**
* The <code>GridLayout</code>-specific layout data for <code>FormContainers</code>.
*/
extern class GridContainerData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:GridContainerDataArgs):Void {})
	public function new(?mSettings:GridContainerDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.form.GridContainerData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getHalfGrid halfGrid}.

If set, the container takes half the width of the <code>Form</code> (8 cells), if not it takes the full width (16 cells). If the <code>GridLayout</code> is set to <code>singleColumn</code>, the full width of the grid is only 8 cells. So containers are rendered only once per row.

Default value is <code>false</code>.
	* @return	Value of property <code>halfGrid</code>
	*/
	public function getHalfGrid( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.layout.form.GridContainerData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getHalfGrid halfGrid}.

If set, the container takes half the width of the <code>Form</code> (8 cells), if not it takes the full width (16 cells). If the <code>GridLayout</code> is set to <code>singleColumn</code>, the full width of the grid is only 8 cells. So containers are rendered only once per row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bHalfGrid New value for property <code>halfGrid</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHalfGrid( bHalfGrid:Bool):sap.ui.layout.form.GridContainerData;
}

typedef GridContainerDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* If set, the container takes half the width of the <code>Form</code> (8 cells), if not it takes the full width (16 cells). If the <code>GridLayout</code> is set to <code>singleColumn</code>, the full width of the grid is only 8 cells. So containers are rendered only once per row.
	*/
	@:optional var halfGrid:haxe.extern.EitherType<String,Bool>;
}
