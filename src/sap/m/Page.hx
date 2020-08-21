package sap.m;

@:native("sap.m.Page")

/**
* A container control that holds one whole screen of an application.

<h3>Overview</h3> The sap.m.Page is a container control that holds one whole screen of an application. The page has three distinct areas that can hold content - a header, content area and a footer. <h3>Structure</h3> <h4>Header</h4> The top most area of the page is occupied by the header. The standard header includes a navigation button and a title. Alternatively, you can create your own custom header, which is defined in the <code>customHeader</code> aggregation. <h4>Content</h4> The content occupies the main part of the page. Only the content area is scrollable by default. This can be prevented by setting <code>enableScrolling</code> to <code>false</code>. <h4>Footer</h4> The footer is optional and occupies the fixed bottom part of the page. Alternatively, the footer can be floating above the bottom part of the content. This is enabled with the <code>floatingFooter</code> property.

<b>Note:</b> All accessibility information for the different areas and their corresponding ARIA roles is set in the aggregation <code>landmarkInfo</code> of type {@link sap.m.PageAccessibleLandmarkInfo} <h3>Responsive Behavior</h3> When using the sap.m.Page in SAP Quartz theme, the breakpoints and layout paddings could be determined by the container's width. To enable this concept and add responsive paddings to an element of the Page control, you may add the following classes depending on your use case: <code>sapUiResponsivePadding--header</code>, <code>sapUiResponsivePadding--subHeader</code>, <code>sapUiResponsivePadding--content</code>, <code>sapUiResponsivePadding--footer</code>, <code>sapUiResponsivePadding--floatingFooter</code>.
*/
extern class Page extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:PageArgs):Void {})
	public function new(?mSettings:PageArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.Page;

	/**
	* Adds some headerContent to the aggregation {@link #getHeaderContent headerContent}.
	* @param	oHeaderContent The headerContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addHeaderContent( oHeaderContent:sap.ui.core.Control):sap.m.Page;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navButtonPress navButtonPress} event of this <code>sap.m.Page</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Page</code> itself.

this event is fired when Nav Button is pressed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Page</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNavButtonPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Page;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.Page;

	/**
	* Destroys the customHeader in the aggregation {@link #getCustomHeader customHeader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomHeader( ):sap.m.Page;

	/**
	* Destroys the footer in the aggregation {@link #getFooter footer}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFooter( ):sap.m.Page;

	/**
	* Destroys all the headerContent in the aggregation {@link #getHeaderContent headerContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderContent( ):sap.m.Page;

	/**
	* Destroys the landmarkInfo in the aggregation {@link #getLandmarkInfo landmarkInfo}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLandmarkInfo( ):sap.m.Page;

	/**
	* Destroys the subHeader in the aggregation {@link #getSubHeader subHeader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySubHeader( ):sap.m.Page;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navButtonPress navButtonPress} event of this <code>sap.m.Page</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNavButtonPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Page;

	/**
	* Creates a new subclass of class sap.m.Page with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

This property is used to set the background color of a page. When a list is placed inside a page, the value "List" should be used to display a gray background. "Standard", with the default background color, is used if not specified.

Default value is <code>Standard</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.PageBackgroundDesign;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content of this page
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getContentOnlyBusy contentOnlyBusy}.

Decides which area is covered by the local BusyIndicator when <code>page.setBusy()</code> is called. By default the entire page is covered, including headers and footer. When this property is set to "true", only the content area is covered (not header/sub header and footer), which is useful e.g. when there is a SearchField in the sub header and live search continuously updates the content area while the user is still able to type.

Default value is <code>false</code>.
	* @return	Value of property <code>contentOnlyBusy</code>
	*/
	public function getContentOnlyBusy( ):Bool;

	/**
	* Gets content of aggregation {@link #getCustomHeader customHeader}.

The (optional) custom header of this page. Use this aggregation only when a custom header is constructed where the default header consisting of title text + nav button is not sufficient. If this aggregation is set, the simple properties "title", "showNavButton", "NavButtonText" and "icon" are not used.
	* @return	null
	*/
	public function getCustomHeader( ):sap.m.IBar;

	/**
	* Gets current value of property {@link #getEnableScrolling enableScrolling}.

Enable vertical scrolling of page contents. Page headers and footers are fixed and do not scroll. If set to false, there will be no vertical scrolling at all.

The Page only allows vertical scrolling because horizontal scrolling is discouraged in general for full-page content. If it still needs to be achieved, disable the Page scrolling and use a ScrollContainer as full-page content of the Page. This allows you to freely configure scrolling. It can also be used to create horizontally-scrolling sub-areas of (vertically-scrolling) Pages.

Default value is <code>true</code>.
	* @return	Value of property <code>enableScrolling</code>
	*/
	public function getEnableScrolling( ):Bool;

	/**
	* Gets current value of property {@link #getFloatingFooter floatingFooter}.

Decides whether the footer can float. When set to true, the footer is not fixed below the content area anymore, but rather floats over it with a slight offset from the bottom.

Default value is <code>false</code>.
	* @return	Value of property <code>floatingFooter</code>
	*/
	public function getFloatingFooter( ):Bool;

	/**
	* Gets content of aggregation {@link #getFooter footer}.

The (optional) footer of this page. It is always located at the bottom of the page
	* @return	null
	*/
	public function getFooter( ):sap.m.IBar;

	/**
	* Gets content of aggregation {@link #getHeaderContent headerContent}.

Controls to be added to the right side of the page header. Usually an application would use Button controls and limit the number to one when the application needs to run on smartphones. There is no automatic overflow handling when the space is insufficient. When a customHeader is used, this aggregation will be ignored.
	* @return	null
	*/
	public function getHeaderContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getLandmarkInfo landmarkInfo}.

Accessible landmark settings to be applied on the containers of the <code>sap.m.Page</code> control.

If not set, no landmarks will be written.
	* @return	null
	*/
	public function getLandmarkInfo( ):sap.m.PageAccessibleLandmarkInfo;

	/**
	* Returns a metadata object for class sap.m.Page.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNavButtonTooltip navButtonTooltip}.

The tooltip of the nav button

Since version 1.34
	* @return	Value of property <code>navButtonTooltip</code>
	*/
	public function getNavButtonTooltip( ):String;

	/**
	* Gets current value of property {@link #getShowFooter showFooter}.

Whether this page shall have a footer

Default value is <code>true</code>.
	* @return	Value of property <code>showFooter</code>
	*/
	public function getShowFooter( ):Bool;

	/**
	* Gets current value of property {@link #getShowHeader showHeader}.

Whether this page shall have a header. If set to true, either the control under the "customHeader" aggregation is used, or if there is no such control, a Header control is constructed from the properties "title", "showNavButton", "navButtonText" and "icon" depending on the platform.

Default value is <code>true</code>.
	* @return	Value of property <code>showHeader</code>
	*/
	public function getShowHeader( ):Bool;

	/**
	* Gets current value of property {@link #getShowNavButton showNavButton}.

A nav button will be rendered on the left area of header bar if this property is set to true.

Default value is <code>false</code>.
	* @return	Value of property <code>showNavButton</code>
	*/
	public function getShowNavButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowSubHeader showSubHeader}.

Whether this page shall show the subheader.

Default value is <code>true</code>.
	* @return	Value of property <code>showSubHeader</code>
	*/
	public function getShowSubHeader( ):Bool;

	/**
	* Gets content of aggregation {@link #getSubHeader subHeader}.

a subHeader will be rendered directly under the header
	* @return	null
	*/
	public function getSubHeader( ):sap.m.IBar;

	/**
	* Gets current value of property {@link #getTitle title}.

The title text appearing in the page header bar.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleAlignment titleAlignment}.

Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)

Default value is <code>Auto</code>.
	* @return	Value of property <code>titleAlignment</code>
	*/
	public function getTitleAlignment( ):sap.m.TitleAlignment;

	/**
	* Gets current value of property {@link #getTitleLevel titleLevel}.

Defines the semantic level of the title. Using "Auto" no explicit level information is written. Used for accessibility purposes only.

Default value is <code>Auto</code>.
	* @return	Value of property <code>titleLevel</code>
	*/
	public function getTitleLevel( ):sap.ui.core.TitleLevel;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getHeaderContent headerContent}. and returns its index if found or -1 otherwise.
	* @param	oHeaderContent The headerContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfHeaderContent( oHeaderContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.Page;

	/**
	* Inserts a headerContent into the aggregation {@link #getHeaderContent headerContent}.
	* @param	oHeaderContent The headerContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the headerContent should be inserted at; for a negative value of <code>iIndex</code>, the headerContent is inserted at position 0; for a value greater than the current size of the aggregation, the headerContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertHeaderContent( oHeaderContent:sap.ui.core.Control, iIndex:Int):sap.m.Page;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getHeaderContent headerContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllHeaderContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vHeaderContent:Int):sap.ui.core.Control{ })
	@:overload( function(vHeaderContent:String):sap.ui.core.Control{ })

	/**
	* Removes a headerContent from the aggregation {@link #getHeaderContent headerContent}.
	* @param	vHeaderContent The headerContent to remove or its index or id
	* @return	The removed headerContent or <code>null</code>
	*/
	public function removeHeaderContent( vHeaderContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Scrolls to the given position. Only available if enableScrolling is set to "true".
	* @param	y The vertical pixel position to scroll to. Scrolling down happens with positive values.
	* @param	time The duration of animated scrolling in milliseconds. The value <code>0</code> results in immediate scrolling without animation.
	* @return	<code>this</code> to facilitate method chaining.
	*/
	public function scrollTo( y:Int, ?time:Int):sap.m.Page;
	@:overload( function(oElement:js.html.HtmlElement, ?iTime:Int, ?aOffset:Array<Int>):sap.m.Page{ })

	/**
	* Scrolls to an element (DOM or sap.ui.core.Element) within the page if the element is rendered.
	* @param	oElement The element to which should be scrolled.
	* @param	iTime The duration of animated scrolling in milliseconds. To scroll immediately without animation, give 0 as value.
	* @param	aOffset Specifies an additional left and top offset of the target scroll position, relative to the upper left corner of the DOM element
	* @return	<code>this</code> to facilitate method chaining.
	*/
	public function scrollToElement( oElement:sap.ui.core.Element, ?iTime:Int, ?aOffset:Array<Int>):sap.m.Page;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

This property is used to set the background color of a page. When a list is placed inside a page, the value "List" should be used to display a gray background. "Standard", with the default background color, is used if not specified.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.m.PageBackgroundDesign):sap.m.Page;

	/**
	* Sets a new value for property {@link #getContentOnlyBusy contentOnlyBusy}.

Decides which area is covered by the local BusyIndicator when <code>page.setBusy()</code> is called. By default the entire page is covered, including headers and footer. When this property is set to "true", only the content area is covered (not header/sub header and footer), which is useful e.g. when there is a SearchField in the sub header and live search continuously updates the content area while the user is still able to type.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bContentOnlyBusy New value for property <code>contentOnlyBusy</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentOnlyBusy( ?bContentOnlyBusy:Bool):sap.m.Page;

	/**
	* Sets the aggregated {@link #getCustomHeader customHeader}.
	* @param	oCustomHeader The customHeader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomHeader( oCustomHeader:sap.m.IBar):sap.m.Page;

	/**
	* Sets a new value for property {@link #getEnableScrolling enableScrolling}.

Enable vertical scrolling of page contents. Page headers and footers are fixed and do not scroll. If set to false, there will be no vertical scrolling at all.

The Page only allows vertical scrolling because horizontal scrolling is discouraged in general for full-page content. If it still needs to be achieved, disable the Page scrolling and use a ScrollContainer as full-page content of the Page. This allows you to freely configure scrolling. It can also be used to create horizontally-scrolling sub-areas of (vertically-scrolling) Pages.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableScrolling New value for property <code>enableScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableScrolling( ?bEnableScrolling:Bool):sap.m.Page;

	/**
	* Sets a new value for property {@link #getFloatingFooter floatingFooter}.

Decides whether the footer can float. When set to true, the footer is not fixed below the content area anymore, but rather floats over it with a slight offset from the bottom.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFloatingFooter New value for property <code>floatingFooter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFloatingFooter( ?bFloatingFooter:Bool):sap.m.Page;

	/**
	* Sets the aggregated {@link #getFooter footer}.
	* @param	oFooter The footer to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooter( oFooter:sap.m.IBar):sap.m.Page;

	/**
	* Sets the aggregated {@link #getLandmarkInfo landmarkInfo}.
	* @param	oLandmarkInfo The landmarkInfo to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLandmarkInfo( oLandmarkInfo:sap.m.PageAccessibleLandmarkInfo):sap.m.Page;

	/**
	* Sets a new value for property {@link #getNavButtonTooltip navButtonTooltip}.

The tooltip of the nav button

Since version 1.34

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNavButtonTooltip New value for property <code>navButtonTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNavButtonTooltip( ?sNavButtonTooltip:String):sap.m.Page;

	/**
	* Sets a new value for property {@link #getShowFooter showFooter}.

Whether this page shall have a footer

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowFooter New value for property <code>showFooter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowFooter( ?bShowFooter:Bool):sap.m.Page;

	/**
	* Sets a new value for property {@link #getShowHeader showHeader}.

Whether this page shall have a header. If set to true, either the control under the "customHeader" aggregation is used, or if there is no such control, a Header control is constructed from the properties "title", "showNavButton", "navButtonText" and "icon" depending on the platform.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeader New value for property <code>showHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeader( ?bShowHeader:Bool):sap.m.Page;

	/**
	* Sets a new value for property {@link #getShowNavButton showNavButton}.

A nav button will be rendered on the left area of header bar if this property is set to true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowNavButton New value for property <code>showNavButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowNavButton( ?bShowNavButton:Bool):sap.m.Page;

	/**
	* Sets a new value for property {@link #getShowSubHeader showSubHeader}.

Whether this page shall show the subheader.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowSubHeader New value for property <code>showSubHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSubHeader( ?bShowSubHeader:Bool):sap.m.Page;

	/**
	* Sets the aggregated {@link #getSubHeader subHeader}.
	* @param	oSubHeader The subHeader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubHeader( oSubHeader:sap.m.IBar):sap.m.Page;

	/**
	* Sets a new value for property {@link #getTitle title}.

The title text appearing in the page header bar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.m.Page;

	/**
	* Sets a new value for property {@link #getTitleAlignment titleAlignment}.

Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleAlignment New value for property <code>titleAlignment</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleAlignment( ?sTitleAlignment:sap.m.TitleAlignment):sap.m.Page;

	/**
	* Sets a new value for property {@link #getTitleLevel titleLevel}.

Defines the semantic level of the title. Using "Auto" no explicit level information is written. Used for accessibility purposes only.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleLevel New value for property <code>titleLevel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleLevel( ?sTitleLevel:sap.ui.core.TitleLevel):sap.m.Page;
}

typedef PageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The title text appearing in the page header bar.
	*/
	@:optional var title:String;

	/**
	* Defines the semantic level of the title. Using "Auto" no explicit level information is written. Used for accessibility purposes only.
	*/
	@:optional var titleLevel:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

	/**
	* A nav button will be rendered on the left area of header bar if this property is set to true.
	*/
	@:optional var showNavButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Whether this page shall have a header. If set to true, either the control under the "customHeader" aggregation is used, or if there is no such control, a Header control is constructed from the properties "title", "showNavButton", "navButtonText" and "icon" depending on the platform.
	*/
	@:optional var showHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* Whether this page shall show the subheader.
	*/
	@:optional var showSubHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* The tooltip of the nav button

Since version 1.34
	*/
	@:optional var navButtonTooltip:String;

	/**
	* Enable vertical scrolling of page contents. Page headers and footers are fixed and do not scroll. If set to false, there will be no vertical scrolling at all.

The Page only allows vertical scrolling because horizontal scrolling is discouraged in general for full-page content. If it still needs to be achieved, disable the Page scrolling and use a ScrollContainer as full-page content of the Page. This allows you to freely configure scrolling. It can also be used to create horizontally-scrolling sub-areas of (vertically-scrolling) Pages.
	*/
	@:optional var enableScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* This property is used to set the background color of a page. When a list is placed inside a page, the value "List" should be used to display a gray background. "Standard", with the default background color, is used if not specified.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.PageBackgroundDesign>;

	/**
	* Whether this page shall have a footer
	*/
	@:optional var showFooter:haxe.extern.EitherType<String,Bool>;

	/**
	* Decides which area is covered by the local BusyIndicator when <code>page.setBusy()</code> is called. By default the entire page is covered, including headers and footer. When this property is set to "true", only the content area is covered (not header/sub header and footer), which is useful e.g. when there is a SearchField in the sub header and live search continuously updates the content area while the user is still able to type.
	*/
	@:optional var contentOnlyBusy:haxe.extern.EitherType<String,Bool>;

	/**
	* Decides whether the footer can float. When set to true, the footer is not fixed below the content area anymore, but rather floats over it with a slight offset from the bottom.
	*/
	@:optional var floatingFooter:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the Title alignment (theme specific). If set to <code>TitleAlignment.Auto</code>, the Title will be aligned as it is set in the theme (if not set, the default value is <code>center</code>); Other possible values are <code>TitleAlignment.Start</code> (left or right depending on LTR/RTL), and <code>TitleAlignment.Center</code> (centered)
	*/
	@:optional var titleAlignment:haxe.extern.EitherType<String,sap.m.TitleAlignment>;

    /**
    * The content of this page
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The (optional) custom header of this page. Use this aggregation only when a custom header is constructed where the default header consisting of title text + nav button is not sufficient. If this aggregation is set, the simple properties "title", "showNavButton", "NavButtonText" and "icon" are not used.
    */
	@:optional var customHeader:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * The (optional) footer of this page. It is always located at the bottom of the page
    */
	@:optional var footer:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * a subHeader will be rendered directly under the header
    */
	@:optional var subHeader:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * Controls to be added to the right side of the page header. Usually an application would use Button controls and limit the number to one when the application needs to run on smartphones. There is no automatic overflow handling when the space is insufficient. When a customHeader is used, this aggregation will be ignored.
    */
	@:optional var headerContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Accessible landmark settings to be applied on the containers of the <code>sap.m.Page</code> control.

If not set, no landmarks will be written.
    */
	@:optional var landmarkInfo:haxe.extern.EitherType<String,sap.m.PageAccessibleLandmarkInfo>;

    /**
    * A header bar which is managed internally by the Page control
    */
	@:optional var _internalHeader:haxe.extern.EitherType<String,sap.m.IBar>;

	/**
	* this event is fired when Nav Button is pressed
	*/
	@:optional var navButtonPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
