package sap.m;

@:native("sap.m.PlanningCalendar")

/**
* Displays rows with appointments for different entities (such as persons or teams) for the selected time interval.

<h3>Overview</h3>

You can use the <code>PlanningCalendar</code> to represent a calendar containing multiple rows with appointments, where each row represents a different person.

You can configure different time-interval views that the user can switch between, such as hours or days, and even a whole week/month. The available navigation allows the user to select a specific interval using a picker, or move to the previous/next interval using arrows.

<b>Note:</b> The <code>PlanningCalendar</code> uses parts of the <code>sap.ui.unified</code> library. This library will be loaded after the <code>PlanningCalendar</code>, if it wasn't loaded first. This could lead to a waiting time when a <code>PlanningCalendar</code> is used for the first time. To prevent this, apps that use the <code>PlanningCalendar</code> should also load the <code>sap.ui.unified</code> library.

<h3>Usage</h3>

The <code>PlanningCalendar</code> has the following structure from top to bottom:

<ul> <li>A toolbar where you can add your own buttons or other controls using the <code>toolbarContent</code> aggregation.</li> <li>A header containing a drop-down menu for selecting the {@link sap.m.PlanningCalendarView PlanningCalendarViews}, and navigation for moving through the intervals using arrows or selecting a specific interval with a picker. Custom views can be configured using the <code>views</code> aggregation. If not configured, the following set of default built-in views is available - Hours, Days, 1 Week, 1 Month, and Months. Setting a custom view(s) replaces the built-in ones.</li> <li>The rows of the <code>PlanningCalendar</code> that contain the assigned appointments. They can be configured with the <code>rows</code> aggregation, which is of type {@link sap.m.PlanningCalendarRow PlanningCalendarRow}.</li> </ul>

Since 1.48 the empty space in the cell that is below an appointment can be removed by adding the <code>sapUiCalendarAppFitVertically</code> CSS class to the <code>PlanningCalendar</code>. Please note that it should be used only for a <code>PlanningCalendar</code> with one appointment per day for a row that doesn't have interval headers set.

Since 1.44 alternating row colors can be suppressed by adding the <code>sapMPlanCalSuppressAlternatingRowColors</code> CSS class to the <code>PlanningCalendar</code>.

<h3>Responsive behavior</h3>

You can define the number of displayed intervals based on the size of the <code>PlanningCalendar</code> using the {@link sap.m.PlanningCalendarView PlanningCalendarView}'s properties.
*/
extern class PlanningCalendar extends sap.ui.core.Control
{

	/**
	* 
	* @param	sID ID for the new control, generated automatically if no ID is given
	* @param	mSettings Initial settings for the new control
	* @return	Object
	*/
	public function new( ?sID:String, ?mSettings:Dynamic):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.PlanningCalendar{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.PlanningCalendar;

	/**
	* Adds some row to the aggregation {@link #getRows rows}.
	* @param	oRow The row to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addRow( oRow:sap.m.PlanningCalendarRow):sap.m.PlanningCalendar;

	/**
	* Adds some specialDate to the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):sap.m.PlanningCalendar;

	/**
	* Adds some toolbarContent to the aggregation {@link #getToolbarContent toolbarContent}.
	* @param	oToolbarContent The toolbarContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addToolbarContent( oToolbarContent:sap.ui.core.Control):sap.m.PlanningCalendar;

	/**
	* Adds some view to the aggregation {@link #getViews views}.
	* @param	oView The view to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addView( oView:sap.m.PlanningCalendarView):sap.m.PlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:appointmentSelect appointmentSelect} event of this <code>sap.m.PlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendar</code> itself.

Fired if an appointment is selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAppointmentSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:intervalSelect intervalSelect} event of this <code>sap.m.PlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendar</code> itself.

Fired if an interval was selected in the calendar header or in the row.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachIntervalSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:rowHeaderClick rowHeaderClick} event of this <code>sap.m.PlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendar</code> itself.

Fires when a row header is clicked.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRowHeaderClick( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:rowSelectionChange rowSelectionChange} event of this <code>sap.m.PlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendar</code> itself.

Fires when row selection is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRowSelectionChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:startDateChange startDateChange} event of this <code>sap.m.PlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendar</code> itself.

<code>startDate</code> was changed while navigating in the <code>PlanningCalendar</code>. The new value can be obtained using the <code>sap.m.PlanningCalendar#getStartDate()</code> method.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStartDateChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:viewChange viewChange} event of this <code>sap.m.PlanningCalendar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PlanningCalendar</code> itself.

<code>viewKey</code> was changed by user interaction.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PlanningCalendar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachViewChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Destroys all the rows in the aggregation {@link #getRows rows}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRows( ):sap.m.PlanningCalendar;

	/**
	* Destroys all the specialDates in the aggregation {@link #getSpecialDates specialDates}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySpecialDates( ):sap.m.PlanningCalendar;

	/**
	* Destroys all the toolbarContent in the aggregation {@link #getToolbarContent toolbarContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyToolbarContent( ):sap.m.PlanningCalendar;

	/**
	* Destroys all the views in the aggregation {@link #getViews views}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyViews( ):sap.m.PlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:appointmentSelect appointmentSelect} event of this <code>sap.m.PlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAppointmentSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:intervalSelect intervalSelect} event of this <code>sap.m.PlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachIntervalSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:rowHeaderClick rowHeaderClick} event of this <code>sap.m.PlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRowHeaderClick( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:rowSelectionChange rowSelectionChange} event of this <code>sap.m.PlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRowSelectionChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:startDateChange startDateChange} event of this <code>sap.m.PlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStartDateChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:viewChange viewChange} event of this <code>sap.m.PlanningCalendar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachViewChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PlanningCalendar;

	/**
	* Creates a new subclass of class sap.m.PlanningCalendar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAppointmentsReducedHeight appointmentsReducedHeight}.

Determines whether the appointments that have only title without text are rendered with smaller height.

<b>Note:</b> On phone devices this property is ignored, appointments are always rendered in full height to facilitate touching.

Default value is <code>false</code>.
	* @return	Value of property <code>appointmentsReducedHeight</code>
	*/
	public function getAppointmentsReducedHeight( ):Bool;

	/**
	* Gets current value of property {@link #getAppointmentsVisualization appointmentsVisualization}.

Determines how the appointments are visualized depending on the used theme.

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
	* Gets current value of property {@link #getBuiltInViews builtInViews}.

Defines the list of predefined views as an array. The views should be specified by their keys.

The default predefined views and their keys are available at {@link sap.m.PlanningCalendarBuiltInView}.

<b>Note:</b> If set, all specified views will be displayed along with any custom views (if available). If not set and no custom views are available, all default views will be displayed. If not set and there are any custom views available, only the custom views will be displayed.

Default value is <code>[]</code>.
	* @return	Value of property <code>builtInViews</code>
	*/
	public function getBuiltInViews( ):Array<String>;

	/**
	* Getter for custom appointments sorter (if any).
	* @return	null
	*/
	public function getCustomAppointmentsSorterCallback( ):sap.m.PlanningCalendar.appointmentsSorterCallback;

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

Specifies the height of the <code>PlanningCalendar</code>. <b>Note:</b> If the set height is less than the displayed content, it will not be applied
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* ID of the element which is the current target of the association {@link #getLegend legend}, or <code>null</code>.
	* @return	null
	*/
	public function getLegend( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getMaxDate maxDate}.

Defines the maximum date that can be displayed and selected in the <code>PlanningCalendar</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>maxDate</code> is set to be before the current <code>minDate</code>, the <code>minDate</code> is set to the first date of the month in which the <code>maxDate</code> belongs.
	* @return	Value of property <code>maxDate</code>
	*/
	public function getMaxDate( ):Dynamic;

	/**
	* Returns a metadata object for class sap.m.PlanningCalendar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinDate minDate}.

Defines the minimum date that can be displayed and selected in the <code>PlanningCalendar</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>minDate</code> is set to be after the current <code>maxDate</code>, the <code>maxDate</code> is set to the last date of the month in which the <code>minDate</code> belongs.
	* @return	Value of property <code>minDate</code>
	*/
	public function getMinDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getNoDataText noDataText}.

Defines the text that is displayed when no {@link sap.m.PlanningCalendarRow PlanningCalendarRows} are assigned.
	* @return	Value of property <code>noDataText</code>
	*/
	public function getNoDataText( ):String;

	/**
	* Gets content of aggregation {@link #getRows rows}.

Rows of the <code>PlanningCalendar</code>.
	* @return	null
	*/
	public function getRows( ):Array<sap.m.PlanningCalendarRow>;

	/**
	* Holds the selected appointments. If no appointments are selected, an empty array is returned.
	* @return	Array of IDs of selected appointments
	*/
	public function getSelectedAppointments( ):Array<sap.ui.unified.CalendarAppointment>;

	/**
	* Returns an array containing the selected rows. If no row is selected, an empty array is returned.
	* @return	selected rows
	*/
	public function getSelectedRows( ):Array<sap.m.PlanningCalendarRow>;

	/**
	* Gets current value of property {@link #getShowDayNamesLine showDayNamesLine}.

Determines whether the day names are displayed in a separate line or inside the single days.

Default value is <code>false</code>.
	* @return	Value of property <code>showDayNamesLine</code>
	*/
	public function getShowDayNamesLine( ):Bool;

	/**
	* Gets current value of property {@link #getShowEmptyIntervalHeaders showEmptyIntervalHeaders}.

Determines whether the space (at the top of the intervals), where the assigned interval headers appear, should remain visible even when no interval headers are present in the visible time frame. If set to <code>false</code>, this space would collapse/disappear when no interval headers are assigned.

<b>Note:</b> This property takes effect, only if <code>showIntervalHeaders</code> is also set to <code>true</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>showEmptyIntervalHeaders</code>
	*/
	public function getShowEmptyIntervalHeaders( ):Bool;

	/**
	* Gets current value of property {@link #getShowIntervalHeaders showIntervalHeaders}.

Determines whether the assigned interval headers are displayed. You can assign them using the <code>intervalHeaders</code> aggregation of the {@link sap.m.PlanningCalendarRow PlanningCalendarRow}.

<b>Note:</b> If you set both <code>showIntervalHeaders</code> and <code>showEmptyIntervalHeaders</code> properties to <code>true</code>, the space (at the top of the intervals) where the assigned interval headers appear, will remain visible even if no interval headers are assigned.

Default value is <code>true</code>.
	* @return	Value of property <code>showIntervalHeaders</code>
	*/
	public function getShowIntervalHeaders( ):Bool;

	/**
	* Gets current value of property {@link #getShowRowHeaders showRowHeaders}.

Determines whether the column containing the headers of the {@link sap.m.PlanningCalendarRow PlanningCalendarRows} is displayed.

Default value is <code>true</code>.
	* @return	Value of property <code>showRowHeaders</code>
	*/
	public function getShowRowHeaders( ):Bool;

	/**
	* Gets current value of property {@link #getShowWeekNumbers showWeekNumbers}.

Determines if the week numbers are displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>showWeekNumbers</code>
	*/
	public function getShowWeekNumbers( ):Bool;

	/**
	* Gets current value of property {@link #getSingleSelection singleSelection}.

Determines whether only a single row can be selected.

Default value is <code>true</code>.
	* @return	Value of property <code>singleSelection</code>
	*/
	public function getSingleSelection( ):Bool;

	/**
	* Gets content of aggregation {@link #getSpecialDates specialDates}.

Special days in the header calendar visualized as date range with a type.

<b>Note:</b> If one day is assigned to more than one type, only the first type will be used.
	* @return	null
	*/
	public function getSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;

	/**
	* Gets current value of property {@link #getStartDate startDate}.

Determines the start date of the row, as a JavaScript date object. The current date is used as default.
	* @return	Value of property <code>startDate</code>
	*/
	public function getStartDate( ):Dynamic;

	/**
	* Gets current value of property {@link #getStickyHeader stickyHeader}.

Determines whether the header area will remain visible (fixed on top) when the rest of the content is scrolled out of view.

The sticky header behavior is automatically disabled on phones in landscape mode for better visibility of the content.

<b>Note:</b> There is limited browser support, hence the API is in experimental state. Browsers that currently support this feature are Chrome (desktop and mobile), Safari (desktop and mobile) and Edge 41.

There are also some known issues with respect to the scrolling behavior and focus handling. A few are given below:

When the PlanningCalendar is placed in certain layout containers, for example the <code>GridLayout</code> control, the column headers do not fix at the top of the viewport. Similar behavior is also observed with the <code>ObjectPage</code> control.

This API should not be used in production environment.

<b>Note:</b> The <code>stickyHeader</code> of the <code>PlanningCalendar</code> uses the <code>sticky</code> property of <code>sap.m.Table</code>. Therefore, all features and limitations of the property in <code>sap.m.Table</code> apply to the <code>PlanningCalendar</code> as well.

Default value is <code>false</code>.
	* @return	Value of property <code>stickyHeader</code>
	*/
	public function getStickyHeader( ):Bool;

	/**
	* Gets content of aggregation {@link #getToolbarContent toolbarContent}.

The content of the toolbar.
	* @return	null
	*/
	public function getToolbarContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getViewKey viewKey}.

Defines the key of the <code>PlanningCalendarView</code> used for the output.

<b>Note:</b> The default value is set <code>Hour</code>. If you are using your own views, the keys of these views should be used instead.

Default value is <code>sap.ui.unified.CalendarIntervalType.Hour</code>.
	* @return	Value of property <code>viewKey</code>
	*/
	public function getViewKey( ):String;

	/**
	* Gets content of aggregation {@link #getViews views}.

Views of the <code>PlanningCalendar</code>.

<b>Note:</b> If not set, all the default views are available. Their keys are defined in {@link sap.ui.unified.CalendarIntervalType}.
	* @return	null
	*/
	public function getViews( ):Array<sap.m.PlanningCalendarView>;

	/**
	* Gets current value of property {@link #getWidth width}.

Specifies the width of the <code>PlanningCalendar</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.PlanningCalendarRow</code> in the aggregation {@link #getRows rows}. and returns its index if found or -1 otherwise.
	* @param	oRow The row whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfRow( oRow:sap.m.PlanningCalendarRow):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.DateTypeRange</code> in the aggregation {@link #getSpecialDates specialDates}. and returns its index if found or -1 otherwise.
	* @param	oSpecialDate The specialDate whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getToolbarContent toolbarContent}. and returns its index if found or -1 otherwise.
	* @param	oToolbarContent The toolbarContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfToolbarContent( oToolbarContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.m.PlanningCalendarView</code> in the aggregation {@link #getViews views}. and returns its index if found or -1 otherwise.
	* @param	oView The view whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfView( oView:sap.m.PlanningCalendarView):Int;

	/**
	* Inserts a row into the aggregation {@link #getRows rows}.
	* @param	oRow The row to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the row should be inserted at; for a negative value of <code>iIndex</code>, the row is inserted at position 0; for a value greater than the current size of the aggregation, the row is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertRow( oRow:sap.m.PlanningCalendarRow, iIndex:Int):sap.m.PlanningCalendar;

	/**
	* Inserts a specialDate into the aggregation {@link #getSpecialDates specialDates}.
	* @param	oSpecialDate The specialDate to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the specialDate should be inserted at; for a negative value of <code>iIndex</code>, the specialDate is inserted at position 0; for a value greater than the current size of the aggregation, the specialDate is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSpecialDate( oSpecialDate:sap.ui.unified.DateTypeRange, iIndex:Int):sap.m.PlanningCalendar;

	/**
	* Inserts a toolbarContent into the aggregation {@link #getToolbarContent toolbarContent}.
	* @param	oToolbarContent The toolbarContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the toolbarContent should be inserted at; for a negative value of <code>iIndex</code>, the toolbarContent is inserted at position 0; for a value greater than the current size of the aggregation, the toolbarContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertToolbarContent( oToolbarContent:sap.ui.core.Control, iIndex:Int):sap.m.PlanningCalendar;

	/**
	* Inserts a view into the aggregation {@link #getViews views}.
	* @param	oView The view to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the view should be inserted at; for a negative value of <code>iIndex</code>, the view is inserted at position 0; for a value greater than the current size of the aggregation, the view is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertView( oView:sap.m.PlanningCalendarView, iIndex:Int):sap.m.PlanningCalendar;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getRows rows}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllRows( ):Array<sap.m.PlanningCalendarRow>;

	/**
	* Removes all the controls from the aggregation {@link #getSpecialDates specialDates}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSpecialDates( ):Array<sap.ui.unified.DateTypeRange>;

	/**
	* Removes all the controls from the aggregation {@link #getToolbarContent toolbarContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllToolbarContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getViews views}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllViews( ):Array<sap.m.PlanningCalendarView>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vRow:Int):sap.m.PlanningCalendarRow{ })
	@:overload( function(vRow:String):sap.m.PlanningCalendarRow{ })

	/**
	* Removes a row from the aggregation {@link #getRows rows}.
	* @param	vRow The row to remove or its index or id
	* @return	The removed row or <code>null</code>
	*/
	public function removeRow( vRow:sap.m.PlanningCalendarRow):sap.m.PlanningCalendarRow;
	@:overload( function(vSpecialDate:Int):sap.ui.unified.DateTypeRange{ })
	@:overload( function(vSpecialDate:String):sap.ui.unified.DateTypeRange{ })

	/**
	* Removes a specialDate from the aggregation {@link #getSpecialDates specialDates}.
	* @param	vSpecialDate The specialDate to remove or its index or id
	* @return	The removed specialDate or <code>null</code>
	*/
	public function removeSpecialDate( vSpecialDate:sap.ui.unified.DateTypeRange):sap.ui.unified.DateTypeRange;
	@:overload( function(vToolbarContent:Int):sap.ui.core.Control{ })
	@:overload( function(vToolbarContent:String):sap.ui.core.Control{ })

	/**
	* Removes a toolbarContent from the aggregation {@link #getToolbarContent toolbarContent}.
	* @param	vToolbarContent The toolbarContent to remove or its index or id
	* @return	The removed toolbarContent or <code>null</code>
	*/
	public function removeToolbarContent( vToolbarContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vView:Int):sap.m.PlanningCalendarView{ })
	@:overload( function(vView:String):sap.m.PlanningCalendarView{ })

	/**
	* Removes a view from the aggregation {@link #getViews views}.
	* @param	vView The view to remove or its index or id
	* @return	The removed view or <code>null</code>
	*/
	public function removeView( vView:sap.m.PlanningCalendarView):sap.m.PlanningCalendarView;

	/**
	* Selects or deselects all <code>PlanningCalendarRows</code>.

<b>Note:</b> Selection only works if <code>singleSelection</code> is set to <code>false</code>.
	* @param	bSelect Indicator showing whether <code>PlanningCalendarRows</code> should be selected or deselected
	* @return	<code>this</code> to allow method chaining
	*/
	public function selectAllRows( bSelect:Bool):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getAppointmentsReducedHeight appointmentsReducedHeight}.

Determines whether the appointments that have only title without text are rendered with smaller height.

<b>Note:</b> On phone devices this property is ignored, appointments are always rendered in full height to facilitate touching.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAppointmentsReducedHeight New value for property <code>appointmentsReducedHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAppointmentsReducedHeight( ?bAppointmentsReducedHeight:Bool):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getAppointmentsVisualization appointmentsVisualization}.

Determines how the appointments are visualized depending on the used theme.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sAppointmentsVisualization New value for property <code>appointmentsVisualization</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAppointmentsVisualization( ?sAppointmentsVisualization:sap.ui.unified.CalendarAppointmentVisualization):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getBuiltInViews builtInViews}.

Defines the list of predefined views as an array. The views should be specified by their keys.

The default predefined views and their keys are available at {@link sap.m.PlanningCalendarBuiltInView}.

<b>Note:</b> If set, all specified views will be displayed along with any custom views (if available). If not set and no custom views are available, all default views will be displayed. If not set and there are any custom views available, only the custom views will be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>[]</code>.
	* @param	sBuiltInViews New value for property <code>builtInViews</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBuiltInViews( ?sBuiltInViews:Array<String>):sap.m.PlanningCalendar;

	/**
	* Setter for custom sorting of appointments. If not used, the appointments will be sorted according to their duration vertically. For example, the start time and order to the X axis won't change.
	* @param	fnSorter null
	* @return	<code>this</code> for chaining
	*/
	public function setCustomAppointmentsSorterCallback( fnSorter:sap.m.PlanningCalendar.appointmentsSorterCallback):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getGroupAppointmentsMode groupAppointmentsMode}.

Defines the mode in which the overlapping appointments are displayed.

<b>Note:</b> This property takes effect, only if the <code>intervalType</code> of the current calendar view is set to <code>sap.ui.unified.CalendarIntervalType.Month</code>. On phone devices this property is ignored, and the default value is applied.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Collapsed</code>.
	* @param	sGroupAppointmentsMode New value for property <code>groupAppointmentsMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupAppointmentsMode( ?sGroupAppointmentsMode:sap.ui.unified.GroupAppointmentsMode):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getHeight height}.

Specifies the height of the <code>PlanningCalendar</code>. <b>Note:</b> If the set height is less than the displayed content, it will not be applied

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.PlanningCalendar;
	@:overload( function(oLegend:sap.ui.core.ID):sap.m.PlanningCalendar{ })

	/**
	* Sets the associated {@link #getLegend legend}.
	* @param	oLegend ID of an element which becomes the new target of this legend association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLegend( oLegend:sap.ui.unified.CalendarLegend):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getMaxDate maxDate}.

Defines the maximum date that can be displayed and selected in the <code>PlanningCalendar</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>maxDate</code> is set to be before the current <code>minDate</code>, the <code>minDate</code> is set to the first date of the month in which the <code>maxDate</code> belongs.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oMaxDate New value for property <code>maxDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxDate( oMaxDate:Dynamic):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getMinDate minDate}.

Defines the minimum date that can be displayed and selected in the <code>PlanningCalendar</code>. This must be a JavaScript date object.

<b>Note:</b> If the <code>minDate</code> is set to be after the current <code>maxDate</code>, the <code>maxDate</code> is set to the last date of the month in which the <code>minDate</code> belongs.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oMinDate New value for property <code>minDate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinDate( oMinDate:Dynamic):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getNoDataText noDataText}.

Defines the text that is displayed when no {@link sap.m.PlanningCalendarRow PlanningCalendarRows} are assigned.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNoDataText New value for property <code>noDataText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoDataText( sNoDataText:String):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getShowDayNamesLine showDayNamesLine}.

Determines whether the day names are displayed in a separate line or inside the single days.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowDayNamesLine New value for property <code>showDayNamesLine</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowDayNamesLine( ?bShowDayNamesLine:Bool):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getShowEmptyIntervalHeaders showEmptyIntervalHeaders}.

Determines whether the space (at the top of the intervals), where the assigned interval headers appear, should remain visible even when no interval headers are present in the visible time frame. If set to <code>false</code>, this space would collapse/disappear when no interval headers are assigned.

<b>Note:</b> This property takes effect, only if <code>showIntervalHeaders</code> is also set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowEmptyIntervalHeaders New value for property <code>showEmptyIntervalHeaders</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowEmptyIntervalHeaders( ?bShowEmptyIntervalHeaders:Bool):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getShowIntervalHeaders showIntervalHeaders}.

Determines whether the assigned interval headers are displayed. You can assign them using the <code>intervalHeaders</code> aggregation of the {@link sap.m.PlanningCalendarRow PlanningCalendarRow}.

<b>Note:</b> If you set both <code>showIntervalHeaders</code> and <code>showEmptyIntervalHeaders</code> properties to <code>true</code>, the space (at the top of the intervals) where the assigned interval headers appear, will remain visible even if no interval headers are assigned.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowIntervalHeaders New value for property <code>showIntervalHeaders</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowIntervalHeaders( ?bShowIntervalHeaders:Bool):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getShowRowHeaders showRowHeaders}.

Determines whether the column containing the headers of the {@link sap.m.PlanningCalendarRow PlanningCalendarRows} is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowRowHeaders New value for property <code>showRowHeaders</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowRowHeaders( ?bShowRowHeaders:Bool):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getShowWeekNumbers showWeekNumbers}.

Determines if the week numbers are displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowWeekNumbers New value for property <code>showWeekNumbers</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowWeekNumbers( ?bShowWeekNumbers:Bool):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getSingleSelection singleSelection}.

Determines whether only a single row can be selected.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSingleSelection New value for property <code>singleSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSingleSelection( ?bSingleSelection:Bool):sap.m.PlanningCalendar;

	/**
	* Sets the given date as start date. The current date is used as default. Depending on the current view the start date may be adjusted (for example, the week view shows always the first weekday of the same week as the given date).
	* @param	oDate the date to set as <code>sap.m.PlanningCalendar</code> <code>startDate</code>. May be changed(adjusted) if property <code>startDate</code> is adjusted. See remark about week view above.
	* @return	<code>this</code> to allow method chaining
	*/
	public function setStartDate( oDate:Date):sap.m.PlanningCalendar;

	/**
	* Sets the stickyHeader property.
	* @param	bStick Whether the header area will remain visible (fixed on top)
	* @return	this pointer for chaining
	*/
	public function setStickyHeader( bStick:Bool):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getViewKey viewKey}.

Defines the key of the <code>PlanningCalendarView</code> used for the output.

<b>Note:</b> The default value is set <code>Hour</code>. If you are using your own views, the keys of these views should be used instead.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>sap.ui.unified.CalendarIntervalType.Hour</code>.
	* @param	sViewKey New value for property <code>viewKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setViewKey( ?sViewKey:String):sap.m.PlanningCalendar;

	/**
	* Sets a new value for property {@link #getWidth width}.

Specifies the width of the <code>PlanningCalendar</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.PlanningCalendar;
}

