package sap.ui.model.type;

@:native("sap.ui.model.type.Boolean")

/**
* This class represents boolean simple types.
*/
extern class Boolean extends sap.ui.model.SimpleType
{

	/**
	* 
	* @param	oFormatOptions Format options as defined in the interface of {@link sap.ui.model.SimpleType}; this type ignores them, since it does not support any format options
	* @param	oConstraints Constraints as defined in the interface of {@link sap.ui.model.SimpleType}; this type ignores them, since it does not support any constraints
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.type.Boolean with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.SimpleType.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.model.type.Boolean.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

