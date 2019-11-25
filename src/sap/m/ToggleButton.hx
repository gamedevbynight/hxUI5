package sap.m;

@:native("sap.m.ToggleButton")

/**
* An enhanced {@link sap.m.Button} that can be toggled between pressed and normal state.

Clicking or tapping a <code>ToggleButton</code> changes its state to <code>pressed</code>. The button returns to its initial state when the user clicks or taps it again.
*/
extern class ToggleButton extends sap.m.Button
{
	@:overload(function(?sId:String, ?mSettings:ToggleButtonArgs):Void {})
	public function new(?mSettings:ToggleButtonArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.ToggleButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ToggleButton</code> itself.

Fired when the user clicks or taps on the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ToggleButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ToggleButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.ToggleButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ToggleButton;

	/**
	* Creates a new subclass of class sap.m.ToggleButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Button.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.ToggleButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getPressed pressed}.

The property is “true” when the control is toggled. The default state of this property is "false".

Default value is <code>false</code>.
	* @return	Value of property <code>pressed</code>
	*/
	public function getPressed( ):Bool;

	/**
	* Sets a new value for property {@link #getPressed pressed}.

The property is “true” when the control is toggled. The default state of this property is "false".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPressed New value for property <code>pressed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPressed( bPressed:Bool):sap.m.ToggleButton;
}

typedef ToggleButtonArgs = sap.m.Button.ButtonArgs & {

	/**
	* The property is “true” when the control is toggled. The default state of this property is "false".
	*/
	@:optional var pressed:haxe.extern.EitherType<String,Bool>;

	/**
	* Fired when the user clicks or taps on the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
