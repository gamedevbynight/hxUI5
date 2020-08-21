package sap.ui.unified.calendar;

@:native("sap.ui.unified.calendar.Header")

/**
* renders a calendar header

The calendar header consists of 3 buttons where the text can be set and a previous and a next button. In the normal calendar the first button contains the displayed day, the second button the displayed month and the third button the displayed year.

<b>Note:</b> This is used inside the calendar. Not for standalone usage
*/
extern class Header extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:HeaderArgs):Void {})
	public function new(?mSettings:HeaderArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:pressButton0 pressButton0} event of this <code>sap.ui.unified.calendar.Header</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.Header</code> itself.

First button pressed (normally day)
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.Header</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPressButton0( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:pressButton1 pressButton1} event of this <code>sap.ui.unified.calendar.Header</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.Header</code> itself.

Second button pressed (normally month)
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.Header</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPressButton1( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:pressButton2 pressButton2} event of this <code>sap.ui.unified.calendar.Header</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.Header</code> itself.

Third button pressed (normally year)
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.Header</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPressButton2( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:pressNext pressNext} event of this <code>sap.ui.unified.calendar.Header</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.Header</code> itself.

Next button pressed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.Header</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPressNext( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:pressPrevious pressPrevious} event of this <code>sap.ui.unified.calendar.Header</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.calendar.Header</code> itself.

Previous button pressed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.calendar.Header</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPressPrevious( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:pressButton0 pressButton0} event of this <code>sap.ui.unified.calendar.Header</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPressButton0( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:pressButton1 pressButton1} event of this <code>sap.ui.unified.calendar.Header</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPressButton1( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:pressButton2 pressButton2} event of this <code>sap.ui.unified.calendar.Header</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPressButton2( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:pressNext pressNext} event of this <code>sap.ui.unified.calendar.Header</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPressNext( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:pressPrevious pressPrevious} event of this <code>sap.ui.unified.calendar.Header</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPressPrevious( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.calendar.Header;

	/**
	* Creates a new subclass of class sap.ui.unified.calendar.Header with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAdditionalTextButton0 additionalTextButton0}.

Additional text of the first button (normally day)
	* @return	Value of property <code>additionalTextButton0</code>
	*/
	public function getAdditionalTextButton0( ):String;

	/**
	* Gets current value of property {@link #getAdditionalTextButton1 additionalTextButton1}.

Additional text of the second button (normally month)
	* @return	Value of property <code>additionalTextButton1</code>
	*/
	public function getAdditionalTextButton1( ):String;

	/**
	* Gets current value of property {@link #getAdditionalTextButton2 additionalTextButton2}.

Additional text of the third button (normally year)
	* @return	Value of property <code>additionalTextButton2</code>
	*/
	public function getAdditionalTextButton2( ):String;

	/**
	* Gets current value of property {@link #getAriaLabelButton0 ariaLabelButton0}.

aria-label of the first button (normally day)
	* @return	Value of property <code>ariaLabelButton0</code>
	*/
	public function getAriaLabelButton0( ):String;

	/**
	* Gets current value of property {@link #getAriaLabelButton1 ariaLabelButton1}.

aria-label of the second button (normally month)
	* @return	Value of property <code>ariaLabelButton1</code>
	*/
	public function getAriaLabelButton1( ):String;

	/**
	* Gets current value of property {@link #getAriaLabelButton2 ariaLabelButton2}.

aria-label of the third button (normally year)
	* @return	Value of property <code>ariaLabelButton2</code>
	*/
	public function getAriaLabelButton2( ):String;

	/**
	* Gets current value of property {@link #getEnabledNext enabledNext}.

Enables the Next button

Default value is <code>true</code>.
	* @return	Value of property <code>enabledNext</code>
	*/
	public function getEnabledNext( ):Bool;

	/**
	* Gets current value of property {@link #getEnabledPrevious enabledPrevious}.

Enables the previous button

Default value is <code>true</code>.
	* @return	Value of property <code>enabledPrevious</code>
	*/
	public function getEnabledPrevious( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.unified.calendar.Header.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTextButton0 textButton0}.

Text of the first button (normally day)
	* @return	Value of property <code>textButton0</code>
	*/
	public function getTextButton0( ):String;

	/**
	* Gets current value of property {@link #getTextButton1 textButton1}.

Text of the second button (normally month)
	* @return	Value of property <code>textButton1</code>
	*/
	public function getTextButton1( ):String;

	/**
	* Gets current value of property {@link #getTextButton2 textButton2}.

Text of the third button (normally year)
	* @return	Value of property <code>textButton2</code>
	*/
	public function getTextButton2( ):String;

	/**
	* Gets current value of property {@link #getVisibleButton0 visibleButton0}.

If set, the first button will be displayed

<b>Note:</b> The default is set to false to be compatible to older versions

Default value is <code>false</code>.
	* @return	Value of property <code>visibleButton0</code>
	*/
	public function getVisibleButton0( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleButton1 visibleButton1}.

If set, the second button will be displayed

Default value is <code>true</code>.
	* @return	Value of property <code>visibleButton1</code>
	*/
	public function getVisibleButton1( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleButton2 visibleButton2}.

If set, the third button will be displayed

Default value is <code>true</code>.
	* @return	Value of property <code>visibleButton2</code>
	*/
	public function getVisibleButton2( ):Bool;

	/**
	* Sets a new value for property {@link #getAdditionalTextButton0 additionalTextButton0}.

Additional text of the first button (normally day)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAdditionalTextButton0 New value for property <code>additionalTextButton0</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdditionalTextButton0( sAdditionalTextButton0:String):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getAdditionalTextButton1 additionalTextButton1}.

Additional text of the second button (normally month)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAdditionalTextButton1 New value for property <code>additionalTextButton1</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdditionalTextButton1( sAdditionalTextButton1:String):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getAdditionalTextButton2 additionalTextButton2}.

Additional text of the third button (normally year)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAdditionalTextButton2 New value for property <code>additionalTextButton2</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdditionalTextButton2( sAdditionalTextButton2:String):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getAriaLabelButton0 ariaLabelButton0}.

aria-label of the first button (normally day)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAriaLabelButton0 New value for property <code>ariaLabelButton0</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAriaLabelButton0( sAriaLabelButton0:String):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getAriaLabelButton1 ariaLabelButton1}.

aria-label of the second button (normally month)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAriaLabelButton1 New value for property <code>ariaLabelButton1</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAriaLabelButton1( sAriaLabelButton1:String):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getAriaLabelButton2 ariaLabelButton2}.

aria-label of the third button (normally year)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAriaLabelButton2 New value for property <code>ariaLabelButton2</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAriaLabelButton2( sAriaLabelButton2:String):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getEnabledNext enabledNext}.

Enables the Next button

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabledNext New value for property <code>enabledNext</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabledNext( ?bEnabledNext:Bool):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getEnabledPrevious enabledPrevious}.

Enables the previous button

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabledPrevious New value for property <code>enabledPrevious</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabledPrevious( ?bEnabledPrevious:Bool):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getTextButton0 textButton0}.

Text of the first button (normally day)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTextButton0 New value for property <code>textButton0</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextButton0( sTextButton0:String):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getTextButton1 textButton1}.

Text of the second button (normally month)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTextButton1 New value for property <code>textButton1</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextButton1( sTextButton1:String):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getTextButton2 textButton2}.

Text of the third button (normally year)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTextButton2 New value for property <code>textButton2</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextButton2( sTextButton2:String):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getVisibleButton0 visibleButton0}.

If set, the first button will be displayed

<b>Note:</b> The default is set to false to be compatible to older versions

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bVisibleButton0 New value for property <code>visibleButton0</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleButton0( ?bVisibleButton0:Bool):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getVisibleButton1 visibleButton1}.

If set, the second button will be displayed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleButton1 New value for property <code>visibleButton1</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleButton1( ?bVisibleButton1:Bool):sap.ui.unified.calendar.Header;

	/**
	* Sets a new value for property {@link #getVisibleButton2 visibleButton2}.

If set, the third button will be displayed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleButton2 New value for property <code>visibleButton2</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleButton2( ?bVisibleButton2:Bool):sap.ui.unified.calendar.Header;
}

typedef HeaderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Text of the first button (normally day)
	*/
	@:optional var textButton0:String;

	/**
	* Additional text of the first button (normally day)
	*/
	@:optional var additionalTextButton0:String;

	/**
	* aria-label of the first button (normally day)
	*/
	@:optional var ariaLabelButton0:String;

	/**
	* If set, the first button will be displayed

<b>Note:</b> The default is set to false to be compatible to older versions
	*/
	@:optional var visibleButton0:haxe.extern.EitherType<String,Bool>;

	/**
	* Text of the second button (normally month)
	*/
	@:optional var textButton1:String;

	/**
	* Additional text of the second button (normally month)
	*/
	@:optional var additionalTextButton1:String;

	/**
	* aria-label of the second button (normally month)
	*/
	@:optional var ariaLabelButton1:String;

	/**
	* If set, the second button will be displayed
	*/
	@:optional var visibleButton1:haxe.extern.EitherType<String,Bool>;

	/**
	* Text of the third button (normally year)
	*/
	@:optional var textButton2:String;

	/**
	* Additional text of the third button (normally year)
	*/
	@:optional var additionalTextButton2:String;

	/**
	* aria-label of the third button (normally year)
	*/
	@:optional var ariaLabelButton2:String;

	/**
	* If set, the third button will be displayed
	*/
	@:optional var visibleButton2:haxe.extern.EitherType<String,Bool>;

	/**
	* Enables the previous button
	*/
	@:optional var enabledPrevious:haxe.extern.EitherType<String,Bool>;

	/**
	* Enables the Next button
	*/
	@:optional var enabledNext:haxe.extern.EitherType<String,Bool>;

	/**
	* First button pressed (normally day)
	*/
	@:optional var pressButton0:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Second button pressed (normally month)
	*/
	@:optional var pressButton1:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Third button pressed (normally year)
	*/
	@:optional var pressButton2:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Next button pressed
	*/
	@:optional var pressNext:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Previous button pressed
	*/
	@:optional var pressPrevious:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
