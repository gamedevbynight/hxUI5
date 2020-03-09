package sap.ui.model;

@:native("sap.ui.model.ClientListBinding")

/**
* List binding implementation for client models.
*/
extern class ClientListBinding extends sap.ui.model.ListBinding
{

	/**
	* Creates a new subclass of class sap.ui.model.ClientListBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ListBinding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Applies a new set of filters to the list represented by this binding.

See {@link sap.ui.model.ListBinding#filter ListBinding#filter} for a more detailed description of list filtering.

When no <code>sFilterType</code> is given, any previously configured application filters are cleared and the given filters are used as control filters
	* @param	aFilters Array of filter objects
	* @param	sFilterType Type of the filter which should be adjusted; if no type is given, then any previously configured application filters are cleared and the given filters are used as control filters
	* @return	returns <code>this</code> to facilitate method chaining
	*/
	public function filter( aFilters:Array<sap.ui.model.Filter>, ?sFilterType:sap.ui.model.FilterType):sap.ui.model.ListBinding;

	/**
	* Returns a metadata object for class sap.ui.model.ClientListBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

