package sap.ui.core.search;

@:native("sap.ui.core.search.SearchProvider")

/**
* Abstract base class for all SearchProviders which can be e.g. attached to a SearchField.

Do not create instances of this class, but use a concrete subclass instead.
*/
extern class SearchProvider extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:SearchProviderArgs):Void {})
	public function new(?mSettings:SearchProviderArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.search.SearchProvider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getIcon icon}.

Icon of the Search Provider
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.search.SearchProvider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Icon of the Search Provider

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:String):sap.ui.core.search.SearchProvider;

	/**
	* Call this function to get suggest values from the search provider. The given callback function is called with the suggest value (type 'string', 1st parameter) and an array of the suggestions (type '[string]', 2nd parameter).
	* @param	sValue The value for which suggestions are requested.
	* @param	fnCallback The callback function which is called when the suggestions are available.
	* @return	Void
	*/
	public function suggest( sValue:String, fnCallback:()->Void):Void;
}

typedef SearchProviderArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Icon of the Search Provider
	*/
	@:optional var icon:String;
}
