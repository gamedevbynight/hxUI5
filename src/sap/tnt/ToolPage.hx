package sap.tnt;

@:native("sap.tnt.ToolPage")

/**
* The ToolPage is a layout control, used to create a basic tools app that has a header, side navigation and contents area. <h4>Overview</h4> The control has three main areas - a header on top, navigation to the side and a content area that can hold any control. The header and side navigation use custom controls - {@link sap.tnt.ToolHeader} and {@link sap.tnt.SideNavigation}. <h4>Usage</h4> The main usage of the sap.tnt controls is for scenarios in the tooling or administration space.
*/
extern class ToolPage extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ToolPageArgs):Void {})
	public function new(?mSettings:ToolPageArgs):Void;

	/**
	* Adds some mainContent to the aggregation {@link #getMainContents mainContents}.
	* @param	oMainContent The mainContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMainContent( oMainContent:sap.ui.core.Control):sap.tnt.ToolPage;

	/**
	* Destroys the header in the aggregation {@link #getHeader header}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeader( ):sap.tnt.ToolPage;

	/**
	* Destroys all the mainContents in the aggregation {@link #getMainContents mainContents}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMainContents( ):sap.tnt.ToolPage;

	/**
	* Destroys the sideContent in the aggregation {@link #getSideContent sideContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySideContent( ):sap.tnt.ToolPage;

	/**
	* Creates a new subclass of class sap.tnt.ToolPage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getHeader header}.

The control to appear in the header area.
	* @return	null
	*/
	public function getHeader( ):sap.tnt.IToolHeader;

	/**
	* Gets content of aggregation {@link #getMainContents mainContents}.

The content section.
	* @return	null
	*/
	public function getMainContents( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.tnt.ToolPage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getSideContent sideContent}.

The side menu of the layout.
	* @return	null
	*/
	public function getSideContent( ):sap.tnt.SideNavigation;

	/**
	* Gets current value of property {@link #getSideExpanded sideExpanded}.

Indicates if the side area is expanded. Overrides the expanded property of the sideContent aggregation.

Default value is <code>true</code>.
	* @return	Value of property <code>sideExpanded</code>
	*/
	public function getSideExpanded( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getMainContents mainContents}. and returns its index if found or -1 otherwise.
	* @param	oMainContent The mainContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfMainContent( oMainContent:sap.ui.core.Control):Int;

	/**
	* Inserts a mainContent into the aggregation {@link #getMainContents mainContents}.
	* @param	oMainContent The mainContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the mainContent should be inserted at; for a negative value of <code>iIndex</code>, the mainContent is inserted at position 0; for a value greater than the current size of the aggregation, the mainContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMainContent( oMainContent:sap.ui.core.Control, iIndex:Int):sap.tnt.ToolPage;

	/**
	* Removes all the controls from the aggregation {@link #getMainContents mainContents}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllMainContents( ):Array<sap.ui.core.Control>;
	@:overload( function(vMainContent:Int):sap.ui.core.Control{ })
	@:overload( function(vMainContent:String):sap.ui.core.Control{ })

	/**
	* Removes a mainContent from the aggregation {@link #getMainContents mainContents}.
	* @param	vMainContent The mainContent to remove or its index or id
	* @return	The removed mainContent or <code>null</code>
	*/
	public function removeMainContent( vMainContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets the aggregated {@link #getHeader header}.
	* @param	oHeader The header to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeader( oHeader:sap.tnt.IToolHeader):sap.tnt.ToolPage;

	/**
	* Sets the aggregated {@link #getSideContent sideContent}.
	* @param	oSideContent The sideContent to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSideContent( oSideContent:sap.tnt.SideNavigation):sap.tnt.ToolPage;

	/**
	* Sets the expand/collapse state of the SideContent.
	* @param	bSideExpanded defines whether the SideNavigation is expanded.
	* @return	Pointer to the control instance for chaining
	*/
	public function setSideExpanded( bSideExpanded:Bool):sap.tnt.ToolPage;

	/**
	* Toggles the expand/collapse state of the SideContent.
	* @return	Pointer to the control instance for chaining.
	*/
	public function toggleSideContentMode( ):sap.tnt.ToolPage;
}

typedef ToolPageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Indicates if the side area is expanded. Overrides the expanded property of the sideContent aggregation.
	*/
	@:optional var sideExpanded:haxe.extern.EitherType<String,Bool>;

    /**
    * The control to appear in the header area.
    */
	@:optional var header:haxe.extern.EitherType<String,sap.tnt.IToolHeader>;

    /**
    * The side menu of the layout.
    */
	@:optional var sideContent:haxe.extern.EitherType<String,sap.tnt.SideNavigation>;

    /**
    * The content section.
    */
	@:optional var mainContents:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
