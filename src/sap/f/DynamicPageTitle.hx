package sap.f;

@:native("sap.f.DynamicPageTitle")

/**
* Title of the {@link sap.f.DynamicPage}.

<h3>Overview</h3>

The <code>DynamicPageTitle</code> control is part of the {@link sap.f.DynamicPage} family and is used to serve as title of the {@link sap.f.DynamicPage DynamicPage}.

<h3>Usage</h3>

The <code>DynamicPageTitle</code> can hold any control and displays the most important information regarding the object that will always remain visible while scrolling.

<b>Note:</b> The <code>actions</code> aggregation accepts any UI5 control, but it`s recommended to use controls, suitable for {@link sap.m.Toolbar} and {@link sap.m.OverflowToolbar}.

If the <code>toggleHeaderOnTitleClick</code> property of the {@link sap.f.DynamicPage DynamicPage} is set to <code>true</code>, the user can switch between the expanded/collapsed states of the {@link sap.f.DynamicPageHeader DynamicPageHeader} by clicking on the <code>DynamicPageTitle</code> or by using the expand/collapse visual indicators, positioned at the bottom of the <code>DynamicPageTitle</code> and the <code>DynamicPageHeader</code>.

If set to <code>false</code>, the <code>DynamicPageTitle</code> is not clickable, the visual indicators are not available, and the app must provide other means for expanding/collapsing the <code>DynamicPageHeader</code>, if necessary.

<h3>Responsive Behavior</h3>

The responsive behavior of the <code>DynamicPageTitle</code> depends on the behavior of the content that is displayed.
*/
extern class DynamicPageTitle extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:DynamicPageTitleArgs):Void {})
	public function new(?mSettings:DynamicPageTitleArgs):Void;

	/**
	* Adds some action to the aggregation {@link #getActions actions}.
	* @param	oAction The action to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAction( oAction:sap.ui.core.Control):sap.f.DynamicPageTitle;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.f.DynamicPageTitle;

	/**
	* Adds some expandedContent to the aggregation {@link #getExpandedContent expandedContent}.
	* @param	oExpandedContent The expandedContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addExpandedContent( oExpandedContent:sap.ui.core.Control):sap.f.DynamicPageTitle;

	/**
	* Adds some navigationAction to the aggregation {@link #getNavigationActions navigationActions}.
	* @param	oNavigationAction The navigationAction to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addNavigationAction( oNavigationAction:sap.m.Button):sap.f.DynamicPageTitle;

	/**
	* Adds some snappedContent to the aggregation {@link #getSnappedContent snappedContent}.
	* @param	oSnappedContent The snappedContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSnappedContent( oSnappedContent:sap.ui.core.Control):sap.f.DynamicPageTitle;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:stateChange stateChange} event of this <code>sap.f.DynamicPageTitle</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.DynamicPageTitle</code> itself.

Fired when the title state (expanded/collapsed) is toggled by user interaction. For example, scrolling, title clicking/tapping, using expand/collapse button.

Also fired when the developer toggles the title state by programmatically changing the scroll position of the scrollbar of <code>DynamicPage</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.DynamicPageTitle</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStateChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.DynamicPageTitle;

	/**
	* Destroys all the actions in the aggregation {@link #getActions actions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyActions( ):sap.f.DynamicPageTitle;

	/**
	* Destroys the breadcrumbs in the aggregation {@link #getBreadcrumbs breadcrumbs}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyBreadcrumbs( ):sap.f.DynamicPageTitle;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.f.DynamicPageTitle;

	/**
	* Destroys all the expandedContent in the aggregation {@link #getExpandedContent expandedContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyExpandedContent( ):sap.f.DynamicPageTitle;

	/**
	* Destroys the expandedHeading in the aggregation {@link #getExpandedHeading expandedHeading}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyExpandedHeading( ):sap.f.DynamicPageTitle;

	/**
	* Destroys the heading in the aggregation {@link #getHeading heading}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeading( ):sap.f.DynamicPageTitle;

	/**
	* Destroys all the navigationActions in the aggregation {@link #getNavigationActions navigationActions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyNavigationActions( ):sap.f.DynamicPageTitle;

	/**
	* Destroys all the snappedContent in the aggregation {@link #getSnappedContent snappedContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySnappedContent( ):sap.f.DynamicPageTitle;

	/**
	* Destroys the snappedHeading in the aggregation {@link #getSnappedHeading snappedHeading}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySnappedHeading( ):sap.f.DynamicPageTitle;

	/**
	* Destroys the snappedTitleOnMobile in the aggregation {@link #getSnappedTitleOnMobile snappedTitleOnMobile}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySnappedTitleOnMobile( ):sap.f.DynamicPageTitle;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:stateChange stateChange} event of this <code>sap.f.DynamicPageTitle</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStateChange( fnFunction:()->Void, ?oListener:Dynamic):sap.f.DynamicPageTitle;

	/**
	* Creates a new subclass of class sap.f.DynamicPageTitle with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getActions actions}.

The <code>DynamicPageTitle</code> actions. <br><b>Note:</b> The <code>actions</code> aggregation accepts any UI5 control, but it`s recommended to use controls, suitable for {@link sap.m.Toolbar} and {@link sap.m.OverflowToolbar}.

<b>Note:</b> If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getActions( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getAreaShrinkRatio areaShrinkRatio}.

Assigns shrinking ratio to the <code>DynamicPageTitle</code> areas (Heading, Content, Actions). The greater value a section has the faster it shrinks when the screen size is being reduced.

The value must be set in <code>Heading:Content:Actions</code> format where Title, Content and Actions are numbers greater than or equal to 0. If set to 0, the respective area will not shrink.

For example, if <code>2:7:1</code> is set, the Content area will shrink seven times faster than the Actions area. So, when all three areas have width of 500px and the available space is reduced by 100px the Title area will reduced by 20px, the Content area - by 70px and the Actions area - by 10px.

If all the areas have assigned values greater than 1, the numbers are scaled so that at least one of them is equal to 1. For example, value of <code>2:4:8</code> is equal to <code>1:2:4</code>.

<Note:> When this property is set the <code>primaryArea</code> property has no effect.

Default value is <code>1:1.6:1.6</code>.
	* @return	Value of property <code>areaShrinkRatio</code>
	*/
	public function getAreaShrinkRatio( ):sap.f.DynamicPageTitleShrinkRatio;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Determines the background color of the <code>DynamicPageTitle</code>.

<b>Note:</b> The default value of <code>backgroundDesign</code> property is null. If the property is not set, the color of the background is <code>@sapUiObjectHeaderBackground</code>, which depends on the specific theme.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets content of aggregation {@link #getBreadcrumbs breadcrumbs}.

The breadcrumbs displayed in the <code>DynamicPageTitle</code> top-left area.
	* @return	null
	*/
	public function getBreadcrumbs( ):sap.m.IBreadcrumbs;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content is positioned in the <code>DynamicPageTitle</code> middle area and displayed in both expanded and collapsed (snapped) states.

<b>Note:</b> If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getExpandedContent expandedContent}.

The content that is displayed in the <code>DynamicPageTitle</code> in expanded state.
	* @return	null
	*/
	public function getExpandedContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getExpandedHeading expandedHeading}.

The <code>expandedHeading</code> is positioned in the <code>DynamicPageTitle</code> left area and is displayed when the header is in expanded state only. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in expanded state only.

<b>Note:</b> In order for <code>expandedHeading</code> to be taken into account, <code>heading</code> has to be empty. Combine <code>expandedHeading</code> with <code>snappedHeading</code> to switch content when the header switches state.
	* @return	null
	*/
	public function getExpandedHeading( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getHeading heading}.

The <code>heading</code> is positioned in the <code>DynamicPageTitle</code> left area and is displayed in both expanded and collapsed (snapped) states of the header. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in both expanded and collapsed states of the header.

<b>Notes:</b> <ul> <li><code>heading</code> is mutually exclusive with <code>snappedHeading</code> and <code>expandedHeading</code>. If <code>heading</code> is provided, both <code>snappedHeading</code> and <code>expandedHeading</code> are ignored. <code>heading</code> is useful when the content of <code>snappedHeading</code> and <code>expandedHeading</code> needs to be the same as it replaces them both.</li> <li>If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.</li> </ul>
	* @return	null
	*/
	public function getHeading( ):sap.ui.core.Control;

	/**
	* Returns a metadata object for class sap.f.DynamicPageTitle.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getNavigationActions navigationActions}.

The <code>DynamicPageTitle</code> navigation actions.

<b>Notes:</b> <ul> <li>The <code>navigationActions</code> position depends on the control size. If the control size is 1280px or bigger, they are rendered right next to the <code>actions</code>. Otherwise, they are rendered in the top-right area, above the <code>actions</code>. If a large number of elements(buttons) are used, there could be visual degradations as the space for the <code>navigationActions</code> is limited.</li> <li>If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.</li> </ul>
	* @return	null
	*/
	public function getNavigationActions( ):Array<sap.m.Button>;

	/**
	* Gets content of aggregation {@link #getSnappedContent snappedContent}.

The content that is displayed in the <code>DynamicPageTitle</code> in collapsed (snapped) state.

<b>Note:</b> If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getSnappedContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getSnappedHeading snappedHeading}.

The <code>snappedHeading</code> is positioned in the <code>DynamicPageTitle</code> left area and is displayed when the header is in collapsed (snapped) state only. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in collapsed state only.

<b>Notes:</b> <ul> <li>In order for <code>snappedHeading</code> to be taken into account, <code>heading</code> has to be empty. Combine <code>snappedHeading</code> with <code>expandedHeading</code> to switch content when the header switches state.</li> <li>If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.</li> </ul>
	* @return	null
	*/
	public function getSnappedHeading( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getSnappedTitleOnMobile snappedTitleOnMobile}.

The only content that is displayed in the <code>DynamicPageTitle</code> when it is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in collapsed (snapped) state.

Using this aggregation enables you to provide a simple, single-line title that takes less space on the smaller phone screens when the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.

<b>Note:</b> The content set in this aggregation overrides all the other <code>DynamicPageTitle</code> aggregations and is only visible on phone mobile devices in collapsed (snapped) state of the <code>DynamicPageHeader</code>.
	* @return	null
	*/
	public function getSnappedTitleOnMobile( ):sap.m.Title;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getActions actions}. and returns its index if found or -1 otherwise.
	* @param	oAction The action whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAction( oAction:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getExpandedContent expandedContent}. and returns its index if found or -1 otherwise.
	* @param	oExpandedContent The expandedContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfExpandedContent( oExpandedContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getNavigationActions navigationActions}. and returns its index if found or -1 otherwise.
	* @param	oNavigationAction The navigationAction whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfNavigationAction( oNavigationAction:sap.m.Button):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getSnappedContent snappedContent}. and returns its index if found or -1 otherwise.
	* @param	oSnappedContent The snappedContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSnappedContent( oSnappedContent:sap.ui.core.Control):Int;

	/**
	* Inserts a action into the aggregation {@link #getActions actions}.
	* @param	oAction The action to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the action should be inserted at; for a negative value of <code>iIndex</code>, the action is inserted at position 0; for a value greater than the current size of the aggregation, the action is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAction( oAction:sap.ui.core.Control, iIndex:Int):sap.f.DynamicPageTitle;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.f.DynamicPageTitle;

	/**
	* Inserts a expandedContent into the aggregation {@link #getExpandedContent expandedContent}.
	* @param	oExpandedContent The expandedContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the expandedContent should be inserted at; for a negative value of <code>iIndex</code>, the expandedContent is inserted at position 0; for a value greater than the current size of the aggregation, the expandedContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertExpandedContent( oExpandedContent:sap.ui.core.Control, iIndex:Int):sap.f.DynamicPageTitle;

	/**
	* Inserts a navigationAction into the aggregation {@link #getNavigationActions navigationActions}.
	* @param	oNavigationAction The navigationAction to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the navigationAction should be inserted at; for a negative value of <code>iIndex</code>, the navigationAction is inserted at position 0; for a value greater than the current size of the aggregation, the navigationAction is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertNavigationAction( oNavigationAction:sap.m.Button, iIndex:Int):sap.f.DynamicPageTitle;

	/**
	* Inserts a snappedContent into the aggregation {@link #getSnappedContent snappedContent}.
	* @param	oSnappedContent The snappedContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the snappedContent should be inserted at; for a negative value of <code>iIndex</code>, the snappedContent is inserted at position 0; for a value greater than the current size of the aggregation, the snappedContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSnappedContent( oSnappedContent:sap.ui.core.Control, iIndex:Int):sap.f.DynamicPageTitle;
	@:overload( function(vAction:Int):sap.ui.core.Control{ })
	@:overload( function(vAction:String):sap.ui.core.Control{ })

	/**
	* Removes a action from the aggregation {@link #getActions actions}.
	* @param	vAction The action to remove or its index or id
	* @return	The removed action or <code>null</code>
	*/
	public function removeAction( vAction:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Removes all the controls from the aggregation {@link #getActions actions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllActions( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getExpandedContent expandedContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllExpandedContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getNavigationActions navigationActions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllNavigationActions( ):Array<sap.m.Button>;

	/**
	* Removes all the controls from the aggregation {@link #getSnappedContent snappedContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSnappedContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vExpandedContent:Int):sap.ui.core.Control{ })
	@:overload( function(vExpandedContent:String):sap.ui.core.Control{ })

	/**
	* Removes a expandedContent from the aggregation {@link #getExpandedContent expandedContent}.
	* @param	vExpandedContent The expandedContent to remove or its index or id
	* @return	The removed expandedContent or <code>null</code>
	*/
	public function removeExpandedContent( vExpandedContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vNavigationAction:Int):sap.m.Button{ })
	@:overload( function(vNavigationAction:String):sap.m.Button{ })

	/**
	* Removes a navigationAction from the aggregation {@link #getNavigationActions navigationActions}.
	* @param	vNavigationAction The navigationAction to remove or its index or id
	* @return	The removed navigationAction or <code>null</code>
	*/
	public function removeNavigationAction( vNavigationAction:sap.m.Button):sap.m.Button;
	@:overload( function(vSnappedContent:Int):sap.ui.core.Control{ })
	@:overload( function(vSnappedContent:String):sap.ui.core.Control{ })

	/**
	* Removes a snappedContent from the aggregation {@link #getSnappedContent snappedContent}.
	* @param	vSnappedContent The snappedContent to remove or its index or id
	* @return	The removed snappedContent or <code>null</code>
	*/
	public function removeSnappedContent( vSnappedContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets the value of the <code>areaShrinkRatio</code> property.
	* @param	sAreaShrinkRatio new value of the <code>areaShrinkRatio</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setAreaShrinkRatio( sAreaShrinkRatio:sap.f.DynamicPageTitleShrinkRatio):sap.f.DynamicPageTitle;

	/**
	* Sets the value of the <code>backgroundDesign</code> property.
	* @param	sBackgroundDesign new value of the <code>backgroundDesign</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setBackgroundDesign( sBackgroundDesign:sap.m.BackgroundDesign):sap.f.DynamicPageTitle;

	/**
	* Sets the aggregated {@link #getBreadcrumbs breadcrumbs}.
	* @param	oBreadcrumbs The breadcrumbs to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBreadcrumbs( oBreadcrumbs:sap.m.IBreadcrumbs):sap.f.DynamicPageTitle;

	/**
	* Sets the aggregated {@link #getExpandedHeading expandedHeading}.
	* @param	oExpandedHeading The expandedHeading to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExpandedHeading( oExpandedHeading:sap.ui.core.Control):sap.f.DynamicPageTitle;

	/**
	* Sets the aggregated {@link #getHeading heading}.
	* @param	oHeading The heading to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeading( oHeading:sap.ui.core.Control):sap.f.DynamicPageTitle;

	/**
	* Sets the aggregated {@link #getSnappedHeading snappedHeading}.
	* @param	oSnappedHeading The snappedHeading to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSnappedHeading( oSnappedHeading:sap.ui.core.Control):sap.f.DynamicPageTitle;

	/**
	* Sets the aggregated {@link #getSnappedTitleOnMobile snappedTitleOnMobile}.
	* @param	oSnappedTitleOnMobile The snappedTitleOnMobile to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSnappedTitleOnMobile( oSnappedTitleOnMobile:sap.m.Title):sap.f.DynamicPageTitle;
}

typedef DynamicPageTitleArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Assigns shrinking ratio to the <code>DynamicPageTitle</code> areas (Heading, Content, Actions). The greater value a section has the faster it shrinks when the screen size is being reduced.

The value must be set in <code>Heading:Content:Actions</code> format where Title, Content and Actions are numbers greater than or equal to 0. If set to 0, the respective area will not shrink.

For example, if <code>2:7:1</code> is set, the Content area will shrink seven times faster than the Actions area. So, when all three areas have width of 500px and the available space is reduced by 100px the Title area will reduced by 20px, the Content area - by 70px and the Actions area - by 10px.

If all the areas have assigned values greater than 1, the numbers are scaled so that at least one of them is equal to 1. For example, value of <code>2:4:8</code> is equal to <code>1:2:4</code>.

<Note:> When this property is set the <code>primaryArea</code> property has no effect.
	*/
	@:optional var areaShrinkRatio:haxe.extern.EitherType<String,sap.f.DynamicPageTitleShrinkRatio>;

	/**
	* Determines the background color of the <code>DynamicPageTitle</code>.

<b>Note:</b> The default value of <code>backgroundDesign</code> property is null. If the property is not set, the color of the background is <code>@sapUiObjectHeaderBackground</code>, which depends on the specific theme.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

    /**
    * The <code>heading</code> is positioned in the <code>DynamicPageTitle</code> left area and is displayed in both expanded and collapsed (snapped) states of the header. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in both expanded and collapsed states of the header.

<b>Notes:</b> <ul> <li><code>heading</code> is mutually exclusive with <code>snappedHeading</code> and <code>expandedHeading</code>. If <code>heading</code> is provided, both <code>snappedHeading</code> and <code>expandedHeading</code> are ignored. <code>heading</code> is useful when the content of <code>snappedHeading</code> and <code>expandedHeading</code> needs to be the same as it replaces them both.</li> <li>If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.</li> </ul>
    */
	@:optional var heading:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The <code>snappedHeading</code> is positioned in the <code>DynamicPageTitle</code> left area and is displayed when the header is in collapsed (snapped) state only. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in collapsed state only.

<b>Notes:</b> <ul> <li>In order for <code>snappedHeading</code> to be taken into account, <code>heading</code> has to be empty. Combine <code>snappedHeading</code> with <code>expandedHeading</code> to switch content when the header switches state.</li> <li>If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.</li> </ul>
    */
	@:optional var snappedHeading:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The <code>expandedHeading</code> is positioned in the <code>DynamicPageTitle</code> left area and is displayed when the header is in expanded state only. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in expanded state only.

<b>Note:</b> In order for <code>expandedHeading</code> to be taken into account, <code>heading</code> has to be empty. Combine <code>expandedHeading</code> with <code>snappedHeading</code> to switch content when the header switches state.
    */
	@:optional var expandedHeading:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The <code>DynamicPageTitle</code> actions. <br><b>Note:</b> The <code>actions</code> aggregation accepts any UI5 control, but it`s recommended to use controls, suitable for {@link sap.m.Toolbar} and {@link sap.m.OverflowToolbar}.

<b>Note:</b> If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.
    */
	@:optional var actions:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The <code>DynamicPageTitle</code> navigation actions.

<b>Notes:</b> <ul> <li>The <code>navigationActions</code> position depends on the control size. If the control size is 1280px or bigger, they are rendered right next to the <code>actions</code>. Otherwise, they are rendered in the top-right area, above the <code>actions</code>. If a large number of elements(buttons) are used, there could be visual degradations as the space for the <code>navigationActions</code> is limited.</li> <li>If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.</li> </ul>
    */
	@:optional var navigationActions:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * The content is positioned in the <code>DynamicPageTitle</code> middle area and displayed in both expanded and collapsed (snapped) states.

<b>Note:</b> If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The content that is displayed in the <code>DynamicPageTitle</code> in collapsed (snapped) state.

<b>Note:</b> If the <code>snappedTitleOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.
    */
	@:optional var snappedContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The content that is displayed in the <code>DynamicPageTitle</code> in expanded state.
    */
	@:optional var expandedContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The only content that is displayed in the <code>DynamicPageTitle</code> when it is viewed on a phone mobile device and the <code>DynamicPageHeader</code> is in collapsed (snapped) state.

Using this aggregation enables you to provide a simple, single-line title that takes less space on the smaller phone screens when the <code>DynamicPageHeader</code> is in its collapsed (snapped) state.

<b>Note:</b> The content set in this aggregation overrides all the other <code>DynamicPageTitle</code> aggregations and is only visible on phone mobile devices in collapsed (snapped) state of the <code>DynamicPageHeader</code>.
    */
	@:optional var snappedTitleOnMobile:haxe.extern.EitherType<String,sap.m.Title>;

    /**
    * The breadcrumbs displayed in the <code>DynamicPageTitle</code> top-left area.
    */
	@:optional var breadcrumbs:haxe.extern.EitherType<String,sap.m.IBreadcrumbs>;

    /**
    * Internal <code>OverflowToolbar</code> for the <code>DynamicPageTitle</code> actions.
    */
	@:optional var _actionsToolbar:haxe.extern.EitherType<String,sap.m.OverflowToolbar>;

    /**
    * Internal <code>Toolbar</code> for the <code>DynamicPageTitle</code> navigation actions.
    */
	@:optional var _navActionsToolbar:haxe.extern.EitherType<String,sap.m.Toolbar>;

    /**
    * Internal <code>ToolbarSeparator</code> to separate the <code>actions</code> and <code>navigationActions</code>.
    */
	@:optional var _navActionsToolbarSeparator:haxe.extern.EitherType<String,sap.m.ToolbarSeparator>;

    /**
    * Visual indication for expanding.
    */
	@:optional var _expandButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Visual indication for expanding while using SnappedTitleOnMobile.
    */
	@:optional var _snappedTitleOnMobileIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * Internal span tag for correct representation of the accessibility requirements. Upon focus, the <code>DynamicPageTitle</code> control has the focus outline, but the <code>_focusSpan</code> is the real focused DOM element.
    */
	@:optional var _focusSpan:haxe.extern.EitherType<String,sap.ui.core.HTML>;

	/**
	* Fired when the title state (expanded/collapsed) is toggled by user interaction. For example, scrolling, title clicking/tapping, using expand/collapse button.

Also fired when the developer toggles the title state by programmatically changing the scroll position of the scrollbar of <code>DynamicPage</code>.
	*/
	@:optional var stateChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
