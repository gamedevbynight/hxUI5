package sap.ui.model;

@:native("sap.ui.model.ListBinding")

/**
* ListBinding is a specific binding for lists in the model, which can be used to populate Tables or ItemLists.
*/
extern class ListBinding extends sap.ui.model.Binding
{
	@:overload( function(?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:sap.ui.model.Filter, ?mParameters:Dynamic):Void{ })
	@:overload( function(?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):Void{ })
	@:overload( function(?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:sap.ui.model.Filter, ?mParameters:Dynamic):Void{ })

	/**
	* 
	* @param	oModel Model instance that this binding belongs to
	* @param	sPath Binding path for this binding; a relative path will be resolved relative to a given context
	* @param	oContext Context to be used to resolve a relative path
	* @param	aSorters Initial sort order (can be either a sorter or an array of sorters)
	* @param	aFilters Predefined filter/s (can be either a filter or an array of filters)
	* @param	mParameters Additional, implementation-specific parameters that should be used by the new list binding; this base class doesn't define any parameters, check the API reference for the concrete model implementations to learn about their supported parameters (if any)
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:Array<sap.ui.model.Filter>, ?mParameters:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.ListBinding with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Binding.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Applies a new set of filters to the list represented by this binding.

Depending on the nature of the model (client or server), the operation might be executed locally or on a server and it might execute asynchronously.

<h4>Application and Control Filters</h4> Each list binding maintains two separate lists of filters, one for filters defined by the control that owns the binding and another list for filters that an application can define in addition. When executing the filter operation, both sets of filters are combined.

By using the second parameter <code>sFilterType</code> of method <code>filter</code>, the caller can control which set of filters is modified. If no type is given, then the behavior depends on the model implementation and should be documented in the API reference for that model.

<h4>Auto-Grouping of Filters</h4> Filters are first grouped according to their binding path. All filters belonging to the same group are ORed and after that the results of all groups are ANDed. Usually this means, all filters applied to a single table column are ORed, while filters on different table columns are ANDed. Please either use the automatic grouping of filters (where applicable) or use explicit AND/OR filters, a mixture of both is not supported.
	* @param	aFilters Array of filter objects
	* @param	sFilterType Type of the filter which should be adjusted; if no type is given, the behavior depends on the model implementation
	* @return	returns <code>this</code> to facilitate method chaining
	*/
	public function filter( aFilters:Array<sap.ui.model.Filter>, ?sFilterType:sap.ui.model.FilterType):sap.ui.model.ListBinding;

	/**
	* Returns an array of currently used binding contexts of the bound control.

This method does not trigger any data requests from the backend or delta calculation, but just returns the context array as last requested by the control. This can be used by the application to get access to the data currently displayed by a list control.
	* @return	the array of contexts for each row of the bound list
	*/
	public function getCurrentContexts( ):Array<sap.ui.model.Context>;

	/**
	* Returns list of distinct values for the given relative binding path.
	* @param	sPath Relative binding path
	* @return	Array of distinct values.
	*/
	public function getDistinctValues( sPath:String):Array<Dynamic>;

	/**
	* Gets the group for the given context. Must only be called if <code>isGrouped()</code> returns that grouping is enabled for this binding. The grouping will be performed using the first sorter (in case multiple sorters are defined).
	* @param	oContext The binding context
	* @return	The group object containing a key property and optional custom properties
	*/
	public function getGroup( oContext:sap.ui.model.Context):Dynamic;

	/**
	* Returns the number of entries in the list.

This might be an estimated or preliminary length, in case the full length is not known yet, see method {@link #isLengthFinal}.
	* @return	returns the number of entries in the list
	*/
	public function getLength( ):Int;

	/**
	* Returns a metadata object for class sap.ui.model.ListBinding.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Indicates whether grouping is enabled for the binding. Grouping is enabled for a list binding, if at least one sorter exists on the binding and the first sorter is a grouping sorter.
	* @return	Whether grouping is enabled
	*/
	public function isGrouped( ):Bool;

	/**
	* Returns whether the length which can be retrieved using getLength() is a known, final length, or a preliminary or estimated length which may change if further data is requested.
	* @return	Whether the length is final
	*/
	public function isLengthFinal( ):Bool;
	@:overload( function(aSorters:sap.ui.model.Sorter):sap.ui.model.ListBinding{ })

	/**
	* Sorts the list according to the sorter object.

Instead of a single sorter also an array of sorters can be passed to the sort method. In this case they are processed in the sequence in which they are contained in the array.

<h4>Grouping</h4> Sorting and grouping are closely related, in case a list should be grouped, it must be sorted by the property to group with. Grouping is enabled by setting the <code>group</code> property on the sorter object. If it is enabled, you can get the current group of an item using {@link sap.ui.model.ListBinding.prototype.getGroup}. In case multiple sorters are provided, grouping can only be done on the first sorter, nested grouping is not supported.
	* @param	aSorters the Sorter object or an array of sorters which defines the sort order
	* @return	returns <code>this</code> to facilitate method chaining
	*/
	public function sort( aSorters:Array<Dynamic>):sap.ui.model.ListBinding;
}

