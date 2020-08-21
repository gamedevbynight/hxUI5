package sap.m;

@:native("sap.m.FeedListItemAction")

/**
* An action item of FeedListItem
*/
extern class FeedListItemAction extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:FeedListItemActionArgs):Void {})
	public function new(?mSettings:FeedListItemActionArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.FeedListItemAction</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FeedListItemAction</code> itself.

The <code>press</code> event is fired when the user triggers the corresponding action.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FeedListItemAction</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.FeedListItemAction;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.FeedListItemAction</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.FeedListItemAction;

	/**
	* Creates a new subclass of class sap.m.FeedListItemAction with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getIcon icon}.

The icon of the action.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getKey key}.

The key of the item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.m.FeedListItemAction.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

The text of the item. It is used as a tooltip and for accessibility reasons.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The icon of the action.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.m.FeedListItemAction;

	/**
	* Sets a new value for property {@link #getKey key}.

The key of the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( ?sKey:String):sap.m.FeedListItemAction;

	/**
	* Sets a new value for property {@link #getText text}.

The text of the item. It is used as a tooltip and for accessibility reasons.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.m.FeedListItemAction;
}

typedef FeedListItemActionArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The icon of the action.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* The text of the item. It is used as a tooltip and for accessibility reasons.
	*/
	@:optional var text:String;

	/**
	* The key of the item.
	*/
	@:optional var key:String;

	/**
	* The <code>press</code> event is fired when the user triggers the corresponding action.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
