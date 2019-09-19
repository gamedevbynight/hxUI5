package sap.f;

@:native("sap.f.FlexibleColumnLayout")

/**
* Implements the master-detail-detail paradigm by displaying up to three pages in separate columns.

<h3>Overview</h3>

The control is logically similar to {@link sap.m.SplitContainer} with the difference that it capable of handling three columns (referred to as <code>Begin</code>, <code>Mid</code> and <code>End</code>) rather than two (<code>Master</code>, <code>Detail</code>). The width of the three columns is variable.

There are several possible layouts that can be changed either with the control's API, or by the user with the help of layout arrows.

Internally the control makes use of three instances of {@link sap.m.NavContainer}, thus forming the three columns.

<h3>Usage</h3>

Use this control for applications that need to display several logical levels of related information side by side (e.g. list of items, item, sub-item, etc.). The control is flexible in a sense that the application can focus the user's attention on one particular column by making it larger or even fullscreen.

The columns are accessible with the <code>beginColumnPages</code>, <code>midColumnPages</code> and <code>endColumnPages</code> aggregations.

The relative sizes and the visibility of the three columns are determined based on the value of the {@link sap.f.LayoutType layout} property.

Changes to the layout due to user interaction are communicated to the app with the <code>stateChange</code> event.

<ul><b>Notes:</b> <li>To easily implement the recommended UX design of a <code>sap.f.FlexibleColumnLayout</code>-based app, you can use the <code>sap.f.FlexibleColumnLayoutSemanticHelper</code> class.</li> <li>To facilitate the navigation and view loading, you can use the {@link sap.f.routing.Router} </li></ul>

<h3>Responsive Behavior</h3>

The control automatically displays the maximum possible number of columns based on the device size and current <code>layout</code>. The app does not need to take into consideration the current device/screen size, but only to add content to the columns and change the value of the <code>layout</code> property.

For detailed information, see {@link sap.f.LayoutType LayoutType} enumeration.
*/
extern class FlexibleColumnLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:FlexibleColumnLayoutArgs):Void {})
	public function new(?mSettings:FlexibleColumnLayoutArgs):Void;

	/**
	* Adds some beginColumnPage to the aggregation {@link #getBeginColumnPages beginColumnPages}.
	* @param	oBeginColumnPage The beginColumnPage to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addBeginColumnPage( oBeginColumnPage:sap.ui.core.Control):sap.f.FlexibleColumnLayout;

	/**
	* Adds some endColumnPage to the aggregation {@link #getEndColumnPages endColumnPages}.
	* @param	oEndColumnPage The endColumnPage to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addEndColumnPage( oEndColumnPage:sap.ui.core.Control):sap.f.FlexibleColumnLayout;

	/**
	* Adds some midColumnPage to the aggregation {@link #getMidColumnPages midColumnPages}.
	* @param	oMidColumnPage The midColumnPage to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMidColumnPage( oMidColumnPage:sap.ui.core.Control):sap.f.FlexibleColumnLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterBeginColumnNavigate afterBeginColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.FlexibleColumnLayout</code> itself.

Fires when navigation between two pages in the <code>Begin</code> column has completed.

NOTE: In case of animated transitions this event is fired with some delay after the navigate event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.FlexibleColumnLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterBeginColumnNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterEndColumnNavigate afterEndColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.FlexibleColumnLayout</code> itself.

Fires when navigation between two pages in the <code>End</code> column has completed.

NOTE: In case of animated transitions this event is fired with some delay after the navigate event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.FlexibleColumnLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterEndColumnNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterMidColumnNavigate afterMidColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.FlexibleColumnLayout</code> itself.

Fires when navigation between two pages in the <code>Mid</code> column has completed.

NOTE: In case of animated transitions this event is fired with some delay after the navigate event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.FlexibleColumnLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterMidColumnNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beginColumnNavigate beginColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.FlexibleColumnLayout</code> itself.

Fires when navigation between two pages in the <code>Begin</code> column has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.FlexibleColumnLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeginColumnNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:endColumnNavigate endColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.FlexibleColumnLayout</code> itself.

Fires when navigation between two pages in the <code>End</code> column has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.FlexibleColumnLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachEndColumnNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:midColumnNavigate midColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.FlexibleColumnLayout</code> itself.

Fires when navigation between two pages in the <code>Mid</code> column has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.FlexibleColumnLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMidColumnNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:stateChange stateChange} event of this <code>sap.f.FlexibleColumnLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.FlexibleColumnLayout</code> itself.

Fired when there is a change in the <code>layout</code> property or in the maximum number of columns that can be displayed at once. <br/></br> <ul>The interactions that may lead to a state change are: <li>the property <code>layout</code> was changed indirectly by the user clicking a layout arrow</li> <li>the user resized the browser beyond a breakpoint, thus changing the maximum number of columns that can be displayed at once.</li></ul> <br/><br/> <b>Note: </b>The event is suppressed while the control has zero width and will be fired the first time it gets a non-zero width
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.FlexibleColumnLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStateChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Navigates back to a page in the <code>FlexibleColumnLayout</code>. Columns are scanned for the page in the following order: <code>Begin</code>, <code>Mid</code>, <code>End</code>.

Calling this navigation method, first triggers the (cancelable) navigate event on the SplitContainer, then the beforeHide pseudo event on the source page, beforeFirstShow (if applicable), and beforeShow on the target page. Later, after the transition has completed, the afterShow pseudo event is triggered on the target page and afterHide - on the page, which has been left. The given backData object is available in the beforeFirstShow, beforeShow, and afterShow event objects as data property. The original "data" object from the "to" navigation is also available in these event objects.
	* @param	sPageId The screen to which is being navigated to. The ID or the control itself can be given.
	* @param	oBackData This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as backData property. (the original data from the to() navigation will still be available as data property).

In scenarios, where the entity triggering the navigation can't or shouldn't directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used, for example, when returning from a detail page to transfer any settings done there.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can give additional information to the transition function, like the DOM element, which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the transitionParameters property, the data property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	The <code>sap.f.FlexibleColumnLayout</code> instance
	*/
	public function backToPage( sPageId:String, oBackData:Dynamic, oTransitionParameters:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Navigates back to the initial/top level of Begin column (this is the element aggregated as "initialPage", or the first added element). NOTE: If already on the initial page, nothing happens. The transition effect which had been used to get to the current page is inverted and used for this navigation.
	* @param	oBackData This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as "backData" property. (The original data from the "to()" navigation will still be available as "data" property.)

In scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used e.g. when returning from a detail page to transfer any settings done there.

When the "transitionParameters" object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can give additional information to the transition function, like the DOM element which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the transitionParameters property, the data property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	The <code>sap.f.FlexibleColumnLayout</code> instance
	*/
	public function backToTopBeginColumn( oBackData:Dynamic, oTransitionParameters:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Navigates back to the initial/top level of End column (this is the element aggregated as "initialPage", or the first added element). NOTE: If already on the initial page, nothing happens. The transition effect which had been used to get to the current page is inverted and used for this navigation.
	* @param	oBackData This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as "backData" property. (The original data from the "to()" navigation will still be available as "data" property.)

In scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used e.g. when returning from a detail page to transfer any settings done there.

When the "transitionParameters" object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can give additional information to the transition function, like the DOM element which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the transitionParameters property, the data property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	The <code>sap.f.FlexibleColumnLayout</code> instance
	*/
	public function backToTopEndColumn( oBackData:Dynamic, oTransitionParameters:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Navigates back to the initial/top level of Mid column (this is the element aggregated as "initialPage", or the first added element). NOTE: If already on the initial page, nothing happens. The transition effect which had been used to get to the current page is inverted and used for this navigation.
	* @param	oBackData This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as "backData" property. (The original data from the "to()" navigation will still be available as "data" property.)

In scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used e.g. when returning from a detail page to transfer any settings done there.

When the "transitionParameters" object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can give additional information to the transition function, like the DOM element which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the transitionParameters property, the data property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	The <code>sap.f.FlexibleColumnLayout</code> instance
	*/
	public function backToTopMidColumn( oBackData:Dynamic, oTransitionParameters:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Destroys all the beginColumnPages in the aggregation {@link #getBeginColumnPages beginColumnPages}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyBeginColumnPages( ):sap.f.FlexibleColumnLayout;

	/**
	* Destroys all the endColumnPages in the aggregation {@link #getEndColumnPages endColumnPages}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyEndColumnPages( ):sap.f.FlexibleColumnLayout;

	/**
	* Destroys all the midColumnPages in the aggregation {@link #getMidColumnPages midColumnPages}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMidColumnPages( ):sap.f.FlexibleColumnLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterBeginColumnNavigate afterBeginColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterBeginColumnNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterEndColumnNavigate afterEndColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterEndColumnNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterMidColumnNavigate afterMidColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterMidColumnNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beginColumnNavigate beginColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeginColumnNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:endColumnNavigate endColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachEndColumnNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:midColumnNavigate midColumnNavigate} event of this <code>sap.f.FlexibleColumnLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMidColumnNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:stateChange stateChange} event of this <code>sap.f.FlexibleColumnLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStateChange( fnFunction:()->Void, ?oListener:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Creates a new subclass of class sap.f.FlexibleColumnLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the content. The visualization of the different options depends on the used theme.

Default value is <code>Transparent</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets content of aggregation {@link #getBeginColumnPages beginColumnPages}.

The content entities between which the <code>FlexibleColumnLayout</code> navigates in the <code>Begin</code> column.

These should be any control with page semantics. These aggregated controls will receive navigation events like {@link sap.m.NavContainerChild#event:beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
	* @return	null
	*/
	public function getBeginColumnPages( ):Array<sap.ui.core.Control>;

	/**
	* Returns the currently displayed Begin column page.
	* @return	The UI5 control in the Begin column
	*/
	public function getCurrentBeginColumnPage( ):sap.ui.core.Control;

	/**
	* Returns the currently displayed End column page.
	* @return	The UI5 control in the End column
	*/
	public function getCurrentEndColumnPage( ):sap.ui.core.Control;

	/**
	* Returns the currently displayed Mid column page.
	* @return	The UI5 control in the Mid column
	*/
	public function getCurrentMidColumnPage( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getDefaultTransitionNameBeginColumn defaultTransitionNameBeginColumn}.

Determines the type of the transition/animation to apply for the <code>Begin</code> column when <code>to()</code> is called without defining the transition to use. The default is <code>slide</code>, other options are <code>fade</code>, <code>flip</code>, <code>show</code>, and the names of any registered custom transitions.

Default value is <code>slide</code>.
	* @return	Value of property <code>defaultTransitionNameBeginColumn</code>
	*/
	public function getDefaultTransitionNameBeginColumn( ):String;

	/**
	* Gets current value of property {@link #getDefaultTransitionNameEndColumn defaultTransitionNameEndColumn}.

Determines the type of the transition/animation to apply for the <code>End</code> column when <code>to()</code> is called without defining the transition to use. The default is <code>slide</code>, other options are <code>fade</code>, <code>flip</code>, <code>show</code>, and the names of any registered custom transitions.

Default value is <code>slide</code>.
	* @return	Value of property <code>defaultTransitionNameEndColumn</code>
	*/
	public function getDefaultTransitionNameEndColumn( ):String;

	/**
	* Gets current value of property {@link #getDefaultTransitionNameMidColumn defaultTransitionNameMidColumn}.

Determines the type of the transition/animation to apply for the <code>Mid</code> column when <code>to()</code> is called without defining the transition to use. The default is <code>slide</code>, other options are <code>fade</code>, <code>flip</code>, <code>show</code>, and the names of any registered custom transitions.

Default value is <code>slide</code>.
	* @return	Value of property <code>defaultTransitionNameMidColumn</code>
	*/
	public function getDefaultTransitionNameMidColumn( ):String;

	/**
	* Gets content of aggregation {@link #getEndColumnPages endColumnPages}.

The content entities between which the <code>FlexibleColumnLayout</code> navigates in the <code>End</code> column.

These should be any control with page semantics. These aggregated controls will receive navigation events like {@link sap.m.NavContainerChild#event:beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
	* @return	null
	*/
	public function getEndColumnPages( ):Array<sap.ui.core.Control>;

	/**
	* ID of the element which is the current target of the association {@link #getInitialBeginColumnPage initialBeginColumnPage}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialBeginColumnPage( ):sap.ui.core.ID;

	/**
	* ID of the element which is the current target of the association {@link #getInitialEndColumnPage initialEndColumnPage}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialEndColumnPage( ):sap.ui.core.ID;

	/**
	* ID of the element which is the current target of the association {@link #getInitialMidColumnPage initialMidColumnPage}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialMidColumnPage( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getLayout layout}.

Determines the layout of the control - number of visible columns and their relative sizes.

For more details, see {@link topic:3b9f760da5b64adf8db7f95247879086 Types of Layout} in the documentation.

Default value is <code>OneColumn</code>.
	* @return	Value of property <code>layout</code>
	*/
	public function getLayout( ):sap.f.LayoutType;

	/**
	* Returns the maximum number of columns that can be displayed at once based on the control width
	* @return	The maximum number of columns
	*/
	public function getMaxColumnsCount( ):String;

	/**
	* Returns a metadata object for class sap.f.FlexibleColumnLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getMidColumnPages midColumnPages}.

The content entities between which the <code>FlexibleColumnLayout</code> navigates in the <code>Mid</code> column.

These should be any control with page semantics. These aggregated controls will receive navigation events like {@link sap.m.NavContainerChild#event:beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
	* @return	null
	*/
	public function getMidColumnPages( ):Array<sap.ui.core.Control>;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getBeginColumnPages beginColumnPages}. and returns its index if found or -1 otherwise.
	* @param	oBeginColumnPage The beginColumnPage whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfBeginColumnPage( oBeginColumnPage:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getEndColumnPages endColumnPages}. and returns its index if found or -1 otherwise.
	* @param	oEndColumnPage The endColumnPage whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfEndColumnPage( oEndColumnPage:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getMidColumnPages midColumnPages}. and returns its index if found or -1 otherwise.
	* @param	oMidColumnPage The midColumnPage whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfMidColumnPage( oMidColumnPage:sap.ui.core.Control):Int;

	/**
	* Inserts a beginColumnPage into the aggregation {@link #getBeginColumnPages beginColumnPages}.
	* @param	oBeginColumnPage The beginColumnPage to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the beginColumnPage should be inserted at; for a negative value of <code>iIndex</code>, the beginColumnPage is inserted at position 0; for a value greater than the current size of the aggregation, the beginColumnPage is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertBeginColumnPage( oBeginColumnPage:sap.ui.core.Control, iIndex:Int):sap.f.FlexibleColumnLayout;

	/**
	* Inserts a endColumnPage into the aggregation {@link #getEndColumnPages endColumnPages}.
	* @param	oEndColumnPage The endColumnPage to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the endColumnPage should be inserted at; for a negative value of <code>iIndex</code>, the endColumnPage is inserted at position 0; for a value greater than the current size of the aggregation, the endColumnPage is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertEndColumnPage( oEndColumnPage:sap.ui.core.Control, iIndex:Int):sap.f.FlexibleColumnLayout;

	/**
	* Inserts a midColumnPage into the aggregation {@link #getMidColumnPages midColumnPages}.
	* @param	oMidColumnPage The midColumnPage to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the midColumnPage should be inserted at; for a negative value of <code>iIndex</code>, the midColumnPage is inserted at position 0; for a value greater than the current size of the aggregation, the midColumnPage is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMidColumnPage( oMidColumnPage:sap.ui.core.Control, iIndex:Int):sap.f.FlexibleColumnLayout;

	/**
	* Removes all the controls from the aggregation {@link #getBeginColumnPages beginColumnPages}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllBeginColumnPages( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getEndColumnPages endColumnPages}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllEndColumnPages( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getMidColumnPages midColumnPages}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllMidColumnPages( ):Array<sap.ui.core.Control>;
	@:overload( function(vBeginColumnPage:Int):sap.ui.core.Control{ })
	@:overload( function(vBeginColumnPage:String):sap.ui.core.Control{ })

	/**
	* Removes a beginColumnPage from the aggregation {@link #getBeginColumnPages beginColumnPages}.
	* @param	vBeginColumnPage The beginColumnPage to remove or its index or id
	* @return	The removed beginColumnPage or <code>null</code>
	*/
	public function removeBeginColumnPage( vBeginColumnPage:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vEndColumnPage:Int):sap.ui.core.Control{ })
	@:overload( function(vEndColumnPage:String):sap.ui.core.Control{ })

	/**
	* Removes a endColumnPage from the aggregation {@link #getEndColumnPages endColumnPages}.
	* @param	vEndColumnPage The endColumnPage to remove or its index or id
	* @return	The removed endColumnPage or <code>null</code>
	*/
	public function removeEndColumnPage( vEndColumnPage:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vMidColumnPage:Int):sap.ui.core.Control{ })
	@:overload( function(vMidColumnPage:String):sap.ui.core.Control{ })

	/**
	* Removes a midColumnPage from the aggregation {@link #getMidColumnPages midColumnPages}.
	* @param	vMidColumnPage The midColumnPage to remove or its index or id
	* @return	The removed midColumnPage or <code>null</code>
	*/
	public function removeMidColumnPage( vMidColumnPage:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the content. The visualization of the different options depends on the used theme.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Transparent</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( sBackgroundDesign:sap.m.BackgroundDesign):sap.f.FlexibleColumnLayout;

	/**
	* Sets a new value for property {@link #getDefaultTransitionNameBeginColumn defaultTransitionNameBeginColumn}.

Determines the type of the transition/animation to apply for the <code>Begin</code> column when <code>to()</code> is called without defining the transition to use. The default is <code>slide</code>, other options are <code>fade</code>, <code>flip</code>, <code>show</code>, and the names of any registered custom transitions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>slide</code>.
	* @param	sDefaultTransitionNameBeginColumn New value for property <code>defaultTransitionNameBeginColumn</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultTransitionNameBeginColumn( sDefaultTransitionNameBeginColumn:String):sap.f.FlexibleColumnLayout;

	/**
	* Sets a new value for property {@link #getDefaultTransitionNameEndColumn defaultTransitionNameEndColumn}.

Determines the type of the transition/animation to apply for the <code>End</code> column when <code>to()</code> is called without defining the transition to use. The default is <code>slide</code>, other options are <code>fade</code>, <code>flip</code>, <code>show</code>, and the names of any registered custom transitions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>slide</code>.
	* @param	sDefaultTransitionNameEndColumn New value for property <code>defaultTransitionNameEndColumn</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultTransitionNameEndColumn( sDefaultTransitionNameEndColumn:String):sap.f.FlexibleColumnLayout;

	/**
	* Sets a new value for property {@link #getDefaultTransitionNameMidColumn defaultTransitionNameMidColumn}.

Determines the type of the transition/animation to apply for the <code>Mid</code> column when <code>to()</code> is called without defining the transition to use. The default is <code>slide</code>, other options are <code>fade</code>, <code>flip</code>, <code>show</code>, and the names of any registered custom transitions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>slide</code>.
	* @param	sDefaultTransitionNameMidColumn New value for property <code>defaultTransitionNameMidColumn</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultTransitionNameMidColumn( sDefaultTransitionNameMidColumn:String):sap.f.FlexibleColumnLayout;
	@:overload( function(oInitialBeginColumnPage:sap.ui.core.ID):sap.f.FlexibleColumnLayout{ })

	/**
	* Sets the associated {@link #getInitialBeginColumnPage initialBeginColumnPage}.
	* @param	oInitialBeginColumnPage ID of an element which becomes the new target of this initialBeginColumnPage association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialBeginColumnPage( oInitialBeginColumnPage:sap.ui.core.Control):sap.f.FlexibleColumnLayout;
	@:overload( function(oInitialEndColumnPage:sap.ui.core.ID):sap.f.FlexibleColumnLayout{ })

	/**
	* Sets the associated {@link #getInitialEndColumnPage initialEndColumnPage}.
	* @param	oInitialEndColumnPage ID of an element which becomes the new target of this initialEndColumnPage association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialEndColumnPage( oInitialEndColumnPage:sap.ui.core.Control):sap.f.FlexibleColumnLayout;
	@:overload( function(oInitialMidColumnPage:sap.ui.core.ID):sap.f.FlexibleColumnLayout{ })

	/**
	* Sets the associated {@link #getInitialMidColumnPage initialMidColumnPage}.
	* @param	oInitialMidColumnPage ID of an element which becomes the new target of this initialMidColumnPage association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialMidColumnPage( oInitialMidColumnPage:sap.ui.core.Control):sap.f.FlexibleColumnLayout;

	/**
	* Sets a new value for property {@link #getLayout layout}.

Determines the layout of the control - number of visible columns and their relative sizes.

For more details, see {@link topic:3b9f760da5b64adf8db7f95247879086 Types of Layout} in the documentation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>OneColumn</code>.
	* @param	sLayout New value for property <code>layout</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayout( sLayout:sap.f.LayoutType):sap.f.FlexibleColumnLayout;

	/**
	* Navigates to the given page inside the FlexibleColumnLayout. Columns are scanned for the page in the following order: <code>Begin</code>, <code>Mid</code>, <code>End</code>.
	* @param	sPageId The screen to which we are navigating to. The ID or the control itself can be given.
	* @param	sTransitionName The type of the transition/animation to apply. This parameter can be omitted; then the default value is "slide" (horizontal movement from the right). Other options are: "fade", "flip", and "show" and the names of any registered custom transitions.

None of the standard transitions is currently making use of any given transition parameters.
	* @param	oData This optional object can carry any payload data which should be made available to the target page. The beforeShow event on the target page will contain this data object as data property.

Use case: in scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data.

When the transitionParameters object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can contain additional information for the transition function, like the DOM element which triggered the transition or the desired transition duration.

For a proper parameter order, the "data" parameter must be given when the transitionParameters parameter is used (it can be given as "null").

NOTE: It depends on the transition function how the object should be structured and which parameters are actually used to influence the transition. The "show", "slide" and "fade" transitions do not use any parameter.
	* @return	The <code>sap.f.FlexibleColumnLayout</code> instance
	*/
	public function to( sPageId:String, sTransitionName:String, oData:Dynamic, oTransitionParameters:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Navigates to a given Begin column page.
	* @param	sPageId The screen to which drilldown should happen. The ID or the control itself can be given.
	* @param	sTransitionName The type of the transition/animation to apply. This parameter can be omitted; then the default value is "slide" (horizontal movement from the right). Other options are: "fade", "flip", and "show" and the names of any registered custom transitions.

None of the standard transitions is currently making use of any given transition parameters.
	* @param	oData This optional object can carry any payload data which should be made available to the target page. The beforeShow event on the target page will contain this data object as data property.

Use case: in scenarios where the entity triggering the navigation can't or shouldn't directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can contain additional information for the transition function, like the DOM element, which triggered the transition or the desired transition duration.

For a proper parameter order, the data parameter must be given when the transitionParameters parameter is used (it can be given as "null").

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition. The "show", "slide" and "fade" transitions do not use any parameter.
	* @return	The <code>sap.f.FlexibleColumnLayout</code> instance
	*/
	public function toBeginColumnPage( sPageId:String, sTransitionName:String, oData:Dynamic, oTransitionParameters:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Navigates to a given End column page.
	* @param	sPageId The screen to which drilldown should happen. The ID or the control itself can be given.
	* @param	sTransitionName The type of the transition/animation to apply. This parameter can be omitted; then the default value is "slide" (horizontal movement from the right). Other options are: "fade", "flip", and "show" and the names of any registered custom transitions.

None of the standard transitions is currently making use of any given transition parameters.
	* @param	oData This optional object can carry any payload data which should be made available to the target page. The beforeShow event on the target page will contain this data object as data property.

Use case: in scenarios where the entity triggering the navigation can't or shouldn't directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can contain additional information for the transition function, like the DOM element, which triggered the transition or the desired transition duration.

For a proper parameter order, the data parameter must be given when the transitionParameters parameter is used (it can be given as "null").

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition. The "show", "slide" and "fade" transitions do not use any parameter.
	* @return	The <code>sap.f.FlexibleColumnLayout</code> instance
	*/
	public function toEndColumnPage( sPageId:String, sTransitionName:String, oData:Dynamic, oTransitionParameters:Dynamic):sap.f.FlexibleColumnLayout;

	/**
	* Navigates to a given Mid column page.
	* @param	sPageId The screen to which drilldown should happen. The ID or the control itself can be given.
	* @param	sTransitionName The type of the transition/animation to apply. This parameter can be omitted; then the default value is "slide" (horizontal movement from the right). Other options are: "fade", "flip", and "show" and the names of any registered custom transitions.

None of the standard transitions is currently making use of any given transition parameters.
	* @param	oData This optional object can carry any payload data which should be made available to the target page. The beforeShow event on the target page will contain this data object as data property.

Use case: in scenarios where the entity triggering the navigation can't or shouldn't directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can contain additional information for the transition function, like the DOM element, which triggered the transition or the desired transition duration.

For a proper parameter order, the data parameter must be given when the transitionParameters parameter is used (it can be given as "null").

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition. The "show", "slide" and "fade" transitions do not use any parameter.
	* @return	The <code>sap.f.FlexibleColumnLayout</code> instance
	*/
	public function toMidColumnPage( sPageId:String, sTransitionName:String, oData:Dynamic, oTransitionParameters:Dynamic):sap.f.FlexibleColumnLayout;
}

typedef FlexibleColumnLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the layout of the control - number of visible columns and their relative sizes.

For more details, see {@link topic:3b9f760da5b64adf8db7f95247879086 Types of Layout} in the documentation.
	*/
	@:optional var layout:haxe.extern.EitherType<String,sap.f.LayoutType>;

	/**
	* Determines the type of the transition/animation to apply for the <code>Begin</code> column when <code>to()</code> is called without defining the transition to use. The default is <code>slide</code>, other options are <code>fade</code>, <code>flip</code>, <code>show</code>, and the names of any registered custom transitions.
	*/
	@:optional var defaultTransitionNameBeginColumn:String;

	/**
	* Determines the type of the transition/animation to apply for the <code>Mid</code> column when <code>to()</code> is called without defining the transition to use. The default is <code>slide</code>, other options are <code>fade</code>, <code>flip</code>, <code>show</code>, and the names of any registered custom transitions.
	*/
	@:optional var defaultTransitionNameMidColumn:String;

	/**
	* Determines the type of the transition/animation to apply for the <code>End</code> column when <code>to()</code> is called without defining the transition to use. The default is <code>slide</code>, other options are <code>fade</code>, <code>flip</code>, <code>show</code>, and the names of any registered custom transitions.
	*/
	@:optional var defaultTransitionNameEndColumn:String;

	/**
	* Specifies the background color of the content. The visualization of the different options depends on the used theme.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

    /**
    * The content entities between which the <code>FlexibleColumnLayout</code> navigates in the <code>Begin</code> column.

These should be any control with page semantics. These aggregated controls will receive navigation events like {@link sap.m.NavContainerChild#event:beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
    */
	@:optional var beginColumnPages:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The content entities between which the <code>FlexibleColumnLayout</code> navigates in the <code>Mid</code> column.

These should be any control with page semantics. These aggregated controls will receive navigation events like {@link sap.m.NavContainerChild#event:beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
    */
	@:optional var midColumnPages:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The content entities between which the <code>FlexibleColumnLayout</code> navigates in the <code>End</code> column.

These should be any control with page semantics. These aggregated controls will receive navigation events like {@link sap.m.NavContainerChild#event:beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
    */
	@:optional var endColumnPages:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * null
    */
	@:optional var _beginColumnNav:haxe.extern.EitherType<String,sap.m.NavContainer>;

    /**
    * null
    */
	@:optional var _midColumnNav:haxe.extern.EitherType<String,sap.m.NavContainer>;

    /**
    * null
    */
	@:optional var _endColumnNav:haxe.extern.EitherType<String,sap.m.NavContainer>;

    /**
    * null
    */
	@:optional var _beginColumnBackArrow:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _midColumnForwardArrow:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _midColumnBackArrow:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _endColumnForwardArrow:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* Sets the initial <code>Begin</code> column page, which is displayed on application launch.
	*/
	@:optional var initialBeginColumnPage:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Sets the initial <code>Mid</code> column page, which is displayed on application launch.
	*/
	@:optional var initialMidColumnPage:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Sets the initial <code>End</code> column page, which is displayed on application launch.
	*/
	@:optional var initialEndColumnPage:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Fires when navigation between two pages in the <code>Begin</code> column has completed.

NOTE: In case of animated transitions this event is fired with some delay after the navigate event.
	*/
	@:optional var afterBeginColumnNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when navigation between two pages in the <code>End</code> column has completed.

NOTE: In case of animated transitions this event is fired with some delay after the navigate event.
	*/
	@:optional var afterEndColumnNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when navigation between two pages in the <code>Mid</code> column has completed.

NOTE: In case of animated transitions this event is fired with some delay after the navigate event.
	*/
	@:optional var afterMidColumnNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when navigation between two pages in the <code>Begin</code> column has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	*/
	@:optional var beginColumnNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when navigation between two pages in the <code>End</code> column has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	*/
	@:optional var endColumnNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when navigation between two pages in the <code>Mid</code> column has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	*/
	@:optional var midColumnNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when there is a change in the <code>layout</code> property or in the maximum number of columns that can be displayed at once. <br/></br> <ul>The interactions that may lead to a state change are: <li>the property <code>layout</code> was changed indirectly by the user clicking a layout arrow</li> <li>the user resized the browser beyond a breakpoint, thus changing the maximum number of columns that can be displayed at once.</li></ul> <br/><br/> <b>Note: </b>The event is suppressed while the control has zero width and will be fired the first time it gets a non-zero width
	*/
	@:optional var stateChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
