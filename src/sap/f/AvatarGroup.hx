package sap.f;

@:native("sap.f.AvatarGroup")

/**
* Displays a group of avatars arranged horizontally. It is useful to visually showcase a group of related avatars, such as, project team members or employees.

<h3>Overview</h3>

The control allows you to display the avatars in different sizes, depending on your use case.

The <code>AvatarGroup</code> control has two group types: <ul> <li><code>Group</code> type: The avatars are displayed as partially overlapped on top of each other and the entire group has one click/tap area.</li> <li><code>Individual</code> type: The avatars are displayed side-by-side and each avatar has its own click/tap area.</li> </ul>

<h3>Responsive Behavior</h3>

When the available space is less than the width required to display all avatars, an overflow visualization appears as a button placed at the end with the same shape and size as the avatars. The visualization displays the number of avatars that have overflowed and are not currently visible.

<h3>Usage</h3>

Use the <code>AvatarGroup</code> if: <ul> <li>You want to display a group of avatars.</li> <li>You want to display several avatars which have something in common.</li> </ul>

Do not use the <code>AvatarGroup</code> if: <ul> <li>You want to display a single avatar.</li> <li>You want to display a gallery for simple images.</li> <li>You want to use it for other visual content than avatars.</li> </ul>
*/
extern class AvatarGroup extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:AvatarGroupArgs):Void {})
	public function new(?mSettings:AvatarGroupArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.f.AvatarGroupItem):sap.f.AvatarGroup;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.f.AvatarGroup</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.AvatarGroup</code> itself.

Fired when the user clicks or taps on the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.AvatarGroup</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.AvatarGroup;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.f.AvatarGroup;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.f.AvatarGroup</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.f.AvatarGroup;

	/**
	* Creates a new subclass of class sap.f.AvatarGroup with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAvatarDisplaySize avatarDisplaySize}.

Defines the display size of each avatar.

Default value is <code>S</code>.
	* @return	Value of property <code>avatarDisplaySize</code>
	*/
	public function getAvatarDisplaySize( ):sap.m.AvatarSize;

	/**
	* Gets current value of property {@link #getGroupType groupType}.

Defines the mode of the <code>AvatarGroup</code>.

Default value is <code>Group</code>.
	* @return	Value of property <code>groupType</code>
	*/
	public function getGroupType( ):sap.f.AvatarGroupType;

	/**
	* Gets content of aggregation {@link #getItems items}.

The <code>AvatarGroupItems</code> contained by the control.
	* @return	null
	*/
	public function getItems( ):Array<sap.f.AvatarGroupItem>;

	/**
	* Returns a metadata object for class sap.f.AvatarGroup.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Checks for the provided <code>sap.f.AvatarGroupItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.f.AvatarGroupItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.f.AvatarGroupItem, iIndex:Int):sap.f.AvatarGroup;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.f.AvatarGroupItem>;
	@:overload( function(vItem:Int):sap.f.AvatarGroupItem{ })
	@:overload( function(vItem:String):sap.f.AvatarGroupItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.f.AvatarGroupItem):sap.f.AvatarGroupItem;

	/**
	* Sets a new value for property {@link #getAvatarDisplaySize avatarDisplaySize}.

Defines the display size of each avatar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>S</code>.
	* @param	sAvatarDisplaySize New value for property <code>avatarDisplaySize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
<<<<<<< HEAD
	public function setAvatarDisplaySize( ?sAvatarDisplaySize:sap.m.AvatarSize):sap.f.AvatarGroup;
=======
	public function setAvatarDisplaySize( sAvatarDisplaySize:sap.m.AvatarSize):sap.f.AvatarGroup;
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11

	/**
	* Sets a new value for property {@link #getGroupType groupType}.

Defines the mode of the <code>AvatarGroup</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Group</code>.
	* @param	sGroupType New value for property <code>groupType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
<<<<<<< HEAD
	public function setGroupType( ?sGroupType:sap.f.AvatarGroupType):sap.f.AvatarGroup;
=======
	public function setGroupType( sGroupType:sap.f.AvatarGroupType):sap.f.AvatarGroup;
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
}

typedef AvatarGroupArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the mode of the <code>AvatarGroup</code>.
	*/
	@:optional var groupType:haxe.extern.EitherType<String,sap.f.AvatarGroupType>;

	/**
	* Defines the display size of each avatar.
	*/
	@:optional var avatarDisplaySize:haxe.extern.EitherType<String,sap.m.AvatarSize>;

    /**
    * The <code>AvatarGroupItems</code> contained by the control.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.f.AvatarGroupItem>>;

	/**
	* Fired when the user clicks or taps on the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
