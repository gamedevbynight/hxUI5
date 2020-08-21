package sap.ui.core;

@:native("sap.ui.core.TooltipBase")

/**
* Abstract class that can be extended in order to implement any extended tooltip. For example, RichTooltip Control is based on it. It provides the opening/closing behavior and the main "text" property.
*/
extern class TooltipBase extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TooltipBaseArgs):Void {})
	public function new(?mSettings:TooltipBaseArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:closed closed} event of this <code>sap.ui.core.TooltipBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.TooltipBase</code> itself.

This event is fired when the Tooltip has been closed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.TooltipBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClosed( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.TooltipBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:closed closed} event of this <code>sap.ui.core.TooltipBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClosed( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.core.TooltipBase;

	/**
	* Creates a new subclass of class sap.ui.core.TooltipBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAtPosition atPosition}.

Optional. At position defines which position on the target control to align the positioned tooltip.

Default value is <code>'begin bottom'</code>.
	* @return	Value of property <code>atPosition</code>
	*/
	public function getAtPosition( ):sap.ui.core.Dock;

	/**
	* Gets current value of property {@link #getCloseDelay closeDelay}.

Closing delay of the tooltip in milliseconds

Default value is <code>100</code>.
	* @return	Value of property <code>closeDelay</code>
	*/
	public function getCloseDelay( ):Int;

	/**
	* Gets current value of property {@link #getCloseDuration closeDuration}.

Optional. Close Duration in milliseconds.

Default value is <code>200</code>.
	* @return	Value of property <code>closeDuration</code>
	*/
	public function getCloseDuration( ):Int;

	/**
	* Gets current value of property {@link #getCollision collision}.

Optional. Collision - when the positioned element overflows the window in some direction, move it to an alternative position.

Default value is <code>'flip'</code>.
	* @return	Value of property <code>collision</code>
	*/
	public function getCollision( ):sap.ui.core.Collision;

	/**
	* Returns a metadata object for class sap.ui.core.TooltipBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMyPosition myPosition}.

Optional. My position defines which position on the extended tooltip being positioned to align with the target control.

Default value is <code>'begin top'</code>.
	* @return	Value of property <code>myPosition</code>
	*/
	public function getMyPosition( ):sap.ui.core.Dock;

	/**
	* Gets current value of property {@link #getOffset offset}.

Optional. Offset adds these left-top values to the calculated position. Example: "10 3".

Default value is <code>'10 3'</code>.
	* @return	Value of property <code>offset</code>
	*/
	public function getOffset( ):String;

	/**
	* Gets current value of property {@link #getOpenDelay openDelay}.

Opening delay of the tooltip in milliseconds

Default value is <code>500</code>.
	* @return	Value of property <code>openDelay</code>
	*/
	public function getOpenDelay( ):Int;

	/**
	* Gets current value of property {@link #getOpenDuration openDuration}.

Optional. Open Duration in milliseconds.

Default value is <code>200</code>.
	* @return	Value of property <code>openDuration</code>
	*/
	public function getOpenDuration( ):Int;

	/**
	* Gets current value of property {@link #getText text}.

The text that is shown in the tooltip that extends the TooltipBase class, for example in RichTooltip.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getAtPosition atPosition}.

Optional. At position defines which position on the target control to align the positioned tooltip.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'begin bottom'</code>.
	* @param	sAtPosition New value for property <code>atPosition</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAtPosition( ?sAtPosition:sap.ui.core.Dock):sap.ui.core.TooltipBase;

	/**
	* Sets a new value for property {@link #getCloseDelay closeDelay}.

Closing delay of the tooltip in milliseconds

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100</code>.
	* @param	iCloseDelay New value for property <code>closeDelay</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCloseDelay( ?iCloseDelay:Int):sap.ui.core.TooltipBase;

	/**
	* Sets a new value for property {@link #getCloseDuration closeDuration}.

Optional. Close Duration in milliseconds.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>200</code>.
	* @param	iCloseDuration New value for property <code>closeDuration</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCloseDuration( ?iCloseDuration:Int):sap.ui.core.TooltipBase;

	/**
	* Sets a new value for property {@link #getCollision collision}.

Optional. Collision - when the positioned element overflows the window in some direction, move it to an alternative position.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'flip'</code>.
	* @param	sCollision New value for property <code>collision</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCollision( ?sCollision:sap.ui.core.Collision):sap.ui.core.TooltipBase;

	/**
	* Sets a new value for property {@link #getMyPosition myPosition}.

Optional. My position defines which position on the extended tooltip being positioned to align with the target control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'begin top'</code>.
	* @param	sMyPosition New value for property <code>myPosition</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMyPosition( ?sMyPosition:sap.ui.core.Dock):sap.ui.core.TooltipBase;

	/**
	* Sets a new value for property {@link #getOffset offset}.

Optional. Offset adds these left-top values to the calculated position. Example: "10 3".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'10 3'</code>.
	* @param	sOffset New value for property <code>offset</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOffset( ?sOffset:String):sap.ui.core.TooltipBase;

	/**
	* Sets a new value for property {@link #getOpenDelay openDelay}.

Opening delay of the tooltip in milliseconds

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>500</code>.
	* @param	iOpenDelay New value for property <code>openDelay</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOpenDelay( ?iOpenDelay:Int):sap.ui.core.TooltipBase;

	/**
	* Sets a new value for property {@link #getOpenDuration openDuration}.

Optional. Open Duration in milliseconds.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>200</code>.
	* @param	iOpenDuration New value for property <code>openDuration</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOpenDuration( ?iOpenDuration:Int):sap.ui.core.TooltipBase;

	/**
	* Sets a new value for property {@link #getText text}.

The text that is shown in the tooltip that extends the TooltipBase class, for example in RichTooltip.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.ui.core.TooltipBase;
}

typedef TooltipBaseArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The text that is shown in the tooltip that extends the TooltipBase class, for example in RichTooltip.
	*/
	@:optional var text:String;

	/**
	* Optional. Open Duration in milliseconds.
	*/
	@:optional var openDuration:haxe.extern.EitherType<String,Int>;

	/**
	* Optional. Close Duration in milliseconds.
	*/
	@:optional var closeDuration:haxe.extern.EitherType<String,Int>;

	/**
	* Optional. My position defines which position on the extended tooltip being positioned to align with the target control.
	*/
	@:optional var myPosition:haxe.extern.EitherType<String,sap.ui.core.Dock>;

	/**
	* Optional. At position defines which position on the target control to align the positioned tooltip.
	*/
	@:optional var atPosition:haxe.extern.EitherType<String,sap.ui.core.Dock>;

	/**
	* Optional. Offset adds these left-top values to the calculated position. Example: "10 3".
	*/
	@:optional var offset:String;

	/**
	* Optional. Collision - when the positioned element overflows the window in some direction, move it to an alternative position.
	*/
	@:optional var collision:haxe.extern.EitherType<String,sap.ui.core.Collision>;

	/**
	* Opening delay of the tooltip in milliseconds
	*/
	@:optional var openDelay:haxe.extern.EitherType<String,Int>;

	/**
	* Closing delay of the tooltip in milliseconds
	*/
	@:optional var closeDelay:haxe.extern.EitherType<String,Int>;

	/**
	* This event is fired when the Tooltip has been closed
	*/
	@:optional var closed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
