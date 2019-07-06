package sap.ui.model;

@:native("sap.ui.model.Type")

/**
* This is an abstract base class for type objects.
*/
extern class Type extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.model.Type with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.Type.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the name of this type.
	* @return	the name of this type
	*/
	public function getName( ):String;

	/**
	* Returns a simple string representation of this type.

Mainly useful for tracing purposes.
	* @return	a string description of this type
	*/
	public function toString( ):String;
}

