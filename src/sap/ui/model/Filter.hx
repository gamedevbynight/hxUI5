package sap.ui.model;

@:native("sap.ui.model.Filter")

/**
* Filter for the list binding.
*/
extern class Filter extends sap.ui.base.Object
{
	@:overload( function(?vFilterInfo:Dynamic, ?vOperator:sap.ui.model.FilterOperator, ?vValue1:Dynamic, ?vValue2:Dynamic):Void{ })
	@:overload( function(?vFilterInfo:Dynamic, ?vOperator:()->Void, ?vValue1:Dynamic, ?vValue2:Dynamic):Void{ })
	@:overload( function(?vFilterInfo:Dynamic, ?vOperator:Bool, ?vValue1:Dynamic, ?vValue2:Dynamic):Void{ })
	@:overload( function(?vFilterInfo:String, ?vOperator:sap.ui.model.FilterOperator, ?vValue1:Dynamic, ?vValue2:Dynamic):Void{ })
	@:overload( function(?vFilterInfo:String, ?vOperator:()->Void, ?vValue1:Dynamic, ?vValue2:Dynamic):Void{ })
	@:overload( function(?vFilterInfo:String, ?vOperator:Bool, ?vValue1:Dynamic, ?vValue2:Dynamic):Void{ })
	@:overload( function(?vFilterInfo:Array<sap.ui.model.Filter>, ?vOperator:sap.ui.model.FilterOperator, ?vValue1:Dynamic, ?vValue2:Dynamic):Void{ })
	@:overload( function(?vFilterInfo:Array<sap.ui.model.Filter>, ?vOperator:()->Void, ?vValue1:Dynamic, ?vValue2:Dynamic):Void{ })

	/**
	* 
	* @param	vFilterInfo Filter info object or a path or an array of filters
	* @param	vOperator Either a filter operator or a custom filter function or a Boolean flag that defines how to combine multiple filters
	* @param	vValue1 First value to use with the given filter operator
	* @param	vValue2 Second value to use with the given filter operator (only for some operators)
	* @return	Object
	*/
	public function new( ?vFilterInfo:Array<sap.ui.model.Filter>, ?vOperator:Bool, ?vValue1:Dynamic, ?vValue2:Dynamic):Void;

	/**
	* Compares two values

This is the default comparator function used for clientside filtering, if no custom comparator is given in the constructor. It does compare just by using equal/less than/greater than with automatic type casting, except for null values, which are neither less or greater, and string values where localeCompare is used.

The comparator method returns -1, 0, 1 for comparable values and NaN for non-comparable values.
	* @param	a the first value to compare
	* @param	b the second value to compare
	* @return	-1, 0, 1 or NaN depending on the compare result
	*/
	public static function defaultComparator( a:Dynamic, b:Dynamic):Int;

	/**
	* Creates a new subclass of class sap.ui.model.Filter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.Filter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

