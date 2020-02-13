package sap.ui.unified;

@:native("sap.ui.unified.DateRange")

/**
* Date range for use in DatePicker
*/
extern class DateRange extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:DateRangeArgs):Void {})
	public function new(?mSettings:DateRangeArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.unified.DateRange with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEndDate endDate}.

End date for a date range. If empty only a single date is presented by this DateRange element. This must be a JavaScript date object.
	* @return	Value of property <code>endDate</code>
	*/
	public function getEndDate( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.unified.DateRange.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getStartDate startDate}.

Start date for a date range. This must be a JavaScript date object.
	* @return	Value of property <code>startDate</code>
	*/
	public function getStartDate( ):Dynamic;

	/**
	* Sets a new value for property {@link #getEndDate endDate}.

End date for a date range. If empty only a single date is presented by this DateRange element. This must be a JavaScript date object.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oEndDate New value for property <code>endDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEndDate( oEndDate:Dynamic):sap.ui.unified.DateRange;

	/**
	* Sets a new value for property {@link #getStartDate startDate}.

Start date for a date range. This must be a JavaScript date object.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oStartDate New value for property <code>startDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartDate( oStartDate:Dynamic):sap.ui.unified.DateRange;
}

typedef DateRangeArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Start date for a date range. This must be a JavaScript date object.
	*/
	@:optional var startDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* End date for a date range. If empty only a single date is presented by this DateRange element. This must be a JavaScript date object.
	*/
	@:optional var endDate:haxe.extern.EitherType<String,Dynamic>;
}
