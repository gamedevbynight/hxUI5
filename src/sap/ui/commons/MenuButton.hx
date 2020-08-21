package sap.ui.commons;

@:native("sap.ui.commons.MenuButton")

/**
* Common button control that opens a menu when clicked by the user. The control provides an API for configuring the docking position of the menu.
*/
extern class MenuButton extends sap.ui.commons.Button
{
	@:overload(function(?sId:String, ?mSettings:MenuButtonArgs):Void {})
	public function new(?mSettings:MenuButtonArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemSelected itemSelected} event of this <code>sap.ui.commons.MenuButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.MenuButton</code> itself.

Event that is fired when a menu item is selected by the user
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.MenuButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemSelected( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.MenuButton;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.ui.commons.MenuButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.MenuButton</code> itself.

Event is fired when an item from the menu was selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.MenuButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.MenuButton;

	/**
	* Destroys the menu in the aggregation named <code>menu</code>.
	* @return	<code>this</code> to allow method chaining
	*/
	public function destroyMenu( ):sap.ui.commons.MenuButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemSelected itemSelected} event of this <code>sap.ui.commons.MenuButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemSelected( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.MenuButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.ui.commons.MenuButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> to allow method chaining
	*/
	public function detachPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.MenuButton;

	/**
	* Creates a new subclass of class sap.ui.commons.MenuButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.Button.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getDockButton dockButton}.

The position / edge (see sap.ui.core.Popup.Dock) of the button where the menu is docked. Default is 'begin bottom'.
	* @return	Value of property <code>dockButton</code>
	*/
	public function getDockButton( ):String;

	/**
	* Gets current value of property {@link #getDockMenu dockMenu}.

The position / edge (see sap.ui.core.Popup.Dock) of the menu which is docked to the button. Default is 'begin top'.
	* @return	Value of property <code>dockMenu</code>
	*/
	public function getDockMenu( ):String;

	/**
	* Gets content of aggregation {@link #getMenu menu}.

Menu that shall be opened when the button is clicked
	* @return	null
	*/
	public function getMenu( ):sap.ui.unified.Menu;

	/**
	* Returns a metadata object for class sap.ui.commons.MenuButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getDockButton dockButton}.

The position / edge (see sap.ui.core.Popup.Dock) of the button where the menu is docked. Default is 'begin bottom'.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDockButton New value for property <code>dockButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDockButton( ?sDockButton:String):sap.ui.commons.MenuButton;

	/**
	* Sets a new value for property {@link #getDockMenu dockMenu}.

The position / edge (see sap.ui.core.Popup.Dock) of the menu which is docked to the button. Default is 'begin top'.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDockMenu New value for property <code>dockMenu</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDockMenu( ?sDockMenu:String):sap.ui.commons.MenuButton;

	/**
	* Setter for the aggregated <code>menu</code>.
	* @param	oMenu The menu to be set to the menu aggregation
	* @return	<code>this</code> to allow method chaining
	*/
	public function setMenu( oMenu:sap.ui.unified.Menu):sap.ui.commons.MenuButton;
}

typedef MenuButtonArgs = sap.ui.commons.Button.ButtonArgs & {

	/**
	* The position / edge (see sap.ui.core.Popup.Dock) of the button where the menu is docked. Default is 'begin bottom'.
	*/
	@:optional var dockButton:String;

	/**
	* The position / edge (see sap.ui.core.Popup.Dock) of the menu which is docked to the button. Default is 'begin top'.
	*/
	@:optional var dockMenu:String;

    /**
    * Menu that shall be opened when the button is clicked
    */
	@:optional var menu:haxe.extern.EitherType<String,sap.ui.unified.Menu>;

	/**
	* Event that is fired when a menu item is selected by the user
	*/
	@:optional var itemSelected:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when an item from the menu was selected.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
