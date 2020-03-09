package sap.ui.model;

@:native("sap.ui.model.StaticBinding")

/**
* The StaticBinding allows to define static values within a CompositeBinding. It behaves like a property binding but always returns the value, which is stored in the binding itself.
*/
extern class StaticBinding extends sap.ui.model.PropertyBinding
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.model.StaticBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.PropertyBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.StaticBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

