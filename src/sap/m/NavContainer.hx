package sap.m;

@:native("sap.m.NavContainer")

/**
* Handles hierarchical navigation between Pages or other fullscreen controls.

All children of this control receive navigation events, such as {@link sap.m.NavContainerChild#event:beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
*/
extern class NavContainer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:NavContainerArgs):Void {})
	public function new(?mSettings:NavContainerArgs):Void;

	/**
	* Adds a custom transition to the NavContainer type (not to a particular instance!). The transition is identified by a "name". Make sure to only use names that will not collide with transitions which may be added to the NavContainer later. A suggestion is to use the prefix "c_" or "_" for your custom transitions to ensure this.

"to" and "back" are the transition functions for the forward and backward navigation. Both will be called with the following parameters: - oFromPage: the Control which is currently being displayed by the NavContainer - oToPage: the Control which should be displayed by the NavContainer after the transition - fCallback: a function which MUST be called when the transition has completed - oTransitionParameters: a data object that can be given by application code when triggering the transition by calling to() or back(); this object could give additional information to the transition function, like the DOM element which triggered the transition or the desired transition duration

The contract for "to" and "back" is that they may do an animation of their choice, but it should not take "too long". At the beginning of the transition the target page "oToPage" does have the CSS class "sapMNavItemHidden" which initially hides the target page (visibility:hidden). The transition can do any preparation (e.g. move that page out of the screen or make it transparent) and then should remove this CSS class. After the animation the target page "oToPage" should cover the entire screen and the source page "oFromPage" should not be visible anymore. This page should then have the CSS class "sapMNavItemHidden". For adding/removing this or other CSS classes, the transition can use the addStyleClass/removeStyleClass method: oFromPage.addStyleClass("sapMNavItemHidden"); When the transition is complete, it MUST call the given fCallback method to inform the NavContainer that navigation has finished!

Hint: if the target page of your transition stays black on iPhone, try wrapping the animation start into a setTimeout(..., 0) block (delayed, but without waiting).

This method can be called on any NavContainer instance or statically on the sap.m.NavContainer type. However, the transition will always be registered for the type (and ALL instances), not for the single instance on which this method was invoked.

Returns the sap.m.NavContainer type if called statically, or "this" (to allow method chaining) if called on a particular NavContainer instance.
	* @param	sName The name of the transition. This name can be used by the application to choose this transition when navigating "to()" or "back()": the "transitionName" parameter of "NavContainer.to()" corresponds to this name, the back() navigation will automatically use the same transition.

Make sure to only use names that will not collide with transitions which may be added to the NavContainer later. A suggestion is to use the prefix "c_" or "_" for your custom transitions to ensure this.
	* @param	fTo The function which will be called by the NavContainer when the application navigates "to()", using this animation's name. The NavContainer instance is the "this" context within the animation function.

See the documentation of NavContainer.addCustomTransitions for more details about this function.
	* @param	fBack The function which will be called by the NavContainer when the application navigates "back()" from a page where it had navigated to using this animation's name. The NavContainer instance is the "this" context within the animation function.

See the documentation of NavContainer.addCustomTransitions for more details about this function.
	* @return	The <code>sap.m.NavContainer</code> instance
	*/
	public function addCustomTransition( sName:String, fTo:Dynamic, fBack:Dynamic):sap.m.NavContainer;

	/**
	* Adds some page to the aggregation {@link #getPages pages}.
	* @param	oPage The page to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addPage( oPage:sap.ui.core.Control):sap.m.NavContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterNavigate afterNavigate} event of this <code>sap.m.NavContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.NavContainer</code> itself.

The event is fired when navigation between two pages has completed (once all events to the child controls have been fired). In case of animated transitions this event is fired with some delay after the "navigate" event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.NavContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.NavContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navigate navigate} event of this <code>sap.m.NavContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.NavContainer</code> itself.

The event is fired when navigation between two pages has been triggered (before any events to the child controls are fired). The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.NavContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.NavContainer;

	/**
	* Navigates back one level. If already on the initial page and there is no place to go back, nothing happens.

Calling this navigation method triggers first the (cancelable) "navigate" event on the NavContainer, then the "beforeHide" pseudo event on the source page and "beforeFirstShow" (if applicable) and"beforeShow" on the target page. Later - after the transition has completed - the "afterShow" pseudo event is triggered on the target page and "afterHide" on the page which has been left. The given backData object is available in the "beforeFirstShow", "beforeShow" and "afterShow" event object as "data" property. The original "data" object from the "to" navigation is also available in these event objects.
	* @param	backData Since version 1.7.1. This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as "backData" property. (The original data from the "to()" navigation will still be available as "data" property.)

In scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used e.g. when returning from a detail page to transfer any settings done there.

When the "transitionParameters" object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters Since version 1.7.1. This optional object can give additional information to the transition function, like the DOM element which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the "transitionParameters" property, the "data" property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	The <code>sap.m.NavContainer</code> instance
	*/
	public function back( ?backData:Dynamic, ?oTransitionParameters:Dynamic):sap.m.NavContainer;

	/**
	* Navigates back to the nearest previous page in the NavContainer history with the given ID. If there is no such page among the previous pages, nothing happens. The transition effect which had been used to get to the current page is inverted and used for this navigation.

Calling this navigation method triggers first the (cancelable) "navigate" event on the NavContainer, then the "beforeHide" pseudo event on the source page and "beforeFirstShow" (if applicable) and"beforeShow" on the target page. Later - after the transition has completed - the "afterShow" pseudo event is triggered on the target page and "afterHide" on the page which has been left. The given backData object is available in the "beforeFirstShow", "beforeShow" and "afterShow" event object as "data" property. The original "data" object from the "to" navigation is also available in these event objects.
	* @param	pageId The ID of the screen to which back navigation should happen. The ID or the control itself can be given. The nearest such page among the previous pages in the history stack will be used.
	* @param	backData This optional object can carry any payload data which should be made available to the target page of the "backToPage" navigation. The event on the target page will contain this data object as "backData" property.

When the "transitionParameters" object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can give additional information to the transition function, like the DOM element which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the "transitionParameters" property, the "data" property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	The <code>sap.m.NavContainer</code> instance
	*/
	public function backToPage( pageId:String, backData:Dynamic, oTransitionParameters:Dynamic):sap.m.NavContainer;

	/**
	* Navigates back to the initial/top level (this is the element aggregated as "initialPage", or the first added element). If already on the initial page, nothing happens. The transition effect which had been used to get to the current page is inverted and used for this navigation.

Calling this navigation method triggers first the (cancelable) "navigate" event on the NavContainer, then the "beforeHide" pseudo event on the source page and "beforeFirstShow" (if applicable) and"beforeShow" on the target page. Later - after the transition has completed - the "afterShow" pseudo event is triggered on the target page and "afterHide" on the page which has been left. The given backData object is available in the "beforeFirstShow", "beforeShow" and "afterShow" event object as "data" property.
	* @param	backData This optional object can carry any payload data which should be made available to the target page of the "backToTop" navigation. The event on the target page will contain this data object as "backData" property.

When the "transitionParameters" object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can give additional information to the transition function, like the DOM element which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the "transitionParameters" property, the "data" property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	null
	*/
	public function backToTop( ?backData:Dynamic, ?oTransitionParameters:Dynamic):sap.m.NavContainer;

	/**
	* Returns whether the current page is the top/initial page.

<b>Note:</b> going to the initial page again with a row of "to" navigations causes the initial page to be displayed again, but logically one is not at the top level, so this method returns "false" in this case.
	* @return	Whether the current page is a top page
	*/
	public function currentPageIsTopPage( ):Bool;

	/**
	* Destroys all the pages in the aggregation {@link #getPages pages}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPages( ):sap.m.NavContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterNavigate afterNavigate} event of this <code>sap.m.NavContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.NavContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navigate navigate} event of this <code>sap.m.NavContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.NavContainer;

	/**
	* Creates a new subclass of class sap.m.NavContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAutoFocus autoFocus}.

Determines whether the initial focus is set automatically on first rendering and after navigating to a new page. This is useful when on touch devices the keyboard pops out due to the focus being automatically set on an input field. If necessary, the <code>afterShow</code> event can be used to focus another element, only if <code>autoFocus</code> is set to <code>false</code>.

<b>Note:</b> The following scenarios are possible, depending on where the focus was before navigation to a new page: <ul><li>If <code>autoFocus</code> is set to <code>true</code> and the focus was inside the current page, the focus will be moved automatically on the new page.</li> <li>If <code>autoFocus</code> is set to <code>false</code> and the focus was inside the current page, the focus will disappear. <li>If the focus was outside the current page, after the navigation it will remain unchanged regardless of what is set to the <code>autoFocus</code> property.</li> <li>If the <code>autoFocus</code> is set to <code>false</code> and at the same time another wrapping control has its own logic for focus restoring upon rerendering, the focus will still appear.</li></ul>

Default value is <code>true</code>.
	* @return	Value of property <code>autoFocus</code>
	*/
	public function getAutoFocus( ):Bool;

	/**
	* Returns the currently displayed page-level control.

<b>Note:</b> Returns <code>undefined</code> if no page has been added yet, otherwise returns an instance of <code>sap.m.Page</code>, <code>sap.ui.core.View</code>, <code>sap.m.Carousel</code> or whatever is aggregated.
	* @return	The current page
	*/
	public function getCurrentPage( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getDefaultTransitionName defaultTransitionName}.

The type of the transition/animation to apply when "to()" is called without defining a transition type to use. The default is "slide". Other options are: "fade", "flip" and "show" - and the names of any registered custom transitions.

Default value is <code>slide</code>.
	* @return	Value of property <code>defaultTransitionName</code>
	*/
	public function getDefaultTransitionName( ):String;

	/**
	* Gets current value of property {@link #getHeight height}.

The height of the NavContainer. Can be changed when the NavContainer should not cover the whole available area.

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* ID of the element which is the current target of the association {@link #getInitialPage initialPage}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialPage( ):sap.ui.core.ID;

	/**
	* Returns a metadata object for class sap.m.NavContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the control with the given ID from the "pages" aggregation (if available).
	* @param	pageId The ID of the aggregated control to find
	* @return	The control with the given ID or null if it doesn`t exist
	*/
	public function getPage( pageId:String):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getPages pages}.

The content entities between which this NavContainer navigates. These can be of type sap.m.Page, sap.ui.core.View, sap.m.Carousel or any other control with fullscreen/page semantics.

These aggregated controls will receive navigation events like {@link sap.m.NavContainerChild#event:beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}
	* @return	null
	*/
	public function getPages( ):Array<sap.ui.core.Control>;

	/**
	* Returns the previous page (the page from which the user drilled down to the current page with "to()").

<b>Note:</b> this is not the page which the user has seen before, but the page which is the target of the next "back()" navigation. If there is no previous page, <code>undefined</code> is returned.
	* @return	The previous page
	*/
	public function getPreviousPage( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getVisible visible}.

Whether the NavContainer is visible.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the NavContainer. Can be changed when the NavContainer should not cover the whole available area.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getPages pages}. and returns its index if found or -1 otherwise.
	* @param	oPage The page whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPage( oPage:sap.ui.core.Control):Int;

	/**
	* Inserts a page into the aggregation {@link #getPages pages}.
	* @param	oPage The page to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the page should be inserted at; for a negative value of <code>iIndex</code>, the page is inserted at position 0; for a value greater than the current size of the aggregation, the page is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertPage( oPage:sap.ui.core.Control, iIndex:Int):sap.m.NavContainer;

	/**
	* Inserts the page/control with the specified ID into the navigation history stack of the NavContainer.

This can be used for deep-linking when the user directly reached a drilldown detail page using a bookmark and then wants to navigate up in the drilldown hierarchy. Normally such a back navigation would not be possible because there is no previous page in the NavContainer's history stack.
	* @param	pageId The ID of the control/page/screen which is inserted into the history stack. The respective control must be aggregated by the NavContainer, otherwise this will cause an error.
	* @param	transitionName The type of the transition/animation which would have been used to navigate from the (inserted) previous page to the current page. When navigating back, the inverse animation will be applied. This parameter can be omitted; then the default is "slide" (horizontal movement from the right).
	* @param	data This optional object can carry any payload data which would have been given to the inserted previous page if the user would have done a normal forward navigation to it.
	* @return	The <code>sap.m.NavContainer</code> instance
	*/
	public function insertPreviousPage( pageId:String, transitionName:String, data:Dynamic):sap.m.NavContainer;

	/**
	* Removes all the controls from the aggregation {@link #getPages pages}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllPages( ):Array<sap.ui.core.Control>;

	/**
	* Sets a new value for property {@link #getAutoFocus autoFocus}.

Determines whether the initial focus is set automatically on first rendering and after navigating to a new page. This is useful when on touch devices the keyboard pops out due to the focus being automatically set on an input field. If necessary, the <code>afterShow</code> event can be used to focus another element, only if <code>autoFocus</code> is set to <code>false</code>.

<b>Note:</b> The following scenarios are possible, depending on where the focus was before navigation to a new page: <ul><li>If <code>autoFocus</code> is set to <code>true</code> and the focus was inside the current page, the focus will be moved automatically on the new page.</li> <li>If <code>autoFocus</code> is set to <code>false</code> and the focus was inside the current page, the focus will disappear. <li>If the focus was outside the current page, after the navigation it will remain unchanged regardless of what is set to the <code>autoFocus</code> property.</li> <li>If the <code>autoFocus</code> is set to <code>false</code> and at the same time another wrapping control has its own logic for focus restoring upon rerendering, the focus will still appear.</li></ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAutoFocus New value for property <code>autoFocus</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoFocus( bAutoFocus:Bool):sap.m.NavContainer;

	/**
	* Sets a new value for property {@link #getDefaultTransitionName defaultTransitionName}.

The type of the transition/animation to apply when "to()" is called without defining a transition type to use. The default is "slide". Other options are: "fade", "flip" and "show" - and the names of any registered custom transitions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>slide</code>.
	* @param	sDefaultTransitionName New value for property <code>defaultTransitionName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultTransitionName( sDefaultTransitionName:String):sap.m.NavContainer;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height of the NavContainer. Can be changed when the NavContainer should not cover the whole available area.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.NavContainer;
	@:overload( function(oInitialPage:sap.ui.core.ID):sap.m.NavContainer{ })

	/**
	* Sets the associated {@link #getInitialPage initialPage}.
	* @param	oInitialPage ID of an element which becomes the new target of this initialPage association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialPage( oInitialPage:sap.ui.core.Control):sap.m.NavContainer;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Whether the NavContainer is visible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.m.NavContainer;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the NavContainer. Can be changed when the NavContainer should not cover the whole available area.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.NavContainer;

	/**
	* Navigates to the next page (with drill-down semantic) with the given (or default) animation. This creates a new history item inside the NavContainer and allows going back.

Note that any modifications to the target page (like setting its title, or anything else that could cause a re-rendering) should be done BEFORE calling to(), in order to avoid unwanted side effects, e.g. related to the page animation.

Available transitions currently include "slide" (default), "fade", "flip", and "show". None of these is currently making use of any given transitionParameters.

Calling this navigation method triggers first the (cancelable) "navigate" event on the NavContainer, then the "beforeHide" pseudo event on the source page and "beforeFirstShow" (if applicable) and"beforeShow" on the target page. Later - after the transition has completed - the "afterShow" pseudo event is triggered on the target page and "afterHide" on the page which has been left. The given data object is available in the "beforeFirstShow", "beforeShow" and "afterShow" event object as "data" property.
	* @param	pageId The screen to which drilldown should happen. The ID or the control itself can be given.
	* @param	transitionName The type of the transition/animation to apply. This parameter can be omitted; then the default is "slide" (horizontal movement from the right). Other options are: "fade", "flip", and "show" and the names of any registered custom transitions.

None of the standard transitions is currently making use of any given transition parameters.
	* @param	data Since version 1.7.1. This optional object can carry any payload data which should be made available to the target page. The "beforeShow" event on the target page will contain this data object as "data" property. Use case: in scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data.

When the "transitionParameters" object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters Since version 1.7.1. This optional object can contain additional information for the transition function, like the DOM element which triggered the transition or the desired transition duration.

For a proper parameter order, the "data" parameter must be given when the "transitionParameters" parameter is used. (it can be given as "null")

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition. The "show", "slide" and "fade" transitions do not use any parameter.
	* @return	The <code>sap.m.NavContainer</code> instance
	*/
	public function to( pageId:String, transitionName:String, data:Dynamic, oTransitionParameters:Dynamic):sap.m.NavContainer;
}

typedef NavContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines whether the initial focus is set automatically on first rendering and after navigating to a new page. This is useful when on touch devices the keyboard pops out due to the focus being automatically set on an input field. If necessary, the <code>afterShow</code> event can be used to focus another element, only if <code>autoFocus</code> is set to <code>false</code>.

<b>Note:</b> The following scenarios are possible, depending on where the focus was before navigation to a new page: <ul><li>If <code>autoFocus</code> is set to <code>true</code> and the focus was inside the current page, the focus will be moved automatically on the new page.</li> <li>If <code>autoFocus</code> is set to <code>false</code> and the focus was inside the current page, the focus will disappear. <li>If the focus was outside the current page, after the navigation it will remain unchanged regardless of what is set to the <code>autoFocus</code> property.</li> <li>If the <code>autoFocus</code> is set to <code>false</code> and at the same time another wrapping control has its own logic for focus restoring upon rerendering, the focus will still appear.</li></ul>
	*/
	@:optional var autoFocus:haxe.extern.EitherType<String,Bool>;

	/**
	* The height of the NavContainer. Can be changed when the NavContainer should not cover the whole available area.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The width of the NavContainer. Can be changed when the NavContainer should not cover the whole available area.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Whether the NavContainer is visible.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* The type of the transition/animation to apply when "to()" is called without defining a transition type to use. The default is "slide". Other options are: "fade", "flip" and "show" - and the names of any registered custom transitions.
	*/
	@:optional var defaultTransitionName:String;

    /**
    * The content entities between which this NavContainer navigates. These can be of type sap.m.Page, sap.ui.core.View, sap.m.Carousel or any other control with fullscreen/page semantics.

These aggregated controls will receive navigation events like {@link sap.m.NavContainerChild#event:beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}
    */
	@:optional var pages:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This association can be used to define which page is displayed initially. If the given page does not exist or no page is given, the first page which has been added is considered as initial page. This value should be set initially and not set/modified while the application is running.

This could be used not only for the initial display, but also if the user wants to navigate "up to top", so this page serves as a sort of "home/root page".
	*/
	@:optional var initialPage:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* The event is fired when navigation between two pages has completed (once all events to the child controls have been fired). In case of animated transitions this event is fired with some delay after the "navigate" event.
	*/
	@:optional var afterNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is fired when navigation between two pages has been triggered (before any events to the child controls are fired). The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	*/
	@:optional var navigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
