package sap.ui.commons;

@:native("sap.ui.commons.FileUploaderParameter")

/**
* Represents a parameter for the FileUploader which is rendered as a hidden inputfield.
*/
extern class FileUploaderParameter extends sap.ui.unified.FileUploaderParameter
{
	@:overload(function(?sId:String, ?mSettings:FileUploaderParameterArgs):Void {})
	public function new(?mSettings:FileUploaderParameterArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.FileUploaderParameter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.FileUploaderParameter.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.FileUploaderParameter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef FileUploaderParameterArgs = sap.ui.unified.FileUploaderParameter.FileUploaderParameterArgs & {
}
