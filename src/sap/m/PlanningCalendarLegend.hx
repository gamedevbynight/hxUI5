package sap.m;

@:native("sap.m.PlanningCalendarLegend")

/**
* A legend for the {@link sap.m.PlanningCalendar} that displays the special dates and appointments in colors with their corresponding description. The <code>PlanningCalendarLegend</code> extends {@link sap.ui.unified.CalendarLegend} and overwrites the default value for property <code>columnWidth</code> to <code>auto</code>
*/
extern class PlanningCalendarLegend extends sap.ui.unified.CalendarLegend
{
	@:overload(function(?sId:String, ?mSettings:PlanningCalendarLegendArgs):Void {})
	public function new(?mSettings:PlanningCalendarLegendArgs):Void;

	/**
	* Adds some appointmentItem to the aggregation {@link #getAppointmentItems appointmentItems}.
	* @param	oAppointmentItem The appointmentItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAppointmentItem( oAppointmentItem:sap.ui.unified.CalendarLegendItem):sap.m.PlanningCalendarLegend;

	/**
	* Destroys all the appointmentItems in the aggregation {@link #getAppointmentItems appointmentItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAppointmentItems( ):sap.m.PlanningCalendarLegend;

	/**
	* Creates a new subclass of class sap.m.PlanningCalendarLegend with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.CalendarLegend.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getAppointmentItems appointmentItems}.

The legend items which show color and type information about the calendar appointments.
	* @return	null
	*/
	public function getAppointmentItems( ):Array<sap.ui.unified.CalendarLegendItem>;

	/**
	* Gets current value of property {@link #getAppointmentItemsHeader appointmentItemsHeader}.

Defines the text displayed in the header of the appointment items list. It is commonly related to the calendar appointments.

Default value is <code>Appointments</code>.
	* @return	Value of property <code>appointmentItemsHeader</code>
	*/
	public function getAppointmentItemsHeader( ):String;

	/**
	* Gets current value of property {@link #getItemsHeader itemsHeader}.

Defines the text displayed in the header of the items list. It is commonly related to the calendar days.

Default value is <code>Calendar</code>.
	* @return	Value of property <code>itemsHeader</code>
	*/
	public function getItemsHeader( ):String;

	/**
	* Returns a metadata object for class sap.m.PlanningCalendarLegend.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Checks for the provided <code>sap.ui.unified.CalendarLegendItem</code> in the aggregation {@link #getAppointmentItems appointmentItems}. and returns its index if found or -1 otherwise.
	* @param	oAppointmentItem The appointmentItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAppointmentItem( oAppointmentItem:sap.ui.unified.CalendarLegendItem):Int;

	/**
	* Inserts a appointmentItem into the aggregation {@link #getAppointmentItems appointmentItems}.
	* @param	oAppointmentItem The appointmentItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the appointmentItem should be inserted at; for a negative value of <code>iIndex</code>, the appointmentItem is inserted at position 0; for a value greater than the current size of the aggregation, the appointmentItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAppointmentItem( oAppointmentItem:sap.ui.unified.CalendarLegendItem, iIndex:Int):sap.m.PlanningCalendarLegend;

	/**
	* Removes all the controls from the aggregation {@link #getAppointmentItems appointmentItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAppointmentItems( ):Array<sap.ui.unified.CalendarLegendItem>;
	@:overload( function(vAppointmentItem:Int):sap.ui.unified.CalendarLegendItem{ })
	@:overload( function(vAppointmentItem:String):sap.ui.unified.CalendarLegendItem{ })

	/**
	* Removes a appointmentItem from the aggregation {@link #getAppointmentItems appointmentItems}.
	* @param	vAppointmentItem The appointmentItem to remove or its index or id
	* @return	The removed appointmentItem or <code>null</code>
	*/
	public function removeAppointmentItem( vAppointmentItem:sap.ui.unified.CalendarLegendItem):sap.ui.unified.CalendarLegendItem;

	/**
	* Sets a new value for property {@link #getAppointmentItemsHeader appointmentItemsHeader}.

Defines the text displayed in the header of the appointment items list. It is commonly related to the calendar appointments.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Appointments</code>.
	* @param	sAppointmentItemsHeader New value for property <code>appointmentItemsHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAppointmentItemsHeader( sAppointmentItemsHeader:String):sap.m.PlanningCalendarLegend;

	/**
	* Sets a new value for property {@link #getItemsHeader itemsHeader}.

Defines the text displayed in the header of the items list. It is commonly related to the calendar days.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Calendar</code>.
	* @param	sItemsHeader New value for property <code>itemsHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setItemsHeader( sItemsHeader:String):sap.m.PlanningCalendarLegend;
}

typedef PlanningCalendarLegendArgs = sap.ui.unified.CalendarLegend.CalendarLegendArgs & {

	/**
	* Defines the text displayed in the header of the items list. It is commonly related to the calendar days.
	*/
	@:optional var itemsHeader:String;

	/**
	* Defines the text displayed in the header of the appointment items list. It is commonly related to the calendar appointments.
	*/
	@:optional var appointmentItemsHeader:String;

    /**
    * The legend items which show color and type information about the calendar appointments.
    */
	@:optional var appointmentItems:Array<haxe.extern.EitherType<String,sap.ui.unified.CalendarLegendItem>>;
}
