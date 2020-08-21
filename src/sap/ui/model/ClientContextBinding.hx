package sap.ui.model;

@:native("sap.ui.model.ClientContextBinding")

/**
* The ContextBinding is a specific binding for setting a context for the model.
*/
extern class ClientContextBinding extends sap.ui.model.ContextBinding
{

	/**
	* 
	* @param	oModel Model instance that this binding is created for and that it belongs to
	* @param	sPath Binding path to be used for this binding, syntax depends on the concrete subclass
	* @param	oContext Binding context relative to which a relative binding path will be resolved
	* @param	mParameters Map of optional parameters as defined by subclasses; this class does not introduce any own parameters
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.ClientContextBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ContextBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.model.ClientContextBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

