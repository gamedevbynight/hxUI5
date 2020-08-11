package sap.ui.test.opabuilder;

<<<<<<< HEAD
=======
@:native("sap.ui.test.opabuilder.Actions")
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
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
<<<<<<< HEAD
	@:overload( function(vActions:sap.ui.test.actions.Action):()->Void{ })
	@:overload( function(vActions:()->Void):()->Void{ })

	/**
	* Creates an action function that executes all given actions on a single or an array of controls. This method can be used as a helper for handling the different kinds of action definitions and inputs.
	* @param	vActions the actions to be executed
	* @return	an action function
	*/
	public static function executor( vActions:Array<Dynamic>):()->Void;
=======
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11

	/**
	* Creates a {@link sap.ui.test.actions.Press} action.
	* @param	sIdSuffix the id suffix of the DOM Element the press action will be executed on
	* @return	an instance of the {@link sap.ui.test.actions.Press} action
	*/
	public static function press( ?sIdSuffix:String):sap.ui.test.actions.Press;
}

