package sap.ui.test;

@:native("sap.ui.test.OpaBuilder")

/**
* Builder pattern for {@link sap.ui.test.Opa5#waitFor} options object - a function driven API supporting easy test definition and execution.

Sample usage: <code><pre>
// {
//    id: "myButton",
//    press: new Press()
// }
OpaBuilder.create()
    .hasId("myButton")
    .doPress()
    .build();
</pre></code>

Replace <code>this.waitFor</code> call completely: <code><pre>
// return this.waitFor({
//    controlType: "sap.m.StandardListItem",
//    matchers: [
//       {
//           properties: { text: "my test text" }
//       }
//    ],
//    press: new Press(),
//    success: function () {
//        Opa5.assert.ok(true, "Item selected - OK");
//    },
//    errorMessage: "Item selected - FAILURE"
// });
return OpaBuilder.create(this)
    .hasType("sap.m.StandardListItem")
    .hasProperties({ text: "my test text" })
    .doPress()
    .description("Item selected")
    .execute();
</pre></code>
*/
extern class OpaBuilder
{

	/**
	* 
	* @param	oOpaInstance the Opa5 instance to operate on
	* @param	oOptions the initial {@link sap.ui.test.Opa5#waitFor} options
	* @return	Object
	*/
	public function new( ?oOpaInstance:sap.ui.test.Opa5, ?oOptions:Dynamic):Void;

	/**
	* Build the final {@link sap.ui.test.Opa5#waitFor} options object and returns it.
	* @return	the final options object
	*/
	public function build( ):Dynamic;

	/**
	* Add a check function. If another check function already exists, the functions are chained.
	* @param	fnCheck the check that is executed on matched controls
	* @param	bReplace true to replace all previous defined matchers, false to add it (default)
	* @return	this OpaBuilder instance
	*/
	public function check( fnCheck:()->Void, ?bReplace:Bool):sap.ui.test.OpaBuilder;

	/**
	* Adds a check for the expected number of matching controls.
	* @param	iExpectedNumber the number of expected matching controls
	* @return	this OpaBuilder instance
	*/
	public function checkNumberOfMatches( iExpectedNumber:String):sap.ui.test.OpaBuilder;
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:sap.ui.test.matchers.Matcher, ?vActions:sap.ui.test.actions.Action, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:sap.ui.test.matchers.Matcher, ?vActions:()->Void, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:sap.ui.test.matchers.Matcher, ?vActions:Array<Dynamic>, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:()->Void, ?vActions:sap.ui.test.actions.Action, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:()->Void, ?vActions:()->Void, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:()->Void, ?vActions:Array<Dynamic>, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Array<Dynamic>, ?vActions:sap.ui.test.actions.Action, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Array<Dynamic>, ?vActions:()->Void, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Array<Dynamic>, ?vActions:Array<Dynamic>, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Dynamic, ?vActions:sap.ui.test.actions.Action, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Dynamic, ?vActions:()->Void, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:String, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Dynamic, ?vActions:Array<Dynamic>, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:sap.ui.test.matchers.Matcher, ?vActions:sap.ui.test.actions.Action, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:sap.ui.test.matchers.Matcher, ?vActions:()->Void, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:sap.ui.test.matchers.Matcher, ?vActions:Array<Dynamic>, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:()->Void, ?vActions:sap.ui.test.actions.Action, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:()->Void, ?vActions:()->Void, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:()->Void, ?vActions:Array<Dynamic>, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Array<Dynamic>, ?vActions:sap.ui.test.actions.Action, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Array<Dynamic>, ?vActions:()->Void, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Array<Dynamic>, ?vActions:Array<Dynamic>, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Dynamic, ?vActions:sap.ui.test.actions.Action, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Dynamic, ?vActions:()->Void, ?oOptions:Dynamic):sap.ui.test.OpaBuilder{ })

	/**
	* Convenience creation and initialization of a new OpaBuilder.
	* @param	oOpaInstance the Opa5 instance to operate on
	* @param	vId the id of the target control(s)
	* @param	vControlType the type of the target control(s)
	* @param	bDialogElement if true, only popover and dialogs are searched for
	* @param	vMatchers additional matchers to filter target control(s)
	* @param	vActions the actions to be performed on target control(s)
	* @param	oOptions oOptions the {@link sap.ui.test.Opa5#waitFor} options to apply
	* @return	a new OpaBuilder instance
	*/
	public static function create( ?oOpaInstance:sap.ui.test.Opa5, ?vId:RegExp, ?vControlType:String, ?bDialogElement:Bool, ?vMatchers:Dynamic, ?vActions:Array<Dynamic>, ?oOptions:Dynamic):sap.ui.test.OpaBuilder;

	/**
	* Sets the <code>debugTimeout</code> parameter.
	* @param	iDebugTimeout the debug timeout in seconds
	* @return	this OpaBuilder instance
	*/
	public function debugTimeout( iDebugTimeout:Int):sap.ui.test.OpaBuilder;

	/**
	* Set or get the default options to be used as the builder base. If no options are provided, the current default options are returned.
	* @param	oOptions the new default options to be used
	* @return	the default {@link sap.ui.test.Opa5#waitFor} options
	*/
	public static function defaultOptions( ?oOptions:Dynamic):Dynamic;

	/**
	* Set a output text that will be used as success and error message base message.
	* @param	sDescription a descriptive text
	* @return	this OpaBuilder instance
	*/
	public function description( sDescription:String):sap.ui.test.OpaBuilder;
	@:overload( function(vActions:sap.ui.test.actions.Action, ?bReplace:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(vActions:()->Void, ?bReplace:Bool):sap.ui.test.OpaBuilder{ })

	/**
	* Add an action to be performed on all matched controls.
	* @param	vActions the action(s) to be performed on matched controls
	* @param	bReplace true to replace all previous defined actions, false to add it (default)
	* @return	this OpaBuilder instance
	*/
	public function do( vActions:Array<Dynamic>, ?bReplace:Bool):sap.ui.test.OpaBuilder;
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessActions:()->Void, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessActions:()->Void, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessActions:()->Void, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessActions:Array<Dynamic>, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessActions:Array<Dynamic>, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessActions:Array<Dynamic>, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessActions:()->Void, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessActions:()->Void, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessActions:()->Void, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessActions:Array<Dynamic>, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessActions:Array<Dynamic>, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessActions:Array<Dynamic>, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessActions:()->Void, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessActions:()->Void, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessActions:()->Void, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessActions:Array<Dynamic>, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessActions:Array<Dynamic>, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessActions:Array<Dynamic>, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessActions:sap.ui.test.actions.Action, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessActions:()->Void, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessActions:()->Void, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessActions:()->Void, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessActions:Array<Dynamic>, ?vElseActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessActions:Array<Dynamic>, ?vElseActions:()->Void):sap.ui.test.OpaBuilder{ })

	/**
	* Add an action that is only performed if target control fulfills the conditions. It is internally using {@link sap.ui.test.OpaBuilder.Actions.conditional}.
	* @param	vConditions target control is checked against these given conditions
	* @param	vSuccessActions the actions to be performed when conditions are fulfilled
	* @param	vElseActions the action(s) to be performed when conditions are not fulfilled
	* @return	this OpaBuilder instance
	*/
	public function doConditional( vConditions:Dynamic, vSuccessActions:Array<Dynamic>, ?vElseActions:Array<Dynamic>):sap.ui.test.OpaBuilder;

	/**
	* Performs a {@link sap.ui.test.actions.EnterText} on target control(s).
	* @param	sText the text to be entered
	* @param	bClearFirst true to clear already existing text, false to keep it (default)
	* @param	bKeepFocus true to keep focus on target control, false to focus out (default)
	* @param	sIdSuffix the id suffix of the DOM Element the action will be executed on
	* @return	this OpaBuilder instance
	*/
	public function doEnterText( sText:String, ?bClearFirst:Bool, ?bKeepFocus:Bool, ?sIdSuffix:String):sap.ui.test.OpaBuilder;
	@:overload( function(sAggregationName:String, ?vMatchers:sap.ui.test.matchers.Matcher, vActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:sap.ui.test.matchers.Matcher, vActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:sap.ui.test.matchers.Matcher, vActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:()->Void, vActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:()->Void, vActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:()->Void, vActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:Array<Dynamic>, vActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:Array<Dynamic>, vActions:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:Array<Dynamic>, vActions:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:Dynamic, vActions:sap.ui.test.actions.Action):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:Dynamic, vActions:()->Void):sap.ui.test.OpaBuilder{ })

	/**
	* Performs given actions on all items of an aggregation fulfilling the matchers.
	* @param	sAggregationName the aggregation name
	* @param	vMatchers the matchers to filter aggregation items
	* @param	vActions the actions to be performed on matching aggregation items
	* @return	this OpaBuilder instance
	*/
	public function doOnAggregation( sAggregationName:String, ?vMatchers:Dynamic, vActions:Array<Dynamic>):sap.ui.test.OpaBuilder;
	@:overload( function(?vChildBuilderOrMatcher:sap.ui.test.matchers.Matcher, ?vActions:sap.ui.test.actions.Action, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:sap.ui.test.matchers.Matcher, ?vActions:()->Void, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:sap.ui.test.matchers.Matcher, ?vActions:Array<Dynamic>, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:()->Void, ?vActions:sap.ui.test.actions.Action, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:()->Void, ?vActions:()->Void, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:()->Void, ?vActions:Array<Dynamic>, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:Array<Dynamic>, ?vActions:sap.ui.test.actions.Action, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:Array<Dynamic>, ?vActions:()->Void, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:Array<Dynamic>, ?vActions:Array<Dynamic>, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:Dynamic, ?vActions:sap.ui.test.actions.Action, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:Dynamic, ?vActions:()->Void, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:Dynamic, ?vActions:Array<Dynamic>, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:sap.ui.test.OpaBuilder, ?vActions:sap.ui.test.actions.Action, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(?vChildBuilderOrMatcher:sap.ui.test.OpaBuilder, ?vActions:()->Void, ?bDirect:Bool):sap.ui.test.OpaBuilder{ })

	/**
	* Executes a builder with matching controls being descendants of matching target control(s). Children are any controls in the control tree beneath this target control(s).
	* @param	vChildBuilderOrMatcher the child builder or child matcher
	* @param	vActions the actions to be performed on matching child items
	* @param	bDirect specifies if the ancestor should be a direct ancestor (parent)
	* @return	this OpaBuilder instance
	*/
	public function doOnChildren( ?vChildBuilderOrMatcher:sap.ui.test.OpaBuilder, ?vActions:Array<Dynamic>, ?bDirect:Bool):sap.ui.test.OpaBuilder;

	/**
	* Executes a {@link sap.ui.test.actions.Press} action on target control(s).
	* @param	sIdSuffix the id suffix of the DOM Element the press action will be executed on
	* @return	this OpaBuilder instance
	*/
	public function doPress( ?sIdSuffix:String):sap.ui.test.OpaBuilder;
	@:overload( function(vErrorMessage:String, ?bReplace:Bool):sap.ui.test.OpaBuilder{ })

	/**
	* Adds an error message or function.
	* @param	vErrorMessage the message to be shown (or function executed) on failure
	* @param	bReplace true to replace all previous defined error functions, false to add it (default)
	* @return	this OpaBuilder instance
	*/
	public function error( vErrorMessage:()->Void, ?bReplace:Bool):sap.ui.test.OpaBuilder;

	/**
	* Executes the definition on the given or previously defined Opa5 instance.
	* @param	oOpaInstance the Opa5 instance to call {@link sap.ui.test.Opa5#waitFor} on
	* @return	an object extending a jQuery promise, corresponding to the result of {@link sap.ui.test.Opa5#waitFor}
	*/
	public function execute( ?oOpaInstance:sap.ui.test.Opa5):Dynamic;

	/**
	* Sets the <code>fragmentId</code> parameter.
	* @param	sFragmentId the fragment id
	* @return	this OpaBuilder instance
	*/
	public function fragmentId( sFragmentId:String):sap.ui.test.OpaBuilder;
	@:overload( function(vMatchers:sap.ui.test.matchers.Matcher, ?bReplace:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(vMatchers:()->Void, ?bReplace:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(vMatchers:Array<Dynamic>, ?bReplace:Bool):sap.ui.test.OpaBuilder{ })

	/**
	* Defines additional matchers for the target control(s).
	* @param	vMatchers additional matchers to filter target control(s)
	* @param	bReplace true to replace all previous defined matchers, false to add it (default)
	* @return	this OpaBuilder instance
	*/
	public function has( vMatchers:Dynamic, ?bReplace:Bool):sap.ui.test.OpaBuilder;
	@:overload( function(sAggregationName:String, ?vMatchers:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(sAggregationName:String, ?vMatchers:Array<Dynamic>):sap.ui.test.OpaBuilder{ })

	/**
	* Adds matchers to aggregation items, that at least one aggregation item must match.
	* @param	sAggregationName the aggregation name
	* @param	vMatchers matchers to filter aggregation items
	* @return	this OpaBuilder instance
	*/
	public function hasAggregation( sAggregationName:String, ?vMatchers:Dynamic):sap.ui.test.OpaBuilder;

	/**
	* Adds a matcher that checks for a certain number of aggregation items.
	* @param	sAggregationName the aggregation name
	* @param	int iNumber length to check against
	* @return	this OpaBuilder instance
	*/
	public function hasAggregationLength( sAggregationName:String, ?int:Dynamic):sap.ui.test.OpaBuilder;

	/**
	* Adds a matcher to aggregation items checking for certain properties. At least one item must match the properties.
	* @param	sAggregationName the aggregation name
	* @param	oProperties map of properties that aggregation item must match
	* @return	this OpaBuilder instance
	*/
	public function hasAggregationProperties( sAggregationName:String, oProperties:Dynamic):sap.ui.test.OpaBuilder;
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:()->Void, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:()->Void, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:()->Void, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:()->Void, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Dynamic, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Dynamic, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Dynamic, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessMatcher:Dynamic, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:()->Void, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:()->Void, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:()->Void, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:()->Void, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Dynamic, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Dynamic, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Dynamic, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:()->Void, vSuccessMatcher:Dynamic, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:()->Void, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:()->Void, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:()->Void, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:()->Void, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Dynamic, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Dynamic, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Dynamic, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessMatcher:Dynamic, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:sap.ui.test.matchers.Matcher, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:()->Void, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:()->Void, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:()->Void, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:()->Void, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Array<Dynamic>, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Dynamic, ?vElseMatcher:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Dynamic, ?vElseMatcher:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(vConditions:Dynamic, vSuccessMatcher:Dynamic, ?vElseMatcher:Array<Dynamic>):sap.ui.test.OpaBuilder{ })

	/**
	* Adds a matcher that checks states for given conditions. It is internally using {@link OpaBuilder.Matchers.conditional}.
	* @param	vConditions conditions to pre-check
	* @param	vSuccessMatcher actual matcher that is executed if conditions are met
	* @param	vElseMatcher actual matcher that is executed if conditions are not met
	* @return	this OpaBuilder instance
	*/
	public function hasConditional( vConditions:Dynamic, vSuccessMatcher:Dynamic, ?vElseMatcher:Dynamic):sap.ui.test.OpaBuilder;

	/**
	* Adds a matcher for given properties.
	* @param	sPropertyName the name of the property to check for i18n text
	* @param	sModelTokenPath the path to the I18N text. If model is omitted, <code>i18n</code> is used as model name.
	* @param	aParameters the values to be used instead of the placeholders
	* @return	this OpaBuilder instance
	*/
	public function hasI18NText( sPropertyName:String, sModelTokenPath:String, ?aParameters:Array<Dynamic>):sap.ui.test.OpaBuilder;
	@:overload( function(vId:String):sap.ui.test.OpaBuilder{ })

	/**
	* Defines the id of the target control(s).
	* @param	vId the id of the target control(s)
	* @return	this OpaBuilder instance
	*/
	public function hasId( vId:RegExp):sap.ui.test.OpaBuilder;

	/**
	* Adds a matcher for given properties.
	* @param	oProperties map of properties that target control(s) must match
	* @return	this OpaBuilder instance
	*/
	public function hasProperties( oProperties:Dynamic):sap.ui.test.OpaBuilder;
	@:overload( function(?aMatchers:sap.ui.test.matchers.Matcher):sap.ui.test.OpaBuilder{ })
	@:overload( function(?aMatchers:()->Void):sap.ui.test.OpaBuilder{ })
	@:overload( function(?aMatchers:Array<Dynamic>):sap.ui.test.OpaBuilder{ })

	/**
	* Adds a group of matchers that requires only one of them to actually match. It is internally using {@link OpaBuilder.Matchers.some}.
	* @param	aMatchers aMatchers list of matchers were one must be met
	* @return	this OpaBuilder instance
	*/
	public function hasSome( ?aMatchers:Dynamic):sap.ui.test.OpaBuilder;

	/**
	* Defines the control type of the target control(s).
	* @param	vControlType the type of the target control(s)
	* @return	this OpaBuilder instance
	*/
	public function hasType( vControlType:String):sap.ui.test.OpaBuilder;

	/**
	* Defines whether target control is part of a popover or dialog (sets <code>searchOpenDialogs</code> property).
	* @param	bDialog can be set to false to disable <code>searchOpenDialogs</code>, set to true if omitted
	* @return	this OpaBuilder instance
	*/
	public function isDialogElement( ?bDialog:Bool):sap.ui.test.OpaBuilder;

	/**
	* Sets the <code>enabled</code> parameter.
	* @param	bEnabled can be set to false to prevent <code>enabled</code> check, set to true if omitted
	* @return	this OpaBuilder instance
	*/
	public function mustBeEnabled( ?bEnabled:Bool):sap.ui.test.OpaBuilder;

	/**
	* Sets the <code>autoWait</code> parameter.
	* @param	bReady can be set to false to prevent <code>autoWait</code>, set to true if omitted
	* @return	this OpaBuilder instance
	*/
	public function mustBeReady( ?bReady:Bool):sap.ui.test.OpaBuilder;

	/**
	* Sets the <code>visible</code> parameter.
	* @param	bVisible can be set to false to prevent <code>visible</code> check, set to true if omitted
	* @return	this OpaBuilder instance
	*/
	public function mustBeVisible( ?bVisible:Bool):sap.ui.test.OpaBuilder;

	/**
	* Apply custom options. The options might override previously defined options of the OpaBuilder.
	* @param	oOptions the {@link sap.ui.test.Opa5#waitFor} options to apply
	* @return	this OpaBuilder instance
	*/
	public function options( oOptions:Dynamic):sap.ui.test.OpaBuilder;

	/**
	* Sets the <code>pollingInterval</code> parameter.
	* @param	iPollingInterval the polling interval in milliseconds
	* @return	this OpaBuilder instance
	*/
	public function pollingInterval( iPollingInterval:Int):sap.ui.test.OpaBuilder;
	@:overload( function(vSuccess:String, ?bReplace:Bool):sap.ui.test.OpaBuilder{ })
	@:overload( function(vSuccess:()->Void, ?bReplace:Bool):sap.ui.test.OpaBuilder{ })

	/**
	* Adds a success message or function. When providing an OpaBuilder, the action will execute it.
	* @param	vSuccess the message that will be shown (or function executed) on success
	* @param	bReplace true to replace all previous defined success functions, false to add it (default)
	* @return	this OpaBuilder instance
	*/
	public function success( vSuccess:sap.ui.test.OpaBuilder, ?bReplace:Bool):sap.ui.test.OpaBuilder;

	/**
	* Sets the <code>timeout</code> parameter.
	* @param	iTimeout the timeout in seconds
	* @return	this OpaBuilder instance
	*/
	public function timeout( iTimeout:Int):sap.ui.test.OpaBuilder;

	/**
	* Sets the <code>viewId</code> parameter.
	* @param	sViewId the viewId
	* @return	this OpaBuilder instance
	*/
	public function viewId( sViewId:String):sap.ui.test.OpaBuilder;

	/**
	* Sets the <code>viewName</code> parameter.
	* @param	sViewName the viewName
	* @return	this OpaBuilder instance
	*/
	public function viewName( sViewName:String):sap.ui.test.OpaBuilder;

	/**
	* Sets the <code>viewNamespace</code> parameter.
	* @param	sViewNamespace the viewNamespace
	* @return	this OpaBuilder instance
	*/
	public function viewNamespace( sViewNamespace:String):sap.ui.test.OpaBuilder;
}

