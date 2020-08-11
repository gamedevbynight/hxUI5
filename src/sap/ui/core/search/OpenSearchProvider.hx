package sap.ui.core.search;

@:native("sap.ui.core.search.OpenSearchProvider")

/**
* A SearchProvider which uses the OpenSearch protocol (either JSON or XML).
*/
extern class OpenSearchProvider extends sap.ui.core.search.SearchProvider
{
	@:overload(function(?sId:String, ?mSettings:OpenSearchProviderArgs):Void {})
	public function new(?mSettings:OpenSearchProviderArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.search.OpenSearchProvider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.search.SearchProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.search.OpenSearchProvider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSuggestType suggestType}.

The type of data which is provided by the given suggestUrl: either 'json' or 'xml'.

Default value is <code>json</code>.
	* @return	Value of property <code>suggestType</code>
	*/
	public function getSuggestType( ):String;

	/**
	* Gets current value of property {@link #getSuggestUrl suggestUrl}.

The URL for suggestions of the search provider. As placeholder for the concrete search queries '{searchTerms}' must be used. For cross domain requests maybe a proxy must be used.
	* @return	Value of property <code>suggestUrl</code>
	*/
	public function getSuggestUrl( ):sap.ui.core.URI;

	/**
	* Sets a new value for property {@link #getSuggestType suggestType}.

The type of data which is provided by the given suggestUrl: either 'json' or 'xml'.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>json</code>.
	* @param	sSuggestType New value for property <code>suggestType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSuggestType( ?sSuggestType:String):sap.ui.core.search.OpenSearchProvider;

	/**
	* Sets a new value for property {@link #getSuggestUrl suggestUrl}.

The URL for suggestions of the search provider. As placeholder for the concrete search queries '{searchTerms}' must be used. For cross domain requests maybe a proxy must be used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSuggestUrl New value for property <code>suggestUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSuggestUrl( sSuggestUrl:sap.ui.core.URI):sap.ui.core.search.OpenSearchProvider;

	/**
	* Call this function to get suggest values from the search provider. The given callback function is called with the suggest value (type 'string', 1st parameter) and an array of the suggestions (type '[string]', 2nd parameter).
	* @param	sValue The value for which suggestions are requested.
	* @param	fCallback The callback function which is called when the suggestions are available.
	* @return	Void
	*/
	public function suggest( sValue:String, fCallback:()->Void):Void;
}

typedef OpenSearchProviderArgs = sap.ui.core.search.SearchProvider.SearchProviderArgs & {

	/**
	* The URL for suggestions of the search provider. As placeholder for the concrete search queries '{searchTerms}' must be used. For cross domain requests maybe a proxy must be used.
	*/
	@:optional var suggestUrl:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The type of data which is provided by the given suggestUrl: either 'json' or 'xml'.
	*/
	@:optional var suggestType:String;
}
