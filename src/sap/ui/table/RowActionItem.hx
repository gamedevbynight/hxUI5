package sap.ui.table;

@:native("sap.ui.table.RowActionItem")

/**
* An action items to be displayed in a <code>RowAction</code> control. This element must only be used in the context of the <code>sap.ui.table.Table</code> control to define row actions.
*/
extern class RowActionItem extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:RowActionItemArgs):Void {})
	public function new(?mSettings:RowActionItemArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.ui.table.RowActionItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.RowActionItem</code> itself.

The <code>press</code> is fired when the user triggers the corresponding action.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.RowActionItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.table.RowActionItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.ui.table.RowActionItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.table.RowActionItem;

	/**
	* Creates a new subclass of class sap.ui.table.RowActionItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getIcon icon}.

The icon of the item.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.ui.table.RowActionItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

The text of the item. It is used as tooltip and for accessibility purposes.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getType type}.

The type of the item. Setting the type ensures default values for the properties <code>icon</code> and <code>text</code>. If an icon or text is set explicitly this setting is used.

Default value is <code>Custom</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.ui.table.RowActionType;

	/**
	* Gets current value of property {@link #getVisible visible}.

Whether the item should be visible on the screen.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The icon of the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.ui.table.RowActionItem;

	/**
	* Sets a new value for property {@link #getText text}.

The text of the item. It is used as tooltip and for accessibility purposes.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.ui.table.RowActionItem;

	/**
	* Sets a new value for property {@link #getType type}.

The type of the item. Setting the type ensures default values for the properties <code>icon</code> and <code>text</code>. If an icon or text is set explicitly this setting is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Custom</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:sap.ui.table.RowActionType):sap.ui.table.RowActionItem;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Whether the item should be visible on the screen.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.ui.table.RowActionItem;
}

typedef RowActionItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The icon of the item.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Whether the item should be visible on the screen.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* The text of the item. It is used as tooltip and for accessibility purposes.
	*/
	@:optional var text:String;

	/**
	* The type of the item. Setting the type ensures default values for the properties <code>icon</code> and <code>text</code>. If an icon or text is set explicitly this setting is used.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.ui.table.RowActionType>;

	/**
	* The <code>press</code> is fired when the user triggers the corresponding action.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
