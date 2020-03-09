package sap.m;

@:native("sap.m.NewsContent")

/**
* This control displays the news content text and subheader in a tile.
*/
extern class NewsContent extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:NewsContentArgs):Void {})
	public function new(?mSettings:NewsContentArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.NewsContent</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.NewsContent</code> itself.

The event is triggered when the News Content is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.NewsContent</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.NewsContent;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.NewsContent</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.NewsContent;

	/**
	* Creates a new subclass of class sap.m.NewsContent with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getContentText contentText}.

The content text.
	* @return	Value of property <code>contentText</code>
	*/
	public function getContentText( ):String;

	/**
	* Returns a metadata object for class sap.m.NewsContent.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSubheader subheader}.

The subheader.
	* @return	Value of property <code>subheader</code>
	*/
	public function getSubheader( ):String;

	/**
	* Sets a new value for property {@link #getContentText contentText}.

The content text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentText New value for property <code>contentText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentText( sContentText:String):sap.m.NewsContent;

	/**
	* Sets a new value for property {@link #getSubheader subheader}.

The subheader.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSubheader New value for property <code>subheader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubheader( sSubheader:String):sap.m.NewsContent;
}

typedef NewsContentArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The content text.
	*/
	@:optional var contentText:String;

	/**
	* The subheader.
	*/
	@:optional var subheader:String;

    /**
    * The hidden aggregation for the content text.
    */
	@:optional var _contentText:haxe.extern.EitherType<String,sap.m.Text>;

	/**
	* The event is triggered when the News Content is pressed.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
