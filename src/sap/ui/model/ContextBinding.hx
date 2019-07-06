package sap.ui.model;

@:native("sap.ui.model.ContextBinding")

/**
* The ContextBinding is a specific binding for a setting context for the model
*/
extern class ContextBinding extends sap.ui.model.Binding
{

	/**
	* 
	* @param	oModel null
	* @param	sPath null
	* @param	oContext null
	* @param	mParameters null
	* @param	oEvents object defining event handlers
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic, ?oEvents:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.ContextBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Binding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Return the bound context.
	* @return	Context object used by this context binding or <code>null</code>
	*/
	public function getBoundContext( ):sap.ui.model.Context;

	/**
	* Returns a metadata object for class sap.ui.model.ContextBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

