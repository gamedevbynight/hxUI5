package sap.f.cards;

@:native("sap.f.cards.Header")

/**
* Displays general information in the header of the {@link sap.f.Card}.

You can configure the title, subtitle, status text and icon, using the provided properties.

<b>Notes:</b> <ul> <li>You should always set a title.</li> <li>To show a KPI or any numeric information, use {@link sap.f.cards.NumericHeader} instead.</li> <ul>
*/
extern class Header extends sap.ui.core.Control implements sap.f.cards.IHeader
{
	@:overload(function(?sId:String, ?mSettings:HeaderArgs):Void {})
	public function new(?mSettings:HeaderArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.f.cards.Header</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.cards.Header</code> itself.

Fires when the user presses the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.cards.Header</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.cards.Header;

	/**
	* Destroys the toolbar in the aggregation {@link #getToolbar toolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyToolbar( ):sap.f.cards.Header;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.f.cards.Header</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.f.cards.Header;

	/**
	* Creates a new subclass of class sap.f.cards.Header with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getIconDisplayShape iconDisplayShape}.

Defines the shape of the icon.

Default value is <code>Circle</code>.
	* @return	Value of property <code>iconDisplayShape</code>
	*/
	public function getIconDisplayShape( ):sap.m.AvatarShape;

	/**
	* Gets current value of property {@link #getIconInitials iconInitials}.

Defines the initials of the icon.

Default value is <code>empty string</code>.
	* @return	Value of property <code>iconInitials</code>
	*/
	public function getIconInitials( ):String;

	/**
	* Gets current value of property {@link #getIconSrc iconSrc}.

Defines the icon source.

Default value is <code>empty string</code>.
	* @return	Value of property <code>iconSrc</code>
	*/
	public function getIconSrc( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.f.cards.Header.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getStatusText statusText}.

Defines the status text.

Default value is <code>empty string</code>.
	* @return	Value of property <code>statusText</code>
	*/
	public function getStatusText( ):String;

	/**
	* Gets current value of property {@link #getSubtitle subtitle}.

Defines the subtitle.

Default value is <code>empty string</code>.
	* @return	Value of property <code>subtitle</code>
	*/
	public function getSubtitle( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets content of aggregation {@link #getToolbar toolbar}.

Defines the toolbar.
	* @return	null
	*/
	public function getToolbar( ):sap.ui.core.Control;

	/**
	* null
	* @return	If the header is ready or not.
	*/
	public function isReady( ):Bool;

	/**
	* Sets a new value for property {@link #getIconDisplayShape iconDisplayShape}.

Defines the shape of the icon.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Circle</code>.
	* @param	sIconDisplayShape New value for property <code>iconDisplayShape</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDisplayShape( sIconDisplayShape:sap.m.AvatarShape):sap.f.cards.Header;

	/**
	* Sets a new value for property {@link #getIconInitials iconInitials}.

Defines the initials of the icon.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIconInitials New value for property <code>iconInitials</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconInitials( sIconInitials:String):sap.f.cards.Header;

	/**
	* Sets a new value for property {@link #getIconSrc iconSrc}.

Defines the icon source.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIconSrc New value for property <code>iconSrc</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconSrc( sIconSrc:sap.ui.core.URI):sap.f.cards.Header;

	/**
	* Sets a new value for property {@link #getStatusText statusText}.

Defines the status text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sStatusText New value for property <code>statusText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStatusText( sStatusText:String):sap.f.cards.Header;

	/**
	* Sets a new value for property {@link #getSubtitle subtitle}.

Defines the subtitle.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sSubtitle New value for property <code>subtitle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubtitle( sSubtitle:String):sap.f.cards.Header;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the title.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.f.cards.Header;

	/**
	* Sets the aggregated {@link #getToolbar toolbar}.
	* @param	oToolbar The toolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToolbar( oToolbar:sap.ui.core.Control):sap.f.cards.Header;
}

typedef HeaderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the title.
	*/
	@:optional var title:String;

	/**
	* Defines the subtitle.
	*/
	@:optional var subtitle:String;

	/**
	* Defines the status text.
	*/
	@:optional var statusText:String;

	/**
	* Defines the shape of the icon.
	*/
	@:optional var iconDisplayShape:haxe.extern.EitherType<String,sap.m.AvatarShape>;

	/**
	* Defines the icon source.
	*/
	@:optional var iconSrc:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the initials of the icon.
	*/
	@:optional var iconInitials:String;

    /**
    * Defines the toolbar.
    */
	@:optional var toolbar:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Defines the inner title control.
    */
	@:optional var _title:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * Defines the inner subtitle control.
    */
	@:optional var _subtitle:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * Defines the inner avatar control.
    */
	@:optional var _avatar:haxe.extern.EitherType<String,sap.f.Avatar>;

	/**
	* Fires when the user presses the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
