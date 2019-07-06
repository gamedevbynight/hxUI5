package sap.m;

@:native("sap.m.UploadCollectionToolbarPlaceholder")

/**
* Used to create a customizable toolbar for the UploadCollection. A FileUploader instance is required in the toolbar and will be placed by the application.
*/
extern class UploadCollectionToolbarPlaceholder extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:UploadCollectionToolbarPlaceholderArgs):Void {})
	public function new(?mSettings:UploadCollectionToolbarPlaceholderArgs):Void;

	/**
	* Creates a new subclass of class sap.m.UploadCollectionToolbarPlaceholder with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.UploadCollectionToolbarPlaceholder.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef UploadCollectionToolbarPlaceholderArgs = sap.ui.core.Control.ControlArgs & {
}
