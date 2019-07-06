package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.Interactable")

/**
* Checks if a control is currently able to take user interactions. OPA5 will automatically apply this matcher if you specify actions in {@link sap.ui.test.Opa5#waitFor}. A control will be filtered out by this matcher when: <ul> <li> The control is invisible (using the visible matcher) </li> <li> The control or its parents are busy </li> <li> The control or its parents are not enabled </li> <li> The control is hidden behind a dialog </li> <li> The UIArea of the control needs new rendering </li> </ul> Since 1.53, Interactable no longer uses internal autoWait functionality. Interactable matcher might be made private in the near future. It is recommended to enable autoWait OPA option instead of using the Interactable matcher directly.
*/
extern class Interactable extends sap.ui.test.matchers.Matcher
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.test.matchers.Interactable with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.matchers.Matcher.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.test.matchers.Interactable.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

