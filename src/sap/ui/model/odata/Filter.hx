package sap.ui.model.odata;

@:native("sap.ui.model.odata.Filter")

/**
* Filter for the list binding
*/
extern class Filter extends sap.ui.base.Object
{

	/**
	* 
	* @param	sPath the binding path for this filter
	* @param	aValues Array of FilterOperators and their values: [{operator:"GE",value1:"val1"},{operator:"LE",value1:"val1"},{operator:"BT",value1:"val1",value2:"val2"}]
	* @param	bAND If true the values from aValues will be ANDed; otherwise ORed
	* @return	Object
	*/
	public function new( ?sPath:String, ?aValues:Array<Dynamic>, ?bAND:Bool):Void;

	/**
	* Converts the <code>sap.ui.model.odata.Filter</code> into a <code>sap.ui.model.Filter</code>.
	* @return	a <code>sap.ui.model.Filter</code> object
	*/
	public function convert( ):sap.ui.model.Filter;

	/**
	* Creates a new subclass of class sap.ui.model.odata.Filter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.odata.Filter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

