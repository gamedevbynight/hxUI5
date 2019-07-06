package sap.ui.base;


/**
* <strong>Note about Info Objects</strong>

Several methods in this class return info objects that describe a property, aggregation, association or event of the class described by this metadata object. The type, structure and behavior of these info objects is not yet documented and not part of the stable, public API.

Code using such methods and the returned info objects therefore needs to be aware of the following restrictions:

<ul> <li>the set of properties exposed by each info object, their type and value might change as well as the class of the info object itself.

Properties that represent settings provided during class definition (in the oClassInfo parameter of the 'extend' call, e.g. 'type', 'multiple' of an aggregation) are more likely to stay the same than additional, derived properties like '_iKind'.</li>

<li>info objects must not be modified / enriched although they technically could.</li>

<li>the period of validity of info objects is not defined. They should be referenced only for a short time and not be kept as members of long living objects or closures.</li>

</ul>
*/
extern class ManagedObjectMetadata extends sap.ui.base.Metadata
{

	/**
	* 
	* @param	sClassName fully qualified name of the described class
	* @param	oClassInfo static info to construct the metadata from
	* @return	Object
	*/
	public function new( ?sClassName:String, ?oClassInfo:Dynamic):Void;

	/**
	* Returns an info object for the named public aggregation of the described class no matter whether the aggregation was defined by the class itself or by one of its ancestor classes.

If neither the class nor its ancestor classes define a public aggregation with the given name, <code>undefined</code> is returned.

If the name is not given (or has a falsy value), then it is substituted by the name of the default aggregation of the 'described class' (if any).

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @param	sName name of the aggregation or empty
	* @return	An info object describing the aggregation or <code>undefined</code>
	*/
	public function getAggregation( ?sName:String):Dynamic;

	/**
	* Returns a map of info objects for the public aggregations of the described class. Aggregations declared by ancestor classes are not included.

The returned map keys the aggregation info objects by their name. In case of 0..1 aggregations this is the singular name, otherwise it is the plural name.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @return	Map of aggregation info objects keyed by aggregation names
	*/
	public function getAggregations( ):Map<String,Dynamic>;

	/**
	* Returns a map of info objects for all public aggregations of the described class, including public aggregations form the ancestor classes.

The returned map keys the aggregation info objects by their name. In case of 0..1 aggregations this is the singular name, otherwise it is the plural name.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @return	Map of aggregation info objects keyed by aggregation names
	*/
	public function getAllAggregations( ):Map<String,Dynamic>;

	/**
	* Returns a map of info objects for all public associations of the described class, including public associations form the ancestor classes.

The returned map keys the association info objects by their name. In case of 0..1 associations this is the singular name, otherwise it is the plural name.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @return	Map of association info objects keyed by association names
	*/
	public function getAllAssociations( ):Map<String,Dynamic>;

	/**
	* Returns a map of info objects for all public events of the described class, including public events form the ancestor classes.

The returned map keys the event info objects by their name.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @return	Map of event info objects keyed by event names
	*/
	public function getAllEvents( ):Map<String,Dynamic>;

	/**
	* Returns a map of info objects for all public properties of the described class, including public properties from the ancestor classes.

The returned map keys the property info objects by their name.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @return	Map of property info objects keyed by the property names
	*/
	public function getAllProperties( ):Map<String,Dynamic>;

	/**
	* Returns an info object for the named public association of the described class, no matter whether the association was defined by the class itself or by one of its ancestor classes.

If neither the described class nor its ancestor classes define an association with the given name, <code>undefined</code> is returned.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @param	sName name of the association
	* @return	An info object describing the association or <code>undefined</code>
	*/
	public function getAssociation( sName:String):Dynamic;

	/**
	* Returns a map of info objects for all public associations of the described class. Associations declared by ancestor classes are not included.

The returned map keys the association info objects by their name. In case of 0..1 associations this is the singular name, otherwise it is the plural name.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @return	Map of association info objects keyed by association names
	*/
	public function getAssociations( ):Map<String,Dynamic>;

	/**
	* Returns an info object for the named public event of the described class, no matter whether the event was defined by the class itself or by one of its ancestor classes.

If neither the described class nor its ancestor classes define an event with the given name, <code>undefined</code> is returned.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @param	sName name of the event
	* @return	An info object describing the event or <code>undefined</code>
	*/
	public function getEvent( sName:String):Dynamic;

	/**
	* Returns a map of info objects for the public events of the described class. Events declared by ancestor classes are not included.

The returned map keys the event info objects by their name.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @return	Map of event info objects keyed by event names
	*/
	public function getEvents( ):Map<String,Dynamic>;

	/**
	* Returns the name of the library that contains the described UIElement.
	* @return	the name of the library
	*/
	public function getLibraryName( ):String;

	/**
	* Returns a map of info objects for the public properties of the described class. Properties declared by ancestor classes are not included.

The returned map keys the property info objects by their name.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @return	Map of property info objects keyed by the property names
	*/
	public function getProperties( ):Map<String,Dynamic>;

	/**
	* Returns an info object for the named public property of the described class, no matter whether the property was defined by the class itself or by one of its ancestor classes.

If neither the described class nor its ancestor classes define a property with the given name, <code>undefined</code> is returned.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @param	sName name of the property
	* @return	An info object describing the property or <code>undefined</code>
	*/
	public function getProperty( sName:String):Dynamic;

	/**
	* Returns a map of default values for all properties declared by the described class and its ancestors, keyed by the property name.
	* @return	Map of default values keyed by property names
	*/
	public function getPropertyDefaults( ):Map<String,Dynamic>;

	/**
	* Returns an info object for a public setting with the given name that either is a public property or a public aggregation of cardinality 0..1 and with at least one simple alternative type. The setting can be defined by the class itself or by one of its ancestor classes.

If neither the described class nor its ancestor classes define a suitable setting with the given name, <code>undefined</code> is returned.

<b>Warning:</b> Type, structure and behavior of the returned info objects is not documented and therefore not part of the API. See the {@link #constructor Notes about Info objects} in the constructor documentation of this class.
	* @param	sName name of the property like setting
	* @return	An info object describing the property or aggregation or <code>undefined</code>
	*/
	public function getPropertyLikeSetting( sName:String):Dynamic;

	/**
	* Checks the existence of the given public aggregation by its name.
	* @param	sName name of the aggregation
	* @return	true, if the aggregation exists
	*/
	public function hasAggregation( sName:String):Bool;

	/**
	* Checks the existence of the given public association by its name
	* @param	sName name of the association
	* @return	true, if the association exists
	*/
	public function hasAssociation( sName:String):Bool;

	/**
	* Checks the existence of the given event by its name
	* @param	sName name of the event
	* @return	true, if the event exists
	*/
	public function hasEvent( sName:String):Bool;

	/**
	* Checks the existence of the given public property by its name
	* @param	sName name of the property
	* @return	true, if the property exists
	*/
	public function hasProperty( sName:String):Bool;

	/**
	* Test whether a given ID looks like it was automatically generated.

Examples: <pre>
True for:
  "foo--__bar04--baz"
  "foo--__bar04"
  "__bar04--baz"
  "__bar04"
  "__bar04--"
  "__bar04--foo"
False for:
  "foo__bar04"
  "foo__bar04--baz"
</pre>

See {@link sap.ui.base.ManagedObjectMetadata.prototype.uid} for details on ID generation.
	* @param	sId the ID that should be tested
	* @return	whether the ID is likely to be generated
	*/
	public static function isGeneratedId( sId:String):Bool;
@:overload( function():String{ })

	/**
	* Calculates a new ID based on a prefix.

To guarantee uniqueness of the generated IDs across all ID prefixes, prefixes must not end with digits.
	* @param	sIdPrefix prefix for the new ID
	* @return	A (hopefully unique) control id
	*/
	public static function uid( sIdPrefix:String):String;
}

