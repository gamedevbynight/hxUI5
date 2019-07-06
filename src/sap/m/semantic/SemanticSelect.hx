package sap.m.semantic;

@:native("sap.m.semantic.SemanticSelect")

/**
* A semantic select is a {@link sap.m.Select} eligible for aggregation content of a {@link sap.m.semantic.SemanticPage}.
*/
extern class SemanticSelect extends sap.m.semantic.SemanticControl
{
	@:overload(function(?sId:String, ?mSettings:SemanticSelectArgs):Void {})
	public function new(?mSettings:SemanticSelectArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.core.Item):sap.m.semantic.SemanticSelect;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.semantic.SemanticSelect</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.semantic.SemanticSelect</code> itself.

See {@link sap.m.Select#event:change}
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.semantic.SemanticSelect</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.semantic.SemanticSelect;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.semantic.SemanticSelect;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.semantic.SemanticSelect;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.semantic.SemanticSelect</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.semantic.SemanticSelect;

	/**
	* Creates a new subclass of class sap.m.semantic.SemanticSelect with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticControl.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

See {@link sap.m.Select#getEnabled}

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

See {@link sap.m.Select#getItems}
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.core.Item>;

	/**
	* Returns a metadata object for class sap.m.semantic.SemanticSelect.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedItem selectedItem}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedItem( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getSelectedKey selectedKey}.

See {@link sap.m.Select#getSelectedKey}

Default value is <code>empty string</code>.
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
	public function insertItem( oItem:sap.ui.core.Item, iIndex:Int):sap.m.semantic.SemanticSelect;

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
	* Sets a new value for property {@link #getEnabled enabled}.

See {@link sap.m.Select#getEnabled}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.m.semantic.SemanticSelect;
	@:overload( function(oSelectedItem:sap.ui.core.ID):sap.m.semantic.SemanticSelect{ })

	/**
	* Sets the associated {@link #getSelectedItem selectedItem}.
	* @param	oSelectedItem ID of an element which becomes the new target of this selectedItem association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedItem( oSelectedItem:sap.ui.core.Item):sap.m.semantic.SemanticSelect;

	/**
	* Sets a new value for property {@link #getSelectedKey selectedKey}.

See {@link sap.m.Select#getSelectedKey}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sSelectedKey New value for property <code>selectedKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedKey( sSelectedKey:String):sap.m.semantic.SemanticSelect;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.semantic.SemanticSelect;
}

typedef SemanticSelectArgs = sap.m.semantic.SemanticControl.SemanticControlArgs & {

	/**
	* See {@link sap.m.Select#getEnabled}
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* See {@link sap.m.Select#getSelectedKey}
	*/
	@:optional var selectedKey:String;

    /**
    * See {@link sap.m.Select#getItems}
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

	/**
	* See {@link sap.m.Select#getSelectedItem}
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.ui.core.Item>;

	/**
	* See {@link sap.m.Select#event:change}
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
