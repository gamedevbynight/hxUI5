package sap.ui.test.opabuilder;

@:native("sap.ui.test.opabuilder.Matchers")
extern class Matchers
{

	/**
	* Creates a matcher function that returns an aggregation element of a control at a given index.
	* @param	sAggregationName the name of the aggregation that is used for matching
	* @param	iIndex the index within the aggregation
	* @return	the matcher function returns the item at a certain index in the aggregation or null if index not in range
	*/
	public static function aggregationAtIndex( sAggregationName:String, iIndex:Int):()->Void;

	/**
	* Creates a {@link sap.ui.test.matchers.AggregationLengthEquals} matcher.
	* @param	sAggregationName the name of the aggregation that is used for matching
	* @param	iLength the length that aggregation name should have
	* @return	a declarative matcher definition for {@link sap.ui.test.matchers.AggregationLengthEquals}
	*/
	public static function aggregationLength( sAggregationName:String, iLength:Int):Dynamic;
	@:overload( function(sAggregationName:String, ?vMatchers:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(sAggregationName:String, ?vMatchers:()->Void):()->Void{ })
	@:overload( function(sAggregationName:String, ?vMatchers:Array<Dynamic>):()->Void{ })

	/**
	* Checks whether at least one aggregation item fulfills given matcher(s).
	* @param	sAggregationName the aggregation name
	* @param	vMatchers the matchers to filter aggregation items
	* @return	matcher function
	*/
	public static function aggregationMatcher( sAggregationName:String, ?vMatchers:Dynamic):()->Void;
	@:overload( function(vAncestor:Dynamic, ?bDirect:Bool):Dynamic{ })

	/**
	* Creates a declarative matcher definition for {@link sap.ui.test.matchers.Ancestor}.
	* @param	vAncestor the ancestor control to check, if undefined, validates every control to true. Can be a control or a control ID
	* @param	bDirect specifies if the ancestor should be a direct ancestor (parent)
	* @return	a declarative matcher definition for {@link sap.ui.test.matchers.Ancestor}
	*/
	public static function ancestor( vAncestor:String, ?bDirect:Bool):Dynamic;

	/**
	* Creates a {@link sap.ui.test.matchers.BindingPath} matcher.
	* @param	sModelPropertyPath the binding context path (including the model name) that is used for matching
	* @param	sPropertyPath the binding property path that is used for matching. If (context) path is also set, propertyPath will be assumed to be relative to the binding context path
	* @return	a declarative matcher definition for {@link sap.ui.test.matchers.BindingPath}
	*/
	public static function bindingPath( sModelPropertyPath:String, sPropertyPath:String):Dynamic;

	/**
	* Creates a matcher that checks whether the bound context has the given properties.
	* @param	sModelName the name of the model to get the binding context for
	* @param	oProperties the property-path map with expected values
	* @return	the matcher function checks all path in the properties object against the binding context
	*/
	public static function bindingProperties( sModelName:String, oProperties:Dynamic):()->Void;
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:()->Void, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:()->Void, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:()->Void, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:()->Void, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Dynamic, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Dynamic, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Dynamic, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Dynamic, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:()->Void, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:()->Void, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:()->Void, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:()->Void, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Dynamic, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Dynamic, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Dynamic, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Dynamic, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:()->Void, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:()->Void, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:()->Void, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:()->Void, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Dynamic, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Dynamic, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Dynamic, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Dynamic, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:()->Void, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:()->Void, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:()->Void, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:()->Void, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Dynamic):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Dynamic, ?vElseMatcher:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Dynamic, ?vElseMatcher:()->Void):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Dynamic, ?vElseMatcher:Array<Dynamic>):()->Void{ })

	/**
	* Creates a matcher that checks states for given conditions.
	* @param	vConditions conditions to pre-check
	* @param	vSuccessMatcher actual matcher that is executed if conditions are met
	* @param	vElseMatcher actual matcher that is executed if conditions are not met
	* @return	a matcher function
	*/
	public static function conditional( vConditions:Dynamic, vSuccessMatcher:Dynamic, ?vElseMatcher:Dynamic):()->Void;

	/**
	* Creates a matcher that checks whether a control has all given custom data.
	* @param	oCustomData the map of custom data keys and their values to check against
	* @return	the matcher function checks for defined custom data
	*/
	public static function customData( oCustomData:Dynamic):()->Void;
	@:overload( function(vDescendent:Dynamic, ?bDirect:Bool):Dynamic{ })

	/**
	* Creates a declarative matcher definition for {@link sap.ui.test.matchers.Descendant}.
	* @param	vDescendent the descendant control to check. If undefined, it validates every control to true. Can be a control or a control ID
	* @param	bDirect specifies if the descendant should be a direct child
	* @return	a declarative matcher definition for {@link sap.ui.test.matchers.Descendant}
	*/
	public static function descendant( vDescendent:String, ?bDirect:Bool):Dynamic;
	@:overload( function(?vMatchers:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(?vMatchers:()->Void):()->Void{ })
	@:overload( function(?vMatchers:Array<Dynamic>):()->Void{ })

	/**
	* Creates a matcher that checks all inputs against given matchers. The input can be an array or a single element. The result will always be an array. If the input is a single element, the result will be an array containing the given element (or empty if not matching the matchers).
	* @param	vMatchers the matchers to check all items against
	* @return	the matcher function returns an array with all matching items
	*/
	public static function filter( ?vMatchers:Dynamic):()->Void;

	/**
	* Creates a {@link sap.ui.test.matchers.I18NText} matcher.
	* @param	sPropertyName the name of the control property to match the I18N text with
	* @param	sModelTokenPath the path to the I18N text. If model is omitted, <code>i18n</code> is used as model name.
	* @param	aParameters the values to be used instead of the placeholders
	* @return	a declarative matcher definition for {@link sap.ui.test.matchers.I18NText}
	*/
	public static function i18n( sPropertyName:String, sModelTokenPath:String, ?aParameters:Array<String>):Dynamic;

	/**
	* Creates a {@link sap.ui.test.matchers.LabelFor} matcher.
	* @param	sPropertyName the name of the control property to match the I18N text with
	* @param	bText define whether check is against plain text
	* @param	sModelTokenPathOrText the path to the I18N text containing the model name. If <code>bText</code> set true, contains the plain text to check against
	* @param	aParameters the values to be used instead of the placeholders in case of I18N texts
	* @return	a declarative matcher definition for {@link sap.ui.test.matchers.LabelFor}
	*/
	public static function labelFor( sPropertyName:String, ?bText:Bool, sModelTokenPathOrText:String, ?aParameters:Array<Dynamic>):Dynamic;
	@:overload( function(?vMatchers:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(?vMatchers:()->Void):()->Void{ })
	@:overload( function(?vMatchers:Array<Dynamic>):()->Void{ })

	/**
	* Creates a matcher that checks a single input against all defined matchers.
	* @param	vMatchers the matchers to check all items against
	* @return	the matcher function returns the result of the matcher chain
	*/
	public static function match( ?vMatchers:Dynamic):()->Void;

	/**
	* Creates a {@link sap.ui.test.matchers.Properties} matcher.
	* @param	oProperties the object with the properties to be checked
	* @return	a declarative matcher definition for {@link sap.ui.test.matchers.Properties}
	*/
	public static function properties( oProperties:Dynamic):Dynamic;

	/**
	* Creates a matcher that validates the given property against a token text of a library message bundle.
	* @param	sPropertyName the name of the control property to match the I18N text with
	* @param	sLibrary the name of the library to retrieve the resource bundle from
	* @param	sToken the text token to validate against
	* @param	aParameters the values to be used instead of the placeholders
	* @return	a matcher function
	*/
	public static function resourceBundle( sPropertyName:String, sLibrary:String, sToken:String, ?aParameters:Array<String>):()->Void;
	@:overload( function(?aMatchers:sap.ui.test.matchers.Matcher):()->Void{ })
	@:overload( function(?aMatchers:()->Void):()->Void{ })
	@:overload( function(?aMatchers:Array<Dynamic>):()->Void{ })

	/**
	* Creates a matcher that checks for at least one successful match from a group of matchers.
	* @param	aMatchers aMatchers list of matchers were one must be met
	* @return	a matcher function
	*/
	public static function some( ?aMatchers:Dynamic):()->Void;
}

