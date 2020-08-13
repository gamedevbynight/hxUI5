package sap.m.multiinput;

@:native("sap.m.MultiInput.fnValidator")
extern class FnValidator
{

	/**
	* The source text
	*/
	 public var text:String;

	/**
	* Suggested token
	*/
	 public var suggestedToken:sap.m.Token;

	/**
	* Any object used to find the suggested token. This property is available when the <code>MultiInput</code> has a list or tabular suggestions.
	*/
	 public var suggestionObject:Dynamic;

	/**
	* Callback which accepts {sap.m.Token} as a parameter and gets called after validation has finished.
	*/
	 public var asyncCallback:()->Void;


}

