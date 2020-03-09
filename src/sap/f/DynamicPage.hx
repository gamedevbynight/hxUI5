package sap.f;

@:native("sap.f.DynamicPage")

/**
* A layout control, representing a web page, consisting of a title, header with dynamic behavior, a content area, and an optional floating footer.

<h3>Overview</h3>

The control consist of several components:

<ul><li>{@link sap.f.DynamicPageTitle DynamicPageTitle} - consists of a heading on the left side, content in the middle, and actions on the right. The displayed content changes based on the current mode of the {@link sap.f.DynamicPageHeader DynamicPageHeader}.</li> <li>{@link sap.f.DynamicPageHeader DynamicPageHeader} - a generic container, which can contain a single layout control and does not care about the content alignment and responsiveness. The header works in two modes - expanded and snapped and its behavior can be adjusted with the help of different properties.</li> <li>Content area - a generic container, which can have a single UI5 layout control and does not care about the content alignment and responsiveness.</li> <li>Footer - positioned at the bottom with a small offset and used for additional actions, the footer floats above the content. It can be any {@link sap.m.IBar} control.</li></ul>

<h3>Usage</h3>

Use the <code>DynamicPage</code> if you need to have a title, that is always visible and a header, that has configurable Expanding/Snapping functionality. If you don't need the Expanding/Snapping functionality it is better to use the {@link sap.m.Page} as a lighter control.

<ul><b>Notes:</b> <li>If you're displaying a {@link sap.m.FlexBox} with non-adaptive content (doesn't stretch to fill the available space), it is recommended to set the <code>fitContainer</code> property of the {@link sap.m.FlexBox FlexBox} to <code>false</code>.</li> <li>If you are displaying a {@link sap.ui.table.Table}, keep in mind that it is non-adaptive and may cause unpredicted behavior for the <code>DynamicPage</code> on smaller screen sizes, such as mobile.</li> <li>Snapping of the {@link sap.f.DynamicPageTitle DynamicPageTitle} is not supported in the following case: When the <code>DynamicPage</code> has a scroll bar, the control usually scrolls to the snapping point - the point, where the {@link sap.f.DynamicPageHeader DynamicPageHeader} is scrolled out completely. However, when there is a scroll bar, but not enough content to reach the snapping point, the snapping is not possible using scrolling.</li> <li>When using {@link sap.ui.layout.form.Form}, {@link sap.m.Panel}, {@link sap.m.Table} and {@link sap.m.List} controls in the content of <code>DynamicPage</code>, you need to adjust their left text offset if you want to achieve vertical alignment between the <code>sap.f.DynamicPageHeader</code>`s content and <code>DynamicPage</code>`s content. For more information, see the documentation for the <code>content</code> aggregation.</li></ul>

<h3>Responsive Behavior</h3>

The responsive behavior of the <code>DynamicPage</code> depends on the behavior of the content that is displayed. To adjust the <code>DynamicPage</code> content padding, the <code>sapUiContentPadding</code>, <code>sapUiNoContentPadding</code>, and <code>sapUiResponsiveContentPadding</code> CSS classes can be used.
*/
extern class DynamicPage extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:DynamicPageArgs):Void {})
	public function new(?mSettings:DynamicPageArgs):Void;

	/**
	* Destroys the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.f.DynamicPage;

	/**
	* Destroys the footer in the aggregation {@link #getFooter footer}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFooter( ):sap.f.DynamicPage;

	/**
	* Destroys the header in the aggregation {@link #getHeader header}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeader( ):sap.f.DynamicPage;

	/**
	* Destroys the landmarkInfo in the aggregation {@link #getLandmarkInfo landmarkInfo}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLandmarkInfo( ):sap.f.DynamicPage;

	/**
	* Destroys the title in the aggregation {@link #getTitle title}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitle( ):sap.f.DynamicPage;

	/**
	* Creates a new subclass of class sap.f.DynamicPage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Determines the background color of <code>DynamicPage</code>.

Default value is <code>Standard</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.PageBackgroundDesign;

	/**
	* Gets content of aggregation {@link #getContent content}.

<code>DynamicPage</code> content.

<b>Note: </b> You can change the default paddings by adding the following CSS classes: <ul> <li><code>sapUiContentPadding</code></li> <li><code>sapUiNoContentPadding</code></li> <li><code>sapUiResponsiveContentPadding</code></li> </ul> For more information, see {@link topic:c71f6df62dae47ca8284310a6f5fc80a Using Container Content Padding CSS Classes}.

<b>Note:</b> The SAP Fiori Design guidelines require that the <code>DynamicPageHeader</code>'s content and the <code>DynamicPage</code>'s content are aligned vertically. When using {@link sap.ui.layout.form.Form}, {@link sap.m.Panel}, {@link sap.m.Table} and {@link sap.m.List} in the content area of <code>DynamicPage</code>, if the content is not already aligned, you need to adjust their left text offset to achieve the vertical alignment. To do this, apply the <code>sapFDynamicPageAlignContent</code> CSS class to them and set their <code>width</code> property to <code>auto</code> (if not set by default).

Example:

<pre>
<code> &lt;Panel class=“sapFDynamicPageAlignContent” width=“auto”&gt;&lt;/Panel&gt; </code>
</pre>

Please keep in mind that the alignment is not possible in the following cases: <ul> <li> When the controls are placed in an {@link sap.ui.layout.Grid} or other layout controls that use <code>overflow:hidden</code> CSS property</li> <li> In case any of the following CSS classes is applied to <code>DynamicPage</code>: <code>sapUiContentPadding</code>, <code>sapUiNoContentPadding</code> or <code>sapUiResponsiveContentPadding</code></li> </ul>
	* @return	null
	*/
	public function getContent( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getFitContent fitContent}.

Optimizes <code>DynamicPage</code> responsiveness on small screens and behavior when expanding/collapsing the <code>DynamicPageHeader</code>.

<b>Note:</b> It is recommended to use this property when displaying content of adaptive controls that stretch to fill the available space. Such controls may be {@link sap.ui.table.Table} and {@link sap.ui.table.AnalyticalTable} depending on their settings.

Default value is <code>false</code>.
	* @return	Value of property <code>fitContent</code>
	*/
	public function getFitContent( ):Bool;

	/**
	* Gets content of aggregation {@link #getFooter footer}.

<code>DynamicPage</code> floating footer.
	* @return	null
	*/
	public function getFooter( ):sap.m.IBar;

	/**
	* Gets content of aggregation {@link #getHeader header}.

<code>DynamicPage</code> header.
	* @return	null
	*/
	public function getHeader( ):sap.f.DynamicPageHeader;

	/**
	* Gets current value of property {@link #getHeaderExpanded headerExpanded}.

Determines whether the header is expanded.

The header can be also expanded/collapsed by user interaction, which requires the property to be internally mutated by the control to reflect the changed state.

<b>Note:</b> As of version 1.48, you can initialize the control in collapsed header state by setting this property to <code>false</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>headerExpanded</code>
	*/
	public function getHeaderExpanded( ):Bool;

	/**
	* Gets content of aggregation {@link #getLandmarkInfo landmarkInfo}.

Accessible landmark settings to be applied on the containers of the <code>sap.f.DynamicPage</code> control.

If not set, no landmarks will be written.
	* @return	null
	*/
	public function getLandmarkInfo( ):sap.f.DynamicPageAccessibleLandmarkInfo;

	/**
	* Returns a metadata object for class sap.f.DynamicPage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPreserveHeaderStateOnScroll preserveHeaderStateOnScroll}.

Preserves the current header state when scrolling. For example, if the user expands the header by clicking on the title and then scrolls down the page, the header will remain expanded.

<b>Note:</b> Based on internal rules, the value of the property is not always taken into account - for example, when the control`s title and header are with height larger than the given threshold.

Default value is <code>false</code>.
	* @return	Value of property <code>preserveHeaderStateOnScroll</code>
	*/
	public function getPreserveHeaderStateOnScroll( ):Bool;

	/**
	* Gets current value of property {@link #getShowFooter showFooter}.

Determines whether the footer is visible.

Default value is <code>false</code>.
	* @return	Value of property <code>showFooter</code>
	*/
	public function getShowFooter( ):Bool;

	/**
	* ID of the element which is the current target of the association {@link #getStickySubheaderProvider stickySubheaderProvider}, or <code>null</code>.
	* @return	null
	*/
	public function getStickySubheaderProvider( ):sap.ui.core.ID;

	/**
	* Gets content of aggregation {@link #getTitle title}.

<code>DynamicPage</code> title.
	* @return	null
	*/
	public function getTitle( ):sap.f.DynamicPageTitle;

	/**
	* Gets current value of property {@link #getToggleHeaderOnTitleClick toggleHeaderOnTitleClick}.

Determines whether the user can switch between the expanded/collapsed states of the <code>DynamicPageHeader</code> by clicking on the <code>DynamicPageTitle</code> or by using the expand/collapse visual indicators, positioned at the bottom of the <code>DynamicPageTitle</code> and the <code>DynamicPageHeader</code>. If set to <code>false</code>, the <code>DynamicPageTitle</code> is not clickable, the visual indicators are not available and the application must provide other means for expanding/collapsing the <code>DynamicPageHeader</code>, if necessary.

<b>Note: </b> This property is taken into account only if a non-empty <code>header</code> aggregation is provided.

Default value is <code>true</code>.
	* @return	Value of property <code>toggleHeaderOnTitleClick</code>
	*/
	public function getToggleHeaderOnTitleClick( ):Bool;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Determines the background color of <code>DynamicPage</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( sBackgroundDesign:sap.m.PageBackgroundDesign):sap.f.DynamicPage;

	/**
	* Sets the aggregated {@link #getContent content}.
	* @param	oContent The content to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( oContent:sap.ui.core.Control):sap.f.DynamicPage;

	/**
	* Sets a new value for property {@link #getFitContent fitContent}.

Optimizes <code>DynamicPage</code> responsiveness on small screens and behavior when expanding/collapsing the <code>DynamicPageHeader</code>.

<b>Note:</b> It is recommended to use this property when displaying content of adaptive controls that stretch to fill the available space. Such controls may be {@link sap.ui.table.Table} and {@link sap.ui.table.AnalyticalTable} depending on their settings.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFitContent New value for property <code>fitContent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFitContent( bFitContent:Bool):sap.f.DynamicPage;

	/**
	* Sets the aggregated {@link #getFooter footer}.
	* @param	oFooter The footer to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooter( oFooter:sap.m.IBar):sap.f.DynamicPage;

	/**
	* Sets the aggregated {@link #getHeader header}.
	* @param	oHeader The header to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeader( oHeader:sap.f.DynamicPageHeader):sap.f.DynamicPage;

	/**
	* Sets a new value for property {@link #getHeaderExpanded headerExpanded}.

Determines whether the header is expanded.

The header can be also expanded/collapsed by user interaction, which requires the property to be internally mutated by the control to reflect the changed state.

<b>Note:</b> As of version 1.48, you can initialize the control in collapsed header state by setting this property to <code>false</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHeaderExpanded New value for property <code>headerExpanded</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderExpanded( bHeaderExpanded:Bool):sap.f.DynamicPage;

	/**
	* Sets the aggregated {@link #getLandmarkInfo landmarkInfo}.
	* @param	oLandmarkInfo The landmarkInfo to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLandmarkInfo( oLandmarkInfo:sap.f.DynamicPageAccessibleLandmarkInfo):sap.f.DynamicPage;

	/**
	* Sets a new value for property {@link #getPreserveHeaderStateOnScroll preserveHeaderStateOnScroll}.

Preserves the current header state when scrolling. For example, if the user expands the header by clicking on the title and then scrolls down the page, the header will remain expanded.

<b>Note:</b> Based on internal rules, the value of the property is not always taken into account - for example, when the control`s title and header are with height larger than the given threshold.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPreserveHeaderStateOnScroll New value for property <code>preserveHeaderStateOnScroll</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPreserveHeaderStateOnScroll( bPreserveHeaderStateOnScroll:Bool):sap.f.DynamicPage;

	/**
	* Sets a new value for property {@link #getShowFooter showFooter}.

Determines whether the footer is visible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowFooter New value for property <code>showFooter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowFooter( bShowFooter:Bool):sap.f.DynamicPage;
	@:overload( function(oStickySubheaderProvider:sap.ui.core.ID):sap.f.DynamicPage{ })

	/**
	* Sets the associated {@link #getStickySubheaderProvider stickySubheaderProvider}.
	* @param	oStickySubheaderProvider ID of an element which becomes the new target of this stickySubheaderProvider association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStickySubheaderProvider( oStickySubheaderProvider:sap.f.IDynamicPageStickyContent):sap.f.DynamicPage;

	/**
	* Sets the aggregated {@link #getTitle title}.
	* @param	oTitle The title to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( oTitle:sap.f.DynamicPageTitle):sap.f.DynamicPage;

	/**
	* Sets a new value for property {@link #getToggleHeaderOnTitleClick toggleHeaderOnTitleClick}.

Determines whether the user can switch between the expanded/collapsed states of the <code>DynamicPageHeader</code> by clicking on the <code>DynamicPageTitle</code> or by using the expand/collapse visual indicators, positioned at the bottom of the <code>DynamicPageTitle</code> and the <code>DynamicPageHeader</code>. If set to <code>false</code>, the <code>DynamicPageTitle</code> is not clickable, the visual indicators are not available and the application must provide other means for expanding/collapsing the <code>DynamicPageHeader</code>, if necessary.

<b>Note: </b> This property is taken into account only if a non-empty <code>header</code> aggregation is provided.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bToggleHeaderOnTitleClick New value for property <code>toggleHeaderOnTitleClick</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToggleHeaderOnTitleClick( bToggleHeaderOnTitleClick:Bool):sap.f.DynamicPage;
}

typedef DynamicPageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Preserves the current header state when scrolling. For example, if the user expands the header by clicking on the title and then scrolls down the page, the header will remain expanded.

<b>Note:</b> Based on internal rules, the value of the property is not always taken into account - for example, when the control`s title and header are with height larger than the given threshold.
	*/
	@:optional var preserveHeaderStateOnScroll:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the header is expanded.

The header can be also expanded/collapsed by user interaction, which requires the property to be internally mutated by the control to reflect the changed state.

<b>Note:</b> As of version 1.48, you can initialize the control in collapsed header state by setting this property to <code>false</code>.
	*/
	@:optional var headerExpanded:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the user can switch between the expanded/collapsed states of the <code>DynamicPageHeader</code> by clicking on the <code>DynamicPageTitle</code> or by using the expand/collapse visual indicators, positioned at the bottom of the <code>DynamicPageTitle</code> and the <code>DynamicPageHeader</code>. If set to <code>false</code>, the <code>DynamicPageTitle</code> is not clickable, the visual indicators are not available and the application must provide other means for expanding/collapsing the <code>DynamicPageHeader</code>, if necessary.

<b>Note: </b> This property is taken into account only if a non-empty <code>header</code> aggregation is provided.
	*/
	@:optional var toggleHeaderOnTitleClick:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the footer is visible.
	*/
	@:optional var showFooter:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the background color of <code>DynamicPage</code>.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.PageBackgroundDesign>;

	/**
	* Optimizes <code>DynamicPage</code> responsiveness on small screens and behavior when expanding/collapsing the <code>DynamicPageHeader</code>.

<b>Note:</b> It is recommended to use this property when displaying content of adaptive controls that stretch to fill the available space. Such controls may be {@link sap.ui.table.Table} and {@link sap.ui.table.AnalyticalTable} depending on their settings.
	*/
	@:optional var fitContent:haxe.extern.EitherType<String,Bool>;

    /**
    * <code>DynamicPage</code> title.
    */
	@:optional var title:haxe.extern.EitherType<String,sap.f.DynamicPageTitle>;

    /**
    * <code>DynamicPage</code> header.
    */
	@:optional var header:haxe.extern.EitherType<String,sap.f.DynamicPageHeader>;

    /**
    * <code>DynamicPage</code> content.

<b>Note: </b> You can change the default paddings by adding the following CSS classes: <ul> <li><code>sapUiContentPadding</code></li> <li><code>sapUiNoContentPadding</code></li> <li><code>sapUiResponsiveContentPadding</code></li> </ul> For more information, see {@link topic:c71f6df62dae47ca8284310a6f5fc80a Using Container Content Padding CSS Classes}.

<b>Note:</b> The SAP Fiori Design guidelines require that the <code>DynamicPageHeader</code>'s content and the <code>DynamicPage</code>'s content are aligned vertically. When using {@link sap.ui.layout.form.Form}, {@link sap.m.Panel}, {@link sap.m.Table} and {@link sap.m.List} in the content area of <code>DynamicPage</code>, if the content is not already aligned, you need to adjust their left text offset to achieve the vertical alignment. To do this, apply the <code>sapFDynamicPageAlignContent</code> CSS class to them and set their <code>width</code> property to <code>auto</code> (if not set by default).

Example:

<pre>
<code> &lt;Panel class=“sapFDynamicPageAlignContent” width=“auto”&gt;&lt;/Panel&gt; </code>
</pre>

Please keep in mind that the alignment is not possible in the following cases: <ul> <li> When the controls are placed in an {@link sap.ui.layout.Grid} or other layout controls that use <code>overflow:hidden</code> CSS property</li> <li> In case any of the following CSS classes is applied to <code>DynamicPage</code>: <code>sapUiContentPadding</code>, <code>sapUiNoContentPadding</code> or <code>sapUiResponsiveContentPadding</code></li> </ul>
    */
	@:optional var content:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * <code>DynamicPage</code> floating footer.
    */
	@:optional var footer:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * Accessible landmark settings to be applied on the containers of the <code>sap.f.DynamicPage</code> control.

If not set, no landmarks will be written.
    */
	@:optional var landmarkInfo:haxe.extern.EitherType<String,sap.f.DynamicPageAccessibleLandmarkInfo>;

    /**
    * <code>DynamicPage</code> custom <code>ScrollBar</code>.
    */
	@:optional var _scrollBar:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association of Controls / IDs, that provide sticky subheader content. All controls that provide this content have to implement the <code>sap.f.IDynamicPageStickyContent</code> interface.
	*/
	@:optional var stickySubheaderProvider:haxe.extern.EitherType<String,sap.f.IDynamicPageStickyContent>;
}
