package sap.ui.core;

@:native("sap.ui.core.Fragment")

/**
* Fragments support the definition of light-weight stand-alone UI control trees. This class acts as factory which returns the UI control tree defined inside the Fragments. When used within declarative Views, the Fragment content is imported and seamlessly integrated into the View.

Fragments are used similar as sap.ui.core.mvc.Views, but Fragments do not have a Controller on their own (they may know one, though), they are not a Control, they are not part of the UI tree and they have no representation in HTML. By default, in contrast to declarative Views, they do not do anything to guarantee ID uniqueness.

But like Views they can be defined in several Formats (XML, declarative HTML, JavaScript; support for other types can be plugged in), the declaration syntax is the same as in declarative Views and the name and location of the Fragment files is similar to Views. Controller methods can also be referenced in the declarations, but as Fragments do not have their own controllers, this requires the Fragments to be used within a View which does have a controller. That controller is used, then.

Do not call the Fragment constructor directly!

Use-cases for Fragments are e.g.: - Modularization of UIs without fragmenting the controller structure - Re-use of UI parts - 100%-declarative definition of Views
*/
extern class Fragment extends sap.ui.base.ManagedObject
{
public function new():Void;

	/**
	* Returns an Element/Control by its ID in the context of the Fragment with the given ID
	* @param	sFragmentId ID of the Fragment from which to retrieve the Control
	* @param	sId ID of the Element/Control to retrieve
	* @return	Element by its ID and Fragment ID
	*/
	public static function byId( sFragmentId:String, sId:String):Dynamic;

	/**
	* Returns the ID which a Control with the given ID in the context of the Fragment with the given ID would have.
	* @param	sFragmentId ID of the Fragment for which to calculate the Control ID
	* @param	sId Fragment-local ID of the Control to calculate the ID for
	* @return	the prefixed ID
	*/
	public static function createId( sFragmentId:String, sId:String):String;

	/**
	* Creates a new subclass of class sap.ui.core.Fragment with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.core.Fragment.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Gets current value of property {@link #getType type}.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):String;

	/**
	* Loads and instantiates a Fragment. A Promise is returned, which resolves with the Fragments content.

The Fragment object itself is not an entity with significance beyond this factory.

The Fragment types "XML", "JS" and "HTML" are available by default; additional Fragment types can be added using the sap.ui.core.Fragment.registerType() function.

Further properties may be supported by future or custom Fragment types. Any given properties will be forwarded to the Fragment implementation.

If no fixed ID is given, the Fragment ID is generated. In any case, the Fragment ID will be used as prefix for the IDs of all contained controls.
	* @param	mOptions options map
	* @return	resolves with the resulting {sap.ui.core.Control|sap.ui.core.Control[]} after fragment parsing and instantiation
	*/
	public static function load( mOptions:Dynamic):js.lib.Promise<Fragment>;

	/**
	* Registers a new Fragment type
	* @param	sType the Fragment type. Types "XML", "HTML" and JS" are built-in and always available.
	* @param	oFragmentImpl an object having a property "init" of type "function" which is called on Fragment instantiation with the settings map as argument
	* @return	Void
	*/
	public static function registerType( sType:String, oFragmentImpl:Dynamic):Void;

	/**
	* Sets a new value for property {@link #getType type}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:String):sap.ui.core.Fragment;
}

