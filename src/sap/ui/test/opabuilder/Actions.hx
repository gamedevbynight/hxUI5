package sap.ui.test.opabuilder;

@:native("sap.ui.test.opabuilder.Actions")
extern class Actions
{
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:sap.ui.test.matchers.Matcher, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:()->Void, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Array<Dynamic>, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:sap.ui.test.actions.Action, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:()->Void, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:Array<Dynamic>, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:()->Void):()->Void{ })
	@:overload( function(vConditions:Dynamic, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:Array<Dynamic>):()->Void{ })

	/**
	* Creates an action that is only performed if target control fulfills the conditions.
	* @param	vConditions target control is checked against these given conditions
	* @param	vSuccessBuilderOrOptions the actions to be performed when conditions are fulfilled
	* @param	vElseBuilderOptions the action(s) to be performed when conditions are not fulfilled
	* @return	an action function
	*/
	public static function conditional( vConditions:Dynamic, vSuccessBuilderOrOptions:sap.ui.test.OpaBuilder, ?vElseBuilderOptions:sap.ui.test.OpaBuilder):()->Void;

	/**
	* Creates a {@link sap.ui.test.actions.EnterText} action.
	* @param	sText defines the {@link sap.ui.test.actions.EnterText#text} setting
	* @param	bClearTextFirst defines the {@link sap.ui.test.actions.EnterText#clearTextFirst} setting
	* @param	bKeepFocus defines the {@link sap.ui.test.actions.EnterText#keepFocus} setting
	* @param	sIdSuffix the id suffix of the DOM Element the action will be executed on
	* @return	an instance of the {@link sap.ui.test.actions.EnterText} action
	*/
	public static function enterText( sText:String, ?bClearTextFirst:Bool, ?bKeepFocus:Bool, ?sIdSuffix:String):sap.ui.test.actions.EnterText;

	/**
	* Creates a {@link sap.ui.test.actions.Press} action.
	* @param	sIdSuffix the id suffix of the DOM Element the press action will be executed on
	* @return	an instance of the {@link sap.ui.test.actions.Press} action
	*/
	public static function press( ?sIdSuffix:String):sap.ui.test.actions.Press;
}

