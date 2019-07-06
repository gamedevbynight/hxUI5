package sap.ui.unified.calendar;

@:native("sap.ui.unified.calendar.MonthPicker")

/**
* renders a MonthPicker with ItemNavigation This is used inside the calendar. Not for stand alone usage
*/
extern class MonthPicker extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MonthPickerArgs):Void {})
	public function new(?mSettings:MonthPickerArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:pageChange pageChange} event of this <code>sap.ui.unified.calendar.MonthPicker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.MonthPicker</code> itself.

If less than 12 months are displayed the <code>pageChange</code> event is fired if the displayed months are changed by user navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.MonthPicker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPageChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthPicker;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.unified.calendar.MonthPicker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.MonthPicker</code> itself.

Month selection changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.MonthPicker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthPicker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:pageChange pageChange} event of this <code>sap.ui.unified.calendar.MonthPicker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPageChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthPicker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.unified.calendar.MonthPicker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.calendar.MonthPicker;

	/**
	* Creates a new subclass of class sap.ui.unified.calendar.MonthPicker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumns columns}.

number of months in each row The value must be between 0 and 12 (0 means just to have all months in one row, independent of the number)

Default value is <code>3</code>.
	* @return	Value of property <code>columns</code>
	*/
	public function getColumns( ):Int;

	/**
	* Returns a metadata object for class sap.ui.unified.calendar.MonthPicker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMonth month}.

The month is initial focused and selected The value must be between 0 and 11

Default value is <code>0</code>.
	* @return	Value of property <code>month</code>
	*/
	public function getMonth( ):Int;

	/**
	* Gets current value of property {@link #getMonths months}.

number of displayed months The value must be between 1 and 12

Default value is <code>12</code>.
	* @return	Value of property <code>months</code>
	*/
	public function getMonths( ):Int;

	/**
	* Gets current value of property {@link #getPrimaryCalendarType primaryCalendarType}.

If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.
	* @return	Value of property <code>primaryCalendarType</code>
	*/
	public function getPrimaryCalendarType( ):sap.ui.core.CalendarType;

	/**
	* displays the next page
	* @return	<code>this</code> to allow method chaining
	*/
	public function nextPage( ):sap.ui.unified.calendar.MonthPicker;

	/**
	* displays the previous page
	* @return	<code>this</code> to allow method chaining
	*/
	public function previousPage( ):sap.ui.unified.calendar.MonthPicker;

	/**
	* Sets a new value for property {@link #getColumns columns}.

number of months in each row The value must be between 0 and 12 (0 means just to have all months in one row, independent of the number)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>3</code>.
	* @param	iColumns New value for property <code>columns</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumns( iColumns:Int):sap.ui.unified.calendar.MonthPicker;

	/**
	* sets a minimum and maximum month
	* @param	iMin minimum month as integer (starting with 0)
	* @param	iMax maximum month as integer (starting with 0)
	* @return	<code>this</code> to allow method chaining
	*/
	public function setMinMax( ?iMin:Int, ?iMax:Int):sap.ui.unified.calendar.MonthPicker;

	/**
	* Sets a new value for property {@link #getMonth month}.

The month is initial focused and selected The value must be between 0 and 11

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMonth New value for property <code>month</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMonth( iMonth:Int):sap.ui.unified.calendar.MonthPicker;

	/**
	* Sets a new value for property {@link #getMonths months}.

number of displayed months The value must be between 1 and 12

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>12</code>.
	* @param	iMonths New value for property <code>months</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMonths( iMonths:Int):sap.ui.unified.calendar.MonthPicker;

	/**
	* Sets a new value for property {@link #getPrimaryCalendarType primaryCalendarType}.

If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPrimaryCalendarType New value for property <code>primaryCalendarType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPrimaryCalendarType( sPrimaryCalendarType:sap.ui.core.CalendarType):sap.ui.unified.calendar.MonthPicker;
}

typedef MonthPickerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The month is initial focused and selected The value must be between 0 and 11
	*/
	@:optional var month:haxe.extern.EitherType<String,Int>;

	/**
	* number of displayed months The value must be between 1 and 12
	*/
	@:optional var months:haxe.extern.EitherType<String,Int>;

	/**
	* number of months in each row The value must be between 0 and 12 (0 means just to have all months in one row, independent of the number)
	*/
	@:optional var columns:haxe.extern.EitherType<String,Int>;

	/**
	* If set, the calendar type is used for display. If not set, the calendar type of the global configuration is used.
	*/
	@:optional var primaryCalendarType:haxe.extern.EitherType<String,sap.ui.core.CalendarType>;

	/**
	* If less than 12 months are displayed the <code>pageChange</code> event is fired if the displayed months are changed by user navigation.
	*/
	@:optional var pageChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Month selection changed
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
