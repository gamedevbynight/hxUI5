package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.ResponsiveFlowLayoutData")

/**
* This is a LayoutData Element that can be added to a control if this control is used within a ResponsiveFlowLayout
*/
extern class ResponsiveFlowLayoutData extends sap.ui.layout.ResponsiveFlowLayoutData
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveFlowLayoutDataArgs):Void {})
	public function new(?mSettings:ResponsiveFlowLayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.ResponsiveFlowLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.ResponsiveFlowLayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Getter for property <code>margin</code>. This property prevents any margin of the element if set to false

Default value is <code>true</code>
	* @return	the value of property <code>margin</code>
	*/
	public function getMargin( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.ResponsiveFlowLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Setter for property <code>margin</code>.

Default value is <code>true</code>
	* @param	bMargin new value for property <code>margin</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setMargin( bMargin:Bool):sap.ui.layout.ResponsiveFlowLayoutData;
}

typedef ResponsiveFlowLayoutDataArgs = sap.ui.layout.ResponsiveFlowLayoutData.ResponsiveFlowLayoutDataArgs & {
}
