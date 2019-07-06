package sap.ui.core;

@:native("sap.ui.core.ComponentMetadata")

/**
* null
*/
extern class ComponentMetadata extends sap.ui.base.ManagedObjectMetadata
{

	/**
	* 
	* @param	sClassName Fully qualified name of the class that is described by this metadata object
	* @param	oStaticInfo Static info to construct the metadata from
	* @return	Object
	*/
	public function new( ?sClassName:String, ?oStaticInfo:Dynamic):Void;

	/**
	* Returns the name of the Component (which is the namespace only with the module name)
	* @return	Component name
	*/
	public function getComponentName( ):String;

	/**
	* Returns the manifest object.
	* @return	manifest.
	*/
	public function getManifestObject( ):sap.ui.core.Manifest;
}

