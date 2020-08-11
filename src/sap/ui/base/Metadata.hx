package sap.ui.base;

@:native("sap.ui.base.Metadata")

/**
* Metadata for a class.
*/
extern class Metadata
{

	/**
	* 
	* @param	sClassName Fully qualified name of the described class
	* @param	oClassInfo Info to construct the class and its metadata from
	* @return	Object
	*/
	public function new( ?sClassName:String, ?oClassInfo:Dynamic):Void;

	/**
	* Returns the (constructor of the) described class
	* @return	class described by this metadata
	*/
	public function getClass( ):()->Void;

	/**
	* Returns the fully qualified name of the described class
	* @return	name of the described class
	*/
	public function getName( ):String;

	/**
	* Returns the metadata object of the base class of the described class or null if the class has no (documented) base class.
	* @return	metadata of the base class
	*/
	public function getParent( ):sap.ui.base.Metadata;
	@:overload( function(vTypeName:String):Bool{ })

	/**
	* Checks whether the class described by this metadata object is of the named type.

This check is solely based on the type names as declared in the class metadata. It compares the given <code>vTypeName</code> with the name of this class, with the names of any base class of this class and with the names of all interfaces implemented by any of the aforementioned classes.

Instead of a single type name, an array of type names can be given and the method will check if this class is of any of the listed types (logical or).

Should the UI5 class system in future implement additional means of associating classes with type names (e.g. by introducing mixins), then this method might detect matches for those names as well.
	* @param	vTypeName Type or types to check for
	* @return	Whether this class is of the given type or of any of the given types
	*/
	public function isA( vTypeName:Array<String>):Bool;

	/**
	* Returns whether the described class is abstract
	* @return	whether the class is abstract
	*/
	public function isAbstract( ):Bool;

	/**
	* Whether the described class is deprecated and should not be used any more
	* @return	whether the class is considered deprecated
	*/
	public function isDeprecated( ):Bool;

	/**
	* Returns whether the described class is final
	* @return	whether the class is final
	*/
	public function isFinal( ):Bool;

	/**
	* Checks whether the described class or one of its ancestor classes implements the given interface.
	* @param	sInterface name of the interface to test for (in dot notation)
	* @return	whether this class implements the interface
	*/
	public function isInstanceOf( sInterface:String):Bool;
}

