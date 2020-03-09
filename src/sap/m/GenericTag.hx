package sap.m;

@:native("sap.m.GenericTag")

/**
* The <code>sap.m.GenericTag</code> control displays app-specific, essential information. <h3>Structure</h3> The control consists of four different parts: <ul> <li>Status indicator with semantic colors (required)</li> <li>Icon that is displayed in the same color as the status indicator (optional)</li> <li>Text that is truncated automatically (required)</li> <li>Content area that can display either a control of type {@link sap.m.ObjectNumber} or a warning icon (optional)</li> </ul>
*/
extern class GenericTag extends sap.ui.core.Control implements sap.m.IOverflowToolbarContent implements sap.m.IOverflowToolbarFlexibleContent
{
	@:overload(function(?sId:String, ?mSettings:GenericTagArgs):Void {})
	public function new(?mSettings:GenericTagArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.GenericTag</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.GenericTag</code> itself.

Fired when the user clicks/taps on the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.GenericTag</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.GenericTag;

	/**
	* Destroys the value in the aggregation {@link #getValue value}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyValue( ):sap.m.GenericTag;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.GenericTag</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.GenericTag;

	/**
	* Creates a new subclass of class sap.m.GenericTag with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDesign design}.

Determines the visual mode of the control.

Default value is <code>Full</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.m.GenericTagDesign;

	/**
	* Returns a metadata object for class sap.m.GenericTag.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets the behavior of the <code>GenericTag</code> inside an <code>OverflowToolbar</code> configuration.
	* @return	Configuration information for the <code>sap.m.IOverflowToolbarContent</code> interface.
	*/
	public function getOverflowToolbarConfig( ):Dynamic;

	/**
	* Gets current value of property {@link #getStatus status}.

Determines the control status that is represented in different colors, including the color bar and the color and type of the displayed icon.

Default value is <code>None</code>.
	* @return	Value of property <code>status</code>
	*/
	public function getStatus( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getText text}.

Defines the text rendered by the control. It's a value-descriptive text rendered on one line.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets content of aggregation {@link #getValue value}.

Numeric value rendered by the control.
	* @return	null
	*/
	public function getValue( ):sap.m.ObjectNumber;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Determines the state of the control.

<b>Note:</b> When the error state is set, a warning type of icon is displayed that overrides the control set through the <code>value</code> aggregation.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.m.GenericTagValueState;

	/**
	* Sets a new value for property {@link #getDesign design}.

Determines the visual mode of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Full</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( sDesign:sap.m.GenericTagDesign):sap.m.GenericTag;

	/**
	* Sets the <code>status</code> property.

Default value is <code>None</code>.
	* @param	sStatus New value for property <code>status</code>.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setStatus( sStatus:sap.ui.core.ValueState):sap.m.GenericTag;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the text rendered by the control. It's a value-descriptive text rendered on one line.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.GenericTag;

	/**
	* Sets the aggregated {@link #getValue value}.
	* @param	oValue The value to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( oValue:sap.m.ObjectNumber):sap.m.GenericTag;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Determines the state of the control.

<b>Note:</b> When the error state is set, a warning type of icon is displayed that overrides the control set through the <code>value</code> aggregation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( sValueState:sap.m.GenericTagValueState):sap.m.GenericTag;
}

typedef GenericTagArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the text rendered by the control. It's a value-descriptive text rendered on one line.
	*/
	@:optional var text:String;

	/**
	* Determines the control status that is represented in different colors, including the color bar and the color and type of the displayed icon.
	*/
	@:optional var status:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Determines the visual mode of the control.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.m.GenericTagDesign>;

	/**
	* Determines the state of the control.

<b>Note:</b> When the error state is set, a warning type of icon is displayed that overrides the control set through the <code>value</code> aggregation.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.m.GenericTagValueState>;

    /**
    * Numeric value rendered by the control.
    */
	@:optional var value:haxe.extern.EitherType<String,sap.m.ObjectNumber>;

    /**
    * Icon indicating the status of the control.
    */
	@:optional var _statusIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * Icon for visualization when error is thrown.
    */
	@:optional var _errorIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

	/**
	* Fired when the user clicks/taps on the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
