package sap.m;

@:native("sap.m.SegmentedButtonItem")

/**
* Used for creating buttons for the {@link sap.m.SegmentedButton}. It is derived from the {@link sap.ui.core.Item}.
*/
extern class SegmentedButtonItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:SegmentedButtonItemArgs):Void {})
	public function new(?mSettings:SegmentedButtonItemArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.SegmentedButtonItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SegmentedButtonItem</code> itself.

Fires when the user clicks on an individual button.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SegmentedButtonItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SegmentedButtonItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.SegmentedButtonItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SegmentedButtonItem;

	/**
	* Creates a new subclass of class sap.m.SegmentedButtonItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getIcon icon}.

The icon, which belongs to the button. This can be a URI to an image or an icon font URI.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):String;

	/**
	* Returns a metadata object for class sap.m.SegmentedButtonItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Whether the button should be visible on the screen. If set to false, a placeholder is rendered instead of the real button.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Sets the width of the buttons.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The icon, which belongs to the button. This can be a URI to an image or an icon font URI.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:String):sap.m.SegmentedButtonItem;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Whether the button should be visible on the screen. If set to false, a placeholder is rendered instead of the real button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.m.SegmentedButtonItem;

	/**
	* Sets a new value for property {@link #getWidth width}.

Sets the width of the buttons.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.SegmentedButtonItem;
}

typedef SegmentedButtonItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* The icon, which belongs to the button. This can be a URI to an image or an icon font URI.
	*/
	@:optional var icon:String;

	/**
	* Whether the button should be visible on the screen. If set to false, a placeholder is rendered instead of the real button.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets the width of the buttons.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Fires when the user clicks on an individual button.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
