package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.Matcher")

/**
* Matchers for Opa5 - needs to implement an isMatching function that returns a boolean and will get a control instance as parameter
*/
extern class Matcher extends sap.ui.base.ManagedObject
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.test.matchers.Matcher with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.test.matchers.Matcher.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

