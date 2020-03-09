package sap.ui.layout;

@:native("sap.ui.layout.BlockLayout")

/**
* The BlockLayout is used to display several objects in a section-based manner. <h3>Overview</h3> The BlockLayout uses horizontal and vertical subdivisions, and full-width banners to display a set of elements. By placing pictorial and textual elements side-by-side in different blocks, you can establish a visual connection between blocks and between similar elements. <h3>Structure</h3> The BlockLayout contains BlockLayout cells. Every cell consists of a title and content. The title can be text or a link.

Special full-width sections of the BlockLayout allow horizontal scrolling through a set of blocks.

The BlockLayout comes in five predefined types for background colors: <ul> <li>Layout only (default) - a layout scheme and no background colors</li> <li>Light - a layout scheme with light colors</li> <li>Accent - a layout scheme with 11 pre-defined color sets</li> <li>Dashboard - a layout scheme with additional borders and no background colors</li> </ul> Background colors are attached directly to the blocks of the layout.

<b>Note:</b> With version 1.48 colors can be set for each individual {@link sap.ui.layout.BlockLayoutCell cell}. There are 11 pre-defined color sets, each with 4 different shades for the Belize theme and 6 different shades for the Fiori 3 theme. The main colors of the sets can be changed in Theme Designer. To change the background of a particular cell, set <code>backgroundColorSet</code> (main color) and <code>backgroundColorShade</code> (shade).

<b>Note:</b> Usage of disabled, emphasized or subtle links as titles is not recommended. Dark background designs, for example Accent, are not fully supported with regards to Аccessibility when used with links as titles.

<h3>Usage</h3> <h4>When to use</h4> <ul> <li>You want to create a catalogue-like page with sections of blocks.</li> <li>The BlockLayout is intended for developing administrative tools and applications.</li> </ul> <h4>When not to use</h4> <ul> <li>You want to display properties or features of one content item. Use a {@link sap.uxap.ObjectPageLayout object page} or {@link sap.f.DynamicPage dynamic page} instead.</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>The breakpoints of the block layout react to the width of the control itself and not to the actual screen size.</li> <li> On small screens all blocks will wrap to a single scrollable column</li> </ul>
*/
extern class BlockLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:BlockLayoutArgs):Void {})
	public function new(?mSettings:BlockLayoutArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.layout.BlockLayoutRow):sap.ui.layout.BlockLayout;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.layout.BlockLayout;

	/**
	* Creates a new subclass of class sap.ui.layout.BlockLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackground background}.

Determines the background used for the Layout

Default value is <code>Default</code>.
	* @return	Value of property <code>background</code>
	*/
	public function getBackground( ):sap.ui.layout.BlockBackgroundType;

	/**
	* Gets content of aggregation {@link #getContent content}.

The Rows to be included in the content of the control
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.layout.BlockLayoutRow>;

	/**
	* Gets current value of property {@link #getKeepFontSize keepFontSize}.

Keeps the font-size of the contents as is, independent from the screen size.

Default value is <code>false</code>.
	* @return	Value of property <code>keepFontSize</code>
	*/
	public function getKeepFontSize( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.layout.BlockLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Checks for the provided <code>sap.ui.layout.BlockLayoutRow</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.layout.BlockLayoutRow):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.layout.BlockLayoutRow, iIndex:Int):sap.ui.layout.BlockLayout;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.layout.BlockLayoutRow>;
	@:overload( function(vContent:Int):sap.ui.layout.BlockLayoutRow{ })
	@:overload( function(vContent:String):sap.ui.layout.BlockLayoutRow{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.layout.BlockLayoutRow):sap.ui.layout.BlockLayoutRow;

	/**
	* Changes background type
	* @param	sNewBackground Background's style of type sap.ui.layout.BlockBackgroundType
	* @return	BlockLayout instance. Allows method chaining
	*/
	public function setBackground( sNewBackground:String):sap.ui.layout.BlockLayout;

	/**
	* Sets a new value for property {@link #getKeepFontSize keepFontSize}.

Keeps the font-size of the contents as is, independent from the screen size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bKeepFontSize New value for property <code>keepFontSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKeepFontSize( bKeepFontSize:Bool):sap.ui.layout.BlockLayout;
}

typedef BlockLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the background used for the Layout
	*/
	@:optional var background:haxe.extern.EitherType<String,sap.ui.layout.BlockBackgroundType>;

	/**
	* Keeps the font-size of the contents as is, independent from the screen size.
	*/
	@:optional var keepFontSize:haxe.extern.EitherType<String,Bool>;

    /**
    * The Rows to be included in the content of the control
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.layout.BlockLayoutRow>>;
}
