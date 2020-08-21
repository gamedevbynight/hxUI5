package sap.ui.unified;

@:native("sap.ui.unified.CalendarDateInterval")

/**
* <code>CalendarDateInterval</code> only visualizes the dates in a one-line interval and allows the selection of a single day.
*/
extern class CalendarDateInterval extends sap.ui.unified.Calendar
{
	@:overload(function(?sId:String, ?mSettings:CalendarDateIntervalArgs):Void {})
	public function new(?mSettings:CalendarDateIntervalArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.unified.CalendarDateInterval with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.Calendar.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getDays days}.

number of days displayed on phones the maximum rendered number of days is 8.

Default value is <code>7</code>.
	* @return	Value of property <code>days</code>
	*/
	public function getDays( ):Int;

	/**
	* Returns a metadata object for class sap.ui.unified.CalendarDateInterval.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPickerPopup pickerPopup}.

If set, the month- and yearPicker opens on a popup

Default value is <code>false</code>.
	* @return	Value of property <code>pickerPopup</code>
	*/
	public function getPickerPopup( ):Bool;

	/**
	* Gets current value of property {@link #getShowDayNamesLine showDayNamesLine}.

If set the day names are shown in a separate line. If not set the day names are shown inside the single days.

Default value is <code>true</code>.
	* @return	Value of property <code>showDayNamesLine</code>
	*/
	public function getShowDayNamesLine( ):Bool;

	/**
	* Gets current value of property {@link #getStartDate startDate}.

Start date of the Interval
	* @return	Value of property <code>startDate</code>
	*/
	public function getStartDate( ):Dynamic;

	/**
	* Sets a new value for property {@link #getDays days}.

number of days displayed on phones the maximum rendered number of days is 8.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>7</code>.
	* @param	iDays New value for property <code>days</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDays( ?iDays:Int):sap.ui.unified.CalendarDateInterval;

	/**
	* Sets a new value for property {@link #getPickerPopup pickerPopup}.

If set, the month- and yearPicker opens on a popup

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPickerPopup New value for property <code>pickerPopup</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPickerPopup( ?bPickerPopup:Bool):sap.ui.unified.CalendarDateInterval;

	/**
	* Sets a new value for property {@link #getShowDayNamesLine showDayNamesLine}.

If set the day names are shown in a separate line. If not set the day names are shown inside the single days.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowDayNamesLine New value for property <code>showDayNamesLine</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowDayNamesLine( ?bShowDayNamesLine:Bool):sap.ui.unified.CalendarDateInterval;

	/**
	* Sets a new value for property {@link #getStartDate startDate}.

Start date of the Interval

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oStartDate New value for property <code>startDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartDate( oStartDate:Dynamic):sap.ui.unified.CalendarDateInterval;
}

typedef CalendarDateIntervalArgs = sap.ui.unified.Calendar.CalendarArgs & {

	/**
	* Start date of the Interval
	*/
	@:optional var startDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* number of days displayed on phones the maximum rendered number of days is 8.
	*/
	@:optional var days:haxe.extern.EitherType<String,Int>;

	/**
	* If set the day names are shown in a separate line. If not set the day names are shown inside the single days.
	*/
	@:optional var showDayNamesLine:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, the month- and yearPicker opens on a popup
	*/
	@:optional var pickerPopup:haxe.extern.EitherType<String,Bool>;

    /**
    * Hidden, for internal use only.
    */
	@:optional var calendarPicker:haxe.extern.EitherType<String,sap.ui.unified.Calendar>;
}
