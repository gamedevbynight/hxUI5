package sap.m;

@:native("sap.m.FacetFilter")

/**
* Provides filtering functionality with multiple parameters.

<h3>Overview</h3>

The <code>FacetFilter</code> control is used to provide filtering functionality with multiple parameters and supports the users in finding the information they need from potentially very large data sets.

Your app can have dependencies between facets where selection of filter items in one facet list limits the list of valid filters in another facet list.

The <code>FacetFilter</code> uses {@link sap.m.FacetFilterList FacetFilterList} and {@link sap.m.FacetFilterItem FacetFilterItem} to model facets and their associated filters.

<b>Note: </b>{@link sap.m.FacetFilterList FacetFilterList} is a subclass of {@link sap.m.List} and supports growing enablement feature via the property <code>growing</code>. When you use this feature, be aware that it only works with one-way data binding. Having growing feature enabled when the <code>items</code> aggregation is bound to a model with two-way data binding, may lead to unexpected and/or inconsistent behavior across browsers, such as unexpected closing of the list.

<h3>Usage</h3>

Use the <code>FacetFilter</code> if your app displays a large list of items that can be grouped by multiple parameters, for example products by category and supplier. With the <code>FacetFilter</code>, you allow the users to dynamically filter the list so it only displays products from the categories and suppliers they want to see.

While the {@link sap.m.FacetFilterList} popup is opened (when the user selects a button corresponding to the list's name), any other activities leading to focus change will close it. For example, when the popup is opened and the app developer loads a {@link sap.m.BusyDialog} or any other dialog that obtains the focus, the popup will be closed.

<h3>Responsive behavior</h3>

The <code>FacetFilter</code> supports the following two types, which can be configured using the control's <code>type</code> property:

<ul><li>Simple type (default) - only available for desktop and tablet screen sizes. The active facets are displayed as individually selectable buttons on the toolbar.</li> <li>Light type - automatically enabled on smart phone sized devices, but also available for desktop and tablets. The active facets and selected filter items are displayed in the summary bar. When the user selects the summary bar, a navigable dialog list of all facets is displayed. When the user selects a facet, the dialog scrolls to show the list of filters that are available for the selected facet.</li></ul>

<h3>Additional Information</h3>

For more information, go to <b>Developer Guide</b> section in the Demo Kit and navigate to <b>More&nbsp;About&nbsp;Controls</b>&nbsp;>&nbsp;<b>sap.m</b>&nbsp;>&nbsp;<b>Facet&nbsp;Filter</b>
*/
extern class FacetFilter extends sap.ui.core.Control implements sap.ui.core.IShrinkable
{
	@:overload(function(?sId:String, ?mSettings:FacetFilterArgs):Void {})
	public function new(?mSettings:FacetFilterArgs):Void;

	/**
	* Adds some list to the aggregation {@link #getLists lists}.
	* @param	oList The list to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addList( oList:sap.m.FacetFilterList):sap.m.FacetFilter;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:confirm confirm} event of this <code>sap.m.FacetFilter</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FacetFilter</code> itself.

Fired when the user confirms filter selection.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FacetFilter</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachConfirm( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilter;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:reset reset} event of this <code>sap.m.FacetFilter</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FacetFilter</code> itself.

Fired when the Reset button is pressed to inform that all FacetFilterLists need to be reset.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FacetFilter</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachReset( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilter;

	/**
	* Destroys all the lists in the aggregation {@link #getLists lists}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLists( ):sap.m.FacetFilter;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:confirm confirm} event of this <code>sap.m.FacetFilter</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachConfirm( fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilter;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:reset reset} event of this <code>sap.m.FacetFilter</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachReset( fnFunction:()->Void, ?oListener:Dynamic):sap.m.FacetFilter;

	/**
	* Creates a new subclass of class sap.m.FacetFilter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getLists lists}.

Collection of FacetFilterList controls.
	* @return	null
	*/
	public function getLists( ):Array<sap.m.FacetFilterList>;

	/**
	* Gets current value of property {@link #getLiveSearch liveSearch}.

Enables/disables live search in the search field of all <code>sap.m.FacetFilterList</code> instances.

Default value is <code>true</code>.
	* @return	Value of property <code>liveSearch</code>
	*/
	public function getLiveSearch( ):Bool;

	/**
	* Returns a metadata object for class sap.m.FacetFilter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getShowPersonalization showPersonalization}.

If set to <code>true</code> and the FacetFilter type is <code>Simple</code>, then the Add Facet icon will be displayed and each facet button will also have a Facet Remove icon displayed beside it, allowing the user to deactivate the facet.

Default value is <code>false</code>.
	* @return	Value of property <code>showPersonalization</code>
	*/
	public function getShowPersonalization( ):Bool;

	/**
	* Gets current value of property {@link #getShowPopoverOKButton showPopoverOKButton}.

If set to <code>true</code>, an OK button is displayed for every FacetFilterList popover. This button allows the user to close the popover from within the popover instead of having to click outside of it.

Default value is <code>false</code>.
	* @return	Value of property <code>showPopoverOKButton</code>
	*/
	public function getShowPopoverOKButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowReset showReset}.

Shows/hides the FacetFilter Reset button.

Default value is <code>true</code>.
	* @return	Value of property <code>showReset</code>
	*/
	public function getShowReset( ):Bool;

	/**
	* Gets current value of property {@link #getShowSummaryBar showSummaryBar}.

Shows the summary bar instead of the FacetFilter buttons bar when set to <code>true</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>showSummaryBar</code>
	*/
	public function getShowSummaryBar( ):Bool;

	/**
	* Gets current value of property {@link #getType type}.

Defines the default appearance of the FacetFilter on the device. Possible values are <code>Simple</code> (default) and <code>Light</code>.

Default value is <code>Simple</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.FacetFilterType;

	/**
	* Checks for the provided <code>sap.m.FacetFilterList</code> in the aggregation {@link #getLists lists}. and returns its index if found or -1 otherwise.
	* @param	oList The list whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfList( oList:sap.m.FacetFilterList):Int;

	/**
	* Inserts a list into the aggregation {@link #getLists lists}.
	* @param	oList The list to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the list should be inserted at; for a negative value of <code>iIndex</code>, the list is inserted at position 0; for a value greater than the current size of the aggregation, the list is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertList( oList:sap.m.FacetFilterList, iIndex:Int):sap.m.FacetFilter;

	/**
	* Opens the FacetFilter dialog.
	* @return	this pointer for chaining
	*/
	public function openFilterDialog( ):sap.m.FacetFilter;

	/**
	* Removes all the controls from the aggregation {@link #getLists lists}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllLists( ):Array<sap.m.FacetFilterList>;
	@:overload( function(vList:Int):sap.m.FacetFilterList{ })
	@:overload( function(vList:String):sap.m.FacetFilterList{ })

	/**
	* Removes a list from the aggregation {@link #getLists lists}.
	* @param	vList The list to remove or its index or id
	* @return	The removed list or <code>null</code>
	*/
	public function removeList( vList:sap.m.FacetFilterList):sap.m.FacetFilterList;

	/**
	* Sets a new value for property {@link #getLiveSearch liveSearch}.

Enables/disables live search in the search field of all <code>sap.m.FacetFilterList</code> instances.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bLiveSearch New value for property <code>liveSearch</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLiveSearch( bLiveSearch:Bool):sap.m.FacetFilter;

	/**
	* Sets a new value for property {@link #getShowPersonalization showPersonalization}.

If set to <code>true</code> and the FacetFilter type is <code>Simple</code>, then the Add Facet icon will be displayed and each facet button will also have a Facet Remove icon displayed beside it, allowing the user to deactivate the facet.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowPersonalization New value for property <code>showPersonalization</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowPersonalization( bShowPersonalization:Bool):sap.m.FacetFilter;

	/**
	* Sets a new value for property {@link #getShowPopoverOKButton showPopoverOKButton}.

If set to <code>true</code>, an OK button is displayed for every FacetFilterList popover. This button allows the user to close the popover from within the popover instead of having to click outside of it.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowPopoverOKButton New value for property <code>showPopoverOKButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowPopoverOKButton( bShowPopoverOKButton:Bool):sap.m.FacetFilter;

	/**
	* Sets a new value for property {@link #getShowReset showReset}.

Shows/hides the FacetFilter Reset button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowReset New value for property <code>showReset</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowReset( bShowReset:Bool):sap.m.FacetFilter;

	/**
	* Sets a new value for property {@link #getShowSummaryBar showSummaryBar}.

Shows the summary bar instead of the FacetFilter buttons bar when set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSummaryBar New value for property <code>showSummaryBar</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSummaryBar( bShowSummaryBar:Bool):sap.m.FacetFilter;

	/**
	* Sets a new value for property {@link #getType type}.

Defines the default appearance of the FacetFilter on the device. Possible values are <code>Simple</code> (default) and <code>Light</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Simple</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:sap.m.FacetFilterType):sap.m.FacetFilter;
}

typedef FacetFilterArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* If set to <code>true</code> and the FacetFilter type is <code>Simple</code>, then the Add Facet icon will be displayed and each facet button will also have a Facet Remove icon displayed beside it, allowing the user to deactivate the facet.
	*/
	@:optional var showPersonalization:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the default appearance of the FacetFilter on the device. Possible values are <code>Simple</code> (default) and <code>Light</code>.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.FacetFilterType>;

	/**
	* Enables/disables live search in the search field of all <code>sap.m.FacetFilterList</code> instances.
	*/
	@:optional var liveSearch:haxe.extern.EitherType<String,Bool>;

	/**
	* Shows the summary bar instead of the FacetFilter buttons bar when set to <code>true</code>.
	*/
	@:optional var showSummaryBar:haxe.extern.EitherType<String,Bool>;

	/**
	* Shows/hides the FacetFilter Reset button.
	*/
	@:optional var showReset:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to <code>true</code>, an OK button is displayed for every FacetFilterList popover. This button allows the user to close the popover from within the popover instead of having to click outside of it.
	*/
	@:optional var showPopoverOKButton:haxe.extern.EitherType<String,Bool>;

    /**
    * Collection of FacetFilterList controls.
    */
	@:optional var lists:Array<haxe.extern.EitherType<String,sap.m.FacetFilterList>>;

    /**
    * Hidden aggregation of buttons that open each FacetFilterList popover. These buttons are displayed only when the FacetFilter is of type <code>Simple</code>.
    */
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * Hidden aggregation of icons for setting FacetFilterLists to inactive, thereby, removing the FacetFilter button from the display. The icon is displayed only if personalization is enabled.
    */
	@:optional var removeFacetIcons:Array<haxe.extern.EitherType<String,sap.ui.core.Icon>>;

    /**
    * Hidden aggregation for the FacetFilterLists popover.
    */
	@:optional var popover:haxe.extern.EitherType<String,sap.m.Popover>;

    /**
    * Hidden aggregation for the Add Facet button. This button allows the user to open the facet dialog and add or configure facets. This is displayed only if personalization is enabled and the FacetFilter is of type <code>Simple</code>.
    */
	@:optional var addFacetButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Hidden aggregation for the dialog that displays the facet and filter items pages.
    */
	@:optional var dialog:haxe.extern.EitherType<String,sap.m.Dialog>;

    /**
    * Hidden aggregation for the summary bar.
    */
	@:optional var summaryBar:haxe.extern.EitherType<String,sap.m.Toolbar>;

    /**
    * Hidden aggregation for the Reset button displayed for FacetFilter of type <code>Simple</code>.
    */
	@:optional var resetButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Hidden aggregation for the arrow that scrolls the facets to the left when the FacetFilter is set to type <code>Simple</code>.
    */
	@:optional var arrowLeft:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * Hidden aggregation for the arrow that scrolls the facets to the right when the FacetFilter is set to type <code>Simple</code>.
    */
	@:optional var arrowRight:haxe.extern.EitherType<String,sap.ui.core.Icon>;

	/**
	* Fired when the user confirms filter selection.
	*/
	@:optional var confirm:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the Reset button is pressed to inform that all FacetFilterLists need to be reset.
	*/
	@:optional var reset:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
