package sap.m;

@:native("sap.m.FeedContent")

/**
* Displays a tile containing the text of the feed, a subheader, and a numeric value.
*/
extern class FeedContent extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:FeedContentArgs):Void {})
	public function new(?mSettings:FeedContentArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.FeedContent</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FeedContent</code> itself.

The event is triggered when the feed content is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FeedContent</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.FeedContent;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.FeedContent</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.FeedContent;

	/**
	* Creates a new subclass of class sap.m.FeedContent with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Returns a metadata object for class sap.m.FeedContent.
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
	* Gets current value of property {@link #getTruncateValueTo truncateValueTo}.

The number of characters to display for the value property.

Default value is <code>4</code>.
	* @return	Value of property <code>truncateValueTo</code>
	*/
	public function getTruncateValueTo( ):Int;

	/**
	* Gets current value of property {@link #getValue value}.

The actual value.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueColor valueColor}.

The semantic color of the value.
	* @return	Value of property <code>valueColor</code>
	*/
	public function getValueColor( ):sap.m.ValueColor;

	/**
	* Sets a new value for property {@link #getContentText contentText}.

The content text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentText New value for property <code>contentText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentText( sContentText:String):sap.m.FeedContent;

	/**
	* Sets a new value for property {@link #getSubheader subheader}.

The subheader.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSubheader New value for property <code>subheader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubheader( sSubheader:String):sap.m.FeedContent;

	/**
	* Sets a new value for property {@link #getTruncateValueTo truncateValueTo}.

The number of characters to display for the value property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>4</code>.
	* @param	iTruncateValueTo New value for property <code>truncateValueTo</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTruncateValueTo( iTruncateValueTo:Int):sap.m.FeedContent;

	/**
	* Sets a new value for property {@link #getValue value}.

The actual value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( sValue:String):sap.m.FeedContent;

	/**
	* Sets a new value for property {@link #getValueColor valueColor}.

The semantic color of the value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValueColor New value for property <code>valueColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueColor( sValueColor:sap.m.ValueColor):sap.m.FeedContent;
}

typedef FeedContentArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The content text.
	*/
	@:optional var contentText:String;

	/**
	* The subheader.
	*/
	@:optional var subheader:String;

	/**
	* The actual value.
	*/
	@:optional var value:String;

	/**
	* The semantic color of the value.
	*/
	@:optional var valueColor:haxe.extern.EitherType<String,sap.m.ValueColor>;

	/**
	* The number of characters to display for the value property.
	*/
	@:optional var truncateValueTo:haxe.extern.EitherType<String,Int>;

    /**
    * The hidden aggregation for the content text.
    */
	@:optional var _contentTextAgr:haxe.extern.EitherType<String,sap.m.Text>;

	/**
	* The event is triggered when the feed content is pressed.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
