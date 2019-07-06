package sap.ui.model;

@:native("sap.ui.model.Sorter")

/**
* Sorter for list bindings.

Instances of this class define the sort order for a list binding.
*/
extern class Sorter extends sap.ui.base.Object
{
	@:overload( function(?sPath:String, ?bDescending:Bool, ?vGroup:Bool, ?fnComparator:()->Void):Void{ })

	/**
	* 
	* @param	sPath the binding path used for sorting
	* @param	bDescending whether the sort order should be descending
	* @param	vGroup configure grouping of the content, can either be true to enable grouping based on the raw model property value, or a function which calculates the group value out of the context (e.g. oContext.getProperty("date").getYear() for year grouping). The control needs to implement the grouping behaviour for the aggregation which you want to group. In case a function is provided it must either return a primitive type value as the group key or an object containing a "key" property and additional properties needed for group visualization. <b>Note:</b> Grouping is only possible (and only makes sense) for the primary sort property.
	* @param	fnComparator A custom comparator function, which is used for client-side sorting instead of the default comparator method. Information about parameters and expected return values of such a method can be found in the {@link #.defaultComparator default comparator} documentation. <b>Note:</b> Custom comparator functions are meant to be used on the client. Models that implement sorting in the backend usually don't support custom comparator functions. Consult the documentation of the specific model implementation.
	* @return	Object
	*/
	public function new( ?sPath:String, ?bDescending:Bool, ?vGroup:()->Void, ?fnComparator:()->Void):Void;

	/**
	* Compares two values

This is the default comparator function used for clientside sorting, if no custom comparator is given in the constructor. It does compare just by using equal/less than/greater than with automatic type casting, except for null values, which are last in ascending order, and string values where localeCompare is used.

The comparator method returns -1, 0 or 1, depending on the order of the two items and is suitable to be used as a comparator method for Array.sort.
	* @param	a the first value to compare
	* @param	b the second value to compare
	* @return	-1, 0 or 1 depending on the compare result
	*/
	public static function defaultComparator( a:Dynamic, b:Dynamic):Int;

	/**
	* Creates a new subclass of class sap.ui.model.Sorter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a group object, at least containing a key property for group detection. May contain additional properties as provided by a custom group function.
	* @param	oContext the binding context
	* @return	An object containing a key property and optional custom properties
	*/
	public function getGroup( oContext:sap.ui.model.Context):Dynamic;

	/**
	* Returns the group function of this Sorter. If grouping is not enabled on this Sorter, it will return undefined, if no explicit group function has been defined the default group function is returned. The returned function is bound to its Sorter, so it will group according to its own property path, even if it is used in the context of another Sorter.
	* @return	The group function
	*/
	public function getGroupFunction( ):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.Sorter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

