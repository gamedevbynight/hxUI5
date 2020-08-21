package sap.uxap;

@:native("sap.uxap.ObjectPageLayout")

/**
* A layout that allows apps to easily display information related to a business object.

<h3>Overview</h3>

The <code>ObjectPageLayout</code> layout is composed of a header (title and content), an optional anchor bar and block content wrapped in sections and subsections that structure the information.

<h3>Structure</h3>

An <code>ObjectPageLayout</code> control is used to put together all parts of an Object page - Header, optional Anchor Bar and Sections/Subsections.

<h4>Header</h4> The <code>ObjectPageLayout</code> implements the snapping header concept. This means that the upper part of the header (Header Title) always stays visible, while the lower part (Header Content) can scroll out of view.

Header Title is displayed at the top of the header and always remains visible above the scrollable content of the page. It contains the title and most prominent details of the object.

The Header Content scrolls along with the content of the page until it disappears (collapsed header). When scrolled back to the top it becomes visible again (expanded header). It contains all the additional information of the object.

<h4>Anchor Bar</h4> The Anchor Bar is an automatically generated internal menu that shows the titles of the sections and subsections and allows the user to scroll to the respective section and subsection content.

<h4>Sections, Subsections, Blocks</h4> The content of the page that appears bellow the header is composed of blocks structured into sections and subsections.

<h3>Usage</h3> Use the <code>ObjectPageLayout</code> if: <ul> <li>The users need to see, edit, or create an item with all its details.</li> <li>Users need to get an overview of an object and interact with different parts of the object.</li> </ul>

<h3>Responsive behavior</h3>

The <code>ObjectPageLayout</code> is responsive and adapts to all screen sizes.
*/
extern class ObjectPageLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageLayoutArgs):Void {})
	public function new(?mSettings:ObjectPageLayoutArgs):Void;

	/**
	* Adds some headerContent to the aggregation {@link #getHeaderContent headerContent}.
	* @param	oHeaderContent The headerContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addHeaderContent( oHeaderContent:sap.ui.core.Control):sap.uxap.ObjectPageLayout;

	/**
	* Adds some section to the aggregation {@link #getSections sections}.
	* @param	oSection The section to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSection( oSection:sap.uxap.ObjectPageSection):sap.uxap.ObjectPageLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:editHeaderButtonPress editHeaderButtonPress} event of this <code>sap.uxap.ObjectPageLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.uxap.ObjectPageLayout</code> itself.

The event is fired when the Edit Header button is pressed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.uxap.ObjectPageLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachEditHeaderButtonPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navigate navigate} event of this <code>sap.uxap.ObjectPageLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.uxap.ObjectPageLayout</code> itself.

The event is fired when the selected section is changed using the navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.uxap.ObjectPageLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNavigate( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:sectionChange sectionChange} event of this <code>sap.uxap.ObjectPageLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.uxap.ObjectPageLayout</code> itself.

Fired when the current section is changed by scrolling.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.uxap.ObjectPageLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSectionChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:subSectionVisibilityChange subSectionVisibilityChange} event of this <code>sap.uxap.ObjectPageLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.uxap.ObjectPageLayout</code> itself.

Fired when the visibility of subsections is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.uxap.ObjectPageLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSubSectionVisibilityChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:toggleAnchorBar toggleAnchorBar} event of this <code>sap.uxap.ObjectPageLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.uxap.ObjectPageLayout</code> itself.

The event is fired when the Anchor bar is switched from moving to fixed or the other way round.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.uxap.ObjectPageLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachToggleAnchorBar( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Destroys the footer in the aggregation {@link #getFooter footer}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFooter( ):sap.uxap.ObjectPageLayout;

	/**
	* Destroys all the headerContent in the aggregation {@link #getHeaderContent headerContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderContent( ):sap.uxap.ObjectPageLayout;

	/**
	* Destroys the headerTitle in the aggregation {@link #getHeaderTitle headerTitle}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderTitle( ):sap.uxap.ObjectPageLayout;

	/**
	* Destroys the landmarkInfo in the aggregation {@link #getLandmarkInfo landmarkInfo}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLandmarkInfo( ):sap.uxap.ObjectPageLayout;

	/**
	* Destroys all the sections in the aggregation {@link #getSections sections}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySections( ):sap.uxap.ObjectPageLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:editHeaderButtonPress editHeaderButtonPress} event of this <code>sap.uxap.ObjectPageLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachEditHeaderButtonPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navigate navigate} event of this <code>sap.uxap.ObjectPageLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNavigate( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:sectionChange sectionChange} event of this <code>sap.uxap.ObjectPageLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSectionChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:subSectionVisibilityChange subSectionVisibilityChange} event of this <code>sap.uxap.ObjectPageLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSubSectionVisibilityChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:toggleAnchorBar toggleAnchorBar} event of this <code>sap.uxap.ObjectPageLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachToggleAnchorBar( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.uxap.ObjectPageLayout;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAlwaysShowContentHeader alwaysShowContentHeader}.

Determines whether Header Content will always be expanded on desktop.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.

Default value is <code>false</code>.
	* @return	Value of property <code>alwaysShowContentHeader</code>
	*/
	public function getAlwaysShowContentHeader( ):Bool;

	/**
	* Gets current value of property {@link #getBackgroundDesignAnchorBar backgroundDesignAnchorBar}.

Determines the background color of the <code>AnchorBar</code>.

<b>Note:</b> The default value of <code>backgroundDesignAnchorBar</code> property is null. If the property is not set, the color of the background is <code>@sapUiObjectHeaderBackground</code>, which depends on the specific theme.
	* @return	Value of property <code>backgroundDesignAnchorBar</code>
	*/
	public function getBackgroundDesignAnchorBar( ):sap.m.BackgroundDesign;

	/**
	* Gets current value of property {@link #getEnableLazyLoading enableLazyLoading}.

Enable lazy loading for the Object page Subsections.

Default value is <code>false</code>.
	* @return	Value of property <code>enableLazyLoading</code>
	*/
	public function getEnableLazyLoading( ):Bool;

	/**
	* Gets current value of property {@link #getFlexEnabled flexEnabled}.

Specifies whether the object page enables flexibility features, such as hiding and adding sections.<br> For more information about SAPUI5 flexibility, refer to the Developer Guide.

Default value is <code>false</code>.
	* @return	Value of property <code>flexEnabled</code>
	*/
	public function getFlexEnabled( ):Bool;

	/**
	* Gets content of aggregation {@link #getFooter footer}.

Object page floating footer.
	* @return	null
	*/
	public function getFooter( ):sap.m.IBar;

	/**
	* Gets content of aggregation {@link #getHeaderContent headerContent}.

Object page header content - the dynamic part of the Object page header.
	* @return	null
	*/
	public function getHeaderContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getHeaderContentPinnable headerContentPinnable}.

Determines whether the Header Content area can be pinned.

When set to <code>true</code>, a pin button is displayed within the Header Content area. The pin button allows the user to make the Header Content always visible at the top of the page above any scrollable content.

<b>Note:</b> This property is only taken into account if an instance of <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is used for the <code>headerTitle</code> aggregation.

Default value is <code>true</code>.
	* @return	Value of property <code>headerContentPinnable</code>
	*/
	public function getHeaderContentPinnable( ):Bool;

	/**
	* Gets content of aggregation {@link #getHeaderTitle headerTitle}.

Object page header title - the upper, always static, part of the Object page header.
	* @return	null
	*/
	public function getHeaderTitle( ):sap.uxap.IHeaderTitle;

	/**
	* Gets current value of property {@link #getHeight height}.

Determines the height of the ObjectPage.

Default value is <code>"100%"</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getIsChildPage isChildPage}.

Determines whether the page is a child page and renders it with a different design. Child pages have an additional (darker/lighter) stripe on the left side of their header content area.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.

Default value is <code>false</code>.
	* @return	Value of property <code>isChildPage</code>
	*/
	public function getIsChildPage( ):Bool;

	/**
	* Gets content of aggregation {@link #getLandmarkInfo landmarkInfo}.

Accessible landmark settings to be applied on the containers of the <code>sap.uxap.ObjectPageLayout</code> control.

If not set, no landmarks will be written.
	* @return	null
	*/
	public function getLandmarkInfo( ):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPreserveHeaderStateOnScroll preserveHeaderStateOnScroll}.

Preserves the current header state when scrolling. For example, if the user expands the header by clicking on the title and then scrolls down the page, the header will remain expanded.

<b>Notes:</b> <ul><li>This property is only taken into account if an instance of <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is used for the <code>headerTitle</code> aggregation.</li> <li>Based on internal rules, the value of the property is not always taken into account - for example, when the control is rendered on tablet or mobile and the control`s title and header are with height larger than the given threshold.</li></ul>

Default value is <code>false</code>.
	* @return	Value of property <code>preserveHeaderStateOnScroll</code>
	*/
	public function getPreserveHeaderStateOnScroll( ):Bool;

	/**
	* Returns an sap.ui.core.delegate.ScrollEnablement object used to handle scrolling
	* @return	null
	*/
	public function getScrollDelegate( ):Dynamic;

	/**
	* Returns the UI5 ID of the Section that is currently being scrolled.
	* @return	null
	*/
	public function getScrollingSectionId( ):String;

	/**
	* Gets content of aggregation {@link #getSections sections}.

The sections that make up the Object page content area.
	* @return	null
	*/
	public function getSections( ):Array<sap.uxap.ObjectPageSection>;

	/**
	* Gets current value of property {@link #getSectionTitleLevel sectionTitleLevel}.

Determines the ARIA level of the <code>ObjectPageSection</code> and <code>ObjectPageSubSection</code> titles. The ARIA level is used by assisting technologies, such as screen readers, to create a hierarchical site map for faster navigation.

<br><b>Note:</b> <ul> <li>Defining a <code>sectionTitleLevel</code> will add <code>aria-level</code> attribute from 1 to 6 instead of changing the titles` HTML tag from H1 to H6. <br>For example: if <code>sectionTitleLevel</code> is <code>TitleLevel.H1</code>, it will result as aria-level of 1 added to the <code>ObjectPageSection</code> title. </li>

<li> The <code>ObjectPageSubSection</code> title would have <code>aria-level</code> one level lower than the defined. For example: if <code>sectionTitleLevel</code> is <code>TitleLevel.H1</code>, it will result as aria-level of 2 added to the <code>ObjectPageSubSection</code> title.</li>

<li> It is possible to define a <code>titleLevel</code> on <code>ObjectPageSection</code> or <code>ObjectPageSubSection</code> level. In this case the value of this property will be ignored. </li> </ul>

Default value is <code>Auto</code>.
	* @return	Value of property <code>sectionTitleLevel</code>
	*/
	public function getSectionTitleLevel( ):sap.ui.core.TitleLevel;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedSection selectedSection}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedSection( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getShowAnchorBar showAnchorBar}.

Determines whether the Navigation bar (Anchor bar) is displayed.

Default value is <code>true</code>.
	* @return	Value of property <code>showAnchorBar</code>
	*/
	public function getShowAnchorBar( ):Bool;

	/**
	* Gets current value of property {@link #getShowAnchorBarPopover showAnchorBarPopover}.

Determines whether to show a Popover with Subsection links when clicking on Section links in the Anchor bar.

Default value is <code>true</code>.
	* @return	Value of property <code>showAnchorBarPopover</code>
	*/
	public function getShowAnchorBarPopover( ):Bool;

	/**
	* Gets current value of property {@link #getShowEditHeaderButton showEditHeaderButton}.

Determines whether an Edit button will be displayed in Header Content.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.

Default value is <code>false</code>.
	* @return	Value of property <code>showEditHeaderButton</code>
	*/
	public function getShowEditHeaderButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowFooter showFooter}.

Determines whether the footer is visible.

Default value is <code>false</code>.
	* @return	Value of property <code>showFooter</code>
	*/
	public function getShowFooter( ):Bool;

	/**
	* Gets current value of property {@link #getShowHeaderContent showHeaderContent}.

Determines the visibility of the Header content (headerContent aggregation).

Default value is <code>true</code>.
	* @return	Value of property <code>showHeaderContent</code>
	*/
	public function getShowHeaderContent( ):Bool;

	/**
	* Gets current value of property {@link #getShowOnlyHighImportance showOnlyHighImportance}.

Determines whether sections and subsections with importance Low and Medium are hidden even on large screens.

Default value is <code>false</code>.
	* @return	Value of property <code>showOnlyHighImportance</code>
	*/
	public function getShowOnlyHighImportance( ):Bool;

	/**
	* Gets current value of property {@link #getShowTitleInHeaderContent showTitleInHeaderContent}.

Determines whether the title, image, markers and selectTitleArrow are shown in the Header content area.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.</li>

Default value is <code>false</code>.
	* @return	Value of property <code>showTitleInHeaderContent</code>
	*/
	public function getShowTitleInHeaderContent( ):Bool;

	/**
	* Gets current value of property {@link #getSubSectionLayout subSectionLayout}.

Determines whether Subsection titles are displayed on top or to the left of the Subsection content.

Default value is <code>TitleOnTop</code>.
	* @return	Value of property <code>subSectionLayout</code>
	*/
	public function getSubSectionLayout( ):sap.uxap.ObjectPageSubSectionLayout;

	/**
	* Gets current value of property {@link #getToggleHeaderOnTitleClick toggleHeaderOnTitleClick}.

Determines whether the user can switch between the expanded/collapsed states of the <code>sap.uxap.ObjectPageDynamicHeaderContent</code> by clicking on the <code>sap.uxap.ObjectPageDynamicHeaderTitle</code>. If set to <code>false</code>, the <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is not clickable and the application must provide other means for expanding/collapsing the <code>sap.uxap.ObjectPageDynamicHeaderContent</code>, if necessary.

<b>Note:</b> This property is only taken into account if an instance of <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is used for the <code>headerTitle</code> aggregation.

Default value is <code>true</code>.
	* @return	Value of property <code>toggleHeaderOnTitleClick</code>
	*/
	public function getToggleHeaderOnTitleClick( ):Bool;

	/**
	* Gets current value of property {@link #getUpperCaseAnchorBar upperCaseAnchorBar}.

Determines whether the Anchor bar items are displayed in upper case.

Default value is <code>true</code>.
	* @return	Value of property <code>upperCaseAnchorBar</code>
	*/
	public function getUpperCaseAnchorBar( ):Bool;

	/**
	* Gets current value of property {@link #getUseIconTabBar useIconTabBar}.

Determines whether the navigation mode is tab-based instead of the default anchor bar. If enabled, the sections are displayed separately on each tab rather than having all of them visible at the same time.

<b>Note:</b> Keep in mind that the <code>sap.m.IconTabBar</code> control is no longer used for the tab navigation mode.

Default value is <code>false</code>.
	* @return	Value of property <code>useIconTabBar</code>
	*/
	public function getUseIconTabBar( ):Bool;

	/**
	* Gets current value of property {@link #getUseTwoColumnsForLargeScreen useTwoColumnsForLargeScreen}.

Determines whether the to use two column layout for the L screen size.

Default value is <code>false</code>.
	* @return	Value of property <code>useTwoColumnsForLargeScreen</code>
	*/
	public function getUseTwoColumnsForLargeScreen( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getHeaderContent headerContent}. and returns its index if found or -1 otherwise.
	* @param	oHeaderContent The headerContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfHeaderContent( oHeaderContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.uxap.ObjectPageSection</code> in the aggregation {@link #getSections sections}. and returns its index if found or -1 otherwise.
	* @param	oSection The section whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSection( oSection:sap.uxap.ObjectPageSection):Int;

	/**
	* Inserts a headerContent into the aggregation {@link #getHeaderContent headerContent}.
	* @param	oHeaderContent The headerContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the headerContent should be inserted at; for a negative value of <code>iIndex</code>, the headerContent is inserted at position 0; for a value greater than the current size of the aggregation, the headerContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertHeaderContent( oHeaderContent:sap.ui.core.Control, iIndex:Int):sap.uxap.ObjectPageLayout;

	/**
	* Inserts a section into the aggregation {@link #getSections sections}.
	* @param	oSection The section to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the section should be inserted at; for a negative value of <code>iIndex</code>, the section is inserted at position 0; for a value greater than the current size of the aggregation, the section is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSection( oSection:sap.uxap.ObjectPageSection, iIndex:Int):sap.uxap.ObjectPageLayout;

	/**
	* Removes all the controls from the aggregation {@link #getHeaderContent headerContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllHeaderContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getSections sections}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSections( ):Array<sap.uxap.ObjectPageSection>;
	@:overload( function(vHeaderContent:Int):sap.ui.core.Control{ })
	@:overload( function(vHeaderContent:String):sap.ui.core.Control{ })

	/**
	* Removes a headerContent from the aggregation {@link #getHeaderContent headerContent}.
	* @param	vHeaderContent The headerContent to remove or its index or id
	* @return	The removed headerContent or <code>null</code>
	*/
	public function removeHeaderContent( vHeaderContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vSection:Int):sap.uxap.ObjectPageSection{ })
	@:overload( function(vSection:String):sap.uxap.ObjectPageSection{ })

	/**
	* Removes a section from the aggregation {@link #getSections sections}.
	* @param	vSection The section to remove or its index or id
	* @return	The removed section or <code>null</code>
	*/
	public function removeSection( vSection:sap.uxap.ObjectPageSection):sap.uxap.ObjectPageSection;

	/**
	* Scrolls the Object page to the given Section.
	* @param	sId The Section ID to scroll to
	* @param	iDuration Scroll duration (in ms)
	* @param	iOffset Additional pixels to scroll
	* @return	Void
	*/
	public function scrollToSection( sId:String, ?iDuration:Int, ?iOffset:Int):Void;

	/**
	* Sets a new value for property {@link #getAlwaysShowContentHeader alwaysShowContentHeader}.

Determines whether Header Content will always be expanded on desktop.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAlwaysShowContentHeader New value for property <code>alwaysShowContentHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAlwaysShowContentHeader( ?bAlwaysShowContentHeader:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets the value of the <code>backgroundDesignAnchorBar</code> property.
	* @param	sBackgroundDesignAnchorBar new value of the <code>backgroundDesignAnchorBar</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setBackgroundDesignAnchorBar( sBackgroundDesignAnchorBar:sap.m.BackgroundDesign):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getEnableLazyLoading enableLazyLoading}.

Enable lazy loading for the Object page Subsections.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableLazyLoading New value for property <code>enableLazyLoading</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableLazyLoading( ?bEnableLazyLoading:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getFlexEnabled flexEnabled}.

Specifies whether the object page enables flexibility features, such as hiding and adding sections.<br> For more information about SAPUI5 flexibility, refer to the Developer Guide.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFlexEnabled New value for property <code>flexEnabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFlexEnabled( ?bFlexEnabled:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets the aggregated {@link #getFooter footer}.
	* @param	oFooter The footer to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooter( oFooter:sap.m.IBar):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getHeaderContentPinnable headerContentPinnable}.

Determines whether the Header Content area can be pinned.

When set to <code>true</code>, a pin button is displayed within the Header Content area. The pin button allows the user to make the Header Content always visible at the top of the page above any scrollable content.

<b>Note:</b> This property is only taken into account if an instance of <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is used for the <code>headerTitle</code> aggregation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHeaderContentPinnable New value for property <code>headerContentPinnable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderContentPinnable( ?bHeaderContentPinnable:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets the aggregated {@link #getHeaderTitle headerTitle}.
	* @param	oHeaderTitle The headerTitle to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderTitle( oHeaderTitle:sap.uxap.IHeaderTitle):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getHeight height}.

Determines the height of the ObjectPage.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"100%"</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getIsChildPage isChildPage}.

Determines whether the page is a child page and renders it with a different design. Child pages have an additional (darker/lighter) stripe on the left side of their header content area.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIsChildPage New value for property <code>isChildPage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIsChildPage( ?bIsChildPage:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets the aggregated {@link #getLandmarkInfo landmarkInfo}.
	* @param	oLandmarkInfo The landmarkInfo to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLandmarkInfo( oLandmarkInfo:sap.uxap.ObjectPageAccessibleLandmarkInfo):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getPreserveHeaderStateOnScroll preserveHeaderStateOnScroll}.

Preserves the current header state when scrolling. For example, if the user expands the header by clicking on the title and then scrolls down the page, the header will remain expanded.

<b>Notes:</b> <ul><li>This property is only taken into account if an instance of <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is used for the <code>headerTitle</code> aggregation.</li> <li>Based on internal rules, the value of the property is not always taken into account - for example, when the control is rendered on tablet or mobile and the control`s title and header are with height larger than the given threshold.</li></ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPreserveHeaderStateOnScroll New value for property <code>preserveHeaderStateOnScroll</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPreserveHeaderStateOnScroll( ?bPreserveHeaderStateOnScroll:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getSectionTitleLevel sectionTitleLevel}.

Determines the ARIA level of the <code>ObjectPageSection</code> and <code>ObjectPageSubSection</code> titles. The ARIA level is used by assisting technologies, such as screen readers, to create a hierarchical site map for faster navigation.

<br><b>Note:</b> <ul> <li>Defining a <code>sectionTitleLevel</code> will add <code>aria-level</code> attribute from 1 to 6 instead of changing the titles` HTML tag from H1 to H6. <br>For example: if <code>sectionTitleLevel</code> is <code>TitleLevel.H1</code>, it will result as aria-level of 1 added to the <code>ObjectPageSection</code> title. </li>

<li> The <code>ObjectPageSubSection</code> title would have <code>aria-level</code> one level lower than the defined. For example: if <code>sectionTitleLevel</code> is <code>TitleLevel.H1</code>, it will result as aria-level of 2 added to the <code>ObjectPageSubSection</code> title.</li>

<li> It is possible to define a <code>titleLevel</code> on <code>ObjectPageSection</code> or <code>ObjectPageSubSection</code> level. In this case the value of this property will be ignored. </li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sSectionTitleLevel New value for property <code>sectionTitleLevel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSectionTitleLevel( ?sSectionTitleLevel:sap.ui.core.TitleLevel):sap.uxap.ObjectPageLayout;
	@:overload( function(sId:String):sap.uxap.ObjectPageLayout{ })

	/**
	* Sets the section that should be selected.

The section can either be given by itself or by its id.

Note that an argument of <code>null</code> will cause the first visible section be set as <code>selectedSection</code>. This is because the <code>sap.uxap.ObjectPageLayout</code> should always have one of its sections selected (unless it has 0 visible sections).
	* @param	sId The ID or the section instance that should be selected Note that <code>null</code> or <code>undefined</code> are not valid arguments
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setSelectedSection( sId:sap.uxap.ObjectPageSection):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getShowAnchorBar showAnchorBar}.

Determines whether the Navigation bar (Anchor bar) is displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowAnchorBar New value for property <code>showAnchorBar</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowAnchorBar( ?bShowAnchorBar:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getShowAnchorBarPopover showAnchorBarPopover}.

Determines whether to show a Popover with Subsection links when clicking on Section links in the Anchor bar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowAnchorBarPopover New value for property <code>showAnchorBarPopover</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowAnchorBarPopover( ?bShowAnchorBarPopover:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getShowEditHeaderButton showEditHeaderButton}.

Determines whether an Edit button will be displayed in Header Content.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowEditHeaderButton New value for property <code>showEditHeaderButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowEditHeaderButton( ?bShowEditHeaderButton:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getShowFooter showFooter}.

Determines whether the footer is visible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowFooter New value for property <code>showFooter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowFooter( ?bShowFooter:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getShowHeaderContent showHeaderContent}.

Determines the visibility of the Header content (headerContent aggregation).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeaderContent New value for property <code>showHeaderContent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeaderContent( ?bShowHeaderContent:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getShowOnlyHighImportance showOnlyHighImportance}.

Determines whether sections and subsections with importance Low and Medium are hidden even on large screens.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowOnlyHighImportance New value for property <code>showOnlyHighImportance</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowOnlyHighImportance( ?bShowOnlyHighImportance:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getShowTitleInHeaderContent showTitleInHeaderContent}.

Determines whether the title, image, markers and selectTitleArrow are shown in the Header content area.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.</li>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowTitleInHeaderContent New value for property <code>showTitleInHeaderContent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowTitleInHeaderContent( ?bShowTitleInHeaderContent:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getSubSectionLayout subSectionLayout}.

Determines whether Subsection titles are displayed on top or to the left of the Subsection content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>TitleOnTop</code>.
	* @param	sSubSectionLayout New value for property <code>subSectionLayout</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubSectionLayout( ?sSubSectionLayout:sap.uxap.ObjectPageSubSectionLayout):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getToggleHeaderOnTitleClick toggleHeaderOnTitleClick}.

Determines whether the user can switch between the expanded/collapsed states of the <code>sap.uxap.ObjectPageDynamicHeaderContent</code> by clicking on the <code>sap.uxap.ObjectPageDynamicHeaderTitle</code>. If set to <code>false</code>, the <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is not clickable and the application must provide other means for expanding/collapsing the <code>sap.uxap.ObjectPageDynamicHeaderContent</code>, if necessary.

<b>Note:</b> This property is only taken into account if an instance of <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is used for the <code>headerTitle</code> aggregation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bToggleHeaderOnTitleClick New value for property <code>toggleHeaderOnTitleClick</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToggleHeaderOnTitleClick( ?bToggleHeaderOnTitleClick:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getUpperCaseAnchorBar upperCaseAnchorBar}.

Determines whether the Anchor bar items are displayed in upper case.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bUpperCaseAnchorBar New value for property <code>upperCaseAnchorBar</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUpperCaseAnchorBar( ?bUpperCaseAnchorBar:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getUseIconTabBar useIconTabBar}.

Determines whether the navigation mode is tab-based instead of the default anchor bar. If enabled, the sections are displayed separately on each tab rather than having all of them visible at the same time.

<b>Note:</b> Keep in mind that the <code>sap.m.IconTabBar</code> control is no longer used for the tab navigation mode.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUseIconTabBar New value for property <code>useIconTabBar</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseIconTabBar( ?bUseIconTabBar:Bool):sap.uxap.ObjectPageLayout;

	/**
	* Sets a new value for property {@link #getUseTwoColumnsForLargeScreen useTwoColumnsForLargeScreen}.

Determines whether the to use two column layout for the L screen size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUseTwoColumnsForLargeScreen New value for property <code>useTwoColumnsForLargeScreen</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseTwoColumnsForLargeScreen( ?bUseTwoColumnsForLargeScreen:Bool):sap.uxap.ObjectPageLayout;
}

typedef ObjectPageLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines whether the Navigation bar (Anchor bar) is displayed.
	*/
	@:optional var showAnchorBar:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether to show a Popover with Subsection links when clicking on Section links in the Anchor bar.
	*/
	@:optional var showAnchorBarPopover:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the Anchor bar items are displayed in upper case.
	*/
	@:optional var upperCaseAnchorBar:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the background color of the <code>AnchorBar</code>.

<b>Note:</b> The default value of <code>backgroundDesignAnchorBar</code> property is null. If the property is not set, the color of the background is <code>@sapUiObjectHeaderBackground</code>, which depends on the specific theme.
	*/
	@:optional var backgroundDesignAnchorBar:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

	/**
	* Determines the height of the ObjectPage.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Enable lazy loading for the Object page Subsections.
	*/
	@:optional var enableLazyLoading:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether Subsection titles are displayed on top or to the left of the Subsection content.
	*/
	@:optional var subSectionLayout:haxe.extern.EitherType<String,sap.uxap.ObjectPageSubSectionLayout>;

	/**
	* Determines the ARIA level of the <code>ObjectPageSection</code> and <code>ObjectPageSubSection</code> titles. The ARIA level is used by assisting technologies, such as screen readers, to create a hierarchical site map for faster navigation.

<br><b>Note:</b> <ul> <li>Defining a <code>sectionTitleLevel</code> will add <code>aria-level</code> attribute from 1 to 6 instead of changing the titles` HTML tag from H1 to H6. <br>For example: if <code>sectionTitleLevel</code> is <code>TitleLevel.H1</code>, it will result as aria-level of 1 added to the <code>ObjectPageSection</code> title. </li>

<li> The <code>ObjectPageSubSection</code> title would have <code>aria-level</code> one level lower than the defined. For example: if <code>sectionTitleLevel</code> is <code>TitleLevel.H1</code>, it will result as aria-level of 2 added to the <code>ObjectPageSubSection</code> title.</li>

<li> It is possible to define a <code>titleLevel</code> on <code>ObjectPageSection</code> or <code>ObjectPageSubSection</code> level. In this case the value of this property will be ignored. </li> </ul>
	*/
	@:optional var sectionTitleLevel:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

	/**
	* Determines whether the navigation mode is tab-based instead of the default anchor bar. If enabled, the sections are displayed separately on each tab rather than having all of them visible at the same time.

<b>Note:</b> Keep in mind that the <code>sap.m.IconTabBar</code> control is no longer used for the tab navigation mode.
	*/
	@:optional var useIconTabBar:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the visibility of the Header content (headerContent aggregation).
	*/
	@:optional var showHeaderContent:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the to use two column layout for the L screen size.
	*/
	@:optional var useTwoColumnsForLargeScreen:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the title, image, markers and selectTitleArrow are shown in the Header content area.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.</li>
	*/
	@:optional var showTitleInHeaderContent:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether sections and subsections with importance Low and Medium are hidden even on large screens.
	*/
	@:optional var showOnlyHighImportance:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the page is a child page and renders it with a different design. Child pages have an additional (darker/lighter) stripe on the left side of their header content area.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.
	*/
	@:optional var isChildPage:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether Header Content will always be expanded on desktop.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.
	*/
	@:optional var alwaysShowContentHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the Header Content area can be pinned.

When set to <code>true</code>, a pin button is displayed within the Header Content area. The pin button allows the user to make the Header Content always visible at the top of the page above any scrollable content.

<b>Note:</b> This property is only taken into account if an instance of <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is used for the <code>headerTitle</code> aggregation.
	*/
	@:optional var headerContentPinnable:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the user can switch between the expanded/collapsed states of the <code>sap.uxap.ObjectPageDynamicHeaderContent</code> by clicking on the <code>sap.uxap.ObjectPageDynamicHeaderTitle</code>. If set to <code>false</code>, the <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is not clickable and the application must provide other means for expanding/collapsing the <code>sap.uxap.ObjectPageDynamicHeaderContent</code>, if necessary.

<b>Note:</b> This property is only taken into account if an instance of <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is used for the <code>headerTitle</code> aggregation.
	*/
	@:optional var toggleHeaderOnTitleClick:haxe.extern.EitherType<String,Bool>;

	/**
	* Preserves the current header state when scrolling. For example, if the user expands the header by clicking on the title and then scrolls down the page, the header will remain expanded.

<b>Notes:</b> <ul><li>This property is only taken into account if an instance of <code>sap.uxap.ObjectPageDynamicHeaderTitle</code> is used for the <code>headerTitle</code> aggregation.</li> <li>Based on internal rules, the value of the property is not always taken into account - for example, when the control is rendered on tablet or mobile and the control`s title and header are with height larger than the given threshold.</li></ul>
	*/
	@:optional var preserveHeaderStateOnScroll:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether an Edit button will be displayed in Header Content.

<b>Note</b>: This property is only taken into account if an instance of <code>sap.uxap.ObjectPageHeader</code> is used for the <code>headerTitle</code> aggregation.
	*/
	@:optional var showEditHeaderButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the object page enables flexibility features, such as hiding and adding sections.<br> For more information about SAPUI5 flexibility, refer to the Developer Guide.
	*/
	@:optional var flexEnabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the footer is visible.
	*/
	@:optional var showFooter:haxe.extern.EitherType<String,Bool>;

    /**
    * The sections that make up the Object page content area.
    */
	@:optional var sections:Array<haxe.extern.EitherType<String,sap.uxap.ObjectPageSection>>;

    /**
    * Object page header title - the upper, always static, part of the Object page header.
    */
	@:optional var headerTitle:haxe.extern.EitherType<String,sap.uxap.IHeaderTitle>;

    /**
    * Object page header content - the dynamic part of the Object page header.
    */
	@:optional var headerContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Object page floating footer.
    */
	@:optional var footer:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * Accessible landmark settings to be applied on the containers of the <code>sap.uxap.ObjectPageLayout</code> control.

If not set, no landmarks will be written.
    */
	@:optional var landmarkInfo:haxe.extern.EitherType<String,sap.uxap.ObjectPageAccessibleLandmarkInfo>;

    /**
    * Internal aggregation to hold the reference to the AnchorBar.
    */
	@:optional var _anchorBar:haxe.extern.EitherType<String,sap.uxap.AnchorBar>;

    /**
    * Internal aggregation to hold the reference to the IconTabBar.
    */
	@:optional var _iconTabBar:haxe.extern.EitherType<String,sap.m.IconTabBar>;

    /**
    * Internal aggregation to hold the reference to the IHeaderContent implementation.
    */
	@:optional var _headerContent:haxe.extern.EitherType<String,sap.uxap.IHeaderContent>;

    /**
    * null
    */
	@:optional var _customScrollBar:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* The section that is selected by default on load.
	*/
	@:optional var selectedSection:haxe.extern.EitherType<String,sap.uxap.ObjectPageSection>;

	/**
	* The event is fired when the Edit Header button is pressed
	*/
	@:optional var editHeaderButtonPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is fired when the selected section is changed using the navigation.
	*/
	@:optional var navigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the current section is changed by scrolling.
	*/
	@:optional var sectionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the visibility of subsections is changed.
	*/
	@:optional var subSectionVisibilityChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is fired when the Anchor bar is switched from moving to fixed or the other way round.
	*/
	@:optional var toggleAnchorBar:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
