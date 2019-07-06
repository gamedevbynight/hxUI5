package sap.m;

@:native("sap.m.PlanningCalendarView")

/**
* View of the {@link sap.m.PlanningCalendar}.

The <code>PlanningCalendarView</code> defines the type of the intervals (hours, days, months) and how many intervals are displayed.
*/
extern class PlanningCalendarView extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:PlanningCalendarViewArgs):Void {})
	public function new(?mSettings:PlanningCalendarViewArgs):Void;

	/**
	* Creates a new subclass of class sap.m.PlanningCalendarView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDescription description}.

Defines the description of the <code>PlanningCalendarView</code>.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getIntervalsL intervalsL}.

Defines the number of intervals that are displayed for a {@link sap.m.PlanningCalendar} that is more than 1024 pixels wide.

Default value is <code>12</code>.
	* @return	Value of property <code>intervalsL</code>
	*/
	public function getIntervalsL( ):Int;

	/**
	* Gets current value of property {@link #getIntervalsM intervalsM}.

Defines the number of intervals that are displayed for a {@link sap.m.PlanningCalendar} that is between 600 and 1024 pixels wide.

Default value is <code>8</code>.
	* @return	Value of property <code>intervalsM</code>
	*/
	public function getIntervalsM( ):Int;

	/**
	* Gets current value of property {@link #getIntervalsS intervalsS}.

Defines the number of intervals that are displayed for a {@link sap.m.PlanningCalendar} that is less than 600 pixels wide.

Default value is <code>6</code>.
	* @return	Value of property <code>intervalsS</code>
	*/
	public function getIntervalsS( ):Int;

	/**
	* Gets current value of property {@link #getIntervalType intervalType}.

Determines the type of the intervals of the row.

<b>Note:</b> Not all predefined interval types are supported for this property. For more information, see the descriptions in the {@link sap.ui.unified.CalendarIntervalType CalendarIntervalType} enumeration.

Default value is <code>Hour</code>.
	* @return	Value of property <code>intervalType</code>
	*/
	public function getIntervalType( ):sap.ui.unified.CalendarIntervalType;

	/**
	* Gets current value of property {@link #getKey key}.

Defines the key of the view. This must be set to identify the used view in the {@link sap.m.PlanningCalendar}.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.m.PlanningCalendarView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getShowSubIntervals showSubIntervals}.

If set, subintervals are displayed as lines in the rows.

<ul> <li>Quarter hour subintervals for interval type <code>Hour</code>.</li> <li>Hour subintervals for interval types <code>Day</code>, <code>Week</code> and <code>OneMonth</code>.</li> <li>Day subintervals for interval type <code>Month</code>.</li> </ul>

Default value is <code>false</code>.
	* @return	Value of property <code>showSubIntervals</code>
	*/
	public function getShowSubIntervals( ):Bool;

	/**
	* Sets a new value for property {@link #getDescription description}.

Defines the description of the <code>PlanningCalendarView</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( sDescription:String):sap.m.PlanningCalendarView;

	/**
	* Sets a new value for property {@link #getIntervalsL intervalsL}.

Defines the number of intervals that are displayed for a {@link sap.m.PlanningCalendar} that is more than 1024 pixels wide.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>12</code>.
	* @param	iIntervalsL New value for property <code>intervalsL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalsL( iIntervalsL:Int):sap.m.PlanningCalendarView;

	/**
	* Sets a new value for property {@link #getIntervalsM intervalsM}.

Defines the number of intervals that are displayed for a {@link sap.m.PlanningCalendar} that is between 600 and 1024 pixels wide.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>8</code>.
	* @param	iIntervalsM New value for property <code>intervalsM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalsM( iIntervalsM:Int):sap.m.PlanningCalendarView;

	/**
	* Sets a new value for property {@link #getIntervalsS intervalsS}.

Defines the number of intervals that are displayed for a {@link sap.m.PlanningCalendar} that is less than 600 pixels wide.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>6</code>.
	* @param	iIntervalsS New value for property <code>intervalsS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalsS( iIntervalsS:Int):sap.m.PlanningCalendarView;

	/**
	* Sets a new value for property {@link #getIntervalType intervalType}.

Determines the type of the intervals of the row.

<b>Note:</b> Not all predefined interval types are supported for this property. For more information, see the descriptions in the {@link sap.ui.unified.CalendarIntervalType CalendarIntervalType} enumeration.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Hour</code>.
	* @param	sIntervalType New value for property <code>intervalType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalType( sIntervalType:sap.ui.unified.CalendarIntervalType):sap.m.PlanningCalendarView;

	/**
	* Sets a new value for property {@link #getKey key}.

Defines the key of the view. This must be set to identify the used view in the {@link sap.m.PlanningCalendar}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.m.PlanningCalendarView;

	/**
	* Sets a new value for property {@link #getShowSubIntervals showSubIntervals}.

If set, subintervals are displayed as lines in the rows.

<ul> <li>Quarter hour subintervals for interval type <code>Hour</code>.</li> <li>Hour subintervals for interval types <code>Day</code>, <code>Week</code> and <code>OneMonth</code>.</li> <li>Day subintervals for interval type <code>Month</code>.</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSubIntervals New value for property <code>showSubIntervals</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSubIntervals( bShowSubIntervals:Bool):sap.m.PlanningCalendarView;
}

typedef PlanningCalendarViewArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Defines the key of the view. This must be set to identify the used view in the {@link sap.m.PlanningCalendar}.
	*/
	@:optional var key:String;

	/**
	* Determines the type of the intervals of the row.

<b>Note:</b> Not all predefined interval types are supported for this property. For more information, see the descriptions in the {@link sap.ui.unified.CalendarIntervalType CalendarIntervalType} enumeration.
	*/
	@:optional var intervalType:haxe.extern.EitherType<String,sap.ui.unified.CalendarIntervalType>;

	/**
	* Defines the description of the <code>PlanningCalendarView</code>.
	*/
	@:optional var description:String;

	/**
	* Defines the number of intervals that are displayed for a {@link sap.m.PlanningCalendar} that is less than 600 pixels wide.
	*/
	@:optional var intervalsS:haxe.extern.EitherType<String,Int>;

	/**
	* Defines the number of intervals that are displayed for a {@link sap.m.PlanningCalendar} that is between 600 and 1024 pixels wide.
	*/
	@:optional var intervalsM:haxe.extern.EitherType<String,Int>;

	/**
	* Defines the number of intervals that are displayed for a {@link sap.m.PlanningCalendar} that is more than 1024 pixels wide.
	*/
	@:optional var intervalsL:haxe.extern.EitherType<String,Int>;

	/**
	* If set, subintervals are displayed as lines in the rows.

<ul> <li>Quarter hour subintervals for interval type <code>Hour</code>.</li> <li>Hour subintervals for interval types <code>Day</code>, <code>Week</code> and <code>OneMonth</code>.</li> <li>Day subintervals for interval type <code>Month</code>.</li> </ul>
	*/
	@:optional var showSubIntervals:haxe.extern.EitherType<String,Bool>;
}
