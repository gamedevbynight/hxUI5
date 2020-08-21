package sap.ui.commons;

@:native("sap.ui.commons.FileUploader")

/**
* The framework generates an input field and a button with text "Browse ...". The API supports features such as on change uploads (the upload starts immediately after a file has been selected), file uploads with explicit calls, adjustable control sizes, text display after uploads, or tooltips containing complete file paths.
*/
extern class FileUploader extends sap.ui.unified.FileUploader
{
	@:overload(function(?sId:String, ?mSettings:FileUploaderArgs):Void {})
	public function new(?mSettings:FileUploaderArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.FileUploader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.FileUploader.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.FileUploader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef FileUploaderArgs = sap.ui.unified.FileUploader.FileUploaderArgs & {
}
