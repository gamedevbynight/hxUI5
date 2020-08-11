package sap.m;

@:native("sap.m.ViewSettingsItem")

/**
* ViewSettingsItem is used for modelling filter behaviour in the ViewSettingsDialog. It is derived from a core Item, but does not support the base class properties "textDirection" and "enabled", setting these properties will not have any effects. Apps should use the core Item's property <code>key/</code> and provide a unique value for it. Not providing a key may lead to unexpected behavior of the sap.m.ViewSettingsDialog.
*/
extern class ViewSettingsItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:ViewSettingsItemArgs):Void {})
	public function new(?mSettings:ViewSettingsItemArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemPropertyChanged itemPropertyChanged} event of this <code>sap.m.ViewSettingsItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ViewSettingsItem</code> itself.

Let the outside world know that some of its properties has changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ViewSettingsItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemPropertyChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemPropertyChanged itemPropertyChanged} event of this <code>sap.m.ViewSettingsItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemPropertyChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ViewSettingsItem;

	/**
	* Creates a new subclass of class sap.m.ViewSettingsItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.ViewSettingsItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSelected selected}.

Selected state of the item. If set to "true", the item will be displayed as selected in the view settings dialog.

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Sets a new value for property {@link #getSelected selected}.

Selected state of the item. If set to "true", the item will be displayed as selected in the view settings dialog.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSelected New value for property <code>selected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelected( ?bSelected:Bool):sap.m.ViewSettingsItem;
}

typedef ViewSettingsItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* Selected state of the item. If set to "true", the item will be displayed as selected in the view settings dialog.
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

	/**
	* Let the outside world know that some of its properties has changed.
	*/
	@:optional var itemPropertyChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
