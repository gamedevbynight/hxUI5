package sap.ui.unified;

@:native("sap.ui.unified.CalendarRow")

/**
* A calendar row with a header and appointments. The Appointments will be placed in the defined interval.
*/
extern class CalendarRow extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:CalendarRowArgs):Void {})
	public function new(?mSettings:CalendarRowArgs):Void;

	/**
	* Adds some appointment to the aggregation {@link #getAppointments appointments}.
	* @param	oAppointment The appointment to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAppointment( oAppointment:sap.ui.unified.CalendarAppointment):sap.ui.unified.CalendarRow;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.CalendarRow{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.CalendarRow;

	/**
	* Adds some intervalHeader to the aggregation {@link #getIntervalHeaders intervalHeaders}.
	* @param	oIntervalHeader The intervalHeader to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addIntervalHeader( oIntervalHeader:sap.ui.unified.CalendarAppointment):sap.ui.unified.CalendarRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:intervalSelect intervalSelect} event of this <code>sap.ui.unified.CalendarRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.CalendarRow</code> itself.

Fired if an interval was selected
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.CalendarRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachIntervalSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:leaveRow leaveRow} event of this <code>sap.ui.unified.CalendarRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.CalendarRow</code> itself.

The <code>CalendarRow</code> should be left while navigating. (Arrow up or arrow down.) The caller should determine the next control to be focused
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.CalendarRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLeaveRow( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.unified.CalendarRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.CalendarRow</code> itself.

Fired if an appointment was selected
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.CalendarRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:startDateChange startDateChange} event of this <code>sap.ui.unified.CalendarRow</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.CalendarRow</code> itself.

<code>startDate</code> was changed while navigating in <code>CalendarRow</code>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.CalendarRow</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStartDateChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Destroys all the appointments in the aggregation {@link #getAppointments appointments}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAppointments( ):sap.ui.unified.CalendarRow;

	/**
	* Destroys all the intervalHeaders in the aggregation {@link #getIntervalHeaders intervalHeaders}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyIntervalHeaders( ):sap.ui.unified.CalendarRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:intervalSelect intervalSelect} event of this <code>sap.ui.unified.CalendarRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachIntervalSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:leaveRow leaveRow} event of this <code>sap.ui.unified.CalendarRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLeaveRow( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.unified.CalendarRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:startDateChange startDateChange} event of this <code>sap.ui.unified.CalendarRow</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStartDateChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Creates a new subclass of class sap.ui.unified.CalendarRow with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Focus the given <code>CalendarAppointment</code> in the <code>CalendarRow</code>.
	* @param	oAppointment Appointment to be focused.
	* @return	<code>this</code> to allow method chaining
	*/
	public function focusAppointment( oAppointment:sap.ui.unified.CalendarAppointment):sap.ui.unified.CalendarRow;

	/**
	* Focus the <code>CalendarAppointment</code> in the <code>CalendarRow</code> that is nearest to the given date.
	* @param	oDate Javascript Date object.
	* @return	<code>this</code> to allow method chaining
	*/
	public function focusNearestAppointment( oDate:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Gets content of aggregation {@link #getAppointments appointments}.

Appointments to be displayed in the row. Appointments outside the visible time frame are not rendered.

<b>Note:</b> For performance reasons, only appointments in the visible time range or nearby should be assigned.
	* @return	null
	*/
	public function getAppointments( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Gets current value of property {@link #getAppointmentsReducedHeight appointmentsReducedHeight}.

If set the appointments without text (only title) are rendered with a smaller height.

<b>Note:</b> On phone devices this property is ignored, appointments are always rendered in full height to allow touching.

Default value is <code>false</code>.
	* @return	Value of property <code>appointmentsReducedHeight</code>
	*/
	public function getAppointmentsReducedHeight( ):Bool;

	/**
	* Gets current value of property {@link #getAppointmentsVisualization appointmentsVisualization}.

Defines the visualization of the <code>CalendarAppoinment</code>

<b>Note:</b> The real visualization depends on the used theme.

Default value is <code>Standard</code>.
	* @return	Value of property <code>appointmentsVisualization</code>
	*/
	public function getAppointmentsVisualization( ):sap.ui.unified.CalendarAppointmentVisualization;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getCheckResize checkResize}.

If set, the <code>CalendarRow</code> checks for resize by itself.

If a lot of <code>CalendarRow</code> controls are used in one container control (like <code>PlanningCalendar</code>). the resize checks should be done only by this container control. Then the container control should call <code>handleResize</code> of the <code>CalendarRow</code> if a resize happens.

Default value is <code>true</code>.
	* @return	Value of property <code>checkResize</code>
	*/
	public function getCheckResize( ):Bool;

	/**
	* Returns the focused <code>CalendarAppointment</code> of the <code>CalendarRow</code>.

The focus must not really be on the <code>CalendarAppointment</code>, it have just to be the one that has the focus when the <code>CalendarRow</code> was focused last time.
	* @return	Focused Appointment
	*/
	public function getFocusedAppointment( ):sap.ui.unified.CalendarAppointment;

	/**
	* Gets current value of property {@link #getGroupAppointmentsMode groupAppointmentsMode}.

Defines the mode in which the overlapping appointments are displayed.

<b>Note:</b> This property takes effect, only if the <code>intervalType</code> of the current calendar view is set to <code>sap.ui.unified.CalendarIntervalType.Month</code>. On phone devices this property is ignored, and the default value is applied.

Default value is <code>Collapsed</code>.
	* @return	Value of property <code>groupAppointmentsMode</code>
	*/
	public function getGroupAppointmentsMode( ):sap.ui.unified.GroupAppointmentsMode;

	/**
	* Gets current value of property {@link #getHeight height}.

Height of the row
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getIntervalHeaders intervalHeaders}.

Appointments to be displayed in the top of the intervals. The <code>intervalHeaders</code> are used to visualize public holidays and similar things.

Appointments outside the visible time frame are not rendered.

The <code>intervalHeaders</code> always fill whole intervals. If they are shorter than one interval, they are not displayed.

<b>Note:</b> For performance reasons, only appointments in the visible time range or nearby should be assigned.
	* @return	null
	*/
	public function getIntervalHeaders( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Gets current value of property {@link #getIntervals intervals}.

Number of displayed intervals. The size of the intervals is defined with <code>intervalType</code>

Default value is <code>12</code>.
	* @return	Value of property <code>intervals</code>
	*/
	public function getIntervals( ):Int;

	/**
	* Gets current value of property {@link #getIntervalType intervalType}.

Type of the intervals of the row. The default is one hour.

Default value is <code>Hour</code>.
	* @return	Value of property <code>intervalType</code>
	*/
	public function getIntervalType( ):sap.ui.unified.CalendarIntervalType;

	/**
	* ID of the element which is the current target of the association {@link #getLegend legend}, or <code>null</code>.
	* @return	null
	*/
	public function getLegend( ):sap.ui.core.ID;

	/**
	* Returns a metadata object for class sap.ui.unified.CalendarRow.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNonWorkingDays nonWorkingDays}.

If set, the provided weekdays are displayed as non-working days. Valid values inside the array are 0 to 6. (Other values will just be ignored.)

If not set, the weekend defined in the locale settings is displayed as non-working days.

<b>Note:</b> The non working days are only visualized if <code>intervalType</code> is set to day.
	* @return	Value of property <code>nonWorkingDays</code>
	*/
	public function getNonWorkingDays( ):Array<Int>;

	/**
	* Gets current value of property {@link #getNonWorkingHours nonWorkingHours}.

If set, the provided hours are displayed as non-working hours. Valid values inside the array are 0 to 23. (Other values will just be ignored.)

<b>Note:</b> The non working hours are only visualized if <code>intervalType</code> is set to hour.
	* @return	Value of property <code>nonWorkingHours</code>
	*/
	public function getNonWorkingHours( ):Array<Int>;

	/**
	* Gets current value of property {@link #getShowEmptyIntervalHeaders showEmptyIntervalHeaders}.

If set, interval headers are shown even if no <code>intervalHeaders</code> are assigned to the visible time frame.

If not set, no interval headers are shown if no <code>intervalHeaders</code> are assigned.

<b>Note:</b> This property is only used if <code>showIntervalHeaders</code> is set to true.

Default value is <code>true</code>.
	* @return	Value of property <code>showEmptyIntervalHeaders</code>
	*/
	public function getShowEmptyIntervalHeaders( ):Bool;

	/**
	* Gets current value of property {@link #getShowIntervalHeaders showIntervalHeaders}.

If set, interval headers are shown like specified in <code>showEmptyIntervalHeaders</code>.

If not set, no interval headers are shown even if <code>intervalHeaders</code> are assigned.

Default value is <code>true</code>.
	* @return	Value of property <code>showIntervalHeaders</code>
	*/
	public function getShowIntervalHeaders( ):Bool;

	/**
	* Gets current value of property {@link #getShowSubIntervals showSubIntervals}.

If set, subintervals are shown.

If the interval type is <code>Hour</code>, quarter hours are shown.

If the interval type is <code>Day</code>, hours are shown.

If the interval type is <code>Month</code>, days are shown.

Default value is <code>false</code>.
	* @return	Value of property <code>showSubIntervals</code>
	*/
	public function getShowSubIntervals( ):Bool;

	/**
	* Gets current value of property {@link #getStartDate startDate}.

Start date, as JavaScript Date object, of the row. As default, the current date is used.
	* @return	Value of property <code>startDate</code>
	*/
	public function getStartDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getUpdateCurrentTime updateCurrentTime}.

If set the <code>CalendarRow</code> triggers a periodic update to visualize the current time.

If a lot of <code>CalendarRow</code> controls are used in one container control (like <code>PlanningCalendar</code>) the periodic update should be triggered only by this container control. Then the container control should call <code>updateCurrentTimeVisualization</code> of the <code>CalendarRow</code> to update the visualization.

Default value is <code>true</code>.
	* @return	Value of property <code>updateCurrentTime</code>
	*/
	public function getUpdateCurrentTime( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the row
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* After a resize of the <code>CalendarRow</code>, some calculations for appointment sizes are needed.

For this, each <code>CalendarRow</code> can trigger the resize check for it's own DOM. But if multiple <code>CalendarRow</code>s are used in one container (e.g. <code>PlanningCalendar</code>), it is better if the container triggers the resize check once and then calls this function of each <code>CalendarRow</code>.
	* @param	oEvent The event object of the resize handler.
	* @return	<code>this</code> to allow method chaining
	*/
	public function handleResize( oEvent:jquery.Event):sap.ui.unified.CalendarRow;

	/**
	* Checks for the provided <code>sap.ui.unified.CalendarAppointment</code> in the aggregation {@link #getAppointments appointments}. and returns its index if found or -1 otherwise.
	* @param	oAppointment The appointment whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAppointment( oAppointment:sap.ui.unified.CalendarAppointment):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.CalendarAppointment</code> in the aggregation {@link #getIntervalHeaders intervalHeaders}. and returns its index if found or -1 otherwise.
	* @param	oIntervalHeader The intervalHeader whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfIntervalHeader( oIntervalHeader:sap.ui.unified.CalendarAppointment):Int;

	/**
	* Inserts a appointment into the aggregation {@link #getAppointments appointments}.
	* @param	oAppointment The appointment to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the appointment should be inserted at; for a negative value of <code>iIndex</code>, the appointment is inserted at position 0; for a value greater than the current size of the aggregation, the appointment is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAppointment( oAppointment:sap.ui.unified.CalendarAppointment, iIndex:Int):sap.ui.unified.CalendarRow;

	/**
	* Inserts a intervalHeader into the aggregation {@link #getIntervalHeaders intervalHeaders}.
	* @param	oIntervalHeader The intervalHeader to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the intervalHeader should be inserted at; for a negative value of <code>iIndex</code>, the intervalHeader is inserted at position 0; for a value greater than the current size of the aggregation, the intervalHeader is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertIntervalHeader( oIntervalHeader:sap.ui.unified.CalendarAppointment, iIndex:Int):sap.ui.unified.CalendarRow;

	/**
	* Removes all the controls from the aggregation {@link #getAppointments appointments}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAppointments( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getIntervalHeaders intervalHeaders}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllIntervalHeaders( ):Array<sap.ui.unified.CalendarAppointment>;
	@:overload( function(vAppointment:Int):sap.ui.unified.CalendarAppointment{ })
	@:overload( function(vAppointment:String):sap.ui.unified.CalendarAppointment{ })

	/**
	* Removes a appointment from the aggregation {@link #getAppointments appointments}.
	* @param	vAppointment The appointment to remove or its index or id
	* @return	The removed appointment or <code>null</code>
	*/
	public function removeAppointment( vAppointment:sap.ui.unified.CalendarAppointment):sap.ui.unified.CalendarAppointment;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vIntervalHeader:Int):sap.ui.unified.CalendarAppointment{ })
	@:overload( function(vIntervalHeader:String):sap.ui.unified.CalendarAppointment{ })

	/**
	* Removes a intervalHeader from the aggregation {@link #getIntervalHeaders intervalHeaders}.
	* @param	vIntervalHeader The intervalHeader to remove or its index or id
	* @return	The removed intervalHeader or <code>null</code>
	*/
	public function removeIntervalHeader( vIntervalHeader:sap.ui.unified.CalendarAppointment):sap.ui.unified.CalendarAppointment;

	/**
	* Sets a new value for property {@link #getAppointmentsReducedHeight appointmentsReducedHeight}.

If set the appointments without text (only title) are rendered with a smaller height.

<b>Note:</b> On phone devices this property is ignored, appointments are always rendered in full height to allow touching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAppointmentsReducedHeight New value for property <code>appointmentsReducedHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAppointmentsReducedHeight( bAppointmentsReducedHeight:Bool):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getAppointmentsVisualization appointmentsVisualization}.

Defines the visualization of the <code>CalendarAppoinment</code>

<b>Note:</b> The real visualization depends on the used theme.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sAppointmentsVisualization New value for property <code>appointmentsVisualization</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAppointmentsVisualization( sAppointmentsVisualization:sap.ui.unified.CalendarAppointmentVisualization):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getCheckResize checkResize}.

If set, the <code>CalendarRow</code> checks for resize by itself.

If a lot of <code>CalendarRow</code> controls are used in one container control (like <code>PlanningCalendar</code>). the resize checks should be done only by this container control. Then the container control should call <code>handleResize</code> of the <code>CalendarRow</code> if a resize happens.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bCheckResize New value for property <code>checkResize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCheckResize( bCheckResize:Bool):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getGroupAppointmentsMode groupAppointmentsMode}.

Defines the mode in which the overlapping appointments are displayed.

<b>Note:</b> This property takes effect, only if the <code>intervalType</code> of the current calendar view is set to <code>sap.ui.unified.CalendarIntervalType.Month</code>. On phone devices this property is ignored, and the default value is applied.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Collapsed</code>.
	* @param	sGroupAppointmentsMode New value for property <code>groupAppointmentsMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupAppointmentsMode( sGroupAppointmentsMode:sap.ui.unified.GroupAppointmentsMode):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getHeight height}.

Height of the row

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getIntervals intervals}.

Number of displayed intervals. The size of the intervals is defined with <code>intervalType</code>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>12</code>.
	* @param	iIntervals New value for property <code>intervals</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervals( iIntervals:Int):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getIntervalType intervalType}.

Type of the intervals of the row. The default is one hour.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Hour</code>.
	* @param	sIntervalType New value for property <code>intervalType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntervalType( sIntervalType:sap.ui.unified.CalendarIntervalType):sap.ui.unified.CalendarRow;
	@:overload( function(oLegend:sap.ui.core.ID):sap.ui.unified.CalendarRow{ })

	/**
	* Sets the associated {@link #getLegend legend}.
	* @param	oLegend ID of an element which becomes the new target of this legend association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLegend( oLegend:sap.ui.unified.CalendarLegend):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getNonWorkingDays nonWorkingDays}.

If set, the provided weekdays are displayed as non-working days. Valid values inside the array are 0 to 6. (Other values will just be ignored.)

If not set, the weekend defined in the locale settings is displayed as non-working days.

<b>Note:</b> The non working days are only visualized if <code>intervalType</code> is set to day.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNonWorkingDays New value for property <code>nonWorkingDays</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNonWorkingDays( sNonWorkingDays:Array<Int>):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getNonWorkingHours nonWorkingHours}.

If set, the provided hours are displayed as non-working hours. Valid values inside the array are 0 to 23. (Other values will just be ignored.)

<b>Note:</b> The non working hours are only visualized if <code>intervalType</code> is set to hour.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNonWorkingHours New value for property <code>nonWorkingHours</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNonWorkingHours( sNonWorkingHours:Array<Int>):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getShowEmptyIntervalHeaders showEmptyIntervalHeaders}.

If set, interval headers are shown even if no <code>intervalHeaders</code> are assigned to the visible time frame.

If not set, no interval headers are shown if no <code>intervalHeaders</code> are assigned.

<b>Note:</b> This property is only used if <code>showIntervalHeaders</code> is set to true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowEmptyIntervalHeaders New value for property <code>showEmptyIntervalHeaders</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowEmptyIntervalHeaders( bShowEmptyIntervalHeaders:Bool):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getShowIntervalHeaders showIntervalHeaders}.

If set, interval headers are shown like specified in <code>showEmptyIntervalHeaders</code>.

If not set, no interval headers are shown even if <code>intervalHeaders</code> are assigned.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowIntervalHeaders New value for property <code>showIntervalHeaders</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowIntervalHeaders( bShowIntervalHeaders:Bool):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getShowSubIntervals showSubIntervals}.

If set, subintervals are shown.

If the interval type is <code>Hour</code>, quarter hours are shown.

If the interval type is <code>Day</code>, hours are shown.

If the interval type is <code>Month</code>, days are shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSubIntervals New value for property <code>showSubIntervals</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSubIntervals( bShowSubIntervals:Bool):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getStartDate startDate}.

Start date, as JavaScript Date object, of the row. As default, the current date is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oStartDate New value for property <code>startDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStartDate( oStartDate:Dynamic):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getUpdateCurrentTime updateCurrentTime}.

If set the <code>CalendarRow</code> triggers a periodic update to visualize the current time.

If a lot of <code>CalendarRow</code> controls are used in one container control (like <code>PlanningCalendar</code>) the periodic update should be triggered only by this container control. Then the container control should call <code>updateCurrentTimeVisualization</code> of the <code>CalendarRow</code> to update the visualization.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bUpdateCurrentTime New value for property <code>updateCurrentTime</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUpdateCurrentTime( bUpdateCurrentTime:Bool):sap.ui.unified.CalendarRow;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the row

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.unified.CalendarRow;

	/**
	* If the current time is in the visible output of the <code>CalendarRow</code>, the indicator for the current time must be positioned.

For this, each <code>CalendarRow</code> can trigger a timer. But if multiple <code>CalendarRow</code>s are used in one container (e.G. <code>PlanningCalendar</code>), it is better if the container triggers the interval once and then calls this function of each <code>CalendarRow</code>.
	* @return	<code>this</code> to allow method chaining
	*/
	public function updateCurrentTimeVisualization( ):sap.ui.unified.CalendarRow;
}

typedef CalendarRowArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Start date, as JavaScript Date object, of the row. As default, the current date is used.
	*/
	@:optional var startDate:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Number of displayed intervals. The size of the intervals is defined with <code>intervalType</code>
	*/
	@:optional var intervals:haxe.extern.EitherType<String,Int>;

	/**
	* Type of the intervals of the row. The default is one hour.
	*/
	@:optional var intervalType:haxe.extern.EitherType<String,sap.ui.unified.CalendarIntervalType>;

	/**
	* If set, subintervals are shown.

If the interval type is <code>Hour</code>, quarter hours are shown.

If the interval type is <code>Day</code>, hours are shown.

If the interval type is <code>Month</code>, days are shown.
	*/
	@:optional var showSubIntervals:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, interval headers are shown like specified in <code>showEmptyIntervalHeaders</code>.

If not set, no interval headers are shown even if <code>intervalHeaders</code> are assigned.
	*/
	@:optional var showIntervalHeaders:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, interval headers are shown even if no <code>intervalHeaders</code> are assigned to the visible time frame.

If not set, no interval headers are shown if no <code>intervalHeaders</code> are assigned.

<b>Note:</b> This property is only used if <code>showIntervalHeaders</code> is set to true.
	*/
	@:optional var showEmptyIntervalHeaders:haxe.extern.EitherType<String,Bool>;

	/**
	* If set, the provided weekdays are displayed as non-working days. Valid values inside the array are 0 to 6. (Other values will just be ignored.)

If not set, the weekend defined in the locale settings is displayed as non-working days.

<b>Note:</b> The non working days are only visualized if <code>intervalType</code> is set to day.
	*/
	@:optional var nonWorkingDays:Array<haxe.extern.EitherType<String,Int>>;

	/**
	* If set, the provided hours are displayed as non-working hours. Valid values inside the array are 0 to 23. (Other values will just be ignored.)

<b>Note:</b> The non working hours are only visualized if <code>intervalType</code> is set to hour.
	*/
	@:optional var nonWorkingHours:Array<haxe.extern.EitherType<String,Int>>;

	/**
	* Width of the row
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Height of the row
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* If set, the <code>CalendarRow</code> checks for resize by itself.

If a lot of <code>CalendarRow</code> controls are used in one container control (like <code>PlanningCalendar</code>). the resize checks should be done only by this container control. Then the container control should call <code>handleResize</code> of the <code>CalendarRow</code> if a resize happens.
	*/
	@:optional var checkResize:haxe.extern.EitherType<String,Bool>;

	/**
	* If set the <code>CalendarRow</code> triggers a periodic update to visualize the current time.

If a lot of <code>CalendarRow</code> controls are used in one container control (like <code>PlanningCalendar</code>) the periodic update should be triggered only by this container control. Then the container control should call <code>updateCurrentTimeVisualization</code> of the <code>CalendarRow</code> to update the visualization.
	*/
	@:optional var updateCurrentTime:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the mode in which the overlapping appointments are displayed.

<b>Note:</b> This property takes effect, only if the <code>intervalType</code> of the current calendar view is set to <code>sap.ui.unified.CalendarIntervalType.Month</code>. On phone devices this property is ignored, and the default value is applied.
	*/
	@:optional var groupAppointmentsMode:haxe.extern.EitherType<String,sap.ui.unified.GroupAppointmentsMode>;

	/**
	* If set the appointments without text (only title) are rendered with a smaller height.

<b>Note:</b> On phone devices this property is ignored, appointments are always rendered in full height to allow touching.
	*/
	@:optional var appointmentsReducedHeight:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the visualization of the <code>CalendarAppoinment</code>

<b>Note:</b> The real visualization depends on the used theme.
	*/
	@:optional var appointmentsVisualization:haxe.extern.EitherType<String,sap.ui.unified.CalendarAppointmentVisualization>;

    /**
    * Appointments to be displayed in the row. Appointments outside the visible time frame are not rendered.

<b>Note:</b> For performance reasons, only appointments in the visible time range or nearby should be assigned.
    */
	@:optional var appointments:Array<haxe.extern.EitherType<String,sap.ui.unified.CalendarAppointment>>;

    /**
    * Appointments to be displayed in the top of the intervals. The <code>intervalHeaders</code> are used to visualize public holidays and similar things.

Appointments outside the visible time frame are not rendered.

The <code>intervalHeaders</code> always fill whole intervals. If they are shorter than one interval, they are not displayed.

<b>Note:</b> For performance reasons, only appointments in the visible time range or nearby should be assigned.
    */
	@:optional var intervalHeaders:Array<haxe.extern.EitherType<String,sap.ui.unified.CalendarAppointment>>;

    /**
    * null
    */
	@:optional var groupAppointments:Array<haxe.extern.EitherType<String,sap.ui.unified.CalendarAppointment>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).

<b>Note</b> These labels are also assigned to the appointments.
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to the <code>CalendarLegend</code> explaining the colors of the <code>Appointments</code>.

<b>Note</b> The legend does not have to be rendered but must exist, and all required types must be assigned.
	*/
	@:optional var legend:haxe.extern.EitherType<String,sap.ui.unified.CalendarLegend>;

	/**
	* Fired if an interval was selected
	*/
	@:optional var intervalSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The <code>CalendarRow</code> should be left while navigating. (Arrow up or arrow down.) The caller should determine the next control to be focused
	*/
	@:optional var leaveRow:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired if an appointment was selected
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* <code>startDate</code> was changed while navigating in <code>CalendarRow</code>
	*/
	@:optional var startDateChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
