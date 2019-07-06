package sap.ui.core;

@:native("sap.ui.core.VariantLayoutData")

/**
* Allows to add multiple LayoutData to one control in case that an easy switch of layouts (e.g. in a Form) is needed.
*/
extern class VariantLayoutData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:VariantLayoutDataArgs):Void {})
	public function new(?mSettings:VariantLayoutDataArgs):Void;

	/**
	* Adds some multipleLayoutData to the aggregation {@link #getMultipleLayoutData multipleLayoutData}.
	* @param	oMultipleLayoutData The multipleLayoutData to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMultipleLayoutData( oMultipleLayoutData:sap.ui.core.LayoutData):sap.ui.core.VariantLayoutData;

	/**
	* Destroys all the multipleLayoutData in the aggregation {@link #getMultipleLayoutData multipleLayoutData}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMultipleLayoutData( ):sap.ui.core.VariantLayoutData;

	/**
	* Creates a new subclass of class sap.ui.core.VariantLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.VariantLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getMultipleLayoutData multipleLayoutData}.

Allows multiple LayoutData.
	* @return	null
	*/
	public function getMultipleLayoutData( ):Array<sap.ui.core.LayoutData>;

	/**
	* Checks for the provided <code>sap.ui.core.LayoutData</code> in the aggregation {@link #getMultipleLayoutData multipleLayoutData}. and returns its index if found or -1 otherwise.
	* @param	oMultipleLayoutData The multipleLayoutData whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfMultipleLayoutData( oMultipleLayoutData:sap.ui.core.LayoutData):Int;

	/**
	* Inserts a multipleLayoutData into the aggregation {@link #getMultipleLayoutData multipleLayoutData}.
	* @param	oMultipleLayoutData The multipleLayoutData to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the multipleLayoutData should be inserted at; for a negative value of <code>iIndex</code>, the multipleLayoutData is inserted at position 0; for a value greater than the current size of the aggregation, the multipleLayoutData is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMultipleLayoutData( oMultipleLayoutData:sap.ui.core.LayoutData, iIndex:Int):sap.ui.core.VariantLayoutData;

	/**
	* Removes all the controls from the aggregation {@link #getMultipleLayoutData multipleLayoutData}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllMultipleLayoutData( ):Array<sap.ui.core.LayoutData>;
	@:overload( function(vMultipleLayoutData:Int):sap.ui.core.LayoutData{ })
	@:overload( function(vMultipleLayoutData:String):sap.ui.core.LayoutData{ })

	/**
	* Removes a multipleLayoutData from the aggregation {@link #getMultipleLayoutData multipleLayoutData}.
	* @param	vMultipleLayoutData The multipleLayoutData to remove or its index or id
	* @return	The removed multipleLayoutData or <code>null</code>
	*/
	public function removeMultipleLayoutData( vMultipleLayoutData:sap.ui.core.LayoutData):sap.ui.core.LayoutData;
}

typedef VariantLayoutDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

    /**
    * Allows multiple LayoutData.
    */
	@:optional var multipleLayoutData:Array<haxe.extern.EitherType<String,sap.ui.core.LayoutData>>;
}
