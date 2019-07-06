package sap.uxap;

@:native("sap.uxap.AnchorBar")

/**
* Displays the titles of the sections and subsections in the {@link sap.uxap.ObjectPageLayout ObjectPageLayout} and allows the user to scroll to the respective content.

<h3>Overview</h3>

The <code>AnchorBar</code> is internally generated as a menu in the <code>ObjectPageLayout</code>. It displays the sections and subsections and allows the user to directly scroll to the respective content by selecting them, while it remains visible at the top of the page (below the page header).
*/
extern class AnchorBar extends sap.m.Toolbar
{
	@:overload(function(?sId:String, ?mSettings:AnchorBarArgs):Void {})
	public function new(?mSettings:AnchorBarArgs):Void;

	/**
	* Creates a new subclass of class sap.uxap.AnchorBar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Toolbar.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Determines the background color of the <code>AnchorBar</code>.

<b>Note:</b> The default value of <code>backgroundDesign</code> property is null. If the property is not set, the color of the background is <code>@sapUiObjectHeaderBackground</code>, which depends on the specific theme.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Returns a metadata object for class sap.uxap.AnchorBar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns an sap.ui.core.delegate.ScrollEnablement object used to handle scrolling.
	* @return	The <code>sap.ui.core.delegate.ScrollEnablement</code> instance
	*/
	public function getScrollDelegate( ):Dynamic;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedButton selectedButton}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedButton( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getShowPopover showPopover}.

Determines whether to show a Popover with Subsection links when clicking on Section links in the Anchor bar.

Default value is <code>true</code>.
	* @return	Value of property <code>showPopover</code>
	*/
	public function getShowPopover( ):Bool;

	/**
	* Gets current value of property {@link #getUpperCase upperCase}.

Determines whether the Anchor bar items are displayed in upper case.

Default value is <code>false</code>.
	* @return	Value of property <code>upperCase</code>
	*/
	public function getUpperCase( ):Bool;

	/**
	* Scroll to a specific Section.
	* @param	sId The Section ID to scroll to
	* @param	iDuration Scroll duration (in ms). Default value is 0.
	* @return	Void
	*/
	public function scrollToSection( sId:String, iDuration:Int):Void;

	/**
	* Sets the value of the <code>backgroundDesign</code> property.
	* @param	sBackgroundDesign new value of the <code>backgroundDesign</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setBackgroundDesign( sBackgroundDesign:sap.m.BackgroundDesign):sap.uxap.AnchorBar;
	@:overload( function(oSelectedButton:sap.ui.core.ID):sap.uxap.AnchorBar{ })

	/**
	* Sets the associated {@link #getSelectedButton selectedButton}.
	* @param	oSelectedButton ID of an element which becomes the new target of this selectedButton association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedButton( oSelectedButton:sap.m.Button):sap.uxap.AnchorBar;

	/**
	* Sets a new value for property {@link #getShowPopover showPopover}.

Determines whether to show a Popover with Subsection links when clicking on Section links in the Anchor bar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowPopover New value for property <code>showPopover</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowPopover( bShowPopover:Bool):sap.uxap.AnchorBar;

	/**
	* Sets a new value for property {@link #getUpperCase upperCase}.

Determines whether the Anchor bar items are displayed in upper case.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUpperCase New value for property <code>upperCase</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUpperCase( bUpperCase:Bool):sap.uxap.AnchorBar;
}

typedef AnchorBarArgs = sap.m.Toolbar.ToolbarArgs & {

	/**
	* Determines whether to show a Popover with Subsection links when clicking on Section links in the Anchor bar.
	*/
	@:optional var showPopover:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the Anchor bar items are displayed in upper case.
	*/
	@:optional var upperCase:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the background color of the <code>AnchorBar</code>.

<b>Note:</b> The default value of <code>backgroundDesign</code> property is null. If the property is not set, the color of the background is <code>@sapUiObjectHeaderBackground</code>, which depends on the specific theme.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

    /**
    * null
    */
	@:optional var _select:haxe.extern.EitherType<String,sap.uxap.HierarchicalSelect>;

    /**
    * null
    */
	@:optional var _scrollArrowLeft:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _scrollArrowRight:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* The button that represents the Section being scrolled by the user.
	*/
	@:optional var selectedButton:haxe.extern.EitherType<String,sap.m.Button>;
}
