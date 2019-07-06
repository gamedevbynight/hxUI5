package sap.m;

@:native("sap.m.PullToRefresh")

/**
* PullToRefresh control. Put it as the first control in contents of a scroll container or a scrollable page. Do not place it into a page with disabled scrolling. On touch devices it gets hidden by default and when the user pulls down the page far enough, it gets visible and triggers the "refresh" event. In non-touch browsers where scrollbars are used for scrolling, it is always visible and triggers the "refresh" event when clicked.
*/
extern class PullToRefresh extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:PullToRefreshArgs):Void {})
	public function new(?mSettings:PullToRefreshArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:refresh refresh} event of this <code>sap.m.PullToRefresh</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PullToRefresh</code> itself.

Event indicates that the user has requested new data
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PullToRefresh</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRefresh( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PullToRefresh;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:refresh refresh} event of this <code>sap.m.PullToRefresh</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRefresh( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PullToRefresh;

	/**
	* Creates a new subclass of class sap.m.PullToRefresh with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCustomIcon customIcon}.

Provide a URI to a custom icon image to replace the SAP logo. Large images are scaled down to max 50px height.
	* @return	Value of property <code>customIcon</code>
	*/
	public function getCustomIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getDescription description}.

Optional description. May be used to inform a user, for example, when the list has been updated last time.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is the key for the application, set this value to false.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Returns a metadata object for class sap.m.PullToRefresh.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getShowIcon showIcon}.

Set to true to display an icon/logo. Icon must be set either in the customIcon property or in the CSS theme for the PullToRefresh control.

Default value is <code>false</code>.
	* @return	Value of property <code>showIcon</code>
	*/
	public function getShowIcon( ):Bool;

	/**
	* Hides the control and resets it to the normal state. In non-touch environments the control is not hidden.
	* @return	Void
	*/
	public function hide( ):Void;

	/**
	* Sets a new value for property {@link #getCustomIcon customIcon}.

Provide a URI to a custom icon image to replace the SAP logo. Large images are scaled down to max 50px height.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sCustomIcon New value for property <code>customIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomIcon( sCustomIcon:sap.ui.core.URI):sap.m.PullToRefresh;

	/**
	* Sets a new value for property {@link #getDescription description}.

Optional description. May be used to inform a user, for example, when the list has been updated last time.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( sDescription:String):sap.m.PullToRefresh;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is the key for the application, set this value to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( bIconDensityAware:Bool):sap.m.PullToRefresh;

	/**
	* Sets a new value for property {@link #getShowIcon showIcon}.

Set to true to display an icon/logo. Icon must be set either in the customIcon property or in the CSS theme for the PullToRefresh control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowIcon New value for property <code>showIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowIcon( bShowIcon:Bool):sap.m.PullToRefresh;
}

typedef PullToRefreshArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Optional description. May be used to inform a user, for example, when the list has been updated last time.
	*/
	@:optional var description:String;

	/**
	* Set to true to display an icon/logo. Icon must be set either in the customIcon property or in the CSS theme for the PullToRefresh control.
	*/
	@:optional var showIcon:haxe.extern.EitherType<String,Bool>;

	/**
	* Provide a URI to a custom icon image to replace the SAP logo. Large images are scaled down to max 50px height.
	*/
	@:optional var customIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is the key for the application, set this value to false.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Event indicates that the user has requested new data
	*/
	@:optional var refresh:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
