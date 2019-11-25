package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.AggregationContainsPropertyEqual")

/**
* Checks if an aggregation contains at least one item that has a property set to a certain value.

As of version 1.72, it is available as a declarative matcher with the following syntax: <pre><code>{
    aggregationContainsPropertyEqual: {
        aggregationName: "string",
        propertyName: "string",
        propertyValue: "string"
    }
}
</code></pre>
*/
extern class AggregationContainsPropertyEqual extends sap.ui.test.matchers.Matcher
{

	/**
	* 
	* @param	mSettings optional map/JSON-object with initial settings for the new AggregationContainsPropertyEqualMatcher
	* @return	Object
	*/
	public function new( ?mSettings:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.test.matchers.AggregationContainsPropertyEqual with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.matchers.Matcher.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAggregationName aggregationName}.

The Name of the aggregation that is used for matching.
	* @return	Value of property <code>aggregationName</code>
	*/
	public function getAggregationName( ):String;

	/**
	* Returns a metadata object for class sap.ui.test.matchers.AggregationContainsPropertyEqual.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getPropertyName propertyName}.

The Name of the property that is used for matching.
	* @return	Value of property <code>propertyName</code>
	*/
	public function getPropertyName( ):String;

	/**
	* Gets current value of property {@link #getPropertyValue propertyValue}.

The value of the Property that is used for matching.
	* @return	Value of property <code>propertyValue</code>
	*/
	public function getPropertyValue( ):Dynamic;

	/**
	* Checks if the control has a filled aggregation with at least one control that have a property equaling propertyName/Value.
	* @param	oControl the control that is checked by the matcher
	* @return	true if the Aggregation set in the property aggregationName is filled, false if it is not.
	*/
	public function isMatching( oControl:sap.ui.core.Control):Bool;

	/**
	* Sets a new value for property {@link #getAggregationName aggregationName}.

The Name of the aggregation that is used for matching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAggregationName New value for property <code>aggregationName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAggregationName( sAggregationName:String):sap.ui.test.matchers.AggregationContainsPropertyEqual;

	/**
	* Sets a new value for property {@link #getPropertyName propertyName}.

The Name of the property that is used for matching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPropertyName New value for property <code>propertyName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPropertyName( sPropertyName:String):sap.ui.test.matchers.AggregationContainsPropertyEqual;

	/**
	* Sets a new value for property {@link #getPropertyValue propertyValue}.

The value of the Property that is used for matching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oPropertyValue New value for property <code>propertyValue</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPropertyValue( oPropertyValue:Dynamic):sap.ui.test.matchers.AggregationContainsPropertyEqual;
}

