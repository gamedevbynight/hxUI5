package sap.m;

@:native("sap.m.P13nPanel")

/**
* An abstract base type for <code>panels</code> aggregation in <code>P13nDialog</code> control.
*/
extern class P13nPanel extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:P13nPanelArgs):Void {})
	public function new(?mSettings:P13nPanelArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.P13nItem):sap.m.P13nPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeNavigationTo beforeNavigationTo} event of this <code>sap.m.P13nPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nPanel</code> itself.

Due to performance the data of the panel can be requested in lazy mode e.g. when the panel is displayed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeNavigationTo( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nPanel;

	/**
	* This method defines the point in time before the panel becomes active.
	* @return	Void
	*/
	public function beforeNavigationTo( ):Void;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.P13nPanel;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.P13nPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeNavigationTo beforeNavigationTo} event of this <code>sap.m.P13nPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeNavigationTo( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nPanel;

	/**
	* Creates a new subclass of class sap.m.P13nPanel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getChangeNotifier changeNotifier}.

Callback which notifies a change on this panel.
	* @return	Value of property <code>changeNotifier</code>
	*/
	public function getChangeNotifier( ):Dynamic;

	/**
	* Gets content of aggregation {@link #getItems items}.

Defines personalization items (e.g. columns in the <code>P13nColumnsPanel</code>).
	* @return	null
	*/
	public function getItems( ):Array<sap.m.P13nItem>;

	/**
	* Returns a metadata object for class sap.m.P13nPanel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* This method can be overwritten by subclass in order to return a payload for Reset action
	* @return	Void
	*/
	public function getResetPayload( ):Void;

	/**
	* Gets current value of property {@link #getTitle title}.

Title text appears in the panel.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleLarge titleLarge}.

Large title text appears e.g. in dialog header in case that only one panel is shown.
	* @return	Value of property <code>titleLarge</code>
	*/
	public function getTitleLarge( ):String;

	/**
	* Gets current value of property {@link #getType type}.

Panel type for generic use. Due to extensibility reason the type of <code>type</code> property should be <code>string</code>. So it is feasible to add a custom panel without expanding the type.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):String;

	/**
	* Gets current value of property {@link #getValidationExecutor validationExecutor}.

Callback method which is called in order to validate end user entry.
	* @return	Value of property <code>validationExecutor</code>
	*/
	public function getValidationExecutor( ):Dynamic;

	/**
	* Gets current value of property {@link #getValidationListener validationListener}.

Callback method which is called in order to register for validation result.
	* @return	Value of property <code>validationListener</code>
	*/
	public function getValidationListener( ):Dynamic;

	/**
	* Gets current value of property {@link #getVerticalScrolling verticalScrolling}.

Enables the vertical Scrolling on the <code>P13nDialog</code> when the panel is shown.

Default value is <code>true</code>.
	* @return	Value of property <code>verticalScrolling</code>
	*/
	public function getVerticalScrolling( ):Bool;

	/**
	* Checks for the provided <code>sap.m.P13nItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.P13nItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.P13nItem, iIndex:Int):sap.m.P13nPanel;

	/**
	* This method can be overwritten by subclass in order to cleanup after navigation, e.g. to remove invalid content on the panel.
	* @return	Void
	*/
	public function onAfterNavigationFrom( ):Void;

	/**
	* This method can be overwritten by subclass in order to prevent navigation to another panel. This could be the case if some content on the panel is considered 'invalid'.
	* @return	true if it is allowed to navigate away from this panel, false if it is not allowed
	*/
	public function onBeforeNavigationFrom( ):Bool;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.P13nItem>;
	@:overload( function(vItem:Int):sap.m.P13nItem{ })
	@:overload( function(vItem:String):sap.m.P13nItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.P13nItem):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getChangeNotifier changeNotifier}.

Callback which notifies a change on this panel.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oChangeNotifier New value for property <code>changeNotifier</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setChangeNotifier( oChangeNotifier:Dynamic):sap.m.P13nPanel;

	/**
	* Sets a new value for property {@link #getTitle title}.

Title text appears in the panel.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.P13nPanel;

	/**
	* Sets a new value for property {@link #getTitleLarge titleLarge}.

Large title text appears e.g. in dialog header in case that only one panel is shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitleLarge New value for property <code>titleLarge</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleLarge( sTitleLarge:String):sap.m.P13nPanel;

	/**
	* Sets a new value for property {@link #getType type}.

Panel type for generic use. Due to extensibility reason the type of <code>type</code> property should be <code>string</code>. So it is feasible to add a custom panel without expanding the type.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:String):sap.m.P13nPanel;

	/**
	* Sets a new value for property {@link #getValidationExecutor validationExecutor}.

Callback method which is called in order to validate end user entry.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oValidationExecutor New value for property <code>validationExecutor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValidationExecutor( oValidationExecutor:Dynamic):sap.m.P13nPanel;

	/**
	* Sets a new value for property {@link #getValidationListener validationListener}.

Callback method which is called in order to register for validation result.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oValidationListener New value for property <code>validationListener</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValidationListener( oValidationListener:Dynamic):sap.m.P13nPanel;

	/**
	* Sets a new value for property {@link #getVerticalScrolling verticalScrolling}.

Enables the vertical Scrolling on the <code>P13nDialog</code> when the panel is shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVerticalScrolling New value for property <code>verticalScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVerticalScrolling( bVerticalScrolling:Bool):sap.m.P13nPanel;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.P13nPanel;
}

typedef P13nPanelArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Title text appears in the panel.
	*/
	@:optional var title:String;

	/**
	* Large title text appears e.g. in dialog header in case that only one panel is shown.
	*/
	@:optional var titleLarge:String;

	/**
	* Panel type for generic use. Due to extensibility reason the type of <code>type</code> property should be <code>string</code>. So it is feasible to add a custom panel without expanding the type.
	*/
	@:optional var type:String;

	/**
	* Enables the vertical Scrolling on the <code>P13nDialog</code> when the panel is shown.
	*/
	@:optional var verticalScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* Callback method which is called in order to validate end user entry.
	*/
	@:optional var validationExecutor:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Callback method which is called in order to register for validation result.
	*/
	@:optional var validationListener:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Callback which notifies a change on this panel.
	*/
	@:optional var changeNotifier:haxe.extern.EitherType<String,Dynamic>;

    /**
    * Defines personalization items (e.g. columns in the <code>P13nColumnsPanel</code>).
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.P13nItem>>;

	/**
	* Due to performance the data of the panel can be requested in lazy mode e.g. when the panel is displayed
	*/
	@:optional var beforeNavigationTo:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
