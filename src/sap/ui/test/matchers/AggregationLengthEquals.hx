package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.AggregationLengthEquals")

/**
* Checks if an aggregation contains a specified number of entries.

As of version 1.72, it is available as a declarative matcher with the following syntax: <code><pre>{
    aggregationLengthEquals: {
        name: "string",
        length: "integer"
    }
}
</code></pre>
*/
extern class AggregationLengthEquals extends sap.ui.test.matchers.Matcher
{

	/**
	* 
	* @param	mSettings optional map/JSON-object with initial settings for the new AggregationLengthEqualsMatcher
	* @return	Object
	*/
	public function new( ?mSettings:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.test.matchers.AggregationLengthEquals with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.matchers.Matcher.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getLength length}.

The length that aggregation <code>name</code> should have.
	* @return	Value of property <code>length</code>
	*/
	public function getLength( ):Int;

	/**
	* Returns a metadata object for class sap.ui.test.matchers.AggregationLengthEquals.
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
	* Checks if the control's aggregation <code>name</code> has length <code>length</code>.
	* @param	oControl the control that is checked by the matcher
	* @return	true if the length of aggregation <code>name</code> is the same as <code>length</code>, false if it is not.
	*/
	public function isMatching( oControl:sap.ui.core.Control):Bool;

	/**
	* Sets a new value for property {@link #getLength length}.

The length that aggregation <code>name</code> should have.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iLength New value for property <code>length</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLength( iLength:Int):sap.ui.test.matchers.AggregationLengthEquals;

	/**
	* Sets a new value for property {@link #getName name}.

The name of the aggregation that is used for matching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.ui.test.matchers.AggregationLengthEquals;
}

