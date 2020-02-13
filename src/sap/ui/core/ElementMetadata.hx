package sap.ui.core;

@:native("sap.ui.core.ElementMetadata")

/**
* null
*/
extern class ElementMetadata extends sap.ui.base.ManagedObjectMetadata
{

	/**
	* 
	* @param	sClassName fully qualified name of the class that is described by this metadata object
	* @param	oStaticInfo static info to construct the metadata from
	* @return	Object
	*/
	public function new( ?sClassName:String, ?oStaticInfo:Dynamic):Void;

	/**
	* Returns an info object describing the drag-and-drop behavior.
	* @param	sAggregationName name of the aggregation or empty.
	* @return	An info object about the drag-and-drop behavior.
	*/
	public function getDragDropInfo( ?sAggregationName:String):Dynamic;

	/**
	* By default, the element name is equal to the class name
	* @return	the qualified name of the UIElement class
	*/
	public function getElementName( ):String;

	/**
	* Calculates a new id based on a prefix.
	* @return	A (hopefully unique) control id
	*/
	public static function uid( ):String;
}

