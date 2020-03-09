package sap.ui.model.odata;

@:native("sap.ui.model.odata.ODataPropertyBinding")

/**
* Property binding implementation for OData format
*/
extern class ODataPropertyBinding extends sap.ui.model.PropertyBinding
{

	/**
	* 
	* @param	oModel null
	* @param	sPath null
	* @param	oContext null
	* @param	mParameters null
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.ODataPropertyBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.PropertyBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.odata.ODataPropertyBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

