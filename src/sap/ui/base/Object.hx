package sap.ui.base;


/**
* Base class for all SAPUI5 Objects.
*/
extern class Object
{
public function new():Void;

	/**
	* Destructor method for objects.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Creates a subclass of class sap.ui.base.Object with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain three kinds of information: <ul> <li><code>metadata:</code> an (optional) object literal with metadata about the class. The information in the object literal will be wrapped by an instance of {@link sap.ui.base.Metadata Metadata} and might contain the following information <ul> <li><code>interfaces:</code> {string[]} (optional) set of names of implemented interfaces (defaults to no interfaces)</li> <li><code>publicMethods:</code> {string[]} (optional) list of methods that should be part of the public facade of the class</li> <li><code>abstract:</code> {boolean} (optional) flag that marks the class as abstract (purely informational, defaults to false)</li> <li><code>final:</code> {boolean} (optional) flag that marks the class as final (defaults to false)</li> </ul> Subclasses of sap.ui.base.Object can enrich the set of supported metadata (e.g. see {@link sap.ui.core.Element.extend}). </li>

<li><code>constructor:</code> a function that serves as a constructor function for the new class. If no constructor function is given, the framework creates a default implementation that delegates all its arguments to the constructor function of the base class. </li>

<li><i>any-other-name:</i> any other property in the <code>oClassInfo</code> is copied into the prototype object of the newly created class. Callers can thereby add methods or properties to all instances of the class. But be aware that the given values are shared between all instances of the class. Usually, it doesn't make sense to use primitive values here other than to declare public constants.

If such a property has a function as its value, and if the property name does not start with an underscore or with the prefix "on", the property name will be automatically added to the list of public methods of the class (see property <code>publicMethods</code> in the <code>metadata</code> section). If a method's name matches that pattern, but is not meant to be public, it shouldn't be included in the class info object, but be assigned to the prototype instead. </li>

</ul>

The prototype object of the newly created class uses the same prototype as instances of the base class (prototype chaining).

A metadata object is always created, even if there is no <code>metadata</code> entry in the <code>oClassInfo</code> object. A getter for the metadata is always attached to the prototype and to the class (constructor function) itself.

Last but not least, with the third argument <code>FNMetaImpl</code> the constructor of a metadata class can be specified. Instances of that class will be used to represent metadata for the newly created class and for any subclass created from it. Typically, only frameworks will use this parameter to enrich the metadata for a new class hierarchy they introduce (e.g. {@link sap.ui.core.Element.extend Element}).
	* @param	sClassName name of the class to be created
	* @param	oClassInfo structured object with information about the class
	* @param	FNMetaImpl constructor function for the metadata object. If not given, it defaults to sap.ui.base.Metadata.
	* @return	the created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the public facade of this object.

By default, the public facade is implemented as an instance of {@link sap.ui.base.Interface}, exposing the <code>publicMethods</code> as defined in the metadata of the class of this object.

See the documentation of the {@link #.extend extend} method for an explanation of <code>publicMethods</code>.

The facade is created on the first call of <code>getInterface</code> and reused for all later calls.
	* @return	Void
	*/
	public function getInterface( ):Void;

	/**
	* Returns the metadata for the class that this object belongs to.

This method is only defined when metadata has been declared by using {@link sap.ui.base.Object.defineClass} or {@link sap.ui.base.Object.extend}.
	* @return	metadata for the class of the object
	*/
	public function getMetadata( ):sap.ui.base.Metadata;
	@:overload( function(oObject:Dynamic, vTypeName:String):Bool{ })

	/**
	* Checks whether the given object is an instance of the named type. This function is a short-hand convenience for {@link sap.ui.base.Object#isA}.

Please see the API documentation of {@link sap.ui.base.Object#isA} for more details.
	* @param	oObject Object which will be checked whether it is an instance of the given type
	* @param	vTypeName Type or types to check for
	* @return	Whether the given object is an instance of the given type or of any of the given types
	*/
	public static function isA( oObject:Dynamic, vTypeName:Array<String>):Bool;
}

