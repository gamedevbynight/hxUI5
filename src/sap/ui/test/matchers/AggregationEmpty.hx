package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.AggregationEmpty")

/**
* Checks if an aggregation is empty.

As of version 1.72, it is available as a declarative matcher with the following syntax: <code><pre>{
    aggregationEmpty: {
        name: "string"
    }
}
</code>
*/
extern class AggregationEmpty extends sap.ui.test.matchers.Matcher
{

	/**
	* 
	* @param	mSettings optional map/JSON-object with initial settings for the new AggregationEmptyMatcher
	* @return	Object
	*/
	public function new( ?mSettings:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.test.matchers.AggregationEmpty with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.matchers.Matcher.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.test.matchers.AggregationEmpty.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Gets current value of property {@link #getName name}.

The name of the aggregation that is used for matching.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Checks if the control has an empty aggregation.
	* @param	oControl the control that is checked by the matcher
	* @return	true if the Aggregation set in the property aggregationName is empty, false if it is not.
	*/
	public function isMatching( oControl:sap.ui.core.Control):Bool;

	/**
	* Sets a new value for property {@link #getName name}.

The name of the aggregation that is used for matching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.ui.test.matchers.AggregationEmpty;
}

