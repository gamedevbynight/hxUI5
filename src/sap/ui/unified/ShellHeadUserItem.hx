package sap.ui.unified;

@:native("sap.ui.unified.ShellHeadUserItem")

/**
* User Header Action Item of the Shell.
*/
extern class ShellHeadUserItem extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ShellHeadUserItemArgs):Void {})
	public function new(?mSettings:ShellHeadUserItemArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.ShellHeadUserItem{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.ShellHeadUserItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.ui.unified.ShellHeadUserItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.ShellHeadUserItem</code> itself.

Event is fired when the user presses the button.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.ShellHeadUserItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.ShellHeadUserItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.ui.unified.ShellHeadUserItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.ShellHeadUserItem;

	/**
	* Creates a new subclass of class sap.ui.unified.ShellHeadUserItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getImage image}.

An image of the user, normally a URI to an image but also an icon from the sap.ui.core.IconPool is possible.
	* @return	Value of property <code>image</code>
	*/
	public function getImage( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.ui.unified.ShellHeadUserItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowPopupIndicator showPopupIndicator}.

The user item is intended to be used for user settings. Normally these settings are done via a Menu or Dialog. If this property is set to true an indicator for such a popup mechanismn is shown in the item.

Default value is <code>true</code>.
	* @return	Value of property <code>showPopupIndicator</code>
	*/
	public function getShowPopupIndicator( ):Bool;

	/**
	* Gets current value of property {@link #getUsername username}.

The name of the user.

Default value is <code>empty string</code>.
	* @return	Value of property <code>username</code>
	*/
	public function getUsername( ):String;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getImage image}.

An image of the user, normally a URI to an image but also an icon from the sap.ui.core.IconPool is possible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sImage New value for property <code>image</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImage( ?sImage:sap.ui.core.URI):sap.ui.unified.ShellHeadUserItem;

	/**
	* Sets a new value for property {@link #getShowPopupIndicator showPopupIndicator}.

The user item is intended to be used for user settings. Normally these settings are done via a Menu or Dialog. If this property is set to true an indicator for such a popup mechanismn is shown in the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowPopupIndicator New value for property <code>showPopupIndicator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowPopupIndicator( ?bShowPopupIndicator:Bool):sap.ui.unified.ShellHeadUserItem;

	/**
	* Sets a new value for property {@link #getUsername username}.

The name of the user.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sUsername New value for property <code>username</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUsername( ?sUsername:String):sap.ui.unified.ShellHeadUserItem;
}

typedef ShellHeadUserItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The name of the user.
	*/
	@:optional var username:String;

	/**
	* The user item is intended to be used for user settings. Normally these settings are done via a Menu or Dialog. If this property is set to true an indicator for such a popup mechanismn is shown in the item.
	*/
	@:optional var showPopupIndicator:haxe.extern.EitherType<String,Bool>;

	/**
	* An image of the user, normally a URI to an image but also an icon from the sap.ui.core.IconPool is possible.
	*/
	@:optional var image:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the user presses the button.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
