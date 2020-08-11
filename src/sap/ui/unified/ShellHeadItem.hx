package sap.ui.unified;

@:native("sap.ui.unified.ShellHeadItem")

/**
* Header Action item of the Shell.
*/
extern class ShellHeadItem extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ShellHeadItemArgs):Void {})
	public function new(?mSettings:ShellHeadItemArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.ShellHeadItem{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.ShellHeadItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.ui.unified.ShellHeadItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.ShellHeadItem</code> itself.

Event is fired when the user presses the item.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.ShellHeadItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.ShellHeadItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.ui.unified.ShellHeadItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.ShellHeadItem;

	/**
	* Creates a new subclass of class sap.ui.unified.ShellHeadItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getIcon icon}.

The icon of the item, either defined in the sap.ui.core.IconPool or a URI to a custom image. An icon must be set.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.ui.unified.ShellHeadItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSelected selected}.

Defines the toggle state in case the item represents a toggle button (see also property <code>toggleEnabled</code>).

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Gets current value of property {@link #getShowSeparator showSeparator}.

If set to true, a separator is displayed after the item.

Default value is <code>true</code>.
	* @return	Value of property <code>showSeparator</code>
	*/
	public function getShowSeparator( ):Bool;

	/**
	* Gets current value of property {@link #getToggleEnabled toggleEnabled}.

If set to true, the item represents a toggle button. The <code>selected</code> property can the be used to define the toggle state. Otherwise the item is displayed as action button. In this case the <code>selected</code> property is ignored.

Default value is <code>true</code>.
	* @return	Value of property <code>toggleEnabled</code>
	*/
	public function getToggleEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getVisible visible}.

Invisible items are not shown on the UI.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The icon of the item, either defined in the sap.ui.core.IconPool or a URI to a custom image. An icon must be set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.ui.unified.ShellHeadItem;

	/**
	* Sets a new value for property {@link #getSelected selected}.

Defines the toggle state in case the item represents a toggle button (see also property <code>toggleEnabled</code>).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSelected New value for property <code>selected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelected( ?bSelected:Bool):sap.ui.unified.ShellHeadItem;

	/**
	* Sets a new value for property {@link #getShowSeparator showSeparator}.

If set to true, a separator is displayed after the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowSeparator New value for property <code>showSeparator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSeparator( ?bShowSeparator:Bool):sap.ui.unified.ShellHeadItem;

	/**
	* Sets a new value for property {@link #getToggleEnabled toggleEnabled}.

If set to true, the item represents a toggle button. The <code>selected</code> property can the be used to define the toggle state. Otherwise the item is displayed as action button. In this case the <code>selected</code> property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bToggleEnabled New value for property <code>toggleEnabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToggleEnabled( ?bToggleEnabled:Bool):sap.ui.unified.ShellHeadItem;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Invisible items are not shown on the UI.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.ui.unified.ShellHeadItem;
}

typedef ShellHeadItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* If set to true, a separator is displayed after the item.
	*/
	@:optional var showSeparator:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the toggle state in case the item represents a toggle button (see also property <code>toggleEnabled</code>).
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to true, the item represents a toggle button. The <code>selected</code> property can the be used to define the toggle state. Otherwise the item is displayed as action button. In this case the <code>selected</code> property is ignored.
	*/
	@:optional var toggleEnabled:haxe.extern.EitherType<String,Bool>;

	/**
	* The icon of the item, either defined in the sap.ui.core.IconPool or a URI to a custom image. An icon must be set.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Invisible items are not shown on the UI.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the user presses the item.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
