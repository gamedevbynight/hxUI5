package sap.tnt;

@:native("sap.tnt.SideNavigation")

/**
* The SideNavigation control is a container, which consists of flexible and fixed parts on top of each other. <h4>Responsive Behavior</h4> <ul> <li>The flexible part adapts its size to the fixed one.</li> <li>The flexible part has a scrollbar when the content is larger than the available space.</li> </ul> <b>Note:</b> In order for the SideNavigation to stretch properly, its parent layout control should only be the sap.tnt.ToolPage.
*/
extern class SideNavigation extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SideNavigationArgs):Void {})
	public function new(?mSettings:SideNavigationArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemSelect itemSelect} event of this <code>sap.tnt.SideNavigation</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.tnt.SideNavigation</code> itself.

Fired when an item is selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.tnt.SideNavigation</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemSelect( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.tnt.SideNavigation;

	/**
	* Binds aggregation {@link #getItem item} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItem( oBindingInfo:Dynamic):sap.tnt.SideNavigation;

	/**
	* Destroys the fixedItem in the aggregation {@link #getFixedItem fixedItem}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFixedItem( ):sap.tnt.SideNavigation;

	/**
	* Destroys the footer in the aggregation {@link #getFooter footer}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFooter( ):sap.tnt.SideNavigation;

	/**
	* Destroys the item in the aggregation {@link #getItem item}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItem( ):sap.tnt.SideNavigation;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemSelect itemSelect} event of this <code>sap.tnt.SideNavigation</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemSelect( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.tnt.SideNavigation;

	/**
	* Creates a new subclass of class sap.tnt.SideNavigation with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getExpanded expanded}.

Specifies if the control is expanded.

Default value is <code>true</code>.
	* @return	Value of property <code>expanded</code>
	*/
	public function getExpanded( ):Bool;

	/**
	* Gets content of aggregation {@link #getFixedItem fixedItem}.

Defines the content inside the fixed part.
	* @return	null
	*/
	public function getFixedItem( ):sap.tnt.NavigationList;

	/**
	* Gets content of aggregation {@link #getFooter footer}.

Defines the content inside the footer.
	* @return	null
	*/
	public function getFooter( ):sap.tnt.NavigationList;

	/**
	* Gets content of aggregation {@link #getItem item}.

Defines the content inside the flexible part.
	* @return	null
	*/
	public function getItem( ):sap.tnt.NavigationList;

	/**
	* Returns a metadata object for class sap.tnt.SideNavigation.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedItem selectedItem}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedItem( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getSelectedKey selectedKey}.

Specifies the currently selected key.
	* @return	Value of property <code>selectedKey</code>
	*/
	public function getSelectedKey( ):String;

	/**
	* Sets if the control is in expanded or collapsed mode.
	* @param	isExpanded Indication if the SideNavigation is expanded.
	* @return	this SideNavigation reference for chaining.
	*/
	public function setExpanded( isExpanded:Bool):sap.tnt.SideNavigation;

	/**
	* Sets the aggregated {@link #getFixedItem fixedItem}.
	* @param	oFixedItem The fixedItem to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFixedItem( oFixedItem:sap.tnt.NavigationList):sap.tnt.SideNavigation;

	/**
	* Sets the aggregated {@link #getFooter footer}.
	* @param	oFooter The footer to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooter( oFooter:sap.tnt.NavigationList):sap.tnt.SideNavigation;

	/**
	* Sets the aggregated {@link #getItem item}.
	* @param	oItem The item to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setItem( oItem:sap.tnt.NavigationList):sap.tnt.SideNavigation;
	@:overload( function(selectedItem:String):Dynamic{ })

	/**
	* Sets the association for selectedItem
	* @param	selectedItem The control to be set as selected
	* @return	The <code>selectedItem</code> association
	*/
	public function setSelectedItem( selectedItem:sap.tnt.NavigationListItem):Dynamic;

	/**
	* Sets the selected item based on a key.
	* @param	selectedKey The key of the item to be selected
	* @return	this pointer for chaining
	*/
	public function setSelectedKey( selectedKey:String):sap.tnt.SideNavigation;

	/**
	* Unbinds aggregation {@link #getItem item} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItem( ):sap.tnt.SideNavigation;
}

typedef SideNavigationArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies if the control is expanded.
	*/
	@:optional var expanded:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the currently selected key.
	*/
	@:optional var selectedKey:String;

    /**
    * Defines the content inside the flexible part.
    */
	@:optional var item:haxe.extern.EitherType<String,sap.tnt.NavigationList>;

    /**
    * Defines the content inside the fixed part.
    */
	@:optional var fixedItem:haxe.extern.EitherType<String,sap.tnt.NavigationList>;

    /**
    * Defines the content inside the footer.
    */
	@:optional var footer:haxe.extern.EitherType<String,sap.tnt.NavigationList>;

    /**
    * The top arrow, used for scrolling throw items when SideNavigation is collapsed.
    */
	@:optional var _topArrowControl:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * The bottom arrow, used for scrolling throw items when SideNavigation is collapsed.
    */
	@:optional var _bottomArrowControl:haxe.extern.EitherType<String,sap.ui.core.Icon>;

	/**
	* The selected <code>NavigationListItem</code>.
	*/
	@:optional var selectedItem:haxe.extern.EitherType<String,sap.tnt.NavigationListItem>;

	/**
	* Fired when an item is selected.
	*/
	@:optional var itemSelect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
