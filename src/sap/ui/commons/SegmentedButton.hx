package sap.ui.commons;

@:native("sap.ui.commons.SegmentedButton")

/**
* The SegmentedButton provides a group of multiple buttons. Only one button can be active. The behaviour is more ore less like a radio button group.
*/
extern class SegmentedButton extends sap.ui.core.Control implements sap.ui.commons.ToolbarItem implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:SegmentedButtonArgs):Void {})
	public function new(?mSettings:SegmentedButtonArgs):Void;

	/**
	* Adds some button to the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addButton( oButton:sap.ui.commons.Button):sap.ui.commons.SegmentedButton;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.commons.SegmentedButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.SegmentedButton</code> itself.

Event fired when button selected
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.SegmentedButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.SegmentedButton;

	/**
	* Destroys all the buttons in the aggregation {@link #getButtons buttons}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyButtons( ):sap.ui.commons.SegmentedButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.commons.SegmentedButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.SegmentedButton;

	/**
	* Creates a new subclass of class sap.ui.commons.SegmentedButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getButtons buttons}.

Buttons
	* @return	null
	*/
	public function getButtons( ):Array<sap.ui.commons.Button>;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

enabled

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.commons.SegmentedButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedButton selectedButton}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedButton( ):sap.ui.core.ID;

	/**
	* Checks for the provided <code>sap.ui.commons.Button</code> in the aggregation {@link #getButtons buttons}. and returns its index if found or -1 otherwise.
	* @param	oButton The button whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfButton( oButton:sap.ui.commons.Button):Int;

	/**
	* Inserts a button into the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the button should be inserted at; for a negative value of <code>iIndex</code>, the button is inserted at position 0; for a value greater than the current size of the aggregation, the button is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertButton( oButton:sap.ui.commons.Button, iIndex:Int):sap.ui.commons.SegmentedButton;

	/**
	* Removes all the controls from the aggregation {@link #getButtons buttons}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllButtons( ):Array<sap.ui.commons.Button>;
	@:overload( function(vButton:Int):sap.ui.commons.Button{ })
	@:overload( function(vButton:String):sap.ui.commons.Button{ })

	/**
	* Removes a button from the aggregation {@link #getButtons buttons}.
	* @param	vButton The button to remove or its index or id
	* @return	The removed button or <code>null</code>
	*/
	public function removeButton( vButton:sap.ui.commons.Button):sap.ui.commons.Button;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

enabled

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.commons.SegmentedButton;
	@:overload( function(oSelectedButton:sap.ui.core.ID):sap.ui.commons.SegmentedButton{ })

	/**
	* Sets the associated {@link #getSelectedButton selectedButton}.
	* @param	oSelectedButton ID of an element which becomes the new target of this selectedButton association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedButton( oSelectedButton:sap.ui.commons.Button):sap.ui.commons.SegmentedButton;
}

typedef SegmentedButtonArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* enabled
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

    /**
    * Buttons
    */
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.ui.commons.Button>>;

	/**
	* Selected Button
	*/
	@:optional var selectedButton:haxe.extern.EitherType<String,sap.ui.commons.Button>;

	/**
	* Event fired when button selected
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
