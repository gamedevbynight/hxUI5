package sap.m;

@:native("sap.m.WheelSlider")

/**
* Single select list slider with simple text values, that supports cyclic scrolling and expands/collapses upon user interaction.
*/
extern class WheelSlider extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:WheelSliderArgs):Void {})
	public function new(?mSettings:WheelSliderArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.core.Item):sap.m.WheelSlider;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:collapsed collapsed} event of this <code>sap.m.WheelSlider</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.WheelSlider</code> itself.

Fires when the slider is collapsed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.WheelSlider</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCollapsed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.WheelSlider;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:expanded expanded} event of this <code>sap.m.WheelSlider</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.WheelSlider</code> itself.

Fires when the slider is expanded.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.WheelSlider</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachExpanded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.WheelSlider;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectedKeyChange selectedKeyChange} event of this <code>sap.m.WheelSlider</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.WheelSlider</code> itself.

Fires when the selected key changes.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.WheelSlider</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectedKeyChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.WheelSlider;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.WheelSlider;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:collapsed collapsed} event of this <code>sap.m.WheelSlider</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCollapsed( fnFunction:()->Void, ?oListener:Dynamic):sap.m.WheelSlider;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:expanded expanded} event of this <code>sap.m.WheelSlider</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachExpanded( fnFunction:()->Void, ?oListener:Dynamic):sap.m.WheelSlider;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectedKeyChange selectedKeyChange} event of this <code>sap.m.WheelSlider</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectedKeyChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.WheelSlider;

	/**
	* Creates a new subclass of class sap.m.WheelSlider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getIsCyclic isCyclic}.

Indicates whether the slider supports cyclic scrolling.

Default value is <code>true</code>.
	* @return	Value of property <code>isCyclic</code>
	*/
	public function getIsCyclic( ):Bool;

	/**
	* Gets current value of property {@link #getIsExpanded isExpanded}.

Indicates whether the slider is currently expanded.

Default value is <code>false</code>.
	* @return	Value of property <code>isExpanded</code>
	*/
	public function getIsExpanded( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

The items of the slider.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Item>;

	/**
	* Gets current value of property {@link #getLabel label}.

Defines the descriptive text for the slider, placed as a label above it.
	* @return	Value of property <code>label</code>
	*/
	public function getLabel( ):String;

	/**
	* Returns a metadata object for class sap.m.WheelSlider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSelectedKey selectedKey}.

Defines the key of the currently selected value of the slider.
	* @return	Value of property <code>selectedKey</code>
	*/
	public function getSelectedKey( ):String;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.core.Item):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.m.WheelSlider;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.core.Item>;
	@:overload( function(vItem:Int):sap.ui.core.Item{ })
	@:overload( function(vItem:String):sap.ui.core.Item{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Sets a new value for property {@link #getIsCyclic isCyclic}.

Indicates whether the slider supports cyclic scrolling.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIsCyclic New value for property <code>isCyclic</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIsCyclic( bIsCyclic:Bool):sap.m.WheelSlider;

	/**
	* Sets a new value for property {@link #getIsExpanded isExpanded}.

Indicates whether the slider is currently expanded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIsExpanded New value for property <code>isExpanded</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIsExpanded( bIsExpanded:Bool):sap.m.WheelSlider;

	/**
	* Sets a new value for property {@link #getLabel label}.

Defines the descriptive text for the slider, placed as a label above it.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLabel New value for property <code>label</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabel( sLabel:String):sap.m.WheelSlider;

	/**
	* Sets a new value for property {@link #getSelectedKey selectedKey}.

Defines the key of the currently selected value of the slider.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSelectedKey New value for property <code>selectedKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedKey( sSelectedKey:String):sap.m.WheelSlider;
}

typedef WheelSliderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the key of the currently selected value of the slider.
	*/
	@:optional var selectedKey:String;

	/**
	* Indicates whether the slider supports cyclic scrolling.
	*/
	@:optional var isCyclic:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the descriptive text for the slider, placed as a label above it.
	*/
	@:optional var label:String;

	/**
	* Indicates whether the slider is currently expanded.
	*/
	@:optional var isExpanded:haxe.extern.EitherType<String,Bool>;

    /**
    * The items of the slider.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

    /**
    * The up arrow of the slider.
    */
	@:optional var _arrowUp:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * The down arrow of the slider.
    */
	@:optional var _arrowDown:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* Fires when the slider is collapsed.
	*/
	@:optional var collapsed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when the slider is expanded.
	*/
	@:optional var expanded:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when the selected key changes.
	*/
	@:optional var selectedKeyChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
