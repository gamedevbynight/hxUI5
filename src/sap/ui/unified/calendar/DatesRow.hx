package sap.ui.unified.calendar;

@:native("sap.ui.unified.calendar.DatesRow")

/**
* renders a row of days with ItemNavigation This is used inside the calendar. Not for stand alone usage If used inside the calendar the properties and aggregation are directly taken from the parent (To not duplicate and sync DateRanges and so on...)
*/
extern class DatesRow extends sap.ui.unified.calendar.Month
{
	@:overload(function(?sId:String, ?mSettings:DatesRowArgs):Void {})
	public function new(?mSettings:DatesRowArgs):Void;

	/**
	* displays the a given date without setting the focus

Property <code>date</code> date to be focused or displayed. It must be in the displayed date range beginning with <code>startDate</code> and <code>days</code> days So set this properties before setting the date.
	* @param	oDate JavaScript date object for focused date.
	* @return	<code>this</code> to allow method chaining
	*/
	public function displayDate( oDate:Dynamic):sap.ui.unified.calendar.DatesRow;

	/**
	* Creates a new subclass of class sap.ui.unified.calendar.DatesRow with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.calendar.Month.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDays days}.

number of days displayed

Default value is <code>7</code>.
	* @return	Value of property <code>days</code>
	*/
	public function getDays( ):Int;

	/**
	* Returns a metadata object for class sap.ui.unified.calendar.DatesRow.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowDayNamesLine showDayNamesLine}.

If set the day names are shown in a separate line. If not set the day names are shown inside the single days.

Default value is <code>true</code>.
	* @return	Value of property <code>showDayNamesLine</code>
	*/
	public function getShowDayNamesLine( ):Bool;

	/**
	* Gets current value of property {@link #getStartDate startDate}.

Start date of the row If in rendering phase the date property is not in the range startDate + days, it is set to the start date So after setting the start date the date should be set to be in the range of the start date
	* @return	Value of property <code>startDate</code>
	*/
	public function getStartDate( ):Dynamic;

	/**
	* Setter for property <code>date</code>.

Property <code>date</code> date to be focused or displayed. It must be in the displayed date range beginning with <code>startDate</code> and <code>days</code> days So set this properties before setting the date.
	* @param	oDate JavaScript date object for start date.
	* @return	<code>this</code> to allow method chaining
	*/
	public function setDate( oDate:Dynamic):sap.ui.unified.calendar.DatesRow;

	/**
	* Sets a new value for property {@link #getDays days}.

number of days displayed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>7</code>.
	* @param	iDays New value for property <code>days</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDays( ?iDays:Int):sap.ui.unified.calendar.DatesRow;

	/**
	* Sets a new value for property {@link #getShowDayNamesLine showDayNamesLine}.

If set the day names are shown in a separate line. If not set the day names are shown inside the single days.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowDayNamesLine New value for property <code>showDayNamesLine</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowDayNamesLine( ?bShowDayNamesLine:Bool):sap.ui.unified.calendar.DatesRow;

	/**
	* Sets a new value for property {@link #getStartDate startDate}.

Start date of the row If in rendering phase the date property is not in the range startDate + days, it is set to the start date So after setting the start date the date should be set to be in the range of the start date

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oStartDate New value for property <code>startDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartDate( oStartDate:Dynamic):sap.ui.unified.calendar.DatesRow;
}

typedef DatesRowArgs = sap.ui.unified.calendar.Month.MonthArgs & {

	/**
	* Start date of the row If in rendering phase the date property is not in the range startDate + days, it is set to the start date So after setting the start date the date should be set to be in the range of the start date
	*/
	@:optional var startDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* number of days displayed
	*/
	@:optional var days:haxe.extern.EitherType<String,Int>;

	/**
	* If set the day names are shown in a separate line. If not set the day names are shown inside the single days.
	*/
	@:optional var showDayNamesLine:haxe.extern.EitherType<String,Bool>;
}
