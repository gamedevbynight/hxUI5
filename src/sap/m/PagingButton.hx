package sap.m;

@:native("sap.m.PagingButton")

/**
* Enables users to navigate between items/entities.
*/
extern class PagingButton extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:PagingButtonArgs):Void {})
	public function new(?mSettings:PagingButtonArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:positionChange positionChange} event of this <code>sap.m.PagingButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PagingButton</code> itself.

Fired when the current position is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PagingButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPositionChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PagingButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:positionChange positionChange} event of this <code>sap.m.PagingButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPositionChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.PagingButton;

	/**
	* Creates a new subclass of class sap.m.PagingButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getCount count}.

Determines the total count of items/entities that the control navigates through. The minimum number of items/entities is 1.

Default value is <code>1</code>.
	* @return	Value of property <code>count</code>
	*/
	public function getCount( ):Int;

	/**
	* Returns a metadata object for class sap.m.PagingButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNextButtonTooltip nextButtonTooltip}.

Determines the tooltip of the next button.

Default value is <code>empty string</code>.
	* @return	Value of property <code>nextButtonTooltip</code>
	*/
	public function getNextButtonTooltip( ):String;

	/**
	* Gets current value of property {@link #getPosition position}.

Determines the current position in the items/entities that the control navigates through. Starting (minimum) number is 1.

Default value is <code>1</code>.
	* @return	Value of property <code>position</code>
	*/
	public function getPosition( ):Int;

	/**
	* Gets current value of property {@link #getPreviousButtonTooltip previousButtonTooltip}.

Determines the tooltip of the previous button.

Default value is <code>empty string</code>.
	* @return	Value of property <code>previousButtonTooltip</code>
	*/
	public function getPreviousButtonTooltip( ):String;

	/**
	* Sets a new value for property {@link #getCount count}.

Determines the total count of items/entities that the control navigates through. The minimum number of items/entities is 1.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iCount New value for property <code>count</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCount( ?iCount:Int):sap.m.PagingButton;

	/**
	* Sets a new value for property {@link #getNextButtonTooltip nextButtonTooltip}.

Determines the tooltip of the next button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sNextButtonTooltip New value for property <code>nextButtonTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNextButtonTooltip( ?sNextButtonTooltip:String):sap.m.PagingButton;

	/**
	* Sets a new value for property {@link #getPosition position}.

Determines the current position in the items/entities that the control navigates through. Starting (minimum) number is 1.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iPosition New value for property <code>position</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPosition( ?iPosition:Int):sap.m.PagingButton;

	/**
	* Sets a new value for property {@link #getPreviousButtonTooltip previousButtonTooltip}.

Determines the tooltip of the previous button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sPreviousButtonTooltip New value for property <code>previousButtonTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPreviousButtonTooltip( ?sPreviousButtonTooltip:String):sap.m.PagingButton;
}

typedef PagingButtonArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the total count of items/entities that the control navigates through. The minimum number of items/entities is 1.
	*/
	@:optional var count:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the current position in the items/entities that the control navigates through. Starting (minimum) number is 1.
	*/
	@:optional var position:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the tooltip of the next button.
	*/
	@:optional var nextButtonTooltip:String;

	/**
	* Determines the tooltip of the previous button.
	*/
	@:optional var previousButtonTooltip:String;

    /**
    * null
    */
	@:optional var previousButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var nextButton:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* Fired when the current position is changed.
	*/
	@:optional var positionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
