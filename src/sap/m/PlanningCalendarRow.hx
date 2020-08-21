package sap.m;

@:native("sap.m.PlanningCalendarRow")

/**
* Represents a row in the {@link sap.m.PlanningCalendar}.

This element holds the data of one row in the {@link sap.m.PlanningCalendar}. Once the header information (for example, person information) is assigned, the appointments are assigned. The <code>sap.m.PlanningCalendarRow</code> allows you to modify appointments at row level.
*/
extern class PlanningCalendarRow extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:PlanningCalendarRowArgs):Void {})
	public function new(?mSettings:PlanningCalendarRowArgs):Void;

	/**
	* Adds some appointment to the aggregation {@link #getAppointments appointments}.
	* @param	oAppointment The appointment to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAppointment( oAppointment:sap.ui.unified.CalendarAppointment):sap.m.PlanningCalendarRow;

	/**
	* Adds some headerContent to the aggregation {@link #getHeaderContent headerContent}.
	* @param	oHeaderContent The headerContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addHeaderContent( oHeaderContent:sap.ui.core.Control):sap.m.PlanningCalendarRow;

	/**
	* Adds some intervalHeader to the aggregation {@link #getIntervalHeaders intervalHeaders}.
	* @param	oIntervalHeader The intervalHeader to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addIntervalHeader( oIntervalHeader:sap.ui.unified.CalendarAppointment):sap.m.PlanningCalendarRow;

	/**
	* Adds some specialDate to the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):sap.m.PlanningCalendarRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:appointmentCreate appointmentCreate} event of this <code>sap.m.PlanningCalendarRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendarRow</code> itself.

Fired if an appointment is created.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendarRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAppointmentCreate( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PlanningCalendarRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:appointmentDragEnter appointmentDragEnter} event of this <code>sap.m.PlanningCalendarRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendarRow</code> itself.

Fired if an appointment is dropped.

When this event handler is attached, the default behavior of the <code>enableAppointmentsDragAndDrop</code> property to move appointments only within their original calendar row is no longer valid. You can move the appointment around all rows for which <code>enableAppointmentsDragAndDrop</code> is set to true. In this case, the drop target area is indicated by a placeholder. In the event handler you can call the <code>preventDefault</code> method of the event to prevent this default behavior. In this case, the placeholder will no longer be available and it will not be possible to drop the appointment in the row.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendarRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAppointmentDragEnter( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PlanningCalendarRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:appointmentDrop appointmentDrop} event of this <code>sap.m.PlanningCalendarRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendarRow</code> itself.

Fired if an appointment is dropped.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendarRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAppointmentDrop( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PlanningCalendarRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:appointmentResize appointmentResize} event of this <code>sap.m.PlanningCalendarRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendarRow</code> itself.

Fired if an appointment is resized.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendarRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAppointmentResize( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PlanningCalendarRow;

	/**
	* Destroys all the appointments in the aggregation {@link #getAppointments appointments}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAppointments( ):sap.m.PlanningCalendarRow;

	/**
	* Destroys all the headerContent in the aggregation {@link #getHeaderContent headerContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderContent( ):sap.m.PlanningCalendarRow;

	/**
	* Destroys all the intervalHeaders in the aggregation {@link #getIntervalHeaders intervalHeaders}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyIntervalHeaders( ):sap.m.PlanningCalendarRow;

	/**
	* Destroys all the specialDates in the aggregation {@link #getSpecialDates specialDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySpecialDates( ):sap.m.PlanningCalendarRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:appointmentCreate appointmentCreate} event of this <code>sap.m.PlanningCalendarRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAppointmentCreate( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PlanningCalendarRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:appointmentDragEnter appointmentDragEnter} event of this <code>sap.m.PlanningCalendarRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAppointmentDragEnter( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PlanningCalendarRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:appointmentDrop appointmentDrop} event of this <code>sap.m.PlanningCalendarRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAppointmentDrop( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PlanningCalendarRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:appointmentResize appointmentResize} event of this <code>sap.m.PlanningCalendarRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAppointmentResize( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PlanningCalendarRow;

	/**
	* Creates a new subclass of class sap.m.PlanningCalendarRow with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getAppointments appointments}.

The appointments to be displayed in the row. Appointments that outside the visible time frame are not rendered.

<b>Note:</b> For performance reasons, only appointments in the visible time range or nearby should be assigned.
	* @return	null
	*/
	public function getAppointments( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Gets current value of property {@link #getEnableAppointmentsCreate enableAppointmentsCreate}.

Determines whether the appointments can be created by dragging on empty cells.

See {@link #property:enableAppointmentsResize enableAppointmentsResize} for the specific points for events snapping

<b>Notes:</b> In "One month" view, the appointments cannot be created on small screen (as there they are displayed as a list below the dates).

Default value is <code>false</code>.
	* @return	Value of property <code>enableAppointmentsCreate</code>
	*/
	public function getEnableAppointmentsCreate( ):Bool;

	/**
	* Gets current value of property {@link #getEnableAppointmentsDragAndDrop enableAppointmentsDragAndDrop}.

Determines whether the appointments in the row are draggable.

The drag and drop interaction is visualized by a placeholder highlighting the area where the appointment can be dropped by the user.

By default, appointments can be dragged only within their original <code>PlanningCalendarRow</code>. When <code>enableAppointmentsDragAndDrop</code> is set to true, attaching the {@link #event:appointmentDragEnter appointmentDragEnter} event can change the default behavior and allow appointments to be dragged between calendar rows.

Specifics based on the intervals (hours, days or months) displayed in the <code>PlanningCalendar</code> views:

Hours:<br> For views where the displayed intervals are hours, the placeholder snaps on every interval of 30 minutes. After the appointment is dropped, the {@link #event:appointmentDrop appointmentDrop} event is fired, containing the new start and end JavaScript date objects.<br> For example, an appointment with start date "Nov 13 2017 12:17:00" and end date "Nov 13 2017 12:45:30" lasts for 27 minutes and 30 seconds. After dragging and dropping to a new time, the possible new start date has time that is either "hh:00:00" or "hh:30:00" because of the placeholder that can snap on every 30 minutes. The new end date is calculated to be 27 minutes and 30 seconds later and would be either "hh:27:30" or "hh:57:30".

Days:<br> For views where intervals are days, the placeholder highlights the whole day and after the appointment is dropped the {@link #event:appointmentDrop appointmentDrop} event is fired. The event contains the new start and end JavaScript date objects with changed date but the original time (hh:mm:ss) is preserved.

Months:<br> For views where intervals are months, the placeholder highlights the whole month and after the appointment is dropped the {@link #event:appointmentDrop appointmentDrop} event is fired. The event contains the new start and end JavaScript date objects with changed month but the original date and time is preserved.

<b>Note:</b> In "One month" view, the appointments are not draggable on small screen (as there they are displayed as a list below the dates). Group appointments are also not draggable.

Default value is <code>false</code>.
	* @return	Value of property <code>enableAppointmentsDragAndDrop</code>
	*/
	public function getEnableAppointmentsDragAndDrop( ):Bool;

	/**
	* Gets current value of property {@link #getEnableAppointmentsResize enableAppointmentsResize}.

Determines whether the appointments in the row are resizable.

The resize interaction is visualized by making the appointment transparent.

Specifics based on the intervals (hours, days or months) displayed in the <code>PlanningCalendar</code> views:

Hours: For views where the displayed intervals are hours, the appointment snaps on every interval of 30 minutes. After the resize is finished, the {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects.

Days: For views where intervals are days, the appointment snaps to the end of the day. After the resize is finished, the {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects. The <code>endDate</code> time is changed to 00:00:00

Months: For views where intervals are months, the appointment snaps to the end of the month. The {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects. The <code>endDate</code> is set to the 00:00:00 and first day of the following month.

<b>Notes:</b> In "One month" view, the appointments are not resizable on small screen (as there they are displayed as a list below the dates). Group appointments are also not resizable

Default value is <code>false</code>.
	* @return	Value of property <code>enableAppointmentsResize</code>
	*/
	public function getEnableAppointmentsResize( ):Bool;

	/**
	* Gets content of aggregation {@link #getHeaderContent headerContent}.

Holds the header content of the row.

<b>Note:</b> If the <code>headerContent</code> aggregation is added, then the set icon, description, title and tooltip are ignored.
	* @return	null
	*/
	public function getHeaderContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getIcon icon}.

Specifies the URI of an image or an icon registered in <code>sap.ui.core.IconPool</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets content of aggregation {@link #getIntervalHeaders intervalHeaders}.

The appointments to be displayed at the top of the intervals (for example, for public holidays). Appointments outside the visible time frame are not rendered.

Keep in mind that the <code>intervalHeaders</code> should always fill whole intervals. If they are shorter or longer than one interval, they are not displayed.

<b>Note:</b> For performance reasons, only appointments in the visible time range or nearby should be assigned.
	* @return	null
	*/
	public function getIntervalHeaders( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Gets current value of property {@link #getKey key}.

Defines the identifier of the row.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.m.PlanningCalendarRow.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNoAppointmentsText noAppointmentsText}.

Defines the text that is displayed when no {@link sap.ui.unified.CalendarAppointment CalendarAppointments} are assigned.
	* @return	Value of property <code>noAppointmentsText</code>
	*/
	public function getNoAppointmentsText( ):String;

	/**
	* Gets current value of property {@link #getNonWorkingDays nonWorkingDays}.

Determines whether the provided weekdays are displayed as non-working days. Valid values inside the array are from 0 to 6 (other values are ignored). If not set, the weekend defined in the locale settings is displayed as non-working days.

<b>Note:</b> The non-working days are visualized if the <code>intervalType</code> property of the {@link sap.m.PlanningCalendarView} is set to <code>Day</code>.
	* @return	Value of property <code>nonWorkingDays</code>
	*/
	public function getNonWorkingDays( ):Array<Int>;

	/**
	* Gets current value of property {@link #getNonWorkingHours nonWorkingHours}.

Determines whether the provided hours are displayed as non-working hours. Valid values inside the array are from 0 to 23 (other values are ignored).

<b>Note:</b> The non-working hours are visualized if <code>intervalType</code> property of the {@link sap.m.PlanningCalendarView} is set to <code>Hour</code>.
	* @return	Value of property <code>nonWorkingHours</code>
	*/
	public function getNonWorkingHours( ):Array<Int>;

	/**
	* Gets current value of property {@link #getSelected selected}.

Defines the selected state of the <code>PlanningCalendarRow</code>.

<b>Note:</b> Binding the <code>selected</code> property in single selection modes may cause unwanted results if you have more than one selected row in your binding.

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Gets content of aggregation {@link #getSpecialDates specialDates}.

Holds the special dates in the context of a row. A single date or a date range can be set.

<b>Note</b> Only date or date ranges of type <code>sap.ui.unified.CalendarDayType.NonWorking</code> will be visualized in the <code>PlanningCalendarRow</code>. If the aggregation is set as another type, the date or date range will be ignored and will not be displayed in the control.
	* @return	null
	*/
	public function getSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;

	/**
	* Gets current value of property {@link #getText text}.

Defines the text of the header (for example, the department of the person).
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title of the header (for example, the name of the person).
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Checks for the provided <code>sap.ui.unified.CalendarAppointment</code> in the aggregation {@link #getAppointments appointments}. and returns its index if found or -1 otherwise.
	* @param	oAppointment The appointment whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAppointment( oAppointment:sap.ui.unified.CalendarAppointment):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getHeaderContent headerContent}. and returns its index if found or -1 otherwise.
	* @param	oHeaderContent The headerContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfHeaderContent( oHeaderContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.CalendarAppointment</code> in the aggregation {@link #getIntervalHeaders intervalHeaders}. and returns its index if found or -1 otherwise.
	* @param	oIntervalHeader The intervalHeader whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfIntervalHeader( oIntervalHeader:sap.ui.unified.CalendarAppointment):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.DateTypeRange</code> in the aggregation {@link #getSpecialDates specialDates}. and returns its index if found or -1 otherwise.
	* @param	oSpecialDate The specialDate whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):Int;

	/**
	* Inserts a appointment into the aggregation {@link #getAppointments appointments}.
	* @param	oAppointment The appointment to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the appointment should be inserted at; for a negative value of <code>iIndex</code>, the appointment is inserted at position 0; for a value greater than the current size of the aggregation, the appointment is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAppointment( oAppointment:sap.ui.unified.CalendarAppointment, iIndex:Int):sap.m.PlanningCalendarRow;

	/**
	* Inserts a headerContent into the aggregation {@link #getHeaderContent headerContent}.
	* @param	oHeaderContent The headerContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the headerContent should be inserted at; for a negative value of <code>iIndex</code>, the headerContent is inserted at position 0; for a value greater than the current size of the aggregation, the headerContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertHeaderContent( oHeaderContent:sap.ui.core.Control, iIndex:Int):sap.m.PlanningCalendarRow;

	/**
	* Inserts a intervalHeader into the aggregation {@link #getIntervalHeaders intervalHeaders}.
	* @param	oIntervalHeader The intervalHeader to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the intervalHeader should be inserted at; for a negative value of <code>iIndex</code>, the intervalHeader is inserted at position 0; for a value greater than the current size of the aggregation, the intervalHeader is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertIntervalHeader( oIntervalHeader:sap.ui.unified.CalendarAppointment, iIndex:Int):sap.m.PlanningCalendarRow;

	/**
	* Inserts a specialDate into the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the specialDate should be inserted at; for a negative value of <code>iIndex</code>, the specialDate is inserted at position 0; for a value greater than the current size of the aggregation, the specialDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange, iIndex:Int):sap.m.PlanningCalendarRow;

	/**
	* Removes all the controls from the aggregation {@link #getAppointments appointments}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAppointments( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Removes all the controls from the aggregation {@link #getHeaderContent headerContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllHeaderContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getIntervalHeaders intervalHeaders}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllIntervalHeaders( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Removes all the controls from the aggregation {@link #getSpecialDates specialDates}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;
	@:overload( function(vAppointment:Int):sap.ui.unified.CalendarAppointment{ })
	@:overload( function(vAppointment:String):sap.ui.unified.CalendarAppointment{ })

	/**
	* Removes a appointment from the aggregation {@link #getAppointments appointments}.
	* @param	vAppointment The appointment to remove or its index or id
	* @return	The removed appointment or <code>null</code>
	*/
	public function removeAppointment( vAppointment:sap.ui.unified.CalendarAppointment):sap.ui.unified.CalendarAppointment;
	@:overload( function(vHeaderContent:Int):sap.ui.core.Control{ })
	@:overload( function(vHeaderContent:String):sap.ui.core.Control{ })

	/**
	* Removes a headerContent from the aggregation {@link #getHeaderContent headerContent}.
	* @param	vHeaderContent The headerContent to remove or its index or id
	* @return	The removed headerContent or <code>null</code>
	*/
	public function removeHeaderContent( vHeaderContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vIntervalHeader:Int):sap.ui.unified.CalendarAppointment{ })
	@:overload( function(vIntervalHeader:String):sap.ui.unified.CalendarAppointment{ })

	/**
	* Removes a intervalHeader from the aggregation {@link #getIntervalHeaders intervalHeaders}.
	* @param	vIntervalHeader The intervalHeader to remove or its index or id
	* @return	The removed intervalHeader or <code>null</code>
	*/
	public function removeIntervalHeader( vIntervalHeader:sap.ui.unified.CalendarAppointment):sap.ui.unified.CalendarAppointment;
	@:overload( function(vSpecialDate:Int):sap.ui.unified.DateTypeRange{ })
	@:overload( function(vSpecialDate:String):sap.ui.unified.DateTypeRange{ })

	/**
	* Removes a specialDate from the aggregation {@link #getSpecialDates specialDates}.
	* @param	vSpecialDate The specialDate to remove or its index or id
	* @return	The removed specialDate or <code>null</code>
	*/
	public function removeSpecialDate( vSpecialDate:sap.ui.unified.DateTypeRange):sap.ui.unified.DateTypeRange;

	/**
	* Sets a new value for property {@link #getEnableAppointmentsCreate enableAppointmentsCreate}.

Determines whether the appointments can be created by dragging on empty cells.

See {@link #property:enableAppointmentsResize enableAppointmentsResize} for the specific points for events snapping

<b>Notes:</b> In "One month" view, the appointments cannot be created on small screen (as there they are displayed as a list below the dates).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableAppointmentsCreate New value for property <code>enableAppointmentsCreate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableAppointmentsCreate( ?bEnableAppointmentsCreate:Bool):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getEnableAppointmentsDragAndDrop enableAppointmentsDragAndDrop}.

Determines whether the appointments in the row are draggable.

The drag and drop interaction is visualized by a placeholder highlighting the area where the appointment can be dropped by the user.

By default, appointments can be dragged only within their original <code>PlanningCalendarRow</code>. When <code>enableAppointmentsDragAndDrop</code> is set to true, attaching the {@link #event:appointmentDragEnter appointmentDragEnter} event can change the default behavior and allow appointments to be dragged between calendar rows.

Specifics based on the intervals (hours, days or months) displayed in the <code>PlanningCalendar</code> views:

Hours:<br> For views where the displayed intervals are hours, the placeholder snaps on every interval of 30 minutes. After the appointment is dropped, the {@link #event:appointmentDrop appointmentDrop} event is fired, containing the new start and end JavaScript date objects.<br> For example, an appointment with start date "Nov 13 2017 12:17:00" and end date "Nov 13 2017 12:45:30" lasts for 27 minutes and 30 seconds. After dragging and dropping to a new time, the possible new start date has time that is either "hh:00:00" or "hh:30:00" because of the placeholder that can snap on every 30 minutes. The new end date is calculated to be 27 minutes and 30 seconds later and would be either "hh:27:30" or "hh:57:30".

Days:<br> For views where intervals are days, the placeholder highlights the whole day and after the appointment is dropped the {@link #event:appointmentDrop appointmentDrop} event is fired. The event contains the new start and end JavaScript date objects with changed date but the original time (hh:mm:ss) is preserved.

Months:<br> For views where intervals are months, the placeholder highlights the whole month and after the appointment is dropped the {@link #event:appointmentDrop appointmentDrop} event is fired. The event contains the new start and end JavaScript date objects with changed month but the original date and time is preserved.

<b>Note:</b> In "One month" view, the appointments are not draggable on small screen (as there they are displayed as a list below the dates). Group appointments are also not draggable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableAppointmentsDragAndDrop New value for property <code>enableAppointmentsDragAndDrop</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableAppointmentsDragAndDrop( ?bEnableAppointmentsDragAndDrop:Bool):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getEnableAppointmentsResize enableAppointmentsResize}.

Determines whether the appointments in the row are resizable.

The resize interaction is visualized by making the appointment transparent.

Specifics based on the intervals (hours, days or months) displayed in the <code>PlanningCalendar</code> views:

Hours: For views where the displayed intervals are hours, the appointment snaps on every interval of 30 minutes. After the resize is finished, the {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects.

Days: For views where intervals are days, the appointment snaps to the end of the day. After the resize is finished, the {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects. The <code>endDate</code> time is changed to 00:00:00

Months: For views where intervals are months, the appointment snaps to the end of the month. The {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects. The <code>endDate</code> is set to the 00:00:00 and first day of the following month.

<b>Notes:</b> In "One month" view, the appointments are not resizable on small screen (as there they are displayed as a list below the dates). Group appointments are also not resizable

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableAppointmentsResize New value for property <code>enableAppointmentsResize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableAppointmentsResize( ?bEnableAppointmentsResize:Bool):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Specifies the URI of an image or an icon registered in <code>sap.ui.core.IconPool</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getKey key}.

Defines the identifier of the row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( ?sKey:String):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getNoAppointmentsText noAppointmentsText}.

Defines the text that is displayed when no {@link sap.ui.unified.CalendarAppointment CalendarAppointments} are assigned.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNoAppointmentsText New value for property <code>noAppointmentsText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoAppointmentsText( ?sNoAppointmentsText:String):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getNonWorkingDays nonWorkingDays}.

Determines whether the provided weekdays are displayed as non-working days. Valid values inside the array are from 0 to 6 (other values are ignored). If not set, the weekend defined in the locale settings is displayed as non-working days.

<b>Note:</b> The non-working days are visualized if the <code>intervalType</code> property of the {@link sap.m.PlanningCalendarView} is set to <code>Day</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNonWorkingDays New value for property <code>nonWorkingDays</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNonWorkingDays( ?sNonWorkingDays:Array<Int>):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getNonWorkingHours nonWorkingHours}.

Determines whether the provided hours are displayed as non-working hours. Valid values inside the array are from 0 to 23 (other values are ignored).

<b>Note:</b> The non-working hours are visualized if <code>intervalType</code> property of the {@link sap.m.PlanningCalendarView} is set to <code>Hour</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNonWorkingHours New value for property <code>nonWorkingHours</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNonWorkingHours( ?sNonWorkingHours:Array<Int>):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getSelected selected}.

Defines the selected state of the <code>PlanningCalendarRow</code>.

<b>Note:</b> Binding the <code>selected</code> property in single selection modes may cause unwanted results if you have more than one selected row in your binding.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSelected New value for property <code>selected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelected( ?bSelected:Bool):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the text of the header (for example, the department of the person).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.PlanningCalendarRow;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the title of the header (for example, the name of the person).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.PlanningCalendarRow;
}

typedef PlanningCalendarRowArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Defines the title of the header (for example, the name of the person).
	*/
	@:optional var title:String;

	/**
	* Defines the text of the header (for example, the department of the person).
	*/
	@:optional var text:String;

	/**
	* Specifies the URI of an image or an icon registered in <code>sap.ui.core.IconPool</code>.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines whether the provided weekdays are displayed as non-working days. Valid values inside the array are from 0 to 6 (other values are ignored). If not set, the weekend defined in the locale settings is displayed as non-working days.

<b>Note:</b> The non-working days are visualized if the <code>intervalType</code> property of the {@link sap.m.PlanningCalendarView} is set to <code>Day</code>.
	*/
	@:optional var nonWorkingDays:Array<haxe.extern.EitherType<String,Int>>;

	/**
	* Determines whether the provided hours are displayed as non-working hours. Valid values inside the array are from 0 to 23 (other values are ignored).

<b>Note:</b> The non-working hours are visualized if <code>intervalType</code> property of the {@link sap.m.PlanningCalendarView} is set to <code>Hour</code>.
	*/
	@:optional var nonWorkingHours:Array<haxe.extern.EitherType<String,Int>>;

	/**
	* Defines the selected state of the <code>PlanningCalendarRow</code>.

<b>Note:</b> Binding the <code>selected</code> property in single selection modes may cause unwanted results if you have more than one selected row in your binding.
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the identifier of the row.
	*/
	@:optional var key:String;

	/**
	* Determines whether the appointments in the row are draggable.

The drag and drop interaction is visualized by a placeholder highlighting the area where the appointment can be dropped by the user.

By default, appointments can be dragged only within their original <code>PlanningCalendarRow</code>. When <code>enableAppointmentsDragAndDrop</code> is set to true, attaching the {@link #event:appointmentDragEnter appointmentDragEnter} event can change the default behavior and allow appointments to be dragged between calendar rows.

Specifics based on the intervals (hours, days or months) displayed in the <code>PlanningCalendar</code> views:

Hours:<br> For views where the displayed intervals are hours, the placeholder snaps on every interval of 30 minutes. After the appointment is dropped, the {@link #event:appointmentDrop appointmentDrop} event is fired, containing the new start and end JavaScript date objects.<br> For example, an appointment with start date "Nov 13 2017 12:17:00" and end date "Nov 13 2017 12:45:30" lasts for 27 minutes and 30 seconds. After dragging and dropping to a new time, the possible new start date has time that is either "hh:00:00" or "hh:30:00" because of the placeholder that can snap on every 30 minutes. The new end date is calculated to be 27 minutes and 30 seconds later and would be either "hh:27:30" or "hh:57:30".

Days:<br> For views where intervals are days, the placeholder highlights the whole day and after the appointment is dropped the {@link #event:appointmentDrop appointmentDrop} event is fired. The event contains the new start and end JavaScript date objects with changed date but the original time (hh:mm:ss) is preserved.

Months:<br> For views where intervals are months, the placeholder highlights the whole month and after the appointment is dropped the {@link #event:appointmentDrop appointmentDrop} event is fired. The event contains the new start and end JavaScript date objects with changed month but the original date and time is preserved.

<b>Note:</b> In "One month" view, the appointments are not draggable on small screen (as there they are displayed as a list below the dates). Group appointments are also not draggable.
	*/
	@:optional var enableAppointmentsDragAndDrop:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the appointments in the row are resizable.

The resize interaction is visualized by making the appointment transparent.

Specifics based on the intervals (hours, days or months) displayed in the <code>PlanningCalendar</code> views:

Hours: For views where the displayed intervals are hours, the appointment snaps on every interval of 30 minutes. After the resize is finished, the {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects.

Days: For views where intervals are days, the appointment snaps to the end of the day. After the resize is finished, the {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects. The <code>endDate</code> time is changed to 00:00:00

Months: For views where intervals are months, the appointment snaps to the end of the month. The {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects. The <code>endDate</code> is set to the 00:00:00 and first day of the following month.

<b>Notes:</b> In "One month" view, the appointments are not resizable on small screen (as there they are displayed as a list below the dates). Group appointments are also not resizable
	*/
	@:optional var enableAppointmentsResize:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the appointments can be created by dragging on empty cells.

See {@link #property:enableAppointmentsResize enableAppointmentsResize} for the specific points for events snapping

<b>Notes:</b> In "One month" view, the appointments cannot be created on small screen (as there they are displayed as a list below the dates).
	*/
	@:optional var enableAppointmentsCreate:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the text that is displayed when no {@link sap.ui.unified.CalendarAppointment CalendarAppointments} are assigned.
	*/
	@:optional var noAppointmentsText:String;

    /**
    * The appointments to be displayed in the row. Appointments that outside the visible time frame are not rendered.

<b>Note:</b> For performance reasons, only appointments in the visible time range or nearby should be assigned.
    */
	@:optional var appointments:Array<haxe.extern.EitherType<String,sap.ui.unified.CalendarAppointment>>;

    /**
    * The appointments to be displayed at the top of the intervals (for example, for public holidays). Appointments outside the visible time frame are not rendered.

Keep in mind that the <code>intervalHeaders</code> should always fill whole intervals. If they are shorter or longer than one interval, they are not displayed.

<b>Note:</b> For performance reasons, only appointments in the visible time range or nearby should be assigned.
    */
	@:optional var intervalHeaders:Array<haxe.extern.EitherType<String,sap.ui.unified.CalendarAppointment>>;

    /**
    * Holds the special dates in the context of a row. A single date or a date range can be set.

<b>Note</b> Only date or date ranges of type <code>sap.ui.unified.CalendarDayType.NonWorking</code> will be visualized in the <code>PlanningCalendarRow</code>. If the aggregation is set as another type, the date or date range will be ignored and will not be displayed in the control.
    */
	@:optional var specialDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateTypeRange>>;

    /**
    * Holds the header content of the row.

<b>Note:</b> If the <code>headerContent</code> aggregation is added, then the set icon, description, title and tooltip are ignored.
    */
	@:optional var headerContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired if an appointment is created.
	*/
	@:optional var appointmentCreate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired if an appointment is dropped.

When this event handler is attached, the default behavior of the <code>enableAppointmentsDragAndDrop</code> property to move appointments only within their original calendar row is no longer valid. You can move the appointment around all rows for which <code>enableAppointmentsDragAndDrop</code> is set to true. In this case, the drop target area is indicated by a placeholder. In the event handler you can call the <code>preventDefault</code> method of the event to prevent this default behavior. In this case, the placeholder will no longer be available and it will not be possible to drop the appointment in the row.
	*/
	@:optional var appointmentDragEnter:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired if an appointment is dropped.
	*/
	@:optional var appointmentDrop:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired if an appointment is resized.
	*/
	@:optional var appointmentResize:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
