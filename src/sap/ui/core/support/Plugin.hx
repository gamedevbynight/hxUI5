package sap.ui.core.support;

@:native("sap.ui.core.support.Plugin")

/**
* This class represents a plugin for the support tool functionality of UI5. This class is internal and all its functions must not be used by an application.
*/
extern class Plugin extends sap.ui.base.Object
{

	/**
	* Creates a new subclass of class sap.ui.core.support.Plugin with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.support.Plugin.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

