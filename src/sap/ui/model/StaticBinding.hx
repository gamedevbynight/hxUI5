package sap.ui.model;

@:native("sap.ui.model.StaticBinding")

/**
* The <code>StaticBinding</code> allows to define static values within a {@link sap.ui.model.CompositeBinding}. It behaves like a property binding but always returns the value that is stored in the binding itself. The binding does not have a {@link sap.ui.model.Context}, a {@link sap.ui.model.Model} or a path.
*/
extern class StaticBinding extends sap.ui.model.PropertyBinding
{

	/**
	* 
	* @param	vValue The static value of this binding
	* @return	Object
	*/
	public function new( ?vValue:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.StaticBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.PropertyBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.model.StaticBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

