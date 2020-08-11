package sap.f.semantic;

@:native("sap.f.semantic.SemanticPage")

/**
* Provides enhanced functionality by internally aggregating {@link sap.f.DynamicPage} and contains controls with semantic-specific meaning.

<h3>Overview</h3>

Content specified in the <code>sap.f.semantic.SemanticPage</code> aggregations is automatically positioned in dedicated sections of the title or the footer of the page, depending on the control's semantics.

The actions in the <code>SemanticPage</code> title are grouped to text actions or icon actions. When an aggregation is set, the actions appear in the following predefined order (from left to right):

<ul>Text actions: <li>The main semantic text action - <code>titleMainAction</code></li> <li>Any custom text actions - <code>titleCustomTextActions</code></li> <li>The semantic text actions - <code>editAction</code>, <code>deleteAction</code>, <code>copyAction</code> and <code>addAction</code></li></ul>

<ul>Icon actions: <li>Any custom icon actions - <code>titleCustomIconActions</code></li> <li>The simple semantic icon actions - <code>favoriteAction</code> and <code>flagAction</code></li> <li>The share menu semantic icon actions as a drop-down list with the following order: <ul><li><code>sendEmailAction</code></li> <li><code>discussInJamAction</code></li> <li><code>shareInJamAction</code></li> <li><code>sendMessageAction</code></li> <li><code>printAction</code></li> <li>Any <code>customShareActions</code></li></ul></li> <li>The navigation semantic actions - <code>fullScreenAction</code>, <code>exitFullScreenAction</code>, and <code>closeAction</code></li></ul>

The actions in the <code>SemanticPage</code> footer are positioned either on its left or right area and have the following predefined order:

<ul>Footer left area: <li>The semantic text action - <code>messagesIndicator</code></li> <li>The semantic label - <code>draftIndicator</code></li></ul>

<ul>Footer right area: <li>The main semantic text action - <code>footerMainAction</code></li> <li>The semantic text actions - <code>positiveAction</code> and <code>negativeAction</code></li> <li>Any custom text actions - <code>footerCustomActions</code></li></ul>

<h3>Usage</h3>

Using the <code>SemanticPage</code> facilitates the implementation of the SAP Fiori 2.0 design guidelines.

<h3>Responsive behavior</h3>

The responsive behavior of the <code>SemanticPage</code> depends on the behavior of the content that is displayed. To adjust the <code>SemanticPage</code> content padding, the <code>sapUiContentPadding</code>, <code>sapUiNoContentPadding</code>, and <code>sapUiResponsiveContentPadding</code> CSS classes can be used.
*/
extern class SemanticPage extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SemanticPageArgs):Void {})
	public function new(?mSettings:SemanticPageArgs):Void;

	/**
	* Adds some customShareAction to the aggregation {@link #getCustomShareActions customShareActions}.
	* @param	oCustomShareAction The customShareAction to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCustomShareAction( oCustomShareAction:sap.m.Button):sap.f.semantic.SemanticPage;

	/**
	* Adds some footerCustomAction to the aggregation {@link #getFooterCustomActions footerCustomActions}.
	* @param	oFooterCustomAction The footerCustomAction to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addFooterCustomAction( oFooterCustomAction:sap.m.Button):sap.f.semantic.SemanticPage;

	/**
	* Adds some headerContent to the aggregation {@link #getHeaderContent headerContent}.
	* @param	oHeaderContent The headerContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addHeaderContent( oHeaderContent:sap.ui.core.Control):sap.f.semantic.SemanticPage;

	/**
	* Adds some titleContent to the aggregation {@link #getTitleContent titleContent}.
	* @param	oTitleContent The titleContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTitleContent( oTitleContent:sap.ui.core.Control):sap.f.semantic.SemanticPage;

	/**
	* Adds some titleCustomIconAction to the aggregation {@link #getTitleCustomIconActions titleCustomIconActions}.
	* @param	oTitleCustomIconAction The titleCustomIconAction to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTitleCustomIconAction( oTitleCustomIconAction:sap.m.OverflowToolbarButton):sap.f.semantic.SemanticPage;

	/**
	* Adds some titleCustomTextAction to the aggregation {@link #getTitleCustomTextActions titleCustomTextActions}.
	* @param	oTitleCustomTextAction The titleCustomTextAction to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTitleCustomTextAction( oTitleCustomTextAction:sap.m.Button):sap.f.semantic.SemanticPage;

	/**
	* Adds some titleExpandedContent to the aggregation {@link #getTitleExpandedContent titleExpandedContent}.
	* @param	oTitleExpandedContent The titleExpandedContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTitleExpandedContent( oTitleExpandedContent:sap.ui.core.Control):sap.f.semantic.SemanticPage;

	/**
	* Adds some titleSnappedContent to the aggregation {@link #getTitleSnappedContent titleSnappedContent}.
	* @param	oTitleSnappedContent The titleSnappedContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTitleSnappedContent( oTitleSnappedContent:sap.ui.core.Control):sap.f.semantic.SemanticPage;

	/**
	* Destroys the addAction in the aggregation {@link #getAddAction addAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAddAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the closeAction in the aggregation {@link #getCloseAction closeAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCloseAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the copyAction in the aggregation {@link #getCopyAction copyAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCopyAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys all the customShareActions in the aggregation {@link #getCustomShareActions customShareActions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomShareActions( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the deleteAction in the aggregation {@link #getDeleteAction deleteAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDeleteAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the discussInJamAction in the aggregation {@link #getDiscussInJamAction discussInJamAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDiscussInJamAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the draftIndicator in the aggregation {@link #getDraftIndicator draftIndicator}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDraftIndicator( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the editAction in the aggregation {@link #getEditAction editAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyEditAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the exitFullScreenAction in the aggregation {@link #getExitFullScreenAction exitFullScreenAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyExitFullScreenAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the favoriteAction in the aggregation {@link #getFavoriteAction favoriteAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFavoriteAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the flagAction in the aggregation {@link #getFlagAction flagAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFlagAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys all the footerCustomActions in the aggregation {@link #getFooterCustomActions footerCustomActions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFooterCustomActions( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the footerMainAction in the aggregation {@link #getFooterMainAction footerMainAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFooterMainAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the fullScreenAction in the aggregation {@link #getFullScreenAction fullScreenAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFullScreenAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys all the headerContent in the aggregation {@link #getHeaderContent headerContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderContent( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the landmarkInfo in the aggregation {@link #getLandmarkInfo landmarkInfo}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLandmarkInfo( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the messagesIndicator in the aggregation {@link #getMessagesIndicator messagesIndicator}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMessagesIndicator( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the negativeAction in the aggregation {@link #getNegativeAction negativeAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyNegativeAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the positiveAction in the aggregation {@link #getPositiveAction positiveAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPositiveAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the printAction in the aggregation {@link #getPrintAction printAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPrintAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the saveAsTileAction in the aggregation {@link #getSaveAsTileAction saveAsTileAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySaveAsTileAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the sendEmailAction in the aggregation {@link #getSendEmailAction sendEmailAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySendEmailAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the sendMessageAction in the aggregation {@link #getSendMessageAction sendMessageAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySendMessageAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the shareInJamAction in the aggregation {@link #getShareInJamAction shareInJamAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyShareInJamAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the titleBreadcrumbs in the aggregation {@link #getTitleBreadcrumbs titleBreadcrumbs}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleBreadcrumbs( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys all the titleContent in the aggregation {@link #getTitleContent titleContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleContent( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys all the titleCustomIconActions in the aggregation {@link #getTitleCustomIconActions titleCustomIconActions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleCustomIconActions( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys all the titleCustomTextActions in the aggregation {@link #getTitleCustomTextActions titleCustomTextActions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleCustomTextActions( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys all the titleExpandedContent in the aggregation {@link #getTitleExpandedContent titleExpandedContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleExpandedContent( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the titleExpandedHeading in the aggregation {@link #getTitleExpandedHeading titleExpandedHeading}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleExpandedHeading( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the titleHeading in the aggregation {@link #getTitleHeading titleHeading}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleHeading( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the titleMainAction in the aggregation {@link #getTitleMainAction titleMainAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleMainAction( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys all the titleSnappedContent in the aggregation {@link #getTitleSnappedContent titleSnappedContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleSnappedContent( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the titleSnappedHeading in the aggregation {@link #getTitleSnappedHeading titleSnappedHeading}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleSnappedHeading( ):sap.f.semantic.SemanticPage;

	/**
	* Destroys the titleSnappedOnMobile in the aggregation {@link #getTitleSnappedOnMobile titleSnappedOnMobile}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleSnappedOnMobile( ):sap.f.semantic.SemanticPage;

	/**
	* Creates a new subclass of class sap.f.semantic.SemanticPage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getAddAction addAction}.

A semantic-specific button which is placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getAddAction( ):sap.f.semantic.AddAction;

	/**
	* Gets content of aggregation {@link #getCloseAction closeAction}.

A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getCloseAction( ):sap.f.semantic.CloseAction;

	/**
	* Gets content of aggregation {@link #getContent content}.

The <code>SemanticPage</code> content.

<b>Note:</b> The SAP Fiori Design guidelines require that the <code>SemanticPage</code>'s header content and the <code>SemanticPage</code>'s content are aligned vertically. When using {@link sap.ui.layout.form.Form}, {@link sap.m.Panel}, {@link sap.m.Table} and {@link sap.m.List} in the content area of <code>SemanticPage</code>, if the content is not already aligned, you need to adjust their left text offset to achieve the vertical alignment. To do this, apply the <code>sapFSemanticPageAlignContent</code> CSS class to them and set their <code>width</code> property to <code>auto</code> (if not set by default).

Example:

<pre>
<code> &lt;Panel class=“sapFSemanticPageAlignContent” width=“auto”&gt;&lt;/Panel&gt; </code>
</pre>

Please keep in mind that the alignment is not possible when the controls are placed in a {@link sap.ui.layout.Grid} or in other layout controls that use <code>overflow:hidden</code> CSS property.
	* @return	null
	*/
	public function getContent( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getCopyAction copyAction}.

A semantic-specific button which is placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getCopyAction( ):sap.f.semantic.CopyAction;

	/**
	* Gets content of aggregation {@link #getCustomShareActions customShareActions}.

The <code>customShareActions</code> are placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title, right after the semantic actions.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getCustomShareActions( ):Array<sap.m.Button>;

	/**
	* Gets content of aggregation {@link #getDeleteAction deleteAction}.

A semantic-specific button which is placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getDeleteAction( ):sap.f.semantic.DeleteAction;

	/**
	* Gets content of aggregation {@link #getDiscussInJamAction discussInJamAction}.

A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getDiscussInJamAction( ):sap.f.semantic.DiscussInJamAction;

	/**
	* Gets content of aggregation {@link #getDraftIndicator draftIndicator}.

A semantic-specific button which is placed in the <code>FooterLeft</code> area of the <code>SemanticPage</code> footer as a second action.
	* @return	null
	*/
	public function getDraftIndicator( ):sap.m.DraftIndicator;

	/**
	* Gets content of aggregation {@link #getEditAction editAction}.

A semantic-specific button which is placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getEditAction( ):sap.f.semantic.EditAction;

	/**
	* Gets content of aggregation {@link #getExitFullScreenAction exitFullScreenAction}.

A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getExitFullScreenAction( ):sap.f.semantic.ExitFullScreenAction;

	/**
	* Gets content of aggregation {@link #getFavoriteAction favoriteAction}.

A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getFavoriteAction( ):sap.f.semantic.FavoriteAction;

	/**
	* Gets current value of property {@link #getFitContent fitContent}.

Optimizes <code>SemanticPage</code> responsiveness on small screens and behavior when expanding/collapsing the <code>SemanticPageHeader</code>.

<b>Note:</b> It is recommended to use this property when displaying content of adaptive controls that stretch to fill the available space. Such controls may be {@link sap.ui.table.Table} and {@link sap.ui.table.AnalyticalTable} depending on their settings.

Default value is <code>false</code>.
	* @return	Value of property <code>fitContent</code>
	*/
	public function getFitContent( ):Bool;

	/**
	* Gets content of aggregation {@link #getFlagAction flagAction}.

A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getFlagAction( ):sap.f.semantic.FlagAction;

	/**
	* Gets content of aggregation {@link #getFooterCustomActions footerCustomActions}.

The <code>footerCustomActions</code> are placed in the <code>FooterRight</code> area of the <code>SemanticPage</code> footer, right after the semantic footer actions.

<b>Note:</b> Buttons that are part of this aggregation will always have their <code>type</code> property set to <code>Transparent</code> by design.
	* @return	null
	*/
	public function getFooterCustomActions( ):Array<sap.m.Button>;

	/**
	* Gets content of aggregation {@link #getFooterMainAction footerMainAction}.

A semantic-specific button which is placed in the <code>FooterRight</code> area of the <code>SemanticPage</code> footer with default text value set to <code>Save</code>.
	* @return	null
	*/
	public function getFooterMainAction( ):sap.f.semantic.FooterMainAction;

	/**
	* Gets content of aggregation {@link #getFullScreenAction fullScreenAction}.

A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getFullScreenAction( ):sap.f.semantic.FullScreenAction;

	/**
	* Gets content of aggregation {@link #getHeaderContent headerContent}.

The header content.
	* @return	null
	*/
	public function getHeaderContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getHeaderExpanded headerExpanded}.

Determines whether the header is expanded.

The header can be also expanded/collapsed by user interaction, which requires the property to be internally mutated by the control to reflect the changed state.

<b>Note:</b> Please be aware, that initially collapsed header state is not supported, so <code>headerExpanded</code> should not be set to <code>false</code> when initializing the control.

Default value is <code>true</code>.
	* @return	Value of property <code>headerExpanded</code>
	*/
	public function getHeaderExpanded( ):Bool;

	/**
	* Gets current value of property {@link #getHeaderPinnable headerPinnable}.

Determines whether the header is pinnable.

Default value is <code>true</code>.
	* @return	Value of property <code>headerPinnable</code>
	*/
	public function getHeaderPinnable( ):Bool;

	/**
	* Gets content of aggregation {@link #getLandmarkInfo landmarkInfo}.

Accessible landmark settings to be applied to the containers of the <code>sap.f.SemanticPage</code> control.

If not set, no landmarks will be written.
	* @return	null
	*/
	public function getLandmarkInfo( ):sap.f.DynamicPageAccessibleLandmarkInfo;

	/**
	* Gets content of aggregation {@link #getMessagesIndicator messagesIndicator}.

A semantic-specific button which is placed in the <code>FooterLeft</code> area of the <code>SemanticPage</code> footer as a first action.
	* @return	null
	*/
	public function getMessagesIndicator( ):sap.f.semantic.MessagesIndicator;

	/**
	* Returns a metadata object for class sap.f.semantic.SemanticPage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getNegativeAction negativeAction}.

A semantic-specific button which is placed in the <code>FooterRight</code> area of the <code>SemanticPage</code> footer with default text value set to <code>Reject</code>.
	* @return	null
	*/
	public function getNegativeAction( ):sap.f.semantic.NegativeAction;

	/**
	* Gets content of aggregation {@link #getPositiveAction positiveAction}.

A semantic-specific button which is placed in the <code>FooterRight</code> area of the <code>SemanticPage</code> footer with default text value set to <code>Accept</code>.
	* @return	null
	*/
	public function getPositiveAction( ):sap.f.semantic.PositiveAction;

	/**
	* Gets current value of property {@link #getPreserveHeaderStateOnScroll preserveHeaderStateOnScroll}.

Preserves the current header state when scrolling.

For example, if the user expands the header by clicking on the title and then scrolls down the page, the header will remain expanded.

<b>Note:</b> Based on internal rules, the value of the property is not always taken into account - for example, when the control is rendered on tablet or mobile and the title and the header are with height larger than a given threshold.

Default value is <code>false</code>.
	* @return	Value of property <code>preserveHeaderStateOnScroll</code>
	*/
	public function getPreserveHeaderStateOnScroll( ):Bool;

	/**
	* Gets content of aggregation {@link #getPrintAction printAction}.

A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getPrintAction( ):sap.f.semantic.PrintAction;

	/**
	* Gets content of aggregation {@link #getSaveAsTileAction saveAsTileAction}.

A button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getSaveAsTileAction( ):sap.m.Button;

	/**
	* Gets content of aggregation {@link #getSendEmailAction sendEmailAction}.

A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getSendEmailAction( ):sap.f.semantic.SendEmailAction;

	/**
	* Gets content of aggregation {@link #getSendMessageAction sendMessageAction}.

A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getSendMessageAction( ):sap.f.semantic.SendMessageAction;

	/**
	* Gets content of aggregation {@link #getShareInJamAction shareInJamAction}.

A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getShareInJamAction( ):sap.f.semantic.ShareInJamAction;

	/**
	* Gets current value of property {@link #getShowFooter showFooter}.

Determines whether the footer is visible.

Default value is <code>false</code>.
	* @return	Value of property <code>showFooter</code>
	*/
	public function getShowFooter( ):Bool;

	/**
	* Gets current value of property {@link #getTitleAreaShrinkRatio titleAreaShrinkRatio}.

Assigns shrinking ratio to the <code>SemanticPage</code> title areas (Heading, Content, Actions). The greater value a section has the faster it shrinks when the screen size is being reduced.

The value must be set in <code>Heading:Content:Actions</code> format where Title, Content and Actions are numbers greater than or equal to 0. If set to 0, the respective area will not shrink.

For example, if <code>2:7:1</code> is set, the Content area will shrink seven times faster than the Actions area. So, when all three areas have width of 500px and the available space is reduced by 100px the Title area will be reduced by 20px, the Content area - by 70px and the Actions area - by 10px.

If all the areas have assigned values greater than 1, the numbers are scaled so that at least one of them is equal to 1. For example, value of <code>2:4:8</code> is equal to <code>1:2:4</code>.

<Note:> When this property is set the <code>titlePrimaryArea</code> property has no effect.

Default value is <code>1:1.6:1.6</code>.
	* @return	Value of property <code>titleAreaShrinkRatio</code>
	*/
	public function getTitleAreaShrinkRatio( ):sap.f.DynamicPageTitleShrinkRatio;

	/**
	* Gets content of aggregation {@link #getTitleBreadcrumbs titleBreadcrumbs}.

The <code>SemanticPage</code> breadcrumbs.

A typical usage is the <code>sap.m.Breadcrumbs</code> control or any other UI5 control, that implements the <code>sap.m.IBreadcrumbs</code> interface.

<b>Notes:</b> <ul> <li>The control will be placed in the title`s top-left area.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
	* @return	null
	*/
	public function getTitleBreadcrumbs( ):sap.m.IBreadcrumbs;

	/**
	* Gets content of aggregation {@link #getTitleContent titleContent}.

The content, displayed in the title.

<b>Notes:</b> <ul> <li>The controls will be placed in the middle area.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
	* @return	null
	*/
	public function getTitleContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getTitleCustomIconActions titleCustomIconActions}.

The <code>titleCustomIconActions</code> are placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title, right before the semantic icon action.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getTitleCustomIconActions( ):Array<sap.m.OverflowToolbarButton>;

	/**
	* Gets content of aggregation {@link #getTitleCustomTextActions titleCustomTextActions}.

The <code>titleCustomTextActions</code> are placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title, right before the semantic text action.

<b>Notes:</b> <ul> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> <li>Buttons that are part of this aggregation will always have their <code>type</code> property set to <code>Transparent</code> by design.</li> </ul>
	* @return	null
	*/
	public function getTitleCustomTextActions( ):Array<sap.m.Button>;

	/**
	* Gets content of aggregation {@link #getTitleExpandedContent titleExpandedContent}.

The content,displayed in the title, when the header is in expanded state.

<b>Note:</b> The controls will be placed in the title`s left area, under the <code>titleHeading</code> aggregation.
	* @return	null
	*/
	public function getTitleExpandedContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getTitleExpandedHeading titleExpandedHeading}.

The <code>titleExpandedHeading</code> is positioned in the <code>SemanticPage</code> title left area and is displayed when the header is in expanded state only. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in expanded state only.

<b>Note:</b> In order for <code>titleExpandedHeading</code> to be taken into account, <code>titleHeading</code> has to be empty. Combine <code>titleExpandedHeading</code> with <code>titleSnappedHeading</code> to switch content when the header switches state.
	* @return	null
	*/
	public function getTitleExpandedHeading( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getTitleHeading titleHeading}.

The <code>SemanticPage</code> heading.

A typical usage is the <code>sap.m.Title</code> or any other UI5 control, that serves as a heading for an object.

<b>Notes:</b> <ul> <li>The control will be placed in the title`s leftmost area.</li> <li><code>titleHeading</code> is mutually exclusive with <code>titleSnappedHeading</code> and <code>titleExpandedHeading</code>. If <code>titleHeading</code> is provided, both <code>titleSnappedHeading</code> and <code>titleExpandedHeading</code> are ignored. <code>titleHeading</code> is useful when the content of <code>titleSnappedHeading</code> and <code>titleExpandedHeading</code> needs to be the same as it replaces them both.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
	* @return	null
	*/
	public function getTitleHeading( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getTitleMainAction titleMainAction}.

A semantic-specific button which is placed in the <code>SemanticPage</code> title as first action.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
	* @return	null
	*/
	public function getTitleMainAction( ):sap.f.semantic.TitleMainAction;

	/**
	* Gets content of aggregation {@link #getTitleSnappedContent titleSnappedContent}.

The content, displayed in the title, when the header is in collapsed state.

<b>Notes:</b> <ul> <li>The controls will be placed in the title`s left area, under the <code>titleHeading</code> aggregation.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
	* @return	null
	*/
	public function getTitleSnappedContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getTitleSnappedHeading titleSnappedHeading}.

The <code>titleSnappedHeading</code> is positioned in the <code>SemanticPage</code> title left area and is displayed when the header is in collapsed (snapped) state only. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in collapsed state only.

<b>Notes:</b> <ul> <li>In order for <code>titleSnappedHeading</code> to be taken into account, <code>titleHeading</code> has to be empty. Combine <code>titleSnappedHeading</code> with <code>titleExpandedHeading</code> to switch content when the header switches state.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
	* @return	null
	*/
	public function getTitleSnappedHeading( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getTitleSnappedOnMobile titleSnappedOnMobile}.

The only content that is displayed in the <code>SemanticPage</code> title when it is viewed on a phone mobile device and the <code>SemanticPage</code> header is in collapsed (snapped) state.

Using this aggregation enables you to provide a simple, single-line title that takes less space on the smaller phone screens when the <code>SemanticPage</code> header is in its collapsed (snapped) state.

<b>Note:</b> The content set in this aggregation overrides all the other <code>SemanticPage</code> aggregations displayed in the title and is only visible on phone mobile devices in collapsed (snapped) state of the <code>SemanticPage</code> header.
	* @return	null
	*/
	public function getTitleSnappedOnMobile( ):sap.m.Title;

	/**
	* Gets current value of property {@link #getToggleHeaderOnTitleClick toggleHeaderOnTitleClick}.

Determines whether the user can switch between the expanded/collapsed states of the header by clicking on the title.

If set to <code>false</code>, the title is not clickable and the application must provide other means for expanding/collapsing the header, if necessary.

Default value is <code>true</code>.
	* @return	Value of property <code>toggleHeaderOnTitleClick</code>
	*/
	public function getToggleHeaderOnTitleClick( ):Bool;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getCustomShareActions customShareActions}. and returns its index if found or -1 otherwise.
	* @param	oCustomShareAction The customShareAction whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCustomShareAction( oCustomShareAction:sap.m.Button):Int;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getFooterCustomActions footerCustomActions}. and returns its index if found or -1 otherwise.
	* @param	oFooterCustomAction The footerCustomAction whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfFooterCustomAction( oFooterCustomAction:sap.m.Button):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getHeaderContent headerContent}. and returns its index if found or -1 otherwise.
	* @param	oHeaderContent The headerContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfHeaderContent( oHeaderContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getTitleContent titleContent}. and returns its index if found or -1 otherwise.
	* @param	oTitleContent The titleContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfTitleContent( oTitleContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.m.OverflowToolbarButton</code> in the aggregation {@link #getTitleCustomIconActions titleCustomIconActions}. and returns its index if found or -1 otherwise.
	* @param	oTitleCustomIconAction The titleCustomIconAction whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfTitleCustomIconAction( oTitleCustomIconAction:sap.m.OverflowToolbarButton):Int;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getTitleCustomTextActions titleCustomTextActions}. and returns its index if found or -1 otherwise.
	* @param	oTitleCustomTextAction The titleCustomTextAction whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfTitleCustomTextAction( oTitleCustomTextAction:sap.m.Button):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getTitleExpandedContent titleExpandedContent}. and returns its index if found or -1 otherwise.
	* @param	oTitleExpandedContent The titleExpandedContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfTitleExpandedContent( oTitleExpandedContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getTitleSnappedContent titleSnappedContent}. and returns its index if found or -1 otherwise.
	* @param	oTitleSnappedContent The titleSnappedContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfTitleSnappedContent( oTitleSnappedContent:sap.ui.core.Control):Int;

	/**
	* Inserts a customShareAction into the aggregation {@link #getCustomShareActions customShareActions}.
	* @param	oCustomShareAction The customShareAction to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the customShareAction should be inserted at; for a negative value of <code>iIndex</code>, the customShareAction is inserted at position 0; for a value greater than the current size of the aggregation, the customShareAction is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCustomShareAction( oCustomShareAction:sap.m.Button, iIndex:Int):sap.f.semantic.SemanticPage;

	/**
	* Inserts a footerCustomAction into the aggregation {@link #getFooterCustomActions footerCustomActions}.
	* @param	oFooterCustomAction The footerCustomAction to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the footerCustomAction should be inserted at; for a negative value of <code>iIndex</code>, the footerCustomAction is inserted at position 0; for a value greater than the current size of the aggregation, the footerCustomAction is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertFooterCustomAction( oFooterCustomAction:sap.m.Button, iIndex:Int):sap.f.semantic.SemanticPage;

	/**
	* Inserts a headerContent into the aggregation {@link #getHeaderContent headerContent}.
	* @param	oHeaderContent The headerContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the headerContent should be inserted at; for a negative value of <code>iIndex</code>, the headerContent is inserted at position 0; for a value greater than the current size of the aggregation, the headerContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertHeaderContent( oHeaderContent:sap.ui.core.Control, iIndex:Int):sap.f.semantic.SemanticPage;

	/**
	* Inserts a titleContent into the aggregation {@link #getTitleContent titleContent}.
	* @param	oTitleContent The titleContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the titleContent should be inserted at; for a negative value of <code>iIndex</code>, the titleContent is inserted at position 0; for a value greater than the current size of the aggregation, the titleContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertTitleContent( oTitleContent:sap.ui.core.Control, iIndex:Int):sap.f.semantic.SemanticPage;

	/**
	* Inserts a titleCustomIconAction into the aggregation {@link #getTitleCustomIconActions titleCustomIconActions}.
	* @param	oTitleCustomIconAction The titleCustomIconAction to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the titleCustomIconAction should be inserted at; for a negative value of <code>iIndex</code>, the titleCustomIconAction is inserted at position 0; for a value greater than the current size of the aggregation, the titleCustomIconAction is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertTitleCustomIconAction( oTitleCustomIconAction:sap.m.OverflowToolbarButton, iIndex:Int):sap.f.semantic.SemanticPage;

	/**
	* Inserts a titleCustomTextAction into the aggregation {@link #getTitleCustomTextActions titleCustomTextActions}.
	* @param	oTitleCustomTextAction The titleCustomTextAction to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the titleCustomTextAction should be inserted at; for a negative value of <code>iIndex</code>, the titleCustomTextAction is inserted at position 0; for a value greater than the current size of the aggregation, the titleCustomTextAction is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertTitleCustomTextAction( oTitleCustomTextAction:sap.m.Button, iIndex:Int):sap.f.semantic.SemanticPage;

	/**
	* Inserts a titleExpandedContent into the aggregation {@link #getTitleExpandedContent titleExpandedContent}.
	* @param	oTitleExpandedContent The titleExpandedContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the titleExpandedContent should be inserted at; for a negative value of <code>iIndex</code>, the titleExpandedContent is inserted at position 0; for a value greater than the current size of the aggregation, the titleExpandedContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertTitleExpandedContent( oTitleExpandedContent:sap.ui.core.Control, iIndex:Int):sap.f.semantic.SemanticPage;

	/**
	* Inserts a titleSnappedContent into the aggregation {@link #getTitleSnappedContent titleSnappedContent}.
	* @param	oTitleSnappedContent The titleSnappedContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the titleSnappedContent should be inserted at; for a negative value of <code>iIndex</code>, the titleSnappedContent is inserted at position 0; for a value greater than the current size of the aggregation, the titleSnappedContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertTitleSnappedContent( oTitleSnappedContent:sap.ui.core.Control, iIndex:Int):sap.f.semantic.SemanticPage;

	/**
	* Removes all the controls from the aggregation {@link #getCustomShareActions customShareActions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCustomShareActions( ):Array<sap.m.Button>;

	/**
	* Removes all the controls from the aggregation {@link #getFooterCustomActions footerCustomActions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllFooterCustomActions( ):Array<sap.m.Button>;

	/**
	* Removes all the controls from the aggregation {@link #getHeaderContent headerContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllHeaderContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getTitleContent titleContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTitleContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getTitleCustomIconActions titleCustomIconActions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTitleCustomIconActions( ):Array<sap.m.OverflowToolbarButton>;

	/**
	* Removes all the controls from the aggregation {@link #getTitleCustomTextActions titleCustomTextActions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTitleCustomTextActions( ):Array<sap.m.Button>;

	/**
	* Removes all the controls from the aggregation {@link #getTitleExpandedContent titleExpandedContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTitleExpandedContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getTitleSnappedContent titleSnappedContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTitleSnappedContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vCustomShareAction:Int):sap.m.Button{ })
	@:overload( function(vCustomShareAction:String):sap.m.Button{ })

	/**
	* Removes a customShareAction from the aggregation {@link #getCustomShareActions customShareActions}.
	* @param	vCustomShareAction The customShareAction to remove or its index or id
	* @return	The removed customShareAction or <code>null</code>
	*/
	public function removeCustomShareAction( vCustomShareAction:sap.m.Button):sap.m.Button;
	@:overload( function(vFooterCustomAction:Int):sap.m.Button{ })
	@:overload( function(vFooterCustomAction:String):sap.m.Button{ })

	/**
	* Removes a footerCustomAction from the aggregation {@link #getFooterCustomActions footerCustomActions}.
	* @param	vFooterCustomAction The footerCustomAction to remove or its index or id
	* @return	The removed footerCustomAction or <code>null</code>
	*/
	public function removeFooterCustomAction( vFooterCustomAction:sap.m.Button):sap.m.Button;
	@:overload( function(vHeaderContent:Int):sap.ui.core.Control{ })
	@:overload( function(vHeaderContent:String):sap.ui.core.Control{ })

	/**
	* Removes a headerContent from the aggregation {@link #getHeaderContent headerContent}.
	* @param	vHeaderContent The headerContent to remove or its index or id
	* @return	The removed headerContent or <code>null</code>
	*/
	public function removeHeaderContent( vHeaderContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vTitleContent:Int):sap.ui.core.Control{ })
	@:overload( function(vTitleContent:String):sap.ui.core.Control{ })

	/**
	* Removes a titleContent from the aggregation {@link #getTitleContent titleContent}.
	* @param	vTitleContent The titleContent to remove or its index or id
	* @return	The removed titleContent or <code>null</code>
	*/
	public function removeTitleContent( vTitleContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vTitleCustomIconAction:Int):sap.m.OverflowToolbarButton{ })
	@:overload( function(vTitleCustomIconAction:String):sap.m.OverflowToolbarButton{ })

	/**
	* Removes a titleCustomIconAction from the aggregation {@link #getTitleCustomIconActions titleCustomIconActions}.
	* @param	vTitleCustomIconAction The titleCustomIconAction to remove or its index or id
	* @return	The removed titleCustomIconAction or <code>null</code>
	*/
	public function removeTitleCustomIconAction( vTitleCustomIconAction:sap.m.OverflowToolbarButton):sap.m.OverflowToolbarButton;
	@:overload( function(vTitleCustomTextAction:Int):sap.m.Button{ })
	@:overload( function(vTitleCustomTextAction:String):sap.m.Button{ })

	/**
	* Removes a titleCustomTextAction from the aggregation {@link #getTitleCustomTextActions titleCustomTextActions}.
	* @param	vTitleCustomTextAction The titleCustomTextAction to remove or its index or id
	* @return	The removed titleCustomTextAction or <code>null</code>
	*/
	public function removeTitleCustomTextAction( vTitleCustomTextAction:sap.m.Button):sap.m.Button;
	@:overload( function(vTitleExpandedContent:Int):sap.ui.core.Control{ })
	@:overload( function(vTitleExpandedContent:String):sap.ui.core.Control{ })

	/**
	* Removes a titleExpandedContent from the aggregation {@link #getTitleExpandedContent titleExpandedContent}.
	* @param	vTitleExpandedContent The titleExpandedContent to remove or its index or id
	* @return	The removed titleExpandedContent or <code>null</code>
	*/
	public function removeTitleExpandedContent( vTitleExpandedContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vTitleSnappedContent:Int):sap.ui.core.Control{ })
	@:overload( function(vTitleSnappedContent:String):sap.ui.core.Control{ })

	/**
	* Removes a titleSnappedContent from the aggregation {@link #getTitleSnappedContent titleSnappedContent}.
	* @param	vTitleSnappedContent The titleSnappedContent to remove or its index or id
	* @return	The removed titleSnappedContent or <code>null</code>
	*/
	public function removeTitleSnappedContent( vTitleSnappedContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets the aggregated {@link #getAddAction addAction}.
	* @param	oAddAction The addAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAddAction( oAddAction:sap.f.semantic.AddAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getCloseAction closeAction}.
	* @param	oCloseAction The closeAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCloseAction( oCloseAction:sap.f.semantic.CloseAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getContent content}.
	* @param	oContent The content to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( oContent:sap.ui.core.Control):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getCopyAction copyAction}.
	* @param	oCopyAction The copyAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCopyAction( oCopyAction:sap.f.semantic.CopyAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getDeleteAction deleteAction}.
	* @param	oDeleteAction The deleteAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDeleteAction( oDeleteAction:sap.f.semantic.DeleteAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getDiscussInJamAction discussInJamAction}.
	* @param	oDiscussInJamAction The discussInJamAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDiscussInJamAction( oDiscussInJamAction:sap.f.semantic.DiscussInJamAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getDraftIndicator draftIndicator}.
	* @param	oDraftIndicator The draftIndicator to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDraftIndicator( oDraftIndicator:sap.m.DraftIndicator):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getEditAction editAction}.
	* @param	oEditAction The editAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditAction( oEditAction:sap.f.semantic.EditAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getExitFullScreenAction exitFullScreenAction}.
	* @param	oExitFullScreenAction The exitFullScreenAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExitFullScreenAction( oExitFullScreenAction:sap.f.semantic.ExitFullScreenAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getFavoriteAction favoriteAction}.
	* @param	oFavoriteAction The favoriteAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFavoriteAction( oFavoriteAction:sap.f.semantic.FavoriteAction):sap.f.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getFitContent fitContent}.

Optimizes <code>SemanticPage</code> responsiveness on small screens and behavior when expanding/collapsing the <code>SemanticPageHeader</code>.

<b>Note:</b> It is recommended to use this property when displaying content of adaptive controls that stretch to fill the available space. Such controls may be {@link sap.ui.table.Table} and {@link sap.ui.table.AnalyticalTable} depending on their settings.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFitContent New value for property <code>fitContent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
<<<<<<< HEAD
	public function setFitContent( ?bFitContent:Bool):sap.f.semantic.SemanticPage;
=======
	public function setFitContent( bFitContent:Bool):sap.f.semantic.SemanticPage;
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11

	/**
	* Sets the aggregated {@link #getFlagAction flagAction}.
	* @param	oFlagAction The flagAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFlagAction( oFlagAction:sap.f.semantic.FlagAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getFooterMainAction footerMainAction}.
	* @param	oFooterMainAction The footerMainAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooterMainAction( oFooterMainAction:sap.f.semantic.FooterMainAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getFullScreenAction fullScreenAction}.
	* @param	oFullScreenAction The fullScreenAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFullScreenAction( oFullScreenAction:sap.f.semantic.FullScreenAction):sap.f.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getHeaderExpanded headerExpanded}.

Determines whether the header is expanded.

The header can be also expanded/collapsed by user interaction, which requires the property to be internally mutated by the control to reflect the changed state.

<b>Note:</b> Please be aware, that initially collapsed header state is not supported, so <code>headerExpanded</code> should not be set to <code>false</code> when initializing the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHeaderExpanded New value for property <code>headerExpanded</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderExpanded( ?bHeaderExpanded:Bool):sap.f.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getHeaderPinnable headerPinnable}.

Determines whether the header is pinnable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHeaderPinnable New value for property <code>headerPinnable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderPinnable( ?bHeaderPinnable:Bool):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getLandmarkInfo landmarkInfo}.
	* @param	oLandmarkInfo The landmarkInfo to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLandmarkInfo( oLandmarkInfo:sap.f.DynamicPageAccessibleLandmarkInfo):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getMessagesIndicator messagesIndicator}.
	* @param	oMessagesIndicator The messagesIndicator to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMessagesIndicator( oMessagesIndicator:sap.f.semantic.MessagesIndicator):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getNegativeAction negativeAction}.
	* @param	oNegativeAction The negativeAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNegativeAction( oNegativeAction:sap.f.semantic.NegativeAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getPositiveAction positiveAction}.
	* @param	oPositiveAction The positiveAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPositiveAction( oPositiveAction:sap.f.semantic.PositiveAction):sap.f.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getPreserveHeaderStateOnScroll preserveHeaderStateOnScroll}.

Preserves the current header state when scrolling.

For example, if the user expands the header by clicking on the title and then scrolls down the page, the header will remain expanded.

<b>Note:</b> Based on internal rules, the value of the property is not always taken into account - for example, when the control is rendered on tablet or mobile and the title and the header are with height larger than a given threshold.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPreserveHeaderStateOnScroll New value for property <code>preserveHeaderStateOnScroll</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPreserveHeaderStateOnScroll( ?bPreserveHeaderStateOnScroll:Bool):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getPrintAction printAction}.
	* @param	oPrintAction The printAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPrintAction( oPrintAction:sap.f.semantic.PrintAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getSaveAsTileAction saveAsTileAction}.
	* @param	oSaveAsTileAction The saveAsTileAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSaveAsTileAction( oSaveAsTileAction:sap.m.Button):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getSendEmailAction sendEmailAction}.
	* @param	oSendEmailAction The sendEmailAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSendEmailAction( oSendEmailAction:sap.f.semantic.SendEmailAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getSendMessageAction sendMessageAction}.
	* @param	oSendMessageAction The sendMessageAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSendMessageAction( oSendMessageAction:sap.f.semantic.SendMessageAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getShareInJamAction shareInJamAction}.
	* @param	oShareInJamAction The shareInJamAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShareInJamAction( oShareInJamAction:sap.f.semantic.ShareInJamAction):sap.f.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getShowFooter showFooter}.

Determines whether the footer is visible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowFooter New value for property <code>showFooter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowFooter( ?bShowFooter:Bool):sap.f.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getTitleAreaShrinkRatio titleAreaShrinkRatio}.

Assigns shrinking ratio to the <code>SemanticPage</code> title areas (Heading, Content, Actions). The greater value a section has the faster it shrinks when the screen size is being reduced.

The value must be set in <code>Heading:Content:Actions</code> format where Title, Content and Actions are numbers greater than or equal to 0. If set to 0, the respective area will not shrink.

For example, if <code>2:7:1</code> is set, the Content area will shrink seven times faster than the Actions area. So, when all three areas have width of 500px and the available space is reduced by 100px the Title area will be reduced by 20px, the Content area - by 70px and the Actions area - by 10px.

If all the areas have assigned values greater than 1, the numbers are scaled so that at least one of them is equal to 1. For example, value of <code>2:4:8</code> is equal to <code>1:2:4</code>.

<Note:> When this property is set the <code>titlePrimaryArea</code> property has no effect.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1:1.6:1.6</code>.
	* @param	sTitleAreaShrinkRatio New value for property <code>titleAreaShrinkRatio</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleAreaShrinkRatio( ?sTitleAreaShrinkRatio:sap.f.DynamicPageTitleShrinkRatio):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getTitleBreadcrumbs titleBreadcrumbs}.
	* @param	oTitleBreadcrumbs The titleBreadcrumbs to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleBreadcrumbs( oTitleBreadcrumbs:sap.m.IBreadcrumbs):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getTitleExpandedHeading titleExpandedHeading}.
	* @param	oTitleExpandedHeading The titleExpandedHeading to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleExpandedHeading( oTitleExpandedHeading:sap.ui.core.Control):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getTitleHeading titleHeading}.
	* @param	oTitleHeading The titleHeading to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleHeading( oTitleHeading:sap.ui.core.Control):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getTitleMainAction titleMainAction}.
	* @param	oTitleMainAction The titleMainAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleMainAction( oTitleMainAction:sap.f.semantic.TitleMainAction):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getTitleSnappedHeading titleSnappedHeading}.
	* @param	oTitleSnappedHeading The titleSnappedHeading to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleSnappedHeading( oTitleSnappedHeading:sap.ui.core.Control):sap.f.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getTitleSnappedOnMobile titleSnappedOnMobile}.
	* @param	oTitleSnappedOnMobile The titleSnappedOnMobile to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleSnappedOnMobile( oTitleSnappedOnMobile:sap.m.Title):sap.f.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getToggleHeaderOnTitleClick toggleHeaderOnTitleClick}.

Determines whether the user can switch between the expanded/collapsed states of the header by clicking on the title.

If set to <code>false</code>, the title is not clickable and the application must provide other means for expanding/collapsing the header, if necessary.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bToggleHeaderOnTitleClick New value for property <code>toggleHeaderOnTitleClick</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToggleHeaderOnTitleClick( ?bToggleHeaderOnTitleClick:Bool):sap.f.semantic.SemanticPage;
}

typedef SemanticPageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines whether the header is expanded.

The header can be also expanded/collapsed by user interaction, which requires the property to be internally mutated by the control to reflect the changed state.

<b>Note:</b> Please be aware, that initially collapsed header state is not supported, so <code>headerExpanded</code> should not be set to <code>false</code> when initializing the control.
	*/
	@:optional var headerExpanded:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the header is pinnable.
	*/
	@:optional var headerPinnable:haxe.extern.EitherType<String,Bool>;

	/**
	* Preserves the current header state when scrolling.

For example, if the user expands the header by clicking on the title and then scrolls down the page, the header will remain expanded.

<b>Note:</b> Based on internal rules, the value of the property is not always taken into account - for example, when the control is rendered on tablet or mobile and the title and the header are with height larger than a given threshold.
	*/
	@:optional var preserveHeaderStateOnScroll:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the user can switch between the expanded/collapsed states of the header by clicking on the title.

If set to <code>false</code>, the title is not clickable and the application must provide other means for expanding/collapsing the header, if necessary.
	*/
	@:optional var toggleHeaderOnTitleClick:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the footer is visible.
	*/
	@:optional var showFooter:haxe.extern.EitherType<String,Bool>;

	/**
	* Assigns shrinking ratio to the <code>SemanticPage</code> title areas (Heading, Content, Actions). The greater value a section has the faster it shrinks when the screen size is being reduced.

The value must be set in <code>Heading:Content:Actions</code> format where Title, Content and Actions are numbers greater than or equal to 0. If set to 0, the respective area will not shrink.

For example, if <code>2:7:1</code> is set, the Content area will shrink seven times faster than the Actions area. So, when all three areas have width of 500px and the available space is reduced by 100px the Title area will be reduced by 20px, the Content area - by 70px and the Actions area - by 10px.

If all the areas have assigned values greater than 1, the numbers are scaled so that at least one of them is equal to 1. For example, value of <code>2:4:8</code> is equal to <code>1:2:4</code>.

<Note:> When this property is set the <code>titlePrimaryArea</code> property has no effect.
	*/
	@:optional var titleAreaShrinkRatio:haxe.extern.EitherType<String,sap.f.DynamicPageTitleShrinkRatio>;

	/**
	* Optimizes <code>SemanticPage</code> responsiveness on small screens and behavior when expanding/collapsing the <code>SemanticPageHeader</code>.

<b>Note:</b> It is recommended to use this property when displaying content of adaptive controls that stretch to fill the available space. Such controls may be {@link sap.ui.table.Table} and {@link sap.ui.table.AnalyticalTable} depending on their settings.
	*/
	@:optional var fitContent:haxe.extern.EitherType<String,Bool>;

    /**
    * The <code>SemanticPage</code> heading.

A typical usage is the <code>sap.m.Title</code> or any other UI5 control, that serves as a heading for an object.

<b>Notes:</b> <ul> <li>The control will be placed in the title`s leftmost area.</li> <li><code>titleHeading</code> is mutually exclusive with <code>titleSnappedHeading</code> and <code>titleExpandedHeading</code>. If <code>titleHeading</code> is provided, both <code>titleSnappedHeading</code> and <code>titleExpandedHeading</code> are ignored. <code>titleHeading</code> is useful when the content of <code>titleSnappedHeading</code> and <code>titleExpandedHeading</code> needs to be the same as it replaces them both.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
    */
	@:optional var titleHeading:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The <code>titleExpandedHeading</code> is positioned in the <code>SemanticPage</code> title left area and is displayed when the header is in expanded state only. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in expanded state only.

<b>Note:</b> In order for <code>titleExpandedHeading</code> to be taken into account, <code>titleHeading</code> has to be empty. Combine <code>titleExpandedHeading</code> with <code>titleSnappedHeading</code> to switch content when the header switches state.
    */
	@:optional var titleExpandedHeading:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The <code>titleSnappedHeading</code> is positioned in the <code>SemanticPage</code> title left area and is displayed when the header is in collapsed (snapped) state only. Use this aggregation to display a title (or any other UI5 control that serves as a heading) that has to be present in collapsed state only.

<b>Notes:</b> <ul> <li>In order for <code>titleSnappedHeading</code> to be taken into account, <code>titleHeading</code> has to be empty. Combine <code>titleSnappedHeading</code> with <code>titleExpandedHeading</code> to switch content when the header switches state.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
    */
	@:optional var titleSnappedHeading:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The <code>SemanticPage</code> breadcrumbs.

A typical usage is the <code>sap.m.Breadcrumbs</code> control or any other UI5 control, that implements the <code>sap.m.IBreadcrumbs</code> interface.

<b>Notes:</b> <ul> <li>The control will be placed in the title`s top-left area.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
    */
	@:optional var titleBreadcrumbs:haxe.extern.EitherType<String,sap.m.IBreadcrumbs>;

    /**
    * The only content that is displayed in the <code>SemanticPage</code> title when it is viewed on a phone mobile device and the <code>SemanticPage</code> header is in collapsed (snapped) state.

Using this aggregation enables you to provide a simple, single-line title that takes less space on the smaller phone screens when the <code>SemanticPage</code> header is in its collapsed (snapped) state.

<b>Note:</b> The content set in this aggregation overrides all the other <code>SemanticPage</code> aggregations displayed in the title and is only visible on phone mobile devices in collapsed (snapped) state of the <code>SemanticPage</code> header.
    */
	@:optional var titleSnappedOnMobile:haxe.extern.EitherType<String,sap.m.Title>;

    /**
    * The content, displayed in the title, when the header is in collapsed state.

<b>Notes:</b> <ul> <li>The controls will be placed in the title`s left area, under the <code>titleHeading</code> aggregation.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
    */
	@:optional var titleSnappedContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The content,displayed in the title, when the header is in expanded state.

<b>Note:</b> The controls will be placed in the title`s left area, under the <code>titleHeading</code> aggregation.
    */
	@:optional var titleExpandedContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The content, displayed in the title.

<b>Notes:</b> <ul> <li>The controls will be placed in the middle area.</li> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> </ul>
    */
	@:optional var titleContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * A semantic-specific button which is placed in the <code>SemanticPage</code> title as first action.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var titleMainAction:haxe.extern.EitherType<String,sap.f.semantic.TitleMainAction>;

    /**
    * A semantic-specific button which is placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var editAction:haxe.extern.EitherType<String,sap.f.semantic.EditAction>;

    /**
    * A semantic-specific button which is placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var deleteAction:haxe.extern.EitherType<String,sap.f.semantic.DeleteAction>;

    /**
    * A semantic-specific button which is placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var copyAction:haxe.extern.EitherType<String,sap.f.semantic.CopyAction>;

    /**
    * A semantic-specific button which is placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var addAction:haxe.extern.EitherType<String,sap.f.semantic.AddAction>;

    /**
    * A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var flagAction:haxe.extern.EitherType<String,sap.f.semantic.FlagAction>;

    /**
    * A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var favoriteAction:haxe.extern.EitherType<String,sap.f.semantic.FavoriteAction>;

    /**
    * A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var fullScreenAction:haxe.extern.EitherType<String,sap.f.semantic.FullScreenAction>;

    /**
    * A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var exitFullScreenAction:haxe.extern.EitherType<String,sap.f.semantic.ExitFullScreenAction>;

    /**
    * A semantic-specific button which is placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var closeAction:haxe.extern.EitherType<String,sap.f.semantic.CloseAction>;

    /**
    * The <code>titleCustomTextActions</code> are placed in the <code>TextActions</code> area of the <code>SemanticPage</code> title, right before the semantic text action.

<b>Notes:</b> <ul> <li>If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.</li> <li>Buttons that are part of this aggregation will always have their <code>type</code> property set to <code>Transparent</code> by design.</li> </ul>
    */
	@:optional var titleCustomTextActions:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * The <code>titleCustomIconActions</code> are placed in the <code>IconActions</code> area of the <code>SemanticPage</code> title, right before the semantic icon action.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var titleCustomIconActions:Array<haxe.extern.EitherType<String,sap.m.OverflowToolbarButton>>;

    /**
    * The header content.
    */
	@:optional var headerContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The <code>SemanticPage</code> content.

<b>Note:</b> The SAP Fiori Design guidelines require that the <code>SemanticPage</code>'s header content and the <code>SemanticPage</code>'s content are aligned vertically. When using {@link sap.ui.layout.form.Form}, {@link sap.m.Panel}, {@link sap.m.Table} and {@link sap.m.List} in the content area of <code>SemanticPage</code>, if the content is not already aligned, you need to adjust their left text offset to achieve the vertical alignment. To do this, apply the <code>sapFSemanticPageAlignContent</code> CSS class to them and set their <code>width</code> property to <code>auto</code> (if not set by default).

Example:

<pre>
<code> &lt;Panel class=“sapFSemanticPageAlignContent” width=“auto”&gt;&lt;/Panel&gt; </code>
</pre>

Please keep in mind that the alignment is not possible when the controls are placed in a {@link sap.ui.layout.Grid} or in other layout controls that use <code>overflow:hidden</code> CSS property.
    */
	@:optional var content:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * A semantic-specific button which is placed in the <code>FooterRight</code> area of the <code>SemanticPage</code> footer with default text value set to <code>Save</code>.
    */
	@:optional var footerMainAction:haxe.extern.EitherType<String,sap.f.semantic.FooterMainAction>;

    /**
    * A semantic-specific button which is placed in the <code>FooterLeft</code> area of the <code>SemanticPage</code> footer as a first action.
    */
	@:optional var messagesIndicator:haxe.extern.EitherType<String,sap.f.semantic.MessagesIndicator>;

    /**
    * A semantic-specific button which is placed in the <code>FooterLeft</code> area of the <code>SemanticPage</code> footer as a second action.
    */
	@:optional var draftIndicator:haxe.extern.EitherType<String,sap.m.DraftIndicator>;

    /**
    * A semantic-specific button which is placed in the <code>FooterRight</code> area of the <code>SemanticPage</code> footer with default text value set to <code>Accept</code>.
    */
	@:optional var positiveAction:haxe.extern.EitherType<String,sap.f.semantic.PositiveAction>;

    /**
    * A semantic-specific button which is placed in the <code>FooterRight</code> area of the <code>SemanticPage</code> footer with default text value set to <code>Reject</code>.
    */
	@:optional var negativeAction:haxe.extern.EitherType<String,sap.f.semantic.NegativeAction>;

    /**
    * The <code>footerCustomActions</code> are placed in the <code>FooterRight</code> area of the <code>SemanticPage</code> footer, right after the semantic footer actions.

<b>Note:</b> Buttons that are part of this aggregation will always have their <code>type</code> property set to <code>Transparent</code> by design.
    */
	@:optional var footerCustomActions:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var discussInJamAction:haxe.extern.EitherType<String,sap.f.semantic.DiscussInJamAction>;

    /**
    * A button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var saveAsTileAction:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var shareInJamAction:haxe.extern.EitherType<String,sap.f.semantic.ShareInJamAction>;

    /**
    * A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var sendMessageAction:haxe.extern.EitherType<String,sap.f.semantic.SendMessageAction>;

    /**
    * A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var sendEmailAction:haxe.extern.EitherType<String,sap.f.semantic.SendEmailAction>;

    /**
    * A semantic-specific button which is placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var printAction:haxe.extern.EitherType<String,sap.f.semantic.PrintAction>;

    /**
    * The <code>customShareActions</code> are placed in the <code>ShareMenu</code> area of the <code>SemanticPage</code> title, right after the semantic actions.

<b>Note:</b> If the <code>titleSnappedOnMobile</code> aggregation is set, its content overrides this aggregation when the control is viewed on a phone mobile device and the <code>SemanticPage</code> header is in its collapsed (snapped) state.
    */
	@:optional var customShareActions:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * Accessible landmark settings to be applied to the containers of the <code>sap.f.SemanticPage</code> control.

If not set, no landmarks will be written.
    */
	@:optional var landmarkInfo:haxe.extern.EitherType<String,sap.f.DynamicPageAccessibleLandmarkInfo>;

    /**
    * The aggregation holds <code>DynamicPage</code>, used internally.
    */
	@:optional var _dynamicPage:haxe.extern.EitherType<String,sap.f.DynamicPage>;
}
