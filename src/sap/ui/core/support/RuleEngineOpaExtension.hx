package sap.ui.core.support;

@:native("sap.ui.core.support.RuleEngineOpaExtension")

/**
* This class represents an extension for OPA tests which allows running Support Assistant checks.

It enriches the OPA assertions with the methods described in {@link sap.ui.core.support.RuleEngineOpaAssertions}.

For more information, see {@link topic:cfabbd4dfc054936997d9d00916e1668 Integrating the Support Assistant in OPA Tests}.
*/
extern class RuleEngineOpaExtension extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.core.support.RuleEngineOpaExtension with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* null
	* @return	Object with the methods which will enhance the OPA assertions.
	*/
	public function getAssertions( ):sap.ui.core.support.RuleEngineOpaAssertions;

	/**
	* Returns a metadata object for class sap.ui.core.support.RuleEngineOpaExtension.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

