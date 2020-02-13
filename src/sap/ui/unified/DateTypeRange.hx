package sap.ui.unified;

@:native("sap.ui.unified.DateTypeRange")

/**
* Date range with calendar day type information. Used to visualize special days in the Calendar.
*/
extern class DateTypeRange extends sap.ui.unified.DateRange
{
	@:overload(function(?sId:String, ?mSettings:DateTypeRangeArgs):Void {})
	public function new(?mSettings:DateTypeRangeArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.unified.DateTypeRange with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.DateRange.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.unified.DateTypeRange.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getType type}.

Type of the date range.

Default value is <code>Type01</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.ui.unified.CalendarDayType;

	/**
	* Sets a new value for property {@link #getType type}.

Type of the date range.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Type01</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:sap.ui.unified.CalendarDayType):sap.ui.unified.DateTypeRange;
}

typedef DateTypeRangeArgs = sap.ui.unified.DateRange.DateRangeArgs & {

	/**
	* Type of the date range.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.ui.unified.CalendarDayType>;
}
