package sap.ui.model.odata.v2;

@:native("sap.ui.model.odata.v2.ODataContextBinding")

/**
* The ContextBinding is a specific binding for a setting context for the model
*/
extern class ODataContextBinding extends sap.ui.model.ContextBinding
{

	/**
	* 
	* @param	oModel null
	* @param	sPath null
	* @param	oContext null
	* @param	mParameters A map which contains additional parameters for the binding.
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v2.ODataContextBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ContextBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v2.ODataContextBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* null
	* @param	bForceUpdate Update the bound control even if no data has been changed
	* @param	sGroupId The group Id for the refresh
	* @return	Void
	*/
	public function refresh( ?bForceUpdate:Bool, ?sGroupId:String):Void;
}

