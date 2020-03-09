package sap.ui.commons;

@:native("sap.ui.commons.SearchProvider")

/**
* A SearchProvider which can be attached to a Search Field.
*/
extern class SearchProvider extends sap.ui.core.search.OpenSearchProvider
{
	@:overload(function(?sId:String, ?mSettings:SearchProviderArgs):Void {})
	public function new(?mSettings:SearchProviderArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.SearchProvider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.search.OpenSearchProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.SearchProvider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef SearchProviderArgs = sap.ui.core.search.OpenSearchProvider.OpenSearchProviderArgs & {
}
