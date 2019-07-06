package sap.m;

@:native("sap.m.SplitContainer")

/**
* SplitContainer maintains two NavContainers if running on tablet or desktop and one NavContainer - on phone. The display of the master NavContainer depends on the portrait/landscape mode of the device and the mode of SplitContainer.

NOTE: This control must be rendered as a full screen control in order to make the show/hide master area work properly.
*/
extern class SplitContainer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SplitContainerArgs):Void {})
	public function new(?mSettings:SplitContainerArgs):Void;

	/**
	* Adds some detailPage to the aggregation {@link #getDetailPages detailPages}.
	* @param	oDetailPage The detailPage to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addDetailPage( oDetailPage:sap.ui.core.Control):sap.m.SplitContainer;

	/**
	* Adds some masterPage to the aggregation {@link #getMasterPages masterPages}.
	* @param	oMasterPage The masterPage to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMasterPage( oMasterPage:sap.ui.core.Control):sap.m.SplitContainer;

	/**
	* Adds a content entity either to master area or detail area depending on the master parameter.

The method is provided mainly for providing API consistency between sap.m.SplitContainer and sap.m.App. So that the same code line can be reused.
	* @param	oPage The content entities between which this SplitContainer navigates in either master area or detail area depending on the master parameter. These can be of type sap.m.Page, sap.ui.core.View, sap.m.Carousel or any other control with fullscreen/page semantics.
	* @param	bMaster States if the page should be added to the master area. If it's set to false, the page is added to detail area.
	* @return	null
	*/
	public function addPage( oPage:sap.ui.core.Control, bMaster:Bool):sap.m.SplitContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterDetailNavigate afterDetailNavigate} event of this <code>sap.m.SplitContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitContainer</code> itself.

Fires when navigation between two pages in detail area has completed. NOTE: In case of animated transitions this event is fired with some delay after the "navigate" event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterDetailNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterMasterClose afterMasterClose} event of this <code>sap.m.SplitContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitContainer</code> itself.

Fires when the master area is fully closed after the animation (if any).
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterMasterClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterMasterNavigate afterMasterNavigate} event of this <code>sap.m.SplitContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitContainer</code> itself.

Fires when navigation between two pages in master area has completed. NOTE: In case of animated transitions this event is fired with some delay after the navigate event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterMasterNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterMasterOpen afterMasterOpen} event of this <code>sap.m.SplitContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitContainer</code> itself.

Fires when the master area is fully opened after animation if any.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterMasterOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeMasterClose beforeMasterClose} event of this <code>sap.m.SplitContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitContainer</code> itself.

Fires before the master area is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeMasterClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeMasterOpen beforeMasterOpen} event of this <code>sap.m.SplitContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitContainer</code> itself.

Fires before the master area is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeMasterOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:detailNavigate detailNavigate} event of this <code>sap.m.SplitContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitContainer</code> itself.

Fires when navigation between two pages in detail area has been triggered. The transition (if any) to the new page has not started yet. NOTE: This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDetailNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:masterButton masterButton} event of this <code>sap.m.SplitContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitContainer</code> itself.

Fires when a Master Button needs to be shown or hidden. This is necessary for custom headers when the SplitContainer control does not handle the placement of the master button automatically.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMasterButton( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:masterNavigate masterNavigate} event of this <code>sap.m.SplitContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.SplitContainer</code> itself.

Fires when navigation between two pages in master area has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.SplitContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMasterNavigate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Navigates back to the previous detail page found in the history.
	* @param	oBackData This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as backData property. (The original data from the to() navigation will still be available as data property.)

In scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used, for example, when returning from a detail page to transfer any settings done there.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameter This optional object can give additional information to the transition function, like the DOM element, which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the transitionParameters property, the data property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	null
	*/
	public function backDetail( oBackData:Dynamic, oTransitionParameter:Dynamic):sap.m.SplitContainer;

	/**
	* Navigates back to the previous master page which is found in the history.
	* @param	oBackData This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as backData property (the original data from the to() navigation will still be available as data property).

In scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used, for example, when returning from a detail page to transfer any settings done there.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameter This optional object can give additional information to the transition function, like the DOM element, which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the transitionParameters property, the data property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	null
	*/
	public function backMaster( oBackData:Dynamic, oTransitionParameter:Dynamic):sap.m.SplitContainer;

	/**
	* Navigates back to the nearest previous page in the SplitContainer history with the given ID (if there is no such page among the previous pages, nothing happens). The transition effect, which had been used to get to the current page is inverted and used for this navigation.

Calling this navigation method, first triggers the (cancelable) navigate event on the SplitContainer, then the beforeHide pseudo event on the source page, beforeFirstShow (if applicable), and beforeShow on the target page. Later, after the transition has completed, the afterShow pseudo event is triggered on the target page and afterHide - on the page, which has been left. The given backData object is available in the beforeFirstShow, beforeShow, and afterShow event objects as data property. The original "data" object from the "to" navigation is also available in these event objects.
	* @param	sPageId The screen to which is being navigated to. The ID or the control itself can be given.
	* @param	oBackData This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as backData property. (the original data from the to() navigation will still be available as data property).

In scenarios, where the entity triggering the navigation can't or shouldn't directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used, for example, when returning from a detail page to transfer any settings done there.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can give additional information to the transition function, like the DOM element, which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the transitionParameters property, the data property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	null
	*/
	public function backToPage( sPageId:String, oBackData:Dynamic, oTransitionParameters:Dynamic):sap.m.SplitContainer;

	/**
	* Navigates back to the initial/top level of Detail (this is the element aggregated as initialPage, or the first added element). NOTE: If already on the initial page, nothing happens. The transition effect which had been used to get to the current page is inverted and used for this navigation.
	* @param	oBackData This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as backData property (the original data from the to() navigation will still be available as data property).

In scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used, for example, when returning from a detail page to transfer any settings done there.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameter This optional object can give additional information to the transition function, like the DOM element, which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the transitionParameters property, the data property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	null
	*/
	public function backToTopDetail( oBackData:Dynamic, oTransitionParameter:Dynamic):sap.ui.core.Control;

	/**
	* Navigates back to the initial/top level of Master (this is the element aggregated as "initialPage", or the first added element). NOTE: If already on the initial page, nothing happens. The transition effect which had been used to get to the current page is inverted and used for this navigation.
	* @param	oBackData This optional object can carry any payload data which should be made available to the target page of the back navigation. The event on the target page will contain this data object as "backData" property. (The original data from the "to()" navigation will still be available as "data" property.)

In scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data. For back navigation this can be used e.g. when returning from a detail page to transfer any settings done there.

When the "transitionParameters" object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameter This optional object can give additional information to the transition function, like the DOM element which triggered the transition or the desired transition duration. The animation type can NOT be selected here - it is always the inverse of the "to" navigation.

In order to use the transitionParameters property, the data property must be used (at least "null" must be given) for a proper parameter order.

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition.
	* @return	null
	*/
	public function backToTopMaster( oBackData:Dynamic, oTransitionParameter:Dynamic):sap.ui.core.Control;

	/**
	* Destroys all the detailPages in the aggregation {@link #getDetailPages detailPages}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDetailPages( ):sap.m.SplitContainer;

	/**
	* Destroys all the masterPages in the aggregation {@link #getMasterPages masterPages}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMasterPages( ):sap.m.SplitContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterDetailNavigate afterDetailNavigate} event of this <code>sap.m.SplitContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterDetailNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterMasterClose afterMasterClose} event of this <code>sap.m.SplitContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterMasterClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterMasterNavigate afterMasterNavigate} event of this <code>sap.m.SplitContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterMasterNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterMasterOpen afterMasterOpen} event of this <code>sap.m.SplitContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterMasterOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeMasterClose beforeMasterClose} event of this <code>sap.m.SplitContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeMasterClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeMasterOpen beforeMasterOpen} event of this <code>sap.m.SplitContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeMasterOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:detailNavigate detailNavigate} event of this <code>sap.m.SplitContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDetailNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:masterButton masterButton} event of this <code>sap.m.SplitContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMasterButton( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:masterNavigate masterNavigate} event of this <code>sap.m.SplitContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMasterNavigate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.SplitContainer;

	/**
	* Creates a new subclass of class sap.m.SplitContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundColor backgroundColor}.

Determines the background color of the SplitContainer. If set, this color overrides the default one, which is defined by the theme (should only be used when really required). Any configured background image will be placed above this colored background, but any theme adaptation in the Theme Designer will override this setting. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete SplitContainer or whether it should be tiled.
	* @return	Value of property <code>backgroundColor</code>
	*/
	public function getBackgroundColor( ):String;

	/**
	* Gets current value of property {@link #getBackgroundImage backgroundImage}.

Sets the background image of the SplitContainer. When set, this image overrides the default background defined by the theme (should only be used when really required). This background image will be placed above any color set for the background, but any theme adaptation in the Theme Designer will override this image setting. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete SplitContainer or whether it should be tiled.
	* @return	Value of property <code>backgroundImage</code>
	*/
	public function getBackgroundImage( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getBackgroundOpacity backgroundOpacity}.

Defines the opacity of the background image - between 0 (fully transparent) and 1 (fully opaque). This can be used to improve the content visibility by making the background image partly transparent.

Default value is <code>1</code>.
	* @return	Value of property <code>backgroundOpacity</code>
	*/
	public function getBackgroundOpacity( ):Float;

	/**
	* Gets current value of property {@link #getBackgroundRepeat backgroundRepeat}.

Defines whether the background image (if configured) is proportionally stretched to cover the whole SplitContainer (false) or whether it should be tiled (true).

Default value is <code>false</code>.
	* @return	Value of property <code>backgroundRepeat</code>
	*/
	public function getBackgroundRepeat( ):Bool;

	/**
	* Returns the current displayed detail page.
	* @return	null
	*/
	public function getCurrentDetailPage( ):sap.ui.core.Control;

	/**
	* Returns the current displayed master page.
	* @return	null
	*/
	public function getCurrentMasterPage( ):sap.ui.core.Control;

	/**
	* Returns the currently displayed page either in master area or in detail area. When the parameter is set to true, the current page in master area is returned, otherwise, the current page in detail area is returned.

This method is provided mainly for API consistency between sap.m.SplitContainer and sap.m.App, so that the same code line can be reused.
	* @param	bMaster States if this function returns the current page in master area. If it's set to false, the current page in detail area will be returned.
	* @return	null
	*/
	public function getCurrentPage( bMaster:Bool):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getDefaultTransitionNameDetail defaultTransitionNameDetail}.

Determines the type of the transition/animation to apply when to() is called without defining the transition to use. The default is "slide", other options are "fade", "show", and the names of any registered custom transitions.

Default value is <code>slide</code>.
	* @return	Value of property <code>defaultTransitionNameDetail</code>
	*/
	public function getDefaultTransitionNameDetail( ):String;

	/**
	* Gets current value of property {@link #getDefaultTransitionNameMaster defaultTransitionNameMaster}.

Determines the type of the transition/animation to apply when to() is called, without defining the transition to use. The default is "slide", other options are "fade", "show", and the names of any registered custom transitions.

Default value is <code>slide</code>.
	* @return	Value of property <code>defaultTransitionNameMaster</code>
	*/
	public function getDefaultTransitionNameMaster( ):String;

	/**
	* Returns the page with the given ID in detail area. If there's no page that has the given ID, null is returned.
	* @param	sId The ID of the page that needs to be fetched.
	* @return	null
	*/
	public function getDetailPage( sId:String):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getDetailPages detailPages}.

Determines the content entities, between which the SplitContainer navigates in detail area. These can be of type sap.m.Page, sap.ui.core.View, sap.m.Carousel or any other control with fullscreen/page semantics. These aggregated controls receive navigation events like {@link sap.m.NavContainerChild#beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
	* @return	null
	*/
	public function getDetailPages( ):Array<sap.ui.core.Control>;

	/**
	* ID of the element which is the current target of the association {@link #getInitialDetail initialDetail}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialDetail( ):sap.ui.core.ID;

	/**
	* ID of the element which is the current target of the association {@link #getInitialMaster initialMaster}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialMaster( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getMasterButtonText masterButtonText}.

Determines the text displayed in master button, which has a default value "Navigation". This text is only displayed in iOS platform and the icon from the current page in detail area is displayed in the master button for the other platforms. The master button is shown/hidden depending on the orientation of the device and whether the master area is opened or not. SplitContainer manages the show/hide of the master button by itself only when the pages added to the detail area are sap.m.Page with built-in header or sap.m.Page with built-in header, which is wrapped by one or several sap.ui.core.mvc.View. Otherwise, the show/hide of master button needs to be managed by the application.
	* @return	Value of property <code>masterButtonText</code>
	*/
	public function getMasterButtonText( ):String;

	/**
	* Gets current value of property {@link #getMasterButtonTooltip masterButtonTooltip}.

Specifies the tooltip of the master button. If the tooltip is not specified, the title of the page, which is displayed is the master part, is set as tooltip to the master button.
	* @return	Value of property <code>masterButtonTooltip</code>
	*/
	public function getMasterButtonTooltip( ):String;

	/**
	* Returns the page with the given ID in master area (if there's no page that has the given ID, null is returned).
	* @param	sId The ID of the page that needs to be fetched
	* @return	null
	*/
	public function getMasterPage( sId:String):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getMasterPages masterPages}.

Determines the content entities, between which the SplitContainer navigates in master area. These can be of type sap.m.Page, sap.ui.core.View, sap.m.Carousel or any other control with fullscreen/page semantics. These aggregated controls receive navigation events like {@link sap.m.NavContainerChild#beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
	* @return	null
	*/
	public function getMasterPages( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.m.SplitContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMode mode}.

Defines whether the master page will always be displayed (in portrait and landscape mode - StretchCompressMode), or if it should be hidden when in portrait mode (ShowHideMode). Default is ShowHideMode. Other possible values are Hide (Master is always hidden) and Popover (master is displayed in popover).

Default value is <code>ShowHideMode</code>.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):sap.m.SplitAppMode;

	/**
	* Returns the page with the given ID from either master area, or detail area depending on the master parameter (if there's no page that has the given ID, null is returned).
	* @param	sId The ID of the page that needs to be fetched
	* @param	bMaster If the page with given ID should be fetched from the master area. If it's set to false, the page will be fetched from detail area.
	* @return	null
	*/
	public function getPage( sId:String, bMaster:Bool):sap.ui.core.Control;

	/**
	* Returns the previous page (the page, from which the user drilled down to the current page with to()). Note: this is not the page, which the user has seen before, but the page which is the target of the next back() navigation. If there is no previous page, "undefined" is returned.
	* @param	bMaster States if this function returns the previous page in master area. If it's set to false, the previous page in detail area will be returned.
	* @return	null
	*/
	public function getPreviousPage( bMaster:Bool):sap.ui.core.Control;

	/**
	* Used to hide the master page when in ShowHideMode and the device is in portrait mode.
	* @return	null
	*/
	public function hideMaster( ):sap.m.SplitContainer;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getDetailPages detailPages}. and returns its index if found or -1 otherwise.
	* @param	oDetailPage The detailPage whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfDetailPage( oDetailPage:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getMasterPages masterPages}. and returns its index if found or -1 otherwise.
	* @param	oMasterPage The masterPage whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfMasterPage( oMasterPage:sap.ui.core.Control):Int;

	/**
	* Inserts a detailPage into the aggregation {@link #getDetailPages detailPages}.
	* @param	oDetailPage The detailPage to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the detailPage should be inserted at; for a negative value of <code>iIndex</code>, the detailPage is inserted at position 0; for a value greater than the current size of the aggregation, the detailPage is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertDetailPage( oDetailPage:sap.ui.core.Control, iIndex:Int):sap.m.SplitContainer;

	/**
	* Inserts a masterPage into the aggregation {@link #getMasterPages masterPages}.
	* @param	oMasterPage The masterPage to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the masterPage should be inserted at; for a negative value of <code>iIndex</code>, the masterPage is inserted at position 0; for a value greater than the current size of the aggregation, the masterPage is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMasterPage( oMasterPage:sap.ui.core.Control, iIndex:Int):sap.m.SplitContainer;

	/**
	* Inserts the page/control with the specified ID into the navigation history stack of the NavContainer.

This can be used for deep-linking when the user directly reached a drilldown detail page using a bookmark and then wants to navigate up in the drilldown hierarchy. Normally, such a back navigation would not be possible as there is no previous page in the SplitContainer's history stack.
	* @param	sPageId The ID of the control/page/screen, which is inserted into the history stack. The respective control must be aggregated by the SplitContainer, otherwise this will cause an error.
	* @param	sTransitionName The type of the transition/animation, which would have been used to navigate from the (inserted) previous page to the current page. When navigating back, the inverse animation will be applied. This parameter can be omitted; then the default value is "slide" (horizontal movement from the right).
	* @param	oData This optional object can carry any payload data which would have been given to the inserted previous page if the user would have done a normal forward navigation to it.
	* @return	null
	*/
	public function insertPreviousPage( sPageId:String, sTransitionName:String, oData:Dynamic):sap.m.SplitContainer;

	/**
	* Returns whether master area is currently displayed on the screen. In desktop browser or tablet, this method returns true when master area is displayed on the screen, regardless if in portrait or landscape mode. On mobile phone devices, this method returns true when the currently displayed page is from the pages, which are added to the master area, otherwise, it returns false.
	* @return	null
	*/
	public function isMasterShown( ):Bool;

	/**
	* Removes all the controls from the aggregation {@link #getDetailPages detailPages}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllDetailPages( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getMasterPages masterPages}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllMasterPages( ):Array<sap.ui.core.Control>;
	@:overload( function(vDetailPage:Int):sap.ui.core.Control{ })
	@:overload( function(vDetailPage:String):sap.ui.core.Control{ })

	/**
	* Removes a detailPage from the aggregation {@link #getDetailPages detailPages}.
	* @param	vDetailPage The detailPage to remove or its index or id
	* @return	The removed detailPage or <code>null</code>
	*/
	public function removeDetailPage( vDetailPage:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vMasterPage:Int):sap.ui.core.Control{ })
	@:overload( function(vMasterPage:String):sap.ui.core.Control{ })

	/**
	* Removes a masterPage from the aggregation {@link #getMasterPages masterPages}.
	* @param	vMasterPage The masterPage to remove or its index or id
	* @return	The removed masterPage or <code>null</code>
	*/
	public function removeMasterPage( vMasterPage:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getBackgroundColor backgroundColor}.

Determines the background color of the SplitContainer. If set, this color overrides the default one, which is defined by the theme (should only be used when really required). Any configured background image will be placed above this colored background, but any theme adaptation in the Theme Designer will override this setting. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete SplitContainer or whether it should be tiled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundColor New value for property <code>backgroundColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundColor( sBackgroundColor:String):sap.m.SplitContainer;

	/**
	* Sets a new value for property {@link #getBackgroundImage backgroundImage}.

Sets the background image of the SplitContainer. When set, this image overrides the default background defined by the theme (should only be used when really required). This background image will be placed above any color set for the background, but any theme adaptation in the Theme Designer will override this image setting. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete SplitContainer or whether it should be tiled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundImage New value for property <code>backgroundImage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundImage( sBackgroundImage:sap.ui.core.URI):sap.m.SplitContainer;

	/**
	* Sets a new value for property {@link #getBackgroundOpacity backgroundOpacity}.

Defines the opacity of the background image - between 0 (fully transparent) and 1 (fully opaque). This can be used to improve the content visibility by making the background image partly transparent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	fBackgroundOpacity New value for property <code>backgroundOpacity</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundOpacity( fBackgroundOpacity:Float):sap.m.SplitContainer;

	/**
	* Sets a new value for property {@link #getBackgroundRepeat backgroundRepeat}.

Defines whether the background image (if configured) is proportionally stretched to cover the whole SplitContainer (false) or whether it should be tiled (true).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bBackgroundRepeat New value for property <code>backgroundRepeat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundRepeat( bBackgroundRepeat:Bool):sap.m.SplitContainer;

	/**
	* Sets a new value for property {@link #getDefaultTransitionNameDetail defaultTransitionNameDetail}.

Determines the type of the transition/animation to apply when to() is called without defining the transition to use. The default is "slide", other options are "fade", "show", and the names of any registered custom transitions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>slide</code>.
	* @param	sDefaultTransitionNameDetail New value for property <code>defaultTransitionNameDetail</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultTransitionNameDetail( sDefaultTransitionNameDetail:String):sap.m.SplitContainer;

	/**
	* Sets a new value for property {@link #getDefaultTransitionNameMaster defaultTransitionNameMaster}.

Determines the type of the transition/animation to apply when to() is called, without defining the transition to use. The default is "slide", other options are "fade", "show", and the names of any registered custom transitions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>slide</code>.
	* @param	sDefaultTransitionNameMaster New value for property <code>defaultTransitionNameMaster</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultTransitionNameMaster( sDefaultTransitionNameMaster:String):sap.m.SplitContainer;
	@:overload( function(oInitialDetail:sap.ui.core.ID):sap.m.SplitContainer{ })

	/**
	* Sets the associated {@link #getInitialDetail initialDetail}.
	* @param	oInitialDetail ID of an element which becomes the new target of this initialDetail association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialDetail( oInitialDetail:sap.ui.core.Control):sap.m.SplitContainer;
	@:overload( function(oInitialMaster:sap.ui.core.ID):sap.m.SplitContainer{ })

	/**
	* Sets the associated {@link #getInitialMaster initialMaster}.
	* @param	oInitialMaster ID of an element which becomes the new target of this initialMaster association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialMaster( oInitialMaster:sap.ui.core.Control):sap.m.SplitContainer;

	/**
	* Sets a new value for property {@link #getMasterButtonText masterButtonText}.

Determines the text displayed in master button, which has a default value "Navigation". This text is only displayed in iOS platform and the icon from the current page in detail area is displayed in the master button for the other platforms. The master button is shown/hidden depending on the orientation of the device and whether the master area is opened or not. SplitContainer manages the show/hide of the master button by itself only when the pages added to the detail area are sap.m.Page with built-in header or sap.m.Page with built-in header, which is wrapped by one or several sap.ui.core.mvc.View. Otherwise, the show/hide of master button needs to be managed by the application.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMasterButtonText New value for property <code>masterButtonText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMasterButtonText( sMasterButtonText:String):sap.m.SplitContainer;

	/**
	* Sets a new value for property {@link #getMasterButtonTooltip masterButtonTooltip}.

Specifies the tooltip of the master button. If the tooltip is not specified, the title of the page, which is displayed is the master part, is set as tooltip to the master button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMasterButtonTooltip New value for property <code>masterButtonTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMasterButtonTooltip( sMasterButtonTooltip:String):sap.m.SplitContainer;

	/**
	* Sets a new value for property {@link #getMode mode}.

Defines whether the master page will always be displayed (in portrait and landscape mode - StretchCompressMode), or if it should be hidden when in portrait mode (ShowHideMode). Default is ShowHideMode. Other possible values are Hide (Master is always hidden) and Popover (master is displayed in popover).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>ShowHideMode</code>.
	* @param	sMode New value for property <code>mode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMode( sMode:sap.m.SplitAppMode):sap.m.SplitContainer;

	/**
	* Used to make the master page visible when in ShowHideMode and the device is in portrait mode.
	* @return	null
	*/
	public function showMaster( ):sap.m.SplitContainer;

	/**
	* Navigates to the given page inside the SplitContainer. The navigation is done inside the master area if the page has been added, otherwise, it tries to do the page navigation in the detail area.
	* @param	sPageId The screen to which we are navigating to. The ID or the control itself can be given.
	* @param	sTransitionName The type of the transition/animation to apply. This parameter can be omitted; then the default value is "slide" (horizontal movement from the right). Other options are: "fade", "flip", and "show" and the names of any registered custom transitions.

None of the standard transitions is currently making use of any given transition parameters.
	* @param	oData This optional object can carry any payload data which should be made available to the target page. The beforeShow event on the target page will contain this data object as data property.

Use case: in scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data.

When the transitionParameters object is used, this "data" object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters This optional object can contain additional information for the transition function, like the DOM element which triggered the transition or the desired transition duration.

For a proper parameter order, the "data" parameter must be given when the transitionParameters parameter is used (it can be given as "null").

NOTE: It depends on the transition function how the object should be structured and which parameters are actually used to influence the transition. The "show", "slide" and "fade" transitions do not use any parameter.
	* @return	null
	*/
	public function to( sPageId:String, sTransitionName:String, oData:Dynamic, oTransitionParameters:Dynamic):sap.m.SplitContainer;

	/**
	* Navigates to a given detail page.
	* @param	sPageId null
	* @param	sTransitionName The type of the transition/animation to apply. This parameter can be omitted; then the default is "slide" (horizontal movement from the right). Other options are: "fade", "flip", and "show" and the names of any registered custom transitions.

None of the standard transitions is currently making use of any given transition parameters.
	* @param	oData This optional object can carry any payload data which should be made available to the target page. The beforeShow event on the target page will contain this data object as data property.

Use case: in scenarios where the entity triggering the navigation can or should not directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameter This optional object can contain additional information for the transition function, like the DOM element, which triggered the transition or the desired transition duration.

For a proper parameter order, the data parameter must be given when the transitionParameters parameter is used (it can be given as "null").

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition. The "show", "slide" and "fade" transitions do not use any parameter.
	* @return	null
	*/
	public function toDetail( sPageId:String, sTransitionName:String, oData:Dynamic, oTransitionParameter:Dynamic):sap.m.SplitContainer;

	/**
	* Navigates to a given master page.
	* @param	sPageId The screen to which drilldown should happen. The ID or the control itself can be given.
	* @param	sTransitionName The type of the transition/animation to apply. This parameter can be omitted; then the default value is "slide" (horizontal movement from the right). Other options are: "fade", "flip", and "show" and the names of any registered custom transitions.

None of the standard transitions is currently making use of any given transition parameters.
	* @param	oData Since version 1.7.1. This optional object can carry any payload data which should be made available to the target page. The beforeShow event on the target page will contain this data object as data property.

Use case: in scenarios where the entity triggering the navigation can't or shouldn't directly initialize the target page, it can fill this object and the target page itself (or a listener on it) can take over the initialization, using the given data.

When the transitionParameters object is used, this data object must also be given (either as object or as null) in order to have a proper parameter order.
	* @param	oTransitionParameters Since version 1.7.1. This optional object can contain additional information for the transition function, like the DOM element, which triggered the transition or the desired transition duration.

For a proper parameter order, the data parameter must be given when the transitionParameters parameter is used (it can be given as "null").

NOTE: it depends on the transition function how the object should be structured and which parameters are actually used to influence the transition. The "show", "slide" and "fade" transitions do not use any parameter.
	* @return	null
	*/
	public function toMaster( sPageId:String, sTransitionName:String, oData:Dynamic, oTransitionParameters:Dynamic):sap.m.SplitContainer;
}

typedef SplitContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the type of the transition/animation to apply when to() is called without defining the transition to use. The default is "slide", other options are "fade", "show", and the names of any registered custom transitions.
	*/
	@:optional var defaultTransitionNameDetail:String;

	/**
	* Determines the type of the transition/animation to apply when to() is called, without defining the transition to use. The default is "slide", other options are "fade", "show", and the names of any registered custom transitions.
	*/
	@:optional var defaultTransitionNameMaster:String;

	/**
	* Defines whether the master page will always be displayed (in portrait and landscape mode - StretchCompressMode), or if it should be hidden when in portrait mode (ShowHideMode). Default is ShowHideMode. Other possible values are Hide (Master is always hidden) and Popover (master is displayed in popover).
	*/
	@:optional var mode:haxe.extern.EitherType<String,sap.m.SplitAppMode>;

	/**
	* Determines the text displayed in master button, which has a default value "Navigation". This text is only displayed in iOS platform and the icon from the current page in detail area is displayed in the master button for the other platforms. The master button is shown/hidden depending on the orientation of the device and whether the master area is opened or not. SplitContainer manages the show/hide of the master button by itself only when the pages added to the detail area are sap.m.Page with built-in header or sap.m.Page with built-in header, which is wrapped by one or several sap.ui.core.mvc.View. Otherwise, the show/hide of master button needs to be managed by the application.
	*/
	@:optional var masterButtonText:String;

	/**
	* Specifies the tooltip of the master button. If the tooltip is not specified, the title of the page, which is displayed is the master part, is set as tooltip to the master button.
	*/
	@:optional var masterButtonTooltip:String;

	/**
	* Determines the background color of the SplitContainer. If set, this color overrides the default one, which is defined by the theme (should only be used when really required). Any configured background image will be placed above this colored background, but any theme adaptation in the Theme Designer will override this setting. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete SplitContainer or whether it should be tiled.
	*/
	@:optional var backgroundColor:String;

	/**
	* Sets the background image of the SplitContainer. When set, this image overrides the default background defined by the theme (should only be used when really required). This background image will be placed above any color set for the background, but any theme adaptation in the Theme Designer will override this image setting. Use the backgroundRepeat property to define whether this image should be stretched to cover the complete SplitContainer or whether it should be tiled.
	*/
	@:optional var backgroundImage:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines whether the background image (if configured) is proportionally stretched to cover the whole SplitContainer (false) or whether it should be tiled (true).
	*/
	@:optional var backgroundRepeat:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the opacity of the background image - between 0 (fully transparent) and 1 (fully opaque). This can be used to improve the content visibility by making the background image partly transparent.
	*/
	@:optional var backgroundOpacity:haxe.extern.EitherType<String,Float>;

    /**
    * Determines the content entities, between which the SplitContainer navigates in master area. These can be of type sap.m.Page, sap.ui.core.View, sap.m.Carousel or any other control with fullscreen/page semantics. These aggregated controls receive navigation events like {@link sap.m.NavContainerChild#beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
    */
	@:optional var masterPages:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Determines the content entities, between which the SplitContainer navigates in detail area. These can be of type sap.m.Page, sap.ui.core.View, sap.m.Carousel or any other control with fullscreen/page semantics. These aggregated controls receive navigation events like {@link sap.m.NavContainerChild#beforeShow beforeShow}, they are documented in the pseudo interface {@link sap.m.NavContainerChild sap.m.NavContainerChild}.
    */
	@:optional var detailPages:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The master navigation container managed by the SplitContainer control.
    */
	@:optional var _navMaster:haxe.extern.EitherType<String,sap.m.NavContainer>;

    /**
    * The detail navigation container managed by the SplitContainer control.
    */
	@:optional var _navDetail:haxe.extern.EitherType<String,sap.m.NavContainer>;

    /**
    * A Popover managed by the SplitContainer control.
    */
	@:optional var _navPopover:haxe.extern.EitherType<String,sap.m.Popover>;

	/**
	* Sets the initial detail page, which is displayed on application launch.
	*/
	@:optional var initialDetail:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Sets the initial master page, which is displayed on application launch.
	*/
	@:optional var initialMaster:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Fires when navigation between two pages in detail area has completed. NOTE: In case of animated transitions this event is fired with some delay after the "navigate" event.
	*/
	@:optional var afterDetailNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when the master area is fully closed after the animation (if any).
	*/
	@:optional var afterMasterClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when navigation between two pages in master area has completed. NOTE: In case of animated transitions this event is fired with some delay after the navigate event.
	*/
	@:optional var afterMasterNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when the master area is fully opened after animation if any.
	*/
	@:optional var afterMasterOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires before the master area is closed.
	*/
	@:optional var beforeMasterClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires before the master area is opened.
	*/
	@:optional var beforeMasterOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when navigation between two pages in detail area has been triggered. The transition (if any) to the new page has not started yet. NOTE: This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	*/
	@:optional var detailNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when a Master Button needs to be shown or hidden. This is necessary for custom headers when the SplitContainer control does not handle the placement of the master button automatically.
	*/
	@:optional var masterButton:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when navigation between two pages in master area has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	*/
	@:optional var masterNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
