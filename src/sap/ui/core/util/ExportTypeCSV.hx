package sap.ui.core.util;

@:native("sap.ui.core.util.ExportTypeCSV")

/**
* CSV export type. Can be used for {@link sap.ui.core.util.Export Export}.

Please note that there could be an issue with the separator char depending on the user's system language in some programs such as Microsoft Excel. To prevent those issues use the data-import functionality which enables the possibility to explicitly set the separator char that should be used. This way the content will be displayed correctly.

Potential formulas (cell data starts with one of = + - @) will be escaped by prepending a single quote. As the export functionality is intended to be used with actual (user) data there is no reason to allow formulas.
*/
extern class ExportTypeCSV extends sap.ui.core.util.ExportType
{
	@:overload(function(?sId:String, ?mSettings:ExportTypeCSVArgs):Void {})
	public function new(?mSettings:ExportTypeCSVArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.util.ExportTypeCSV with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.util.ExportType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.util.ExportTypeCSV.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Gets current value of property {@link #getSeparatorChar separatorChar}.

Separator char.

Value needs to be exactly one character or empty for default.

Default value is <code>,</code>.
	* @return	Value of property <code>separatorChar</code>
	*/
	public function getSeparatorChar( ):String;

	/**
	* Setter for property <code>separatorChar</code>.

Value needs to be exactly one character or empty for default. Default value is ','.
	* @param	sSeparatorChar new value for property <code>separatorChar</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSeparatorChar( sSeparatorChar:String):sap.ui.core.util.ExportTypeCSV;
}

typedef ExportTypeCSVArgs = sap.ui.core.util.ExportType.ExportTypeArgs & {

	/**
	* Separator char.

Value needs to be exactly one character or empty for default.
	*/
	@:optional var separatorChar:String;
}
