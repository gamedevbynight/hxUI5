package sap.ui.commons;

@:native("sap.ui.commons.Panel")

/**
* Represents a container with scroll functionality, that can be used for text and controls. The Panel does not layout the embedded controls.
*/
extern class Panel extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:PanelArgs):Void {})
	public function new(?mSettings:PanelArgs):Void;

	/**
	* Adds some button to the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addButton( oButton:sap.ui.commons.Button):sap.ui.commons.Panel;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.commons.Panel;

	/**
	* Destroys all the buttons in the aggregation {@link #getButtons buttons}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyButtons( ):sap.ui.commons.Panel;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.commons.Panel;

	/**
	* Destroys the title in the aggregation {@link #getTitle title}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitle( ):sap.ui.commons.Panel;

	/**
	* Creates a new subclass of class sap.ui.commons.Panel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getApplyContentPadding applyContentPadding}.

Determines whether the Panel will have padding. Padding is theme-dependent.

Default value is <code>true</code>.
	* @return	Value of property <code>applyContentPadding</code>
	*/
	public function getApplyContentPadding( ):Bool;

	/**
	* Gets current value of property {@link #getAreaDesign areaDesign}.

Determines the background color. Note that color settings are theme-dependent.

Default value is <code>Fill</code>.
	* @return	Value of property <code>areaDesign</code>
	*/
	public function getAreaDesign( ):sap.ui.commons.enums.AreaDesign;

	/**
	* Gets current value of property {@link #getBorderDesign borderDesign}.

Determines if the Panel can have a box as border. Note that displaying borders is theme-dependent.

Default value is <code>Box</code>.
	* @return	Value of property <code>borderDesign</code>
	*/
	public function getBorderDesign( ):sap.ui.commons.enums.BorderDesign;

	/**
	* Gets content of aggregation {@link #getButtons buttons}.

The buttons that shall be displayed in the Panel header
	* @return	null
	*/
	public function getButtons( ):Array<sap.ui.commons.Button>;

	/**
	* Gets current value of property {@link #getCollapsed collapsed}.

Determines whether the Panel will be initially collapsed. When it is initially collapsed, the contents are not rendered. A collapsed Panel consumes less space than an expanded one.

Default value is <code>false</code>.
	* @return	Value of property <code>collapsed</code>
	*/
	public function getCollapsed( ):Bool;

	/**
	* Gets content of aggregation {@link #getContent content}.

Aggregates the controls that are contained in the Panel. It is recommended to use a layout control as single direct child. When the Panel dimensions are set, the child control may have width and height of 100%. When the dimensions are not set, the child defines the size of the Panel.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Represents the state of the of the Panel (enabled or disabled)

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Determines the height of the Panel in CSS size. Per default, the height for the Panel is automatically adjusted to the content. Dimension allows to explicitly specify the height.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.Panel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Returns the scroll position of the panel in pixels from the left. Returns 0 if not rendered yet. Also internally updates the control property.
	* @return	The scroll position.
	*/
	public function getScrollLeft( ):Int;

	/**
	* Returns the scroll position of the panel in pixels from the top. Returns 0 if not rendered yet. Also internally updates the control property.
	* @return	The scroll position.
	*/
	public function getScrollTop( ):Int;

	/**
	* Gets current value of property {@link #getShowCollapseIcon showCollapseIcon}.

Determines whether the Panel will have an icon for collapsing/expanding, or not.

Default value is <code>true</code>.
	* @return	Value of property <code>showCollapseIcon</code>
	*/
	public function getShowCollapseIcon( ):Bool;

	/**
	* Returns the text that is rendered in the Panel header. If a Title control was used it returns the text of the Title control.
	* @return	The text in the Panel header.
	*/
	public function getText( ):String;

	/**
	* Gets content of aggregation {@link #getTitle title}.

Aggregates the title element of the Panel. For text titles only, you alternatively could use setText() which also creates a title in the background.
	* @return	null
	*/
	public function getTitle( ):sap.ui.core.Title;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the width of the Panel in CSS size.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.commons.Button</code> in the aggregation {@link #getButtons buttons}. and returns its index if found or -1 otherwise.
	* @param	oButton The button whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfButton( oButton:sap.ui.commons.Button):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a button into the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the button should be inserted at; for a negative value of <code>iIndex</code>, the button is inserted at position 0; for a value greater than the current size of the aggregation, the button is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertButton( oButton:sap.ui.commons.Button, iIndex:Int):sap.ui.commons.Panel;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.commons.Panel;

	/**
	* Removes all the controls from the aggregation {@link #getButtons buttons}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllButtons( ):Array<sap.ui.commons.Button>;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vButton:Int):sap.ui.commons.Button{ })
	@:overload( function(vButton:String):sap.ui.commons.Button{ })

	/**
	* Removes a button from the aggregation {@link #getButtons buttons}.
	* @param	vButton The button to remove or its index or id
	* @return	The removed button or <code>null</code>
	*/
	public function removeButton( vButton:sap.ui.commons.Button):sap.ui.commons.Button;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Property setter for the padding
	* @param	bPadding Whether the Panel should have padding.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setApplyContentPadding( bPadding:Bool):sap.ui.commons.Panel;

	/**
	* Sets a new value for property {@link #getAreaDesign areaDesign}.

Determines the background color. Note that color settings are theme-dependent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Fill</code>.
	* @param	sAreaDesign New value for property <code>areaDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAreaDesign( sAreaDesign:sap.ui.commons.enums.AreaDesign):sap.ui.commons.Panel;

	/**
	* Sets a new value for property {@link #getBorderDesign borderDesign}.

Determines if the Panel can have a box as border. Note that displaying borders is theme-dependent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Box</code>.
	* @param	sBorderDesign New value for property <code>borderDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBorderDesign( sBorderDesign:sap.ui.commons.enums.BorderDesign):sap.ui.commons.Panel;

	/**
	* Property setter for the "collapsed" state
	* @param	bCollapsed Whether the Panel should be collapsed or not.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setCollapsed( bCollapsed:Bool):sap.ui.commons.Panel;

	/**
	* Sets the dimensions of the panel.
	* @param	sWidth The width of the panel as CSS size.
	* @param	sHeight The height of the panel as CSS size.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setDimensions( sWidth:sap.ui.core.CSSSize, sHeight:sap.ui.core.CSSSize):sap.ui.commons.Panel;

	/**
	* Property setter for the "enabled" state
	* @param	bEnabled Whether the Panel should be enabled or not.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.commons.Panel;

	/**
	* Sets the height of the panel.
	* @param	sHeight The height of the panel as CSS size.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.commons.Panel;

	/**
	* Sets the scroll position of the panel in pixels from the left.
	* @param	iPosition The position to scroll to.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setScrollLeft( iPosition:Int):sap.ui.commons.Panel;

	/**
	* Sets the scrolls position of the panel in pixels from the top.
	* @param	iPosition The position to scroll to.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setScrollTop( iPosition:Int):sap.ui.commons.Panel;

	/**
	* Sets a new value for property {@link #getShowCollapseIcon showCollapseIcon}.

Determines whether the Panel will have an icon for collapsing/expanding, or not.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowCollapseIcon New value for property <code>showCollapseIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowCollapseIcon( bShowCollapseIcon:Bool):sap.ui.commons.Panel;

	/**
	* Sets the text that will be rendered in the Panel header.
	* @param	sText The text to render in the header.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setText( sText:String):sap.ui.commons.Panel;

	/**
	* Sets a Tille control that will be rendered in the Panel header.
	* @param	oTitle The Title to render in the header.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setTitle( oTitle:sap.ui.core.Title):sap.ui.commons.Panel;

	/**
	* Sets the width of the panel.
	* @param	sWidth The width of the panel as CSS size.
	* @return	<code>this</code> to allow method chaining.
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.Panel;
}

typedef PanelArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the width of the Panel in CSS size.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines the height of the Panel in CSS size. Per default, the height for the Panel is automatically adjusted to the content. Dimension allows to explicitly specify the height.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Represents the state of the of the Panel (enabled or disabled)
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the scroll position from left to right. Value "0" means leftmost position.
	*/
	@:optional var scrollLeft:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the scroll position from top to bottom. Value "0" means topmost position.
	*/
	@:optional var scrollTop:haxe.extern.EitherType<String,Int>;

	/**
	* Determines whether the Panel will have padding. Padding is theme-dependent.
	*/
	@:optional var applyContentPadding:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the Panel will be initially collapsed. When it is initially collapsed, the contents are not rendered. A collapsed Panel consumes less space than an expanded one.
	*/
	@:optional var collapsed:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the background color. Note that color settings are theme-dependent.
	*/
	@:optional var areaDesign:haxe.extern.EitherType<String,sap.ui.commons.enums.AreaDesign>;

	/**
	* Determines if the Panel can have a box as border. Note that displaying borders is theme-dependent.
	*/
	@:optional var borderDesign:haxe.extern.EitherType<String,sap.ui.commons.enums.BorderDesign>;

	/**
	* Determines whether the Panel will have an icon for collapsing/expanding, or not.
	*/
	@:optional var showCollapseIcon:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the text that is rendered in the Panel header. Can be used to create a simple titles that do not require an icon in the header.
	*/
	@:optional var text:String;

    /**
    * Aggregates the controls that are contained in the Panel. It is recommended to use a layout control as single direct child. When the Panel dimensions are set, the child control may have width and height of 100%. When the dimensions are not set, the child defines the size of the Panel.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Aggregates the title element of the Panel. For text titles only, you alternatively could use setText() which also creates a title in the background.
    */
	@:optional var title:haxe.extern.EitherType<String,sap.ui.core.Title>;

    /**
    * The buttons that shall be displayed in the Panel header
    */
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.ui.commons.Button>>;
}
