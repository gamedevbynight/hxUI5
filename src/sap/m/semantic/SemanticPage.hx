package sap.m.semantic;

@:native("sap.m.semantic.SemanticPage")

/**
* An enhanced {@link sap.m.Page}, that can contain controls with semantic meaning, see {@link sap.m.semantic.SemanticControl}.

<b>Note:</b> This control implements the SAP Fiori 1.0 design guidelines. For SAP Fiori 2.0, see the {@link sap.f.semantic.SemanticPage}.

<h3>Overview</h3>

The main functionality of the <code>SemanticPage</code> is to predefine the placement, behavior and styles of the page elements.

Content specified in the semantic aggregations will be automatically positioned in dedicated sections of the footer or the header of the page.

<h3>Structure</h3>

The semantics of the content are the following: <ul> <li>Visual properties (for example, <code>AddAction</code> will be styled as an icon button)</li> <li>Position in the page (UX guidelines specify that some buttons should be in the header only, while others are in the footer or the "share" menu, so we do the correct positioning)</li> <li>Sequence order (UX guidelines define a specific sequence order of semantic controls with respect to each other)</li> <li>Default localized tooltip for icon-only buttons</li> <li>Overflow behavior (UX guidelines define which buttons are allowed to go to the overflow of the toolbar when the screen gets narrower). For icon buttons, we ensure that the text label of the button appears when the button is in overflow, as specified by UX.</li> <li>Screen reader support (invisible text for reading the semantic type)</li> </ul>

In addition to the predefined semantic controls, the <code>SemanticPage</code> can host also custom app controls. It preserves most of the API of the {@link sap.m.Page} for specifying page content.

<h3>Usage</h3>

The app developer only has to specify the action type, and the required styling and positioning are automatically added.
*/
extern class SemanticPage extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SemanticPageArgs):Void {})
	public function new(?mSettings:SemanticPageArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.semantic.SemanticPage;

	/**
	* Adds some customFooterContent to the aggregation {@link #getCustomFooterContent customFooterContent}.
	* @param	oCustomFooterContent The customFooterContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCustomFooterContent( oCustomFooterContent:sap.m.Button):sap.m.semantic.SemanticPage;

	/**
	* Adds some customHeaderContent to the aggregation {@link #getCustomHeaderContent customHeaderContent}.
	* @param	oCustomHeaderContent The customHeaderContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCustomHeaderContent( oCustomHeaderContent:sap.m.Button):sap.m.semantic.SemanticPage;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navButtonPress navButtonPress} event of this <code>sap.m.semantic.SemanticPage</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.semantic.SemanticPage</code> itself.

See {@link sap.m.Page#navButtonPress}
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.semantic.SemanticPage</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNavButtonPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.semantic.SemanticPage;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.semantic.SemanticPage;

	/**
	* Destroys all the customFooterContent in the aggregation {@link #getCustomFooterContent customFooterContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomFooterContent( ):sap.m.semantic.SemanticPage;

	/**
	* Destroys all the customHeaderContent in the aggregation {@link #getCustomHeaderContent customHeaderContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomHeaderContent( ):sap.m.semantic.SemanticPage;

	/**
	* Destroys the landmarkInfo in the aggregation {@link #getLandmarkInfo landmarkInfo}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLandmarkInfo( ):sap.m.semantic.SemanticPage;

	/**
	* Destroys the subHeader in the aggregation {@link #getSubHeader subHeader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySubHeader( ):sap.m.semantic.SemanticPage;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navButtonPress navButtonPress} event of this <code>sap.m.semantic.SemanticPage</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNavButtonPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.semantic.SemanticPage;

	/**
	* Creates a new subclass of class sap.m.semantic.SemanticPage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Determines the backgound color of the page. For more information, see {@link sap.m.Page#backgroundDesign}.

Default value is <code>Standard</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.PageBackgroundDesign;

	/**
	* Gets content of aggregation {@link #getContent content}.

See {@link sap.m.Page#content}
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getCustomFooterContent customFooterContent}.

Custom footer buttons
	* @return	null
	*/
	public function getCustomFooterContent( ):Array<sap.m.Button>;

	/**
	* Gets content of aggregation {@link #getCustomHeaderContent customHeaderContent}.

Custom header buttons
	* @return	null
	*/
	public function getCustomHeaderContent( ):Array<sap.m.Button>;

	/**
	* Gets current value of property {@link #getEnableScrolling enableScrolling}.

See {@link sap.m.Page#enableScrolling}

Default value is <code>true</code>.
	* @return	Value of property <code>enableScrolling</code>
	*/
	public function getEnableScrolling( ):Bool;

	/**
	* Gets current value of property {@link #getFloatingFooter floatingFooter}.

Determines whether the floating footer behavior is enabled. If set to <code>true</code>, the content is visible when it's underneath the footer.

Default value is <code>false</code>.
	* @return	Value of property <code>floatingFooter</code>
	*/
	public function getFloatingFooter( ):Bool;

	/**
	* Gets content of aggregation {@link #getLandmarkInfo landmarkInfo}.

Accessible landmark settings to be applied to the containers of the <code>sap.m.Page</code> control.

If not set, no landmarks will be written.
	* @return	null
	*/
	public function getLandmarkInfo( ):sap.m.PageAccessibleLandmarkInfo;

	/**
	* Returns a metadata object for class sap.m.semantic.SemanticPage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSemanticRuleSet semanticRuleSet}.

Declares the type of semantic ruleset that will govern the styling and positioning of semantic content.

Default value is <code>Classic</code>.
	* @return	Value of property <code>semanticRuleSet</code>
	*/
	public function getSemanticRuleSet( ):sap.m.semantic.SemanticRuleSetType;

	/**
	* Gets current value of property {@link #getShowFooter showFooter}.

Hides or shows the page footer

Default value is <code>true</code>.
	* @return	Value of property <code>showFooter</code>
	*/
	public function getShowFooter( ):Bool;

	/**
	* Gets current value of property {@link #getShowNavButton showNavButton}.

See {@link sap.m.Page#showNavButton}

Default value is <code>false</code>.
	* @return	Value of property <code>showNavButton</code>
	*/
	public function getShowNavButton( ):Bool;

	/**
	* Gets current value of property {@link #getShowSubHeader showSubHeader}.

See {@link sap.m.Page#showSubHeader}

Default value is <code>true</code>.
	* @return	Value of property <code>showSubHeader</code>
	*/
	public function getShowSubHeader( ):Bool;

	/**
	* Gets content of aggregation {@link #getSubHeader subHeader}.

See {@link sap.m.Page#subHeader}
	* @return	null
	*/
	public function getSubHeader( ):sap.m.IBar;

	/**
	* Gets current value of property {@link #getTitle title}.

See {@link sap.m.Page#title}
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleLevel titleLevel}.

See {@link sap.m.Page#titleLevel}

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
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getCustomFooterContent customFooterContent}. and returns its index if found or -1 otherwise.
	* @param	oCustomFooterContent The customFooterContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCustomFooterContent( oCustomFooterContent:sap.m.Button):Int;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getCustomHeaderContent customHeaderContent}. and returns its index if found or -1 otherwise.
	* @param	oCustomHeaderContent The customHeaderContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCustomHeaderContent( oCustomHeaderContent:sap.m.Button):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.semantic.SemanticPage;

	/**
	* Inserts a customFooterContent into the aggregation {@link #getCustomFooterContent customFooterContent}.
	* @param	oCustomFooterContent The customFooterContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the customFooterContent should be inserted at; for a negative value of <code>iIndex</code>, the customFooterContent is inserted at position 0; for a value greater than the current size of the aggregation, the customFooterContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCustomFooterContent( oCustomFooterContent:sap.m.Button, iIndex:Int):sap.m.semantic.SemanticPage;

	/**
	* Inserts a customHeaderContent into the aggregation {@link #getCustomHeaderContent customHeaderContent}.
	* @param	oCustomHeaderContent The customHeaderContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the customHeaderContent should be inserted at; for a negative value of <code>iIndex</code>, the customHeaderContent is inserted at position 0; for a value greater than the current size of the aggregation, the customHeaderContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCustomHeaderContent( oCustomHeaderContent:sap.m.Button, iIndex:Int):sap.m.semantic.SemanticPage;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getCustomFooterContent customFooterContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCustomFooterContent( ):Array<sap.m.Button>;

	/**
	* Removes all the controls from the aggregation {@link #getCustomHeaderContent customHeaderContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCustomHeaderContent( ):Array<sap.m.Button>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vCustomFooterContent:Int):sap.m.Button{ })
	@:overload( function(vCustomFooterContent:String):sap.m.Button{ })

	/**
	* Removes a customFooterContent from the aggregation {@link #getCustomFooterContent customFooterContent}.
	* @param	vCustomFooterContent The customFooterContent to remove or its index or id
	* @return	The removed customFooterContent or <code>null</code>
	*/
	public function removeCustomFooterContent( vCustomFooterContent:sap.m.Button):sap.m.Button;
	@:overload( function(vCustomHeaderContent:Int):sap.m.Button{ })
	@:overload( function(vCustomHeaderContent:String):sap.m.Button{ })

	/**
	* Removes a customHeaderContent from the aggregation {@link #getCustomHeaderContent customHeaderContent}.
	* @param	vCustomHeaderContent The customHeaderContent to remove or its index or id
	* @return	The removed customHeaderContent or <code>null</code>
	*/
	public function removeCustomHeaderContent( vCustomHeaderContent:sap.m.Button):sap.m.Button;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Determines the backgound color of the page. For more information, see {@link sap.m.Page#backgroundDesign}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.m.PageBackgroundDesign):sap.m.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getEnableScrolling enableScrolling}.

See {@link sap.m.Page#enableScrolling}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableScrolling New value for property <code>enableScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableScrolling( ?bEnableScrolling:Bool):sap.m.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getFloatingFooter floatingFooter}.

Determines whether the floating footer behavior is enabled. If set to <code>true</code>, the content is visible when it's underneath the footer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFloatingFooter New value for property <code>floatingFooter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFloatingFooter( ?bFloatingFooter:Bool):sap.m.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getLandmarkInfo landmarkInfo}.
	* @param	oLandmarkInfo The landmarkInfo to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLandmarkInfo( oLandmarkInfo:sap.m.PageAccessibleLandmarkInfo):sap.m.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getSemanticRuleSet semanticRuleSet}.

Declares the type of semantic ruleset that will govern the styling and positioning of semantic content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Classic</code>.
	* @param	sSemanticRuleSet New value for property <code>semanticRuleSet</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSemanticRuleSet( ?sSemanticRuleSet:sap.m.semantic.SemanticRuleSetType):sap.m.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getShowFooter showFooter}.

Hides or shows the page footer

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowFooter New value for property <code>showFooter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowFooter( ?bShowFooter:Bool):sap.m.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getShowNavButton showNavButton}.

See {@link sap.m.Page#showNavButton}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowNavButton New value for property <code>showNavButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowNavButton( ?bShowNavButton:Bool):sap.m.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getShowSubHeader showSubHeader}.

See {@link sap.m.Page#showSubHeader}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowSubHeader New value for property <code>showSubHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSubHeader( ?bShowSubHeader:Bool):sap.m.semantic.SemanticPage;

	/**
	* Sets the aggregated {@link #getSubHeader subHeader}.
	* @param	oSubHeader The subHeader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSubHeader( oSubHeader:sap.m.IBar):sap.m.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getTitle title}.

See {@link sap.m.Page#title}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.semantic.SemanticPage;

	/**
	* Sets a new value for property {@link #getTitleLevel titleLevel}.

See {@link sap.m.Page#titleLevel}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleLevel New value for property <code>titleLevel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleLevel( ?sTitleLevel:sap.ui.core.TitleLevel):sap.m.semantic.SemanticPage;
}

typedef SemanticPageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* See {@link sap.m.Page#title}
	*/
	@:optional var title:String;

	/**
	* See {@link sap.m.Page#titleLevel}
	*/
	@:optional var titleLevel:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

	/**
	* See {@link sap.m.Page#showNavButton}
	*/
	@:optional var showNavButton:haxe.extern.EitherType<String,Bool>;

	/**
	* See {@link sap.m.Page#showSubHeader}
	*/
	@:optional var showSubHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* See {@link sap.m.Page#enableScrolling}
	*/
	@:optional var enableScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* Hides or shows the page footer
	*/
	@:optional var showFooter:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the floating footer behavior is enabled. If set to <code>true</code>, the content is visible when it's underneath the footer.
	*/
	@:optional var floatingFooter:haxe.extern.EitherType<String,Bool>;

	/**
	* Declares the type of semantic ruleset that will govern the styling and positioning of semantic content.
	*/
	@:optional var semanticRuleSet:haxe.extern.EitherType<String,sap.m.semantic.SemanticRuleSetType>;

	/**
	* Determines the backgound color of the page. For more information, see {@link sap.m.Page#backgroundDesign}.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.PageBackgroundDesign>;

    /**
    * See {@link sap.m.Page#subHeader}
    */
	@:optional var subHeader:haxe.extern.EitherType<String,sap.m.IBar>;

    /**
    * See {@link sap.m.Page#content}
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Custom header buttons
    */
	@:optional var customHeaderContent:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * Custom footer buttons
    */
	@:optional var customFooterContent:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * Accessible landmark settings to be applied to the containers of the <code>sap.m.Page</code> control.

If not set, no landmarks will be written.
    */
	@:optional var landmarkInfo:haxe.extern.EitherType<String,sap.m.PageAccessibleLandmarkInfo>;

    /**
    * Wrapped instance of {@link sap.m.Page}
    */
	@:optional var _page:haxe.extern.EitherType<String,sap.m.Page>;

	/**
	* See {@link sap.m.Page#navButtonPress}
	*/
	@:optional var navButtonPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
