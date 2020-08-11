package sap.ui.commons;

@:native("sap.ui.commons.ApplicationHeader")

/**
* The application header control stands on the top of any application page. It consists of 4 areas: Logo area, Function area provided by application, Search area, Logout area.
*/
extern class ApplicationHeader extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ApplicationHeaderArgs):Void {})
	public function new(?mSettings:ApplicationHeaderArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:logoff logoff} event of this <code>sap.ui.commons.ApplicationHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.ApplicationHeader</code> itself.

Fires an event to log off the user from the application. No parameters.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.ApplicationHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLogoff( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.ApplicationHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:logoff logoff} event of this <code>sap.ui.commons.ApplicationHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLogoff( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.ApplicationHeader;

	/**
	* Creates a new subclass of class sap.ui.commons.ApplicationHeader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDisplayLogoff displayLogoff}.

Determines if the logoff area will be displayed at the right hand side of the application header.

Default value is <code>true</code>.
	* @return	Value of property <code>displayLogoff</code>
	*/
	public function getDisplayLogoff( ):Bool;

	/**
	* Gets current value of property {@link #getDisplayWelcome displayWelcome}.

Determines if the welcome text is displayed

Default value is <code>true</code>.
	* @return	Value of property <code>displayWelcome</code>
	*/
	public function getDisplayWelcome( ):Bool;

	/**
	* Gets current value of property {@link #getLogoSrc logoSrc}.

Path (src) to the logo icon to be displayed in the application header.
	* @return	Value of property <code>logoSrc</code>
	*/
	public function getLogoSrc( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getLogoText logoText}.

The text that will be displayed beside the logo in the application header. This property is optional.
	* @return	Value of property <code>logoText</code>
	*/
	public function getLogoText( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.ApplicationHeader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getUserName userName}.

User name that will be displayed beside the welcome text
	* @return	Value of property <code>userName</code>
	*/
	public function getUserName( ):String;

	/**
	* Sets a new value for property {@link #getDisplayLogoff displayLogoff}.

Determines if the logoff area will be displayed at the right hand side of the application header.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bDisplayLogoff New value for property <code>displayLogoff</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayLogoff( ?bDisplayLogoff:Bool):sap.ui.commons.ApplicationHeader;

	/**
	* Sets a new value for property {@link #getDisplayWelcome displayWelcome}.

Determines if the welcome text is displayed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bDisplayWelcome New value for property <code>displayWelcome</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayWelcome( ?bDisplayWelcome:Bool):sap.ui.commons.ApplicationHeader;

	/**
	* Sets a new value for property {@link #getLogoSrc logoSrc}.

Path (src) to the logo icon to be displayed in the application header.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLogoSrc New value for property <code>logoSrc</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLogoSrc( sLogoSrc:sap.ui.core.URI):sap.ui.commons.ApplicationHeader;

	/**
	* Sets a new value for property {@link #getLogoText logoText}.

The text that will be displayed beside the logo in the application header. This property is optional.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLogoText New value for property <code>logoText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLogoText( sLogoText:String):sap.ui.commons.ApplicationHeader;

	/**
	* Sets a new value for property {@link #getUserName userName}.

User name that will be displayed beside the welcome text

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUserName New value for property <code>userName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUserName( sUserName:String):sap.ui.commons.ApplicationHeader;
}

typedef ApplicationHeaderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Path (src) to the logo icon to be displayed in the application header.
	*/
	@:optional var logoSrc:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The text that will be displayed beside the logo in the application header. This property is optional.
	*/
	@:optional var logoText:String;

	/**
	* Determines if the logoff area will be displayed at the right hand side of the application header.
	*/
	@:optional var displayLogoff:haxe.extern.EitherType<String,Bool>;

	/**
	* User name that will be displayed beside the welcome text
	*/
	@:optional var userName:String;

	/**
	* Determines if the welcome text is displayed
	*/
	@:optional var displayWelcome:haxe.extern.EitherType<String,Bool>;

	/**
	* Fires an event to log off the user from the application. No parameters.
	*/
	@:optional var logoff:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
