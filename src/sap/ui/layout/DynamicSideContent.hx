package sap.ui.layout;

@:native("sap.ui.layout.DynamicSideContent")

/**
* Layout control that allows additional (side) content to be displayed dynamically.

<h3>Overview</h3>

<code>DynamicSideContent</code> is a layout control that allows additional content to be displayed in a way that flexibly adapts to different screen sizes. The side content appears in a container next to or directly below the main content (it doesn't overlay). When the side content is triggered, the main content becomes narrower (if appearing side-by-side). The side content contains a separate scrollbar when appearing next to the main content.

<h3>Usage</h3>

<i>When to use?</i>

Use this control if you want to display relevant information that is not critical for users to complete a task. Users should have access to all the key functions and critical information in the app even if they do not see the side content. This is important because on smaller screen sizes it may be difficult to display the side content in a way that is easily accessible for the user.

<i>When not to use?</i>

Don't use it if you want to display navigation or critical information that prevents users from completing a task when they have no access to the side content.

<h3>Responsive Behavior</h3>

Screen width > 1440 px

<ul><li>Main vs. side content ratio is 75 vs. 25 percent (with a minimum of 320px each).</li> <li>If the application defines a trigger, the side content can be hidden.</li></ul>

Screen width <= 1440 px and > 720px

<ul><li>Main vs. side content ratio is 66.666 vs. 33.333 percent (with a minimum of 320px each). If the side content width falls below 320 px, it automatically slides under the main content, unless the app development team specifies that it should disappear.</li></ul>

Screen width <= 720 px (for example on a mobile device)

<ul><li>In this case, the side content automatically disappears from the screen (unless specified to stay under the content) and can be triggered from a pre-set trigger (specified within the app). When the side content is triggered, it replaces the main content. We recommend that you always place the trigger for the side content in the same location, such as in the app footer.</li></ul>

A special case, allows for comparison mode between the main and side content. In this case, the screen is split into 50:50 percent for main vs. side content. The responsive behavior of the equal split is the same as in the standard view - the side content disappears on screen widths of less than 720 px and can only be viewed by triggering it.
*/
extern class DynamicSideContent extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:DynamicSideContentArgs):Void {})
	public function new(?mSettings:DynamicSideContentArgs):Void;

	/**
	* Adds a control to the main content area. Only the main content part in the aggregation is re-rendered.
	* @param	oControl Object to be added in the aggregation
	* @return	this pointer for chaining
	*/
	public function addMainContent( oControl:Dynamic):sap.ui.layout.DynamicSideContent;

	/**
	* Adds a control to the side content area. Only the side content part in the aggregation is re-rendered.
	* @param	oControl Object to be added in the aggregation
	* @return	this pointer for chaining
	*/
	public function addSideContent( oControl:Dynamic):sap.ui.layout.DynamicSideContent;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:breakpointChanged breakpointChanged} event of this <code>sap.ui.layout.DynamicSideContent</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.layout.DynamicSideContent</code> itself.

Fires when the current breakpoint has been changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.layout.DynamicSideContent</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBreakpointChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.layout.DynamicSideContent;

	/**
	* Destroys all the mainContent in the aggregation {@link #getMainContent mainContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMainContent( ):sap.ui.layout.DynamicSideContent;

	/**
	* Destroys all the sideContent in the aggregation {@link #getSideContent sideContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySideContent( ):sap.ui.layout.DynamicSideContent;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:breakpointChanged breakpointChanged} event of this <code>sap.ui.layout.DynamicSideContent</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBreakpointChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.layout.DynamicSideContent;

	/**
	* Creates a new subclass of class sap.ui.layout.DynamicSideContent with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getContainerQuery containerQuery}.

If set to TRUE, then not the media Query (device screen size) but the size of the container, surrounding the control, defines the current range.

Default value is <code>false</code>.
	* @return	Value of property <code>containerQuery</code>
	*/
	public function getContainerQuery( ):Bool;

	/**
	* Returns the breakpoint for the current state of the control.
	* @return	currentBreakpoint
	*/
	public function getCurrentBreakpoint( ):String;

	/**
	* Gets current value of property {@link #getEqualSplit equalSplit}.

Defines whether the control is in equal split mode. In this mode, the side and the main content take 50:50 percent of the container on all screen sizes except for phone, where the main and side contents are switching visibility using the toggle method.

Default value is <code>false</code>.
	* @return	Value of property <code>equalSplit</code>
	*/
	public function getEqualSplit( ):Bool;

	/**
	* Gets content of aggregation {@link #getMainContent mainContent}.

Main content controls.
	* @return	null
	*/
	public function getMainContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.ui.layout.DynamicSideContent.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getShowMainContent showMainContent}.

Determines whether the main content is visible or hidden.

Default value is <code>true</code>.
	* @return	Value of property <code>showMainContent</code>
	*/
	public function getShowMainContent( ):Bool;

	/**
	* Gets current value of property {@link #getShowSideContent showSideContent}.

Determines whether the side content is visible or hidden.

Default value is <code>true</code>.
	* @return	Value of property <code>showSideContent</code>
	*/
	public function getShowSideContent( ):Bool;

	/**
	* Gets content of aggregation {@link #getSideContent sideContent}.

Side content controls.
	* @return	null
	*/
	public function getSideContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getSideContentFallDown sideContentFallDown}.

Determines on which breakpoints the side content falls down below the main content.

Default value is <code>OnMinimumWidth</code>.
	* @return	Value of property <code>sideContentFallDown</code>
	*/
	public function getSideContentFallDown( ):sap.ui.layout.SideContentFallDown;

	/**
	* Gets current value of property {@link #getSideContentPosition sideContentPosition}.

Determines whether the side content is on the left or on the right side of the main content.

Default value is <code>End</code>.
	* @return	Value of property <code>sideContentPosition</code>
	*/
	public function getSideContentPosition( ):sap.ui.layout.SideContentPosition;

	/**
	* Gets current value of property {@link #getSideContentVisibility sideContentVisibility}.

Determines on which breakpoints the side content is visible.

Default value is <code>ShowAboveS</code>.
	* @return	Value of property <code>sideContentVisibility</code>
	*/
	public function getSideContentVisibility( ):sap.ui.layout.SideContentVisibility;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getMainContent mainContent}. and returns its index if found or -1 otherwise.
	* @param	oMainContent The mainContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfMainContent( oMainContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getSideContent sideContent}. and returns its index if found or -1 otherwise.
	* @param	oSideContent The sideContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSideContent( oSideContent:sap.ui.core.Control):Int;

	/**
	* Inserts a mainContent into the aggregation {@link #getMainContent mainContent}.
	* @param	oMainContent The mainContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the mainContent should be inserted at; for a negative value of <code>iIndex</code>, the mainContent is inserted at position 0; for a value greater than the current size of the aggregation, the mainContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMainContent( oMainContent:sap.ui.core.Control, iIndex:Int):sap.ui.layout.DynamicSideContent;

	/**
	* Inserts a sideContent into the aggregation {@link #getSideContent sideContent}.
	* @param	oSideContent The sideContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the sideContent should be inserted at; for a negative value of <code>iIndex</code>, the sideContent is inserted at position 0; for a value greater than the current size of the aggregation, the sideContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSideContent( oSideContent:sap.ui.core.Control, iIndex:Int):sap.ui.layout.DynamicSideContent;

	/**
	* Checks if the main content is visible.
	* @return	Main content visibility state
	*/
	public function isMainContentVisible( ):Bool;

	/**
	* Checks if the side content is visible.
	* @return	Side content visibility state
	*/
	public function isSideContentVisible( ):Bool;

	/**
	* Removes all the controls from the aggregation {@link #getMainContent mainContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllMainContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getSideContent sideContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSideContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vMainContent:Int):sap.ui.core.Control{ })
	@:overload( function(vMainContent:String):sap.ui.core.Control{ })

	/**
	* Removes a mainContent from the aggregation {@link #getMainContent mainContent}.
	* @param	vMainContent The mainContent to remove or its index or id
	* @return	The removed mainContent or <code>null</code>
	*/
	public function removeMainContent( vMainContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vSideContent:Int):sap.ui.core.Control{ })
	@:overload( function(vSideContent:String):sap.ui.core.Control{ })

	/**
	* Removes a sideContent from the aggregation {@link #getSideContent sideContent}.
	* @param	vSideContent The sideContent to remove or its index or id
	* @return	The removed sideContent or <code>null</code>
	*/
	public function removeSideContent( vSideContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getContainerQuery containerQuery}.

If set to TRUE, then not the media Query (device screen size) but the size of the container, surrounding the control, defines the current range.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bContainerQuery New value for property <code>containerQuery</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContainerQuery( bContainerQuery:Bool):sap.ui.layout.DynamicSideContent;

	/**
	* Sets or unsets the page in equalSplit mode.
	* @param	bState Determines if the page is set to equalSplit mode
	* @return	this pointer for chaining
	*/
	public function setEqualSplit( ?bState:Bool):sap.ui.layout.DynamicSideContent;

	/**
	* Sets the showMainContent property.
	* @param	bVisible Determines if the main content part is visible
	* @param	bSuppressVisualUpdate Determines if the visual state is updated
	* @return	this pointer for chaining
	*/
	public function setShowMainContent( bVisible:Bool, bSuppressVisualUpdate:Bool):sap.ui.layout.DynamicSideContent;

	/**
	* Sets the showSideContent property.
	* @param	bVisible Determines if the side content part is visible
	* @param	bSuppressVisualUpdate Determines if the visual state is updated
	* @return	this pointer for chaining
	*/
	public function setShowSideContent( bVisible:Bool, bSuppressVisualUpdate:Bool):sap.ui.layout.DynamicSideContent;

	/**
	* Sets a new value for property {@link #getSideContentFallDown sideContentFallDown}.

Determines on which breakpoints the side content falls down below the main content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>OnMinimumWidth</code>.
	* @param	sSideContentFallDown New value for property <code>sideContentFallDown</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSideContentFallDown( sSideContentFallDown:sap.ui.layout.SideContentFallDown):sap.ui.layout.DynamicSideContent;

	/**
	* Sets a new value for property {@link #getSideContentPosition sideContentPosition}.

Determines whether the side content is on the left or on the right side of the main content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>End</code>.
	* @param	sSideContentPosition New value for property <code>sideContentPosition</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSideContentPosition( sSideContentPosition:sap.ui.layout.SideContentPosition):sap.ui.layout.DynamicSideContent;

	/**
	* Sets the sideContentVisibility property.
	* @param	sVisibility Determines on which breakpoints the side content is visible.
	* @param	bSuppressVisualUpdate Determines if the visual state is updated
	* @return	this pointer for chaining
	*/
	public function setSideContentVisibility( sVisibility:sap.ui.layout.SideContentVisibility, bSuppressVisualUpdate:Bool):sap.ui.layout.DynamicSideContent;

	/**
	* Used for the toggle button functionality. When the control is on a phone screen size only, one control area is visible. This helper method is used to implement a button/switch for changing between the main and side content areas. Only works if the current breakpoint is "S".
	* @return	this pointer for chaining
	*/
	public function toggle( ):sap.ui.layout.DynamicSideContent;
}

typedef DynamicSideContentArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines whether the side content is visible or hidden.
	*/
	@:optional var showSideContent:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the main content is visible or hidden.
	*/
	@:optional var showMainContent:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines on which breakpoints the side content is visible.
	*/
	@:optional var sideContentVisibility:haxe.extern.EitherType<String,sap.ui.layout.SideContentVisibility>;

	/**
	* Determines on which breakpoints the side content falls down below the main content.
	*/
	@:optional var sideContentFallDown:haxe.extern.EitherType<String,sap.ui.layout.SideContentFallDown>;

	/**
	* Defines whether the control is in equal split mode. In this mode, the side and the main content take 50:50 percent of the container on all screen sizes except for phone, where the main and side contents are switching visibility using the toggle method.
	*/
	@:optional var equalSplit:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to TRUE, then not the media Query (device screen size) but the size of the container, surrounding the control, defines the current range.
	*/
	@:optional var containerQuery:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the side content is on the left or on the right side of the main content.
	*/
	@:optional var sideContentPosition:haxe.extern.EitherType<String,sap.ui.layout.SideContentPosition>;

    /**
    * Main content controls.
    */
	@:optional var mainContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Side content controls.
    */
	@:optional var sideContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fires when the current breakpoint has been changed.
	*/
	@:optional var breakpointChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
