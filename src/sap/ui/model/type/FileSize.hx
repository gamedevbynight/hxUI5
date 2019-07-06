package sap.ui.model.type;

@:native("sap.ui.model.type.FileSize")

/**
* This class represents file size simple types.
*/
extern class FileSize extends sap.ui.model.SimpleType
{

	/**
	* 
	* @param	oFormatOptions formatting options. Supports the same options as {@link sap.ui.core.format.FileSizeFormat.getInstance FileSizeFormat.getInstance}
	* @param	oConstraints value constraints.
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.type.FileSize with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.SimpleType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.type.FileSize.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

