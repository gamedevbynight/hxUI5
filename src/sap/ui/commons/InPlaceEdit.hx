package sap.ui.commons;

@:native("sap.ui.commons.InPlaceEdit")

/**
* The InPlaceEdit is a functionality to have text in display mode that can be changed in place.
*/
extern class InPlaceEdit extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:InPlaceEditArgs):Void {})
	public function new(?mSettings:InPlaceEditArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.commons.InPlaceEdit</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.InPlaceEdit</code> itself.

Event is fired when the text in the field has changed AND the focus leaves the InPlaceEdit or the Enter key is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.InPlaceEdit</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.InPlaceEdit;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.ui.commons.InPlaceEdit</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.InPlaceEdit</code> itself.

This event if fired during typing into the InPlaceEdit and returns the currently entered value. This is not the content of the value property. The value property is only updated by ENTER and by leaving the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.InPlaceEdit</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.InPlaceEdit;

	/**
	* Clear the old text after a change to disable the undo functionality. If undoEnabled is false this has no effect.
	* @return	Void
	*/
	public function clearOldText( ):Void;

	/**
	* Destroys the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.commons.InPlaceEdit;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.commons.InPlaceEdit</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.InPlaceEdit;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.ui.commons.InPlaceEdit</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.InPlaceEdit;

	/**
	* Creates a new subclass of class sap.ui.commons.InPlaceEdit with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Content control of the InPlaceEdit. The following controls are allowed: TextField, ComboBox, DropdownBox and Link
	* @return	null
	*/
	public function getContent( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getDesign design}.

Defines the visual appearance of the control. Currently this is not supported for Labels.

Default value is <code>Standard</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.ui.commons.TextViewDesign;

	/**
	* Returns a metadata object for class sap.ui.commons.InPlaceEdit.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Returns the tooltip for this InPlaceEdit if any or an undefined value. The tooltip can either be a simple string or a subclass of {@link sap.ui.core.TooltipBase}.

Callers that are only interested in tooltips of type string (e.g. to render them as a <code>title</code> attribute), should call the convenience method {@link #getTooltip_AsString} instead. If they want to get a tooltip text no matter where it comes from (be it a string tooltip or the text from a TooltipBase instance) then they could call {@link #getTooltip_Text} instead.

If a content control is assigned to the InPlaceEdit the tooltip of this control is used. A directly set tooltip to the InPlaceEdit is ignored in this case.
	* @return	The tooltip for this Element.
	*/
	public function getTooltip( ):Dynamic;

	/**
	* Gets current value of property {@link #getUndoEnabled undoEnabled}.

If undo is enabled after changing the text an undo button appears.

Default value is <code>true</code>.
	* @return	Value of property <code>undoEnabled</code>
	*/
	public function getUndoEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Visualizes warnings or errors related to the InPlaceEdit. Possible values: Warning, Error, Success. If the content control has an own valueState property this will be used.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Sets the aggregated {@link #getContent content}.
	* @param	oContent The content to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( oContent:sap.ui.core.Control):sap.ui.commons.InPlaceEdit;

	/**
	* Sets a new value for property {@link #getDesign design}.

Defines the visual appearance of the control. Currently this is not supported for Labels.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( ?sDesign:sap.ui.commons.TextViewDesign):sap.ui.commons.InPlaceEdit;
	@:overload( function(oTooltip:String):sap.ui.commons.InPlaceEdit{ })

	/**
	* Sets a new tooltip for this InPlaceEdit. The tooltip can either be a simple string (which in most cases will be rendered as the <code>title</code> attribute of this Element) or an instance of {@link sap.ui.core.TooltipBase}.

If a new tooltip is set, any previously set tooltip is deactivated.

If a content control is assigned to the InPlaceEdit the tooltip of this control is used. A directly set tooltip to the InPlaceEdit is ignored in this case.
	* @param	oTooltip Tooltip as string or RichTooltip.
	* @return	<code>this</code> to allow method chaining
	*/
	public function setTooltip( oTooltip:sap.ui.core.TooltipBase):sap.ui.commons.InPlaceEdit;

	/**
	* Sets a new value for property {@link #getUndoEnabled undoEnabled}.

If undo is enabled after changing the text an undo button appears.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bUndoEnabled New value for property <code>undoEnabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUndoEnabled( ?bUndoEnabled:Bool):sap.ui.commons.InPlaceEdit;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Visualizes warnings or errors related to the InPlaceEdit. Possible values: Warning, Error, Success. If the content control has an own valueState property this will be used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.ui.commons.InPlaceEdit;
}

typedef InPlaceEditArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Visualizes warnings or errors related to the InPlaceEdit. Possible values: Warning, Error, Success. If the content control has an own valueState property this will be used.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* If undo is enabled after changing the text an undo button appears.
	*/
	@:optional var undoEnabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the visual appearance of the control. Currently this is not supported for Labels.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.ui.commons.TextViewDesign>;

    /**
    * Content control of the InPlaceEdit. The following controls are allowed: TextField, ComboBox, DropdownBox and Link
    */
	@:optional var content:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Event is fired when the text in the field has changed AND the focus leaves the InPlaceEdit or the Enter key is pressed.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event if fired during typing into the InPlaceEdit and returns the currently entered value. This is not the content of the value property. The value property is only updated by ENTER and by leaving the control.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
