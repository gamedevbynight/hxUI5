package sap.m;

@:native("sap.m.SinglePlanningCalendar")

/**
* Displays a calendar of a single entity (such as person, resource) for the selected time interval.

<h3>Overview</h3>

<b>Note:</b> The <code>SinglePlanningCalendar</code> uses parts of the <code>sap.ui.unified</code> library. This library will be loaded after the <code>SinglePlanningCalendar</code>, if it wasn't previously loaded. This could lead to a waiting time when a <code>SinglePlanningCalendar</code> is used for the first time. To prevent this, apps using the <code>SinglePlanningCalendar</code> must also load the <code>sap.ui.unified</code> library.

The <code>SinglePlanningCalendar</code> has the following structure:

<ul> <li>A <code>PlanningCalendarHeader</code> at the top. It contains the <code>title</code> set from the corresponding property, the <code>SegmentedButton</code>, which facilitates navigation through the views, controls, passed to the <code>actions</code> aggregation and the navigation, assisting the user in choosing the desired time period. The views, either custom or not, can be configured and passed through the <code>views</code> aggregation.

To create custom views, extend the <code>SinglePlanningCalendarView</code> basic view class. It defines three methods that should be overwritten: <code>getEntityCount</code>, <code>getScrollEntityCount</code> and <code>calculateStartDate</code> <ul> <li><code>getEntityCount</code> - returns number of columns to be displayed</li> <li><code>getScrollEntityCount</code> - used when next and previous arrows in the calendar are used. For example, in work week view, the <code>getEntityCount</code> returns 5 (5 columns from Monday to Friday), but when next arrow is selected, the control navigates 7 days ahead and <code>getScrollEntityCount</code> returns 7.</li> <li><code>calculateStartDate</code> - calculates the first day displayed in the calendar based on the <code>startDate</code> property of the <code>SinglePlanningCalendar</code>. For example, it returns the first date of a month or a week to display the first 10 days of the month.</li> </ul>

<li>A <code>SinglePlanningCalendarGrid</code> or <code>SinglePlanningCalendarMonthGrid</code>, which displays the appointments, set to the visual time range. An all-day appointment is an appointment which starts at 00:00 and ends in 00:00 on any day in the future. </ul>
*/
extern class SinglePlanningCalendar extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SinglePlanningCalendarArgs):Void {})
	public function new(?mSettings:SinglePlanningCalendarArgs):Void;

	/**
	* Adds some action to the aggregation {@link #getActions actions}.
	* @param	oAction The action to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAction( oAction:sap.ui.core.Control):sap.m.SinglePlanningCalendar;

	/**
	* Adds some appointment to the aggregation {@link #getAppointments appointments}.
	* @param	oAppointment The appointment to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAppointment( oAppointment:sap.ui.unified.CalendarAppointment):sap.m.SinglePlanningCalendar;

	/**
	* Adds some specialDate to the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):sap.m.SinglePlanningCalendar;

	/**
	* Adds some view to the aggregation {@link #getViews views}.
	* @param	oView The view to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addView( oView:sap.m.SinglePlanningCalendarView):sap.m.SinglePlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:appointmentCreate appointmentCreate} event of this <code>sap.m.SinglePlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SinglePlanningCalendar</code> itself.

Fired if an appointment is created.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SinglePlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAppointmentCreate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:appointmentDrop appointmentDrop} event of this <code>sap.m.SinglePlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SinglePlanningCalendar</code> itself.

Fired if an appointment is dropped.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SinglePlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAppointmentDrop( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:appointmentResize appointmentResize} event of this <code>sap.m.SinglePlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SinglePlanningCalendar</code> itself.

Fired when an appointment is resized.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SinglePlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAppointmentResize( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:appointmentSelect appointmentSelect} event of this <code>sap.m.SinglePlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SinglePlanningCalendar</code> itself.

Fired when the selected state of an appointment is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SinglePlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAppointmentSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cellPress cellPress} event of this <code>sap.m.SinglePlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SinglePlanningCalendar</code> itself.

Fired when a grid cell is focused.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SinglePlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCellPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:headerDateSelect headerDateSelect} event of this <code>sap.m.SinglePlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SinglePlanningCalendar</code> itself.

Fired if a date is selected in the calendar header.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SinglePlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachHeaderDateSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:moreLinkPress moreLinkPress} event of this <code>sap.m.SinglePlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SinglePlanningCalendar</code> itself.

Fired when a 'more' button is pressed. <b>Note:</b> The 'more' button appears in a month view cell when multiple appointments exist and the available space is not sufficient to display all of them.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SinglePlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMoreLinkPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:startDateChange startDateChange} event of this <code>sap.m.SinglePlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SinglePlanningCalendar</code> itself.

<code>startDate</code> is changed while navigating in the <code>SinglePlanningCalendar</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SinglePlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStartDateChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:viewChange viewChange} event of this <code>sap.m.SinglePlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SinglePlanningCalendar</code> itself.

The view was changed by user interaction.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SinglePlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachViewChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Destroys all the actions in the aggregation {@link #getActions actions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyActions( ):sap.m.SinglePlanningCalendar;

	/**
	* Destroys all the appointments in the aggregation {@link #getAppointments appointments}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAppointments( ):sap.m.SinglePlanningCalendar;

	/**
	* Destroys all the specialDates in the aggregation {@link #getSpecialDates specialDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySpecialDates( ):sap.m.SinglePlanningCalendar;

	/**
	* Destroys all the views in the aggregation {@link #getViews views}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyViews( ):sap.m.SinglePlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:appointmentCreate appointmentCreate} event of this <code>sap.m.SinglePlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAppointmentCreate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:appointmentDrop appointmentDrop} event of this <code>sap.m.SinglePlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAppointmentDrop( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:appointmentResize appointmentResize} event of this <code>sap.m.SinglePlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAppointmentResize( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:appointmentSelect appointmentSelect} event of this <code>sap.m.SinglePlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAppointmentSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cellPress cellPress} event of this <code>sap.m.SinglePlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCellPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:headerDateSelect headerDateSelect} event of this <code>sap.m.SinglePlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachHeaderDateSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:moreLinkPress moreLinkPress} event of this <code>sap.m.SinglePlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMoreLinkPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:startDateChange startDateChange} event of this <code>sap.m.SinglePlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStartDateChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:viewChange viewChange} event of this <code>sap.m.SinglePlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachViewChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Creates a new subclass of class sap.m.SinglePlanningCalendar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getActions actions}.

The controls to be passed to the toolbar.
	* @return	null
	*/
	public function getActions( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getAppointments appointments}.

The appointments to be displayed in the grid. Appointments outside the visible time frame are not rendered. Appointments, longer than a day, will be displayed in all of the affected days. To display an all-day appointment, the appointment must start at 00:00 and end on any day in the future in 00:00h.
	* @return	null
	*/
	public function getAppointments( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Gets current value of property {@link #getEnableAppointmentsCreate enableAppointmentsCreate}.

Determines whether the appointments can be created by dragging on empty cells.

See {@link #property:enableAppointmentsResize enableAppointmentsResize} for the specific points for events snapping

Default value is <code>false</code>.
	* @return	Value of property <code>enableAppointmentsCreate</code>
	*/
	public function getEnableAppointmentsCreate( ):Bool;

	/**
	* Gets current value of property {@link #getEnableAppointmentsDragAndDrop enableAppointmentsDragAndDrop}.

Determines whether the appointments in the grid are draggable.

The drag and drop interaction is visualized by a placeholder highlighting the area where the appointment can be dropped by the user.

Default value is <code>false</code>.
	* @return	Value of property <code>enableAppointmentsDragAndDrop</code>
	*/
	public function getEnableAppointmentsDragAndDrop( ):Bool;

	/**
	* Gets current value of property {@link #getEnableAppointmentsResize enableAppointmentsResize}.

Determines whether the appointments are resizable.

The resize interaction is visualized by making the appointment transparent.

The appointment snaps on every interval of 30 minutes. After the resize is finished, the {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects.

Default value is <code>false</code>.
	* @return	Value of property <code>enableAppointmentsResize</code>
	*/
	public function getEnableAppointmentsResize( ):Bool;

	/**
	* Gets current value of property {@link #getEndHour endHour}.

Determines the end hour of the grid to be shown if the <code>fullDay</code> property is set to <code>false</code>. Otherwise the next hours are displayed as non-working. The passed hour is considered as 24-hour based.

Default value is <code>24</code>.
	* @return	Value of property <code>endHour</code>
	*/
	public function getEndHour( ):Int;

	/**
	* Gets current value of property {@link #getFullDay fullDay}.

Determines if all of the hours in a day are displayed. If set to <code>false</code>, the hours shown are between the <code>startHour</code> and <code>endHour</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>fullDay</code>
	*/
	public function getFullDay( ):Bool;

	/**
	* ID of the element which is the current target of the association {@link #getLegend legend}, or <code>null</code>.
	* @return	null
	*/
	public function getLegend( ):sap.ui.core.ID;

	/**
	* Returns a metadata object for class sap.m.SinglePlanningCalendar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Holds the selected appointments. If no appointments are selected, an empty array is returned.
	* @return	All selected appointments
	*/
	public function getSelectedAppointments( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedView selectedView}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedView( ):sap.ui.core.ID;

	/**
	* Gets content of aggregation {@link #getSpecialDates specialDates}.

Special days in the header visualized as a date range with type.

<b>Note:</b> If one day is assigned to more than one type, only the first type is used.
	* @return	null
	*/
	public function getSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;

	/**
	* Gets current value of property {@link #getStartDate startDate}.

Determines the start date of the grid, as a JavaScript date object. It is considered as a local date. The time part will be ignored. The current date is used as default.
	* @return	Value of property <code>startDate</code>
	*/
	public function getStartDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getStartHour startHour}.

Determines the start hour of the grid to be shown if the <code>fullDay</code> property is set to <code>false</code>. Otherwise the previous hours are displayed as non-working. The passed hour is considered as 24-hour based.

Default value is <code>0</code>.
	* @return	Value of property <code>startHour</code>
	*/
	public function getStartHour( ):Int;

	/**
	* Gets current value of property {@link #getStickyMode stickyMode}.

Determines which part of the control will remain fixed at the top of the page during vertical scrolling as long as the control is in the viewport.

<b>Note:</b> Limited browser support. Browsers which do not support this feature: <ul> <li>Microsoft Internet Explorer</li> <li>Microsoft Edge lower than version 41 (EdgeHTML 16)</li> <li>Mozilla Firefox lower than version 59</li> </ul>

Default value is <code>None</code>.
	* @return	Value of property <code>stickyMode</code>
	*/
	public function getStickyMode( ):sap.m.PlanningCalendarStickyMode;

	/**
	* Gets current value of property {@link #getTitle title}.

Determines the title of the <code>SinglePlanningCalendar</code>.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Finds the view object by given key
	* @param	sKey The key of the view
	* @return	the view object matched the given sKey, of null if there is no such view
	*/
	public function getViewByKey( sKey:String):sap.m.SinglePlanningCalendarView;

	/**
	* Gets content of aggregation {@link #getViews views}.

Views of the <code>SinglePlanningCalendar</code>.

<b>Note:</b> If not set, the Week view is available.
	* @return	null
	*/
	public function getViews( ):Array<sap.m.SinglePlanningCalendarView>;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getActions actions}. and returns its index if found or -1 otherwise.
	* @param	oAction The action whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAction( oAction:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.CalendarAppointment</code> in the aggregation {@link #getAppointments appointments}. and returns its index if found or -1 otherwise.
	* @param	oAppointment The appointment whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAppointment( oAppointment:sap.ui.unified.CalendarAppointment):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.DateTypeRange</code> in the aggregation {@link #getSpecialDates specialDates}. and returns its index if found or -1 otherwise.
	* @param	oSpecialDate The specialDate whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):Int;

	/**
	* Checks for the provided <code>sap.m.SinglePlanningCalendarView</code> in the aggregation {@link #getViews views}. and returns its index if found or -1 otherwise.
	* @param	oView The view whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfView( oView:sap.m.SinglePlanningCalendarView):Int;

	/**
	* Inserts a action into the aggregation {@link #getActions actions}.
	* @param	oAction The action to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the action should be inserted at; for a negative value of <code>iIndex</code>, the action is inserted at position 0; for a value greater than the current size of the aggregation, the action is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAction( oAction:sap.ui.core.Control, iIndex:Int):sap.m.SinglePlanningCalendar;

	/**
	* Inserts a appointment into the aggregation {@link #getAppointments appointments}.
	* @param	oAppointment The appointment to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the appointment should be inserted at; for a negative value of <code>iIndex</code>, the appointment is inserted at position 0; for a value greater than the current size of the aggregation, the appointment is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAppointment( oAppointment:sap.ui.unified.CalendarAppointment, iIndex:Int):sap.m.SinglePlanningCalendar;

	/**
	* Inserts a specialDate into the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the specialDate should be inserted at; for a negative value of <code>iIndex</code>, the specialDate is inserted at position 0; for a value greater than the current size of the aggregation, the specialDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange, iIndex:Int):sap.m.SinglePlanningCalendar;

	/**
	* Inserts a view into the aggregation {@link #getViews views}.
	* @param	oView The view to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the view should be inserted at; for a negative value of <code>iIndex</code>, the view is inserted at position 0; for a value greater than the current size of the aggregation, the view is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertView( oView:sap.m.SinglePlanningCalendarView, iIndex:Int):sap.m.SinglePlanningCalendar;
	@:overload( function(vAction:Int):sap.ui.core.Control{ })
	@:overload( function(vAction:String):sap.ui.core.Control{ })

	/**
	* Removes a action from the aggregation {@link #getActions actions}.
	* @param	vAction The action to remove or its index or id
	* @return	The removed action or <code>null</code>
	*/
	public function removeAction( vAction:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Removes all the controls from the aggregation {@link #getActions actions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllActions( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getAppointments appointments}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAppointments( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Removes all the controls from the aggregation {@link #getSpecialDates specialDates}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;

	/**
	* Removes all the controls from the aggregation {@link #getViews views}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllViews( ):Array<sap.m.SinglePlanningCalendarView>;
	@:overload( function(vAppointment:Int):sap.ui.unified.CalendarAppointment{ })
	@:overload( function(vAppointment:String):sap.ui.unified.CalendarAppointment{ })

	/**
	* Removes a appointment from the aggregation {@link #getAppointments appointments}.
	* @param	vAppointment The appointment to remove or its index or id
	* @return	The removed appointment or <code>null</code>
	*/
	public function removeAppointment( vAppointment:sap.ui.unified.CalendarAppointment):sap.ui.unified.CalendarAppointment;
	@:overload( function(vSpecialDate:Int):sap.ui.unified.DateTypeRange{ })
	@:overload( function(vSpecialDate:String):sap.ui.unified.DateTypeRange{ })

	/**
	* Removes a specialDate from the aggregation {@link #getSpecialDates specialDates}.
	* @param	vSpecialDate The specialDate to remove or its index or id
	* @return	The removed specialDate or <code>null</code>
	*/
	public function removeSpecialDate( vSpecialDate:sap.ui.unified.DateTypeRange):sap.ui.unified.DateTypeRange;
	@:overload( function(vView:Int):sap.m.SinglePlanningCalendarView{ })
	@:overload( function(vView:String):sap.m.SinglePlanningCalendarView{ })

	/**
	* Removes a view from the aggregation {@link #getViews views}.
	* @param	vView The view to remove or its index or id
	* @return	The removed view or <code>null</code>
	*/
	public function removeView( vView:sap.m.SinglePlanningCalendarView):sap.m.SinglePlanningCalendarView;

	/**
	* Sets a new value for property {@link #getEnableAppointmentsCreate enableAppointmentsCreate}.

Determines whether the appointments can be created by dragging on empty cells.

See {@link #property:enableAppointmentsResize enableAppointmentsResize} for the specific points for events snapping

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableAppointmentsCreate New value for property <code>enableAppointmentsCreate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableAppointmentsCreate( bEnableAppointmentsCreate:Bool):sap.m.SinglePlanningCalendar;

	/**
	* Sets a new value for property {@link #getEnableAppointmentsDragAndDrop enableAppointmentsDragAndDrop}.

Determines whether the appointments in the grid are draggable.

The drag and drop interaction is visualized by a placeholder highlighting the area where the appointment can be dropped by the user.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableAppointmentsDragAndDrop New value for property <code>enableAppointmentsDragAndDrop</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableAppointmentsDragAndDrop( bEnableAppointmentsDragAndDrop:Bool):sap.m.SinglePlanningCalendar;

	/**
	* Sets a new value for property {@link #getEnableAppointmentsResize enableAppointmentsResize}.

Determines whether the appointments are resizable.

The resize interaction is visualized by making the appointment transparent.

The appointment snaps on every interval of 30 minutes. After the resize is finished, the {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableAppointmentsResize New value for property <code>enableAppointmentsResize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableAppointmentsResize( bEnableAppointmentsResize:Bool):sap.m.SinglePlanningCalendar;

	/**
	* Sets a new value for property {@link #getEndHour endHour}.

Determines the end hour of the grid to be shown if the <code>fullDay</code> property is set to <code>false</code>. Otherwise the next hours are displayed as non-working. The passed hour is considered as 24-hour based.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>24</code>.
	* @param	iEndHour New value for property <code>endHour</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEndHour( iEndHour:Int):sap.m.SinglePlanningCalendar;

	/**
	* Sets a new value for property {@link #getFullDay fullDay}.

Determines if all of the hours in a day are displayed. If set to <code>false</code>, the hours shown are between the <code>startHour</code> and <code>endHour</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bFullDay New value for property <code>fullDay</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFullDay( bFullDay:Bool):sap.m.SinglePlanningCalendar;
	@:overload( function(oLegend:sap.ui.core.ID):sap.m.SinglePlanningCalendar{ })

	/**
	* Sets the associated {@link #getLegend legend}.
	* @param	oLegend ID of an element which becomes the new target of this legend association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLegend( oLegend:sap.m.PlanningCalendarLegend):sap.m.SinglePlanningCalendar;
	@:overload( function(oSelectedView:sap.ui.core.ID):sap.m.SinglePlanningCalendar{ })

	/**
	* Sets the associated {@link #getSelectedView selectedView}.
	* @param	oSelectedView ID of an element which becomes the new target of this selectedView association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedView( oSelectedView:sap.m.SinglePlanningCalendarView):sap.m.SinglePlanningCalendar;

	/**
	* Sets a new value for property {@link #getStartDate startDate}.

Determines the start date of the grid, as a JavaScript date object. It is considered as a local date. The time part will be ignored. The current date is used as default.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oStartDate New value for property <code>startDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartDate( oStartDate:Dynamic):sap.m.SinglePlanningCalendar;

	/**
	* Sets a new value for property {@link #getStartHour startHour}.

Determines the start hour of the grid to be shown if the <code>fullDay</code> property is set to <code>false</code>. Otherwise the previous hours are displayed as non-working. The passed hour is considered as 24-hour based.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iStartHour New value for property <code>startHour</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartHour( iStartHour:Int):sap.m.SinglePlanningCalendar;

	/**
	* Sets a new value for property {@link #getStickyMode stickyMode}.

Determines which part of the control will remain fixed at the top of the page during vertical scrolling as long as the control is in the viewport.

<b>Note:</b> Limited browser support. Browsers which do not support this feature: <ul> <li>Microsoft Internet Explorer</li> <li>Microsoft Edge lower than version 41 (EdgeHTML 16)</li> <li>Mozilla Firefox lower than version 59</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sStickyMode New value for property <code>stickyMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStickyMode( sStickyMode:sap.m.PlanningCalendarStickyMode):sap.m.SinglePlanningCalendar;

	/**
	* Sets a new value for property {@link #getTitle title}.

Determines the title of the <code>SinglePlanningCalendar</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.SinglePlanningCalendar;
}

typedef SinglePlanningCalendarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the title of the <code>SinglePlanningCalendar</code>.
	*/
	@:optional var title:String;

	/**
	* Determines the start date of the grid, as a JavaScript date object. It is considered as a local date. The time part will be ignored. The current date is used as default.
	*/
	@:optional var startDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Determines the start hour of the grid to be shown if the <code>fullDay</code> property is set to <code>false</code>. Otherwise the previous hours are displayed as non-working. The passed hour is considered as 24-hour based.
	*/
	@:optional var startHour:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the end hour of the grid to be shown if the <code>fullDay</code> property is set to <code>false</code>. Otherwise the next hours are displayed as non-working. The passed hour is considered as 24-hour based.
	*/
	@:optional var endHour:haxe.extern.EitherType<String,Int>;

	/**
	* Determines if all of the hours in a day are displayed. If set to <code>false</code>, the hours shown are between the <code>startHour</code> and <code>endHour</code>.
	*/
	@:optional var fullDay:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines which part of the control will remain fixed at the top of the page during vertical scrolling as long as the control is in the viewport.

<b>Note:</b> Limited browser support. Browsers which do not support this feature: <ul> <li>Microsoft Internet Explorer</li> <li>Microsoft Edge lower than version 41 (EdgeHTML 16)</li> <li>Mozilla Firefox lower than version 59</li> </ul>
	*/
	@:optional var stickyMode:haxe.extern.EitherType<String,sap.m.PlanningCalendarStickyMode>;

	/**
	* Determines whether the appointments in the grid are draggable.

The drag and drop interaction is visualized by a placeholder highlighting the area where the appointment can be dropped by the user.
	*/
	@:optional var enableAppointmentsDragAndDrop:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the appointments are resizable.

The resize interaction is visualized by making the appointment transparent.

The appointment snaps on every interval of 30 minutes. After the resize is finished, the {@link #event:appointmentResize appointmentResize} event is fired, containing the new start and end JavaScript date objects.
	*/
	@:optional var enableAppointmentsResize:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the appointments can be created by dragging on empty cells.

See {@link #property:enableAppointmentsResize enableAppointmentsResize} for the specific points for events snapping
	*/
	@:optional var enableAppointmentsCreate:haxe.extern.EitherType<String,Bool>;

    /**
    * The controls to be passed to the toolbar.
    */
	@:optional var actions:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The appointments to be displayed in the grid. Appointments outside the visible time frame are not rendered. Appointments, longer than a day, will be displayed in all of the affected days. To display an all-day appointment, the appointment must start at 00:00 and end on any day in the future in 00:00h.
    */
	@:optional var appointments:Array<haxe.extern.EitherType<String,sap.ui.unified.CalendarAppointment>>;

    /**
    * Views of the <code>SinglePlanningCalendar</code>.

<b>Note:</b> If not set, the Week view is available.
    */
	@:optional var views:Array<haxe.extern.EitherType<String,sap.m.SinglePlanningCalendarView>>;

    /**
    * Special days in the header visualized as a date range with type.

<b>Note:</b> If one day is assigned to more than one type, only the first type is used.
    */
	@:optional var specialDates:Array<haxe.extern.EitherType<String,sap.ui.unified.DateTypeRange>>;

    /**
    * The header part of the <code>SinglePlanningCalendar</code>.
    */
	@:optional var _header:haxe.extern.EitherType<String,sap.m.PlanningCalendarHeader>;

    /**
    * The grid part of the <code>SinglePlanningCalendar</code>.
    */
	@:optional var _grid:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The grid part of the <code>SinglePlanningCalendar</code>.
    */
	@:optional var _mvgrid:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Corresponds to the currently selected view.
	*/
	@:optional var selectedView:haxe.extern.EitherType<String,sap.m.SinglePlanningCalendarView>;

	/**
	* Association to the <code>PlanningCalendarLegend</code> explaining the colors of the <code>Appointments</code>.

<b>Note:</b> The legend does not have to be rendered but must exist and all required types must be assigned.
	*/
	@:optional var legend:haxe.extern.EitherType<String,sap.m.PlanningCalendarLegend>;

	/**
	* Fired if an appointment is created.
	*/
	@:optional var appointmentCreate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired if an appointment is dropped.
	*/
	@:optional var appointmentDrop:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when an appointment is resized.
	*/
	@:optional var appointmentResize:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the selected state of an appointment is changed.
	*/
	@:optional var appointmentSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when a grid cell is focused.
	*/
	@:optional var cellPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired if a date is selected in the calendar header.
	*/
	@:optional var headerDateSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when a 'more' button is pressed. <b>Note:</b> The 'more' button appears in a month view cell when multiple appointments exist and the available space is not sufficient to display all of them.
	*/
	@:optional var moreLinkPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* <code>startDate</code> is changed while navigating in the <code>SinglePlanningCalendar</code>.
	*/
	@:optional var startDateChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The view was changed by user interaction.
	*/
	@:optional var viewChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
