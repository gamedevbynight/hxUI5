package sap.ui.core;

@:native("sap.ui.core.Popup")

/**
* Popup Class is a helper class for controls that want themselves or parts of themselves or even other aggregated or composed controls or plain HTML content to popup on the screen like menus, dialogs, drop down boxes.

It allows the controls to be aligned to other DOM elements using the {@link sap.ui.core.Popup.Dock} method. With it you can define where the popup should be docked. One can dock the popup to the top, bottom, left or right side of another DOM element.

In the case that the popup has no space to show itself in the view port of the current window, it tries to open itself to the inverted direction.

<strong>Since 1.12.3</strong>, it is possible to add further DOM-element-IDs that can get the focus when <code>autoclose</code> or <code>modal</code> is enabled. E.g. the <code>RichTextEditor</code> with running TinyMCE uses this method to be able to focus the popups of the TinyMCE if the <code>RichTextEditor</code> runs within a <code>Popup</code>/<code>Dialog</code> etc.

To provide an additional DOM element that can get the focus the following should be done: <pre>
  // create an object with the corresponding DOM-ID
  var oObject = {
    id : "this_is_the_most_valuable_id_of_the_DOM_element"
  };

  // add the event prefix for adding an element to the ID of the corresponding Popup
  var sEventId = "sap.ui.core.Popup.addFocusableContent-" + oPopup.getId();

  // fire the event with the created event-ID and the object with the DOM-ID
  sap.ui.getCore().getEventBus().publish("sap.ui", sEventId, oObject);
</pre>

<strong>Since 1.75</strong>, DOM elements which have the attribute <code>data-sap-ui-integration-popup-content</code> are considered to be part of all opened popups. Those DOM elements can get the focus without causing the autoclose popup to be closed or the modal popup to take the focus back to itself. Additionally, a further DOM query selector can be provided by using {@link sap.ui.core.Popup.addExternalContent} to make the DOM elements which match the selector be considered as part of all opened popups. Please be aware that the Popup implementation only checks if a DOM element is marked with the attribute <code>data-sap-ui-integration-popup-content</code>. The actual attribute value is not checked. To prevent a DOM element from matching, you must remove the attribute itself. Setting the attribute to a falsy value is not enough in this case.
*/
extern class Popup extends sap.ui.base.ManagedObject
{
	@:overload( function(?oContent:sap.ui.core.Control, ?bModal:Bool, ?bShadow:Bool, ?bAutoClose:Bool):Void{ })
	@:overload( function(?oContent:sap.ui.core.Element, ?bModal:Bool, ?bShadow:Bool, ?bAutoClose:Bool):Void{ })

	/**
	* 
	* @param	oContent the content to render in the popup. In case of sap.ui.core.Element or DOMNode, the content must be present in the page (i.e. rendered). In case of sap.ui.core.Control, the Popup ensures rendering before opening.
	* @param	bModal whether the popup should be opened in a modal way (i.e. with blocking background). Setting this to "true" effectively blocks all attempts to focus content outside the modal popup. A modal popup also automatically sets the focus back to whatever was focused when the popup opened.
	* @param	bShadow whether the popup should be have a visual shadow underneath (shadow appearance depends on active theme and browser support)
	* @param	bAutoClose whether the popup should automatically close when the focus moves out of the popup
	* @return	Object
	*/
	public function new( ?oContent:js.html.Element, ?bModal:Bool, ?bShadow:Bool, ?bAutoClose:Bool):Void;
	@:overload( function(vSelectors:Array<String>, ?bMarkAsSelectable:Bool):Void{ })

	/**
	* Adds a DOM query selector for determining additional external popup content.

When the browser focus is switched from the main popup content (which is set by calling {@link #setContent}) to another DOM element, this DOM element is tested against the selector to determine:

<ul> <li>Autoclose popup: whether the popup should be kept open</li> <li>Modal popup: whether the focus is allowed to be taken away</li> </ul>
	* @param	vSelectors One query selector or an array of query selectors to be added
	* @param	bMarkAsSelectable Whether the external content should be marked instantly as user selectable. If the external content which matches the given or default selector is added after a modal popup is opened, this parameter needs to be set to <code>true</code> to make the external content user selectable.
	* @return	Void
	*/
	public static function addExternalContent( vSelectors:String, ?bMarkAsSelectable:Bool):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the static {@link #.blockLayerStateChange blockLayerStateChange} event.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to a dummy event provider object.

The event gets triggered in case of modal popups when the first of multiple popups opens and closes.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to a dummy event provider object
	* @return	Void
	*/
	public static function attachBlockLayerStateChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:closed closed} event of this <code>sap.ui.core.Popup</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.Popup</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.Popup</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClosed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.Popup;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:opened opened} event of this <code>sap.ui.core.Popup</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.Popup</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.Popup</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachOpened( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.Popup;

	/**
	* Closes the popup.

If the Popup is already closed or in the process of closing, calling this method does nothing. If the Popup is in the process of being opened and closed with a duration of 0, calling this method does nothing. If the Popup is in the process of being opened and closed with an animation duration, the animation will be chained, but this functionality is dangerous, may lead to inconsistent behavior and is thus not recommended and may even be removed.
	* @param	iDuration Animation duration in milliseconds. For <code>iDuration</code> == 0 the closing happens synchronously without animation.
	* @return	Void
	*/
	public function close( ?iDuration:Int):Void;

	/**
	* Closes and destroys this instance of Popup. Does not destroy the hosted content.
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Removes a previously attached event handler <code>fnFunction</code> from the static {@link #.blockLayerStateChange blockLayerStateChange} event.

The event gets triggered in case of modal popups when the first of multiple popups opens and closes.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Void
	*/
	public static function detachBlockLayerStateChange( fnFunction:()->Void, ?oListener:Dynamic):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:closed closed} event of this <code>sap.ui.core.Popup</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClosed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.Popup;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:opened opened} event of this <code>sap.ui.core.Popup</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachOpened( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.Popup;

	/**
	* When the Popup is being destroyed all corresponding references should be deleted as well to prevent any memory leaks.
	* @return	Void
	*/
	public function exit( ):Void;

	/**
	* Creates a new subclass of class sap.ui.core.Popup with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Determines whether the pop-up should auto closes or not.
	* @return	null
	*/
	public function getAutoClose( ):Bool;

	/**
	* Returns this Popup's content.
	* @return	the content that has been set previously (if any)
	*/
	public function getContent( ):Dynamic;

	/**
	* This returns true/false if the default followOf method should be used. If a separate followOf-handler was previously added the corresponding function is returned.
	* @return	if a function was set it is returned otherwise a boolean value whether the follow of is activated
	*/
	public function getFollowOf( ):Dynamic;
@:overload( function():String{ })

	/**
	* Returns the last z-index that has been handed out. does not increase the internal z-index counter.
	* @return	null
	*/
	public static function getLastZIndex( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.Popup.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Returns the value if a Popup is of modal type
	* @return	{boolean] bModal whether the Popup is of modal type
	*/
	public function getModal( ):Dynamic;
@:overload( function():String{ })

	/**
	* Returns the next available z-index on top of the existing/previous popups. Each call increases the internal z-index counter and the returned z-index.
	* @return	the next z-index on top of the Popup stack
	*/
	public static function getNextZIndex( ):String;

	/**
	* Returns whether the Popup is currently open, closed, or in a transition between these states.
	* @return	whether the Popup is opened
	*/
	public function getOpenState( ):sap.ui.core.OpenState;

	/**
	* Returns whether the Popup is currently open (this includes opening and closing animations).
	* @return	whether the Popup is opened (or currently being opened or closed)
	*/
	public function isOpen( ):Bool;

	/**
	* Marks the external content as not user selectable
	* @return	Void
	*/
	public static function markExternalContentAsNotSelectable( ):Void;

	/**
	* Marks the external content as user selectable
	* @return	Void
	*/
	public static function markExternalContentAsSelectable( ):Void;
	@:overload( function(?iDuration:Int, ?my:sap.ui.core.Popup.Dock, ?at:sap.ui.core.Popup.Dock, ?of:String, ?offset:String, ?collision:String, ?followOf:Bool):Void{ })
	@:overload( function(?iDuration:Int, ?my:sap.ui.core.Popup.Dock, ?at:sap.ui.core.Popup.Dock, ?of:sap.ui.core.Element, ?offset:String, ?collision:String, ?followOf:Bool):Void{ })
	@:overload( function(?iDuration:Int, ?my:sap.ui.core.Popup.Dock, ?at:sap.ui.core.Popup.Dock, ?of:js.html.Element, ?offset:String, ?collision:String, ?followOf:Bool):Void{ })
	@:overload( function(?iDuration:Int, ?my:sap.ui.core.Popup.Dock, ?at:sap.ui.core.Popup.Dock, ?of:Dynamic, ?offset:String, ?collision:String, ?followOf:Bool):Void{ })

	/**
	* Opens the popup's content at the position either specified here or beforehand via {@link #setPosition}. Content must be capable of being positioned via "position:absolute;" All parameters are optional (open() may be called without any parameters). iDuration may just be omitted, but if any of "at", "of", "offset", "collision" is given, also the preceding positioning parameters ("my", at",...) must be given.

If the Popup's OpenState is different from "CLOSED" (i.e. if the Popup is already open, opening or closing), the call is ignored.
	* @param	iDuration animation duration in milliseconds. For <code>iDuration</code> == 0 the opening happens synchronously without animation.
	* @param	my the popup content's reference position for docking
	* @param	at the "of" element's reference point for docking to
	* @param	of specifies the reference element to which the given content should dock to
	* @param	offset the offset relative to the docking point, specified as a string with space-separated pixel values (e.g. "10 0" to move the popup 10 pixels to the right). If the docking of both "my" and "at" are both RTL-sensitive ("begin" or "end"), this offset is automatically mirrored in the RTL case as well.
	* @param	collision defines how the position of an element should be adjusted in case it overflows the window in some direction.
	* @param	followOf defines whether the popup should follow the dock reference when the reference changes its position.
	* @return	Void
	*/
	public function open( ?iDuration:Int, ?my:sap.ui.core.Popup.Dock, ?at:sap.ui.core.Popup.Dock, ?of:jquery.Event, ?offset:String, ?collision:String, ?followOf:Bool):Void;
	@:overload( function(vSelectors:Array<String>, ?bMarkAsNotSelectable:Bool):Void{ })

	/**
	* Removes a DOM query selector which has been added by {@link sap.ui.core.Popup.addExternalContent}.

The default query selector <code>[data-sap-ui-integration-popup-content]</code> can't be deleted.
	* @param	vSelectors One query selector or an array of query selectors to be deleted
	* @param	bMarkAsNotSelectable Whether the external content should be marked instantly as not user selectable. If the selector is removed while a modal popup is still open, this parameter needs to be set to <code>true</code> to make the external content not user selectable.
	* @return	Void
	*/
	public static function removeExternalContent( vSelectors:String, ?bMarkAsNotSelectable:Bool):Void;

	/**
	* Sets the animation functions to use for opening and closing the Popup. Any null value will be ignored and not change the respective animation function. When called, the animation functions receive three parameters: - the jQuery object wrapping the DomRef of the popup - the requested animation duration - a function that MUST be called once the animation has completed
	* @param	fnOpen null
	* @param	fnClose null
	* @return	<code>this</code> to allow method chaining
	*/
	public function setAnimations( fnOpen:()->Void, fnClose:()->Void):sap.ui.core.Popup;

	/**
	* Used to specify whether the Popup should close as soon as - for non-touch environment: the focus leaves - for touch environment: user clicks the area which is outside the popup itself, the DOM element which the popup aligns to (except document), and any extra popup content set by calling setExtraContent.
	* @param	bAutoClose whether the Popup should close as soon as the focus leaves
	* @return	<code>this</code> to allow method chaining
	*/
	public function setAutoClose( bAutoClose:Bool):sap.ui.core.Popup;
	@:overload( function(oContent:sap.ui.core.Control):sap.ui.core.Popup{ })

	/**
	* Sets the content this instance of the Popup should render. Content must be capable of being positioned via position:absolute;
	* @param	oContent null
	* @return	<code>this</code> to allow method chaining
	*/
	public function setContent( oContent:js.html.Element):sap.ui.core.Popup;

	/**
	* Sets the durations for opening and closing animations. Null values and values < 0 are ignored. A duration of 0 means no animation.
	* @param	iOpenDuration in milliseconds
	* @param	iCloseDuration in milliseconds
	* @return	<code>this</code> to allow method chaining
	*/
	public function setDurations( ?iOpenDuration:Int, ?iCloseDuration:Int):sap.ui.core.Popup;
	@:overload( function(aContent:Array<js.html.Element>):sap.ui.core.Popup{ })
	@:overload( function(aContent:Array<sap.ui.core.Element>):sap.ui.core.Popup{ })

	/**
	* Sets additional content that are considered part of the Popup.

A popup with autoclose {@link #setAutoClose} enabled allows the focus to be moved into the extra content without closing itself.

A popup with modal {@link #setModal} enabled allows the focus to be shifted into the extra content without taking it back to the previous focused element in the popup.
	* @param	aContent An array containing DOM elements, sap.ui.core.Element or an ID which are considered to be part of the Popup; a value of null removes all previous content
	* @return	<code>this</code> to allow method chaining
	*/
	public function setExtraContent( aContent:Array<String>):sap.ui.core.Popup;
	@:overload( function(followOf:Bool):Void{ })
	@:overload( function(followOf:()->Void):Void{ })

	/**
	* This enabled/disables the Popup to follow its opening reference. If the Popup is open and a followOf should be set the corresponding listener will be attached.
	* @param	followOf a boolean value enabled/disables the default followOf-Handler. Or an individual handler can be given. null deletes all followOf settings.
	* @return	Void
	*/
	public function setFollowOf( followOf:Dynamic):Void;

	/**
	* Sets the ID of the element that should be focused once the popup opens. If the given ID is the ID of an existing Control, this Control's focusDomRef will be focused instead, which may be an HTML element with a different ID (usually a sub-element inside the Control). If no existing element ID is supplied and the Popup is modal or auto-close, the Popup will instead focus the first focusable element.
	* @param	sId the ID of the DOM element to focus
	* @return	Void
	*/
	public function setInitialFocusId( sId:String):Void;

	/**
	* Set an initial z-index that should be used by all Popup so all Popups start at least with the set z-index. If the given z-index is lower than any current available z-index the highest z-index will be used.
	* @param	iInitialZIndex is the initial z-index
	* @return	Void
	*/
	public static function setInitialZIndex( iInitialZIndex:String):Void;

	/**
	* Used to specify whether the Popup should be modal. A modal popup will put some fading "block layer" over the background and prevent attempts to put the focus outside/below the popup. Setting this while the popup is open will change "block layer" immediately.
	* @param	bModal whether the Popup is of modal type
	* @param	sModalCSSClass a CSS class (or space-separated list of classes) that should be added to the block layer
	* @return	<code>this</code> to allow method chaining
	*/
	public function setModal( bModal:Bool, ?sModalCSSClass:String):sap.ui.core.Popup;
	@:overload( function(my:sap.ui.core.Popup.Dock, at:sap.ui.core.Popup.Dock, ?of:String, ?offset:String, ?collision:String):sap.ui.core.Popup{ })
	@:overload( function(my:sap.ui.core.Popup.Dock, at:sap.ui.core.Popup.Dock, ?of:sap.ui.core.Element, ?offset:String, ?collision:String):sap.ui.core.Popup{ })
	@:overload( function(my:sap.ui.core.Popup.Dock, at:sap.ui.core.Popup.Dock, ?of:js.html.Element, ?offset:String, ?collision:String):sap.ui.core.Popup{ })
	@:overload( function(my:sap.ui.core.Popup.Dock, at:sap.ui.core.Popup.Dock, ?of:Dynamic, ?offset:String, ?collision:String):sap.ui.core.Popup{ })
	@:overload( function(my:sap.ui.core.Popup.Dock, at:sap.ui.core.Popup.Dock, ?of:jquery.Event, ?offset:String, ?collision:String):sap.ui.core.Popup{ })
	@:overload( function(my:sap.ui.core.Popup.Dock, at:Dynamic, ?of:String, ?offset:String, ?collision:String):sap.ui.core.Popup{ })
	@:overload( function(my:sap.ui.core.Popup.Dock, at:Dynamic, ?of:sap.ui.core.Element, ?offset:String, ?collision:String):sap.ui.core.Popup{ })
	@:overload( function(my:sap.ui.core.Popup.Dock, at:Dynamic, ?of:js.html.Element, ?offset:String, ?collision:String):sap.ui.core.Popup{ })
	@:overload( function(my:sap.ui.core.Popup.Dock, at:Dynamic, ?of:Dynamic, ?offset:String, ?collision:String):sap.ui.core.Popup{ })

	/**
	* Sets the position of the Popup (if you refer to a Control as anchor then do not use the DOMRef of the control which might change after re-renderings). Optional parameters can only be omitted when all subsequent parameters are omitted as well.
	* @param	my specifies which point of the given Content should be aligned
	* @param	at specifies the point of the reference element to which the given Content should be aligned
	* @param	of specifies the reference element to which the given content should be aligned as specified in the other parameters
	* @param	offset the offset relative to the docking point, specified as a string with space-separated pixel values (e.g. "0 10" to move the popup 10 pixels to the right). If the docking of both "my" and "at" are both RTL-sensitive ("begin" or "end"), this offset is automatically mirrored in the RTL case as well.
	* @param	collision defines how the position of an element should be adjusted in case it overflows the window in some direction. The valid values that refer to jQuery-UI's position parameters are "flip", "fit" and "none".
	* @return	<code>this</code> to allow method chaining
	*/
	public function setPosition( my:sap.ui.core.Popup.Dock, at:Dynamic, ?of:jquery.Event, ?offset:String, ?collision:String):sap.ui.core.Popup;

	/**
	* Determines whether the Popup should have a shadow (in supporting browsers). This also affects a currently open popup.
	* @param	bShowShadow whether to show a shadow
	* @return	<code>this</code> to allow method chaining
	*/
	public function setShadow( bShowShadow:Bool):sap.ui.core.Popup;
}

