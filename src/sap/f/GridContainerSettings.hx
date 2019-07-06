package sap.f;

@:native("sap.f.GridContainerSettings")

/**
* Holds a set of settings that define the dimensions of <code>sap.f.GridContainer</code>.

Can be used to define the sizes of columns and rows for different screen sizes, by using the <code>layout</code> aggregations of <code>sap.f.GridContainer</code>.
*/
extern class GridContainerSettings extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:GridContainerSettingsArgs):Void {})
	public function new(?mSettings:GridContainerSettingsArgs):Void;

	/**
	* Creates a new subclass of class sap.f.GridContainerSettings with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumns columns}.

How many columns to have on a row.

If not defined, <code>sap.f.GridContainer</code> will position as many columns as they can fit in the container.
	* @return	Value of property <code>columns</code>
	*/
	public function getColumns( ):Int;

	/**
	* Gets current value of property {@link #getColumnSize columnSize}.

The width of the columns.

<b>Note:</b> Use only 'px' or 'rem'. Some features may not work as expected otherwise.

Default value is <code>80px</code>.
	* @return	Value of property <code>columnSize</code>
	*/
	public function getColumnSize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getGap gap}.

The size of the gap between columns and rows.

<b>Note:</b> Use only 'px' or 'rem'. Some features may not work as expected otherwise.

Default value is <code>16px</code>.
	* @return	Value of property <code>gap</code>
	*/
	public function getGap( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.f.GridContainerSettings.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getRowSize rowSize}.

The height of the rows.

<b>Note:</b> Use only 'px' or 'rem'. Some features may not work as expected otherwise.

Default value is <code>80px</code>.
	* @return	Value of property <code>rowSize</code>
	*/
	public function getRowSize( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getColumns columns}.

How many columns to have on a row.

If not defined, <code>sap.f.GridContainer</code> will position as many columns as they can fit in the container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iColumns New value for property <code>columns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumns( iColumns:Int):sap.f.GridContainerSettings;

	/**
	* Sets a new value for property {@link #getColumnSize columnSize}.

The width of the columns.

<b>Note:</b> Use only 'px' or 'rem'. Some features may not work as expected otherwise.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>80px</code>.
	* @param	sColumnSize New value for property <code>columnSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnSize( sColumnSize:sap.ui.core.CSSSize):sap.f.GridContainerSettings;

	/**
	* Sets a new value for property {@link #getGap gap}.

The size of the gap between columns and rows.

<b>Note:</b> Use only 'px' or 'rem'. Some features may not work as expected otherwise.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>16px</code>.
	* @param	sGap New value for property <code>gap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGap( sGap:sap.ui.core.CSSSize):sap.f.GridContainerSettings;

	/**
	* Sets a new value for property {@link #getRowSize rowSize}.

The height of the rows.

<b>Note:</b> Use only 'px' or 'rem'. Some features may not work as expected otherwise.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>80px</code>.
	* @param	sRowSize New value for property <code>rowSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRowSize( sRowSize:sap.ui.core.CSSSize):sap.f.GridContainerSettings;
}

typedef GridContainerSettingsArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* How many columns to have on a row.

If not defined, <code>sap.f.GridContainer</code> will position as many columns as they can fit in the container.
	*/
	@:optional var columns:haxe.extern.EitherType<String,Int>;

	/**
	* The width of the columns.

<b>Note:</b> Use only 'px' or 'rem'. Some features may not work as expected otherwise.
	*/
	@:optional var columnSize:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The height of the rows.

<b>Note:</b> Use only 'px' or 'rem'. Some features may not work as expected otherwise.
	*/
	@:optional var rowSize:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The size of the gap between columns and rows.

<b>Note:</b> Use only 'px' or 'rem'. Some features may not work as expected otherwise.
	*/
	@:optional var gap:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;
}
