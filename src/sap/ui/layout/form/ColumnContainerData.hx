package sap.ui.layout.form;

@:native("sap.ui.layout.form.ColumnContainerData")

/**
* The <code>ColumnLayout</code>-specific layout data for the <code>FormContainer</code> element.

Depending on its size, the <code>Form</code> control is divided into 1, 2, 3 or 4 columns by the <code>ColumnLayout</code> control. Using <code>ColumnContainerData</code>, the size of the <code>FormContainer</code> element can be influenced.
*/
extern class ColumnContainerData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:ColumnContainerDataArgs):Void {})
	public function new(?mSettings:ColumnContainerDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.form.ColumnContainerData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumnsL columnsL}.

Number of columns the <code>FormContainer</code> element uses if the <code>Form</code> control has large size.

The number of columns for large size must not be smaller than the number of columns for medium size.

Default value is <code>2</code>.
	* @return	Value of property <code>columnsL</code>
	*/
	public function getColumnsL( ):sap.ui.layout.form.ColumnsL;

	/**
	* Gets current value of property {@link #getColumnsM columnsM}.

Number of columns the <code>FormContainer</code> element uses if the <code>Form</code> control has medium size.

Default value is <code>1</code>.
	* @return	Value of property <code>columnsM</code>
	*/
	public function getColumnsM( ):sap.ui.layout.form.ColumnsM;

	/**
	* Gets current value of property {@link #getColumnsXL columnsXL}.

Number of columns the <code>FormContainer</code> element uses if the <code>Form</code> control has extra-large size.

The number of columns for extra-large size must not be smaller than the number of columns for large size.

Default value is <code>2</code>.
	* @return	Value of property <code>columnsXL</code>
	*/
	public function getColumnsXL( ):sap.ui.layout.form.ColumnsXL;

	/**
	* Returns a metadata object for class sap.ui.layout.form.ColumnContainerData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getColumnsL columnsL}.

Number of columns the <code>FormContainer</code> element uses if the <code>Form</code> control has large size.

The number of columns for large size must not be smaller than the number of columns for medium size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	sColumnsL New value for property <code>columnsL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsL( sColumnsL:sap.ui.layout.form.ColumnsL):sap.ui.layout.form.ColumnContainerData;

	/**
	* Sets a new value for property {@link #getColumnsM columnsM}.

Number of columns the <code>FormContainer</code> element uses if the <code>Form</code> control has medium size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	sColumnsM New value for property <code>columnsM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsM( sColumnsM:sap.ui.layout.form.ColumnsM):sap.ui.layout.form.ColumnContainerData;

	/**
	* Sets a new value for property {@link #getColumnsXL columnsXL}.

Number of columns the <code>FormContainer</code> element uses if the <code>Form</code> control has extra-large size.

The number of columns for extra-large size must not be smaller than the number of columns for large size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	sColumnsXL New value for property <code>columnsXL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnsXL( sColumnsXL:sap.ui.layout.form.ColumnsXL):sap.ui.layout.form.ColumnContainerData;
}

typedef ColumnContainerDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Number of columns the <code>FormContainer</code> element uses if the <code>Form</code> control has extra-large size.

The number of columns for extra-large size must not be smaller than the number of columns for large size.
	*/
	@:optional var columnsXL:haxe.extern.EitherType<String,sap.ui.layout.form.ColumnsXL>;

	/**
	* Number of columns the <code>FormContainer</code> element uses if the <code>Form</code> control has large size.

The number of columns for large size must not be smaller than the number of columns for medium size.
	*/
	@:optional var columnsL:haxe.extern.EitherType<String,sap.ui.layout.form.ColumnsL>;

	/**
	* Number of columns the <code>FormContainer</code> element uses if the <code>Form</code> control has medium size.
	*/
	@:optional var columnsM:haxe.extern.EitherType<String,sap.ui.layout.form.ColumnsM>;
}
