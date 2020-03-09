package sap.ui.layout;

@:native("sap.ui.layout.ResponsiveSplitter")

/**
* A responsive splitter which divides the application into several areas. <h3>Overview</h3> The responsive splitter layout structures complex applications into defined areas. These areas may be resizable and are either distributed across one or multiple screen areas, some of which may also be off-canvas.

The control is intended for developing administrative tools and applications. <h3>Structure</h3> The responsive splitter holds the following hierarchy of containers and controls: <ul> <li>{@link sap.ui.layout.PaneContainer Pane Container} - holds one or more Split Panes and determines the pane orientation. The pane which is stored in <code>rootPaneContainer</code> holds all other pane containers and split panes.</li> <li>{@link sap.ui.layout.SplitPane Split Pane} - independent containers that may interact with one another. Each pane can hold only one control.</li> </ul> <h3>Usage</h3> <h4>When to use</h4> <ul> <li>The application has to display several areas side by side that must be resizable.</li> <li>The application must work on a range of different devices in a responsive manner.</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>As soon as views are in the off-canvas mode, the pagination bar at the bottom of the application allows the user to switch between them.</li> <li>On touch-enabled devices, the splitters show explicit handles with larger touch areas.</li> <li>Double-clicking on a splitter will collapse or expand it back to its original position.</li> </ul>

<b>Note:</b> We don't recommend dynamically inserting/removing panes into/from the PaneContainer since this might lead to inconsistent layout. If it is necessary, you need to ensure the sum of all sizes of the SplitPanes doesn't exceed the width of the PaneContainer.
*/
extern class ResponsiveSplitter extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveSplitterArgs):Void {})
	public function new(?mSettings:ResponsiveSplitterArgs):Void;

	/**
	* Destroys the rootPaneContainer in the aggregation {@link #getRootPaneContainer rootPaneContainer}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRootPaneContainer( ):sap.ui.layout.ResponsiveSplitter;

	/**
	* Creates a new subclass of class sap.ui.layout.ResponsiveSplitter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* ID of the element which is the current target of the association {@link #getDefaultPane defaultPane}, or <code>null</code>.
	* @return	null
	*/
	public function getDefaultPane( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getHeight height}.

The height of the control

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.layout.ResponsiveSplitter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getRootPaneContainer rootPaneContainer}.

The root PaneContainer of the ResponsiveSplitter
	* @return	null
	*/
	public function getRootPaneContainer( ):sap.ui.layout.PaneContainer;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the control

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;
	@:overload( function(oDefaultPane:sap.ui.core.ID):sap.ui.layout.ResponsiveSplitter{ })

	/**
	* Sets the associated {@link #getDefaultPane defaultPane}.
	* @param	oDefaultPane ID of an element which becomes the new target of this defaultPane association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultPane( oDefaultPane:sap.ui.layout.SplitPane):sap.ui.layout.ResponsiveSplitter;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height of the control

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.layout.ResponsiveSplitter;

	/**
	* Sets the aggregated {@link #getRootPaneContainer rootPaneContainer}.
	* @param	oRootPaneContainer The rootPaneContainer to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRootPaneContainer( oRootPaneContainer:sap.ui.layout.PaneContainer):sap.ui.layout.ResponsiveSplitter;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the control

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.layout.ResponsiveSplitter;
}

typedef ResponsiveSplitterArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The width of the control
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The height of the control
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * The root PaneContainer of the ResponsiveSplitter
    */
	@:optional var rootPaneContainer:haxe.extern.EitherType<String,sap.ui.layout.PaneContainer>;

    /**
    * Contains the internal pages that are used for pagination
    */
	@:optional var _pages:Array<haxe.extern.EitherType<String,sap.ui.layout.ResponsiveSplitterPage>>;

	/**
	* The default pane that will remain always visible If no defaultPane is specified, the ResponsiveSplitter sets the first SplitPane that is added to a PaneContainer in it as a default.
	*/
	@:optional var defaultPane:haxe.extern.EitherType<String,sap.ui.layout.SplitPane>;
}
