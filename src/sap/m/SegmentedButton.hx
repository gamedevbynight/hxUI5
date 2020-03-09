package sap.m;

@:native("sap.m.SegmentedButton")

/**
* A horizontal control made of multiple buttons, which can display a title or an image.

<h3>Overview</h3>

The <code>SegmentedButton</code> shows a group of buttons. When the user clicks or taps one of the buttons, it stays in a pressed state. It automatically resizes the buttons to fit proportionally within the control. When no width is set, the control uses the available width.
*/
extern class SegmentedButton extends sap.ui.core.Control implements sap.ui.core.IFormContent implements sap.m.IOverflowToolbarContent
{
	@:overload(function(?sId:String, ?mSettings:SegmentedButtonArgs):Void {})
	public function new(?mSettings:SegmentedButtonArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.SegmentedButton{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.SegmentedButton;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.SegmentedButton{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.SegmentedButton;

	/**
	* Adds item to <code>items</code> aggregation.
	* @param	oItem The item to be added
	* @return	<code>this</code> pointer for chaining
	*/
	public function addItem( oItem:sap.m.SegmentedButtonItem):sap.m.SegmentedButton;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChange selectionChange} event of this <code>sap.m.SegmentedButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SegmentedButton</code> itself.

Fires when the user selects an item, which returns the item object.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SegmentedButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SegmentedButton;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.SegmentedButton;

	/**
	* Binds property {@link #getSelectedKey selectedKey} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindSelectedKey( oBindingInfo:Dynamic):sap.m.SegmentedButton;

	/**
	* Adds a Button with a text as title, a URI for an icon, enabled and textDirection. Only one is allowed.
	* @param	sText Defines the title text of the newly created Button
	* @param	sURI Icon to be displayed as graphical element within the Button. Density related image will be loaded if image with density awareness name in format [imageName]@[densityValue].[extension] is provided.
	* @param	bEnabled Enables the control (default is true). Buttons that are disabled have other colors than enabled ones, depending on custom settings.
	* @param	sTextDirection Element's text directionality with enumerated options
	* @return	The created Button
	*/
	public function createButton( sText:String, sURI:sap.ui.core.URI, bEnabled:Bool, ?sTextDirection:sap.ui.core.TextDirection):sap.m.Button;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.SegmentedButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChange selectionChange} event of this <code>sap.m.SegmentedButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SegmentedButton;

	/**
	* Creates a new subclass of class sap.m.SegmentedButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Disables all the buttons in the SegmentedButton control. When disabled all the buttons look grey and you cannot focus or click on them.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

Aggregation of items to be displayed. The items set in this aggregation are used as an interface for the buttons displayed by the control. The "items" and "buttons" aggregations should NOT be used simultaneously as it causes the control to work incorrectly.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.SegmentedButtonItem>;

	/**
	* Returns a metadata object for class sap.m.SegmentedButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedItem selectedItem}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedItem( ):sap.ui.core.ID;

	/**
	* Gets the <code>selectedKey</code> and is usable only when the control is initiated with the <code>items</code> aggregation.
	* @return	Current selected key
	*/
	public function getSelectedKey( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the SegmentedButton control. If not set, it uses the minimum required width to make all buttons inside of the same size (based on the biggest button).
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.SegmentedButtonItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.SegmentedButtonItem):Int;

	/**
	* Inserts item into <code>items</code> aggregation.
	* @param	oItem The item to be inserted
	* @param	iIndex index the item should be inserted at
	* @return	<code>this</code> pointer for chaining
	*/
	public function insertItem( oItem:sap.m.SegmentedButtonItem, iIndex:Int):sap.m.SegmentedButton;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all items from <code>items</code> aggregation
	* @param	bSuppressInvalidate If <code>true</code> the control invalidation will be suppressed
	* @return	Void
	*/
	public function removeAllItems( ?bSuppressInvalidate:Bool):Void;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Removes an item from <code>items</code> aggregation.
	* @param	oItem The item to be removed
	* @return	Void
	*/
	public function removeItem( oItem:sap.m.SegmentedButtonItem):Void;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Disables all the buttons in the SegmentedButton control. When disabled all the buttons look grey and you cannot focus or click on them.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.m.SegmentedButton;
	@:overload( function(vButton:String):sap.m.SegmentedButton{ })
	@:overload( function(vButton:sap.m.Button):sap.m.SegmentedButton{ })
	@:overload( function(vButton:Dynamic):sap.m.SegmentedButton{ })

	/**
	* Setter for association <code>selectedButton</code>.
	* @param	vButton New value for association <code>setSelectedButton</code> An sap.m.Button instance which becomes the new target of this <code>selectedButton</code> association. Alternatively, the ID of an sap.m.Button instance may be given as a string. If the value of null, undefined, or an empty string is provided the first item will be selected.
	* @return	<code>this</code> pointer for chaining
	*/
	public function setSelectedButton( vButton:Dynamic):sap.m.SegmentedButton;
	@:overload( function(vItem:String):sap.m.SegmentedButton{ })
	@:overload( function(vItem:sap.m.SegmentedButtonItem):sap.m.SegmentedButton{ })
	@:overload( function(vItem:Dynamic):sap.m.SegmentedButton{ })

	/**
	* Setter for association <code>selectedItem</code>.
	* @param	vItem New value for association <code>setSelectedItem</code> An sap.m.SegmentedButtonItem instance which becomes the new target of this <code>selectedItem</code> association. Alternatively, the ID of an <code>sap.m.SegmentedButtonItem</code> instance may be given as a string. If the value of null, undefined, or an empty string is provided, the first item will be selected.
	* @return	<code>this</code> pointer for chaining
	*/
	public function setSelectedItem( vItem:Dynamic):sap.m.SegmentedButton;

	/**
	* Sets the <code>selectedKey</code> and is usable only when the control is initiated with the <code>items</code> aggregation.
	* @param	sKey The key of the button to be selected
	* @return	<code>this</code> pointer for chaining
	*/
	public function setSelectedKey( sKey:String):sap.m.SegmentedButton;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the SegmentedButton control. If not set, it uses the minimum required width to make all buttons inside of the same size (based on the biggest button).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.SegmentedButton;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.SegmentedButton;

	/**
	* Unbinds property {@link #getSelectedKey selectedKey} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindSelectedKey( ):sap.m.SegmentedButton;
}

typedef SegmentedButtonArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the width of the SegmentedButton control. If not set, it uses the minimum required width to make all buttons inside of the same size (based on the biggest button).
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Disables all the buttons in the SegmentedButton control. When disabled all the buttons look grey and you cannot focus or click on them.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Key of the selected item. If no item to this key is found in the items aggregation, no changes will apply. Only the items aggregation is affected. If duplicate keys exist, the first item matching the key is used.
	*/
	@:optional var selectedKey:String;

    /**
    * Aggregation of items to be displayed. The items set in this aggregation are used as an interface for the buttons displayed by the control. The "items" and "buttons" aggregations should NOT be used simultaneously as it causes the control to work incorrectly.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.SegmentedButtonItem>>;

    /**
    * Hidden aggregation that holds an instance of sap.m.Select to be used in some contexts as a representation of the segmented button (for example, in a popover with little space).
    */
	@:optional var _select:haxe.extern.EitherType<String,sap.m.Select>;

	/**
	* A reference to the currently selected item control.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.m.SegmentedButtonItem>;

	/**
	* Association to controls / IDs, which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs, which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fires when the user selects an item, which returns the item object.
	*/
	@:optional var selectionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
