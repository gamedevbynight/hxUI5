package sap.ui.commons;

@:native("sap.ui.commons.Splitter")

/**
* Allows to split the screen into two areas. Make sure that the container for the splitter has an absolute height or set an absolute height for the splitter using the height property. Otherwise the height of the splitter is calculated by the height of its contents.
*/
extern class Splitter extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SplitterArgs):Void {})
	public function new(?mSettings:SplitterArgs):Void;

	/**
	* Adds some firstPaneContent to the aggregation {@link #getFirstPaneContent firstPaneContent}.
	* @param	oFirstPaneContent The firstPaneContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addFirstPaneContent( oFirstPaneContent:sap.ui.core.Control):sap.ui.commons.Splitter;

	/**
	* Adds some secondPaneContent to the aggregation {@link #getSecondPaneContent secondPaneContent}.
	* @param	oSecondPaneContent The secondPaneContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSecondPaneContent( oSecondPaneContent:sap.ui.core.Control):sap.ui.commons.Splitter;

	/**
	* Destroys all the firstPaneContent in the aggregation {@link #getFirstPaneContent firstPaneContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFirstPaneContent( ):sap.ui.commons.Splitter;

	/**
	* Destroys all the secondPaneContent in the aggregation {@link #getSecondPaneContent secondPaneContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySecondPaneContent( ):sap.ui.commons.Splitter;

	/**
	* Creates a new subclass of class sap.ui.commons.Splitter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getFirstPaneContent firstPaneContent}.

Controls inside the first pane. These are the left ones in case of defining a vertical splitter, and the top ones in case of using the horizontal splitter.
	* @return	null
	*/
	public function getFirstPaneContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getHeight height}.

The height of the split area in px or in %

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.commons.SplitterSize;

	/**
	* Returns a metadata object for class sap.ui.commons.Splitter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinSizeFirstPane minSizeFirstPane}.

The minimum size (width for vertical splitter or height for horizontal splitter) of the first Pane

Default value is <code>0%</code>.
	* @return	Value of property <code>minSizeFirstPane</code>
	*/
	public function getMinSizeFirstPane( ):sap.ui.core.Percentage;

	/**
	* Gets current value of property {@link #getMinSizeSecondPane minSizeSecondPane}.

The minimum size (width for vertical splitter or height for horizontal splitter) of the second Pane

Default value is <code>0%</code>.
	* @return	Value of property <code>minSizeSecondPane</code>
	*/
	public function getMinSizeSecondPane( ):sap.ui.core.Percentage;

	/**
	* Gets content of aggregation {@link #getSecondPaneContent secondPaneContent}.

Controls inside the second pane. These are the right ones in case of defining a vertical splitter, and the bottom ones in case of using the horizontal splitter.
	* @return	null
	*/
	public function getSecondPaneContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getShowScrollBars showScrollBars}.

Specifies if the browser should display scroll bars or simply cut the content of a splitter pane when the content does not fit into its pane.

Default value is <code>true</code>.
	* @return	Value of property <code>showScrollBars</code>
	*/
	public function getShowScrollBars( ):Bool;

	/**
	* Gets current value of property {@link #getSplitterBarVisible splitterBarVisible}.

set the splitter bar to be visible or not.

Default value is <code>true</code>.
	* @return	Value of property <code>splitterBarVisible</code>
	*/
	public function getSplitterBarVisible( ):Bool;

	/**
	* Gets current value of property {@link #getSplitterOrientation splitterOrientation}.

The splitter can have horizontal or vertical orientation.

Default value is <code>Vertical</code>.
	* @return	Value of property <code>splitterOrientation</code>
	*/
	public function getSplitterOrientation( ):sap.ui.core.Orientation;

	/**
	* Gets current value of property {@link #getSplitterPosition splitterPosition}.

Position of splitter bar in percentage. The default value means that the splitter is positioned in the middle of the area that is available for the splitter.

Default value is <code>50%</code>.
	* @return	Value of property <code>splitterPosition</code>
	*/
	public function getSplitterPosition( ):sap.ui.core.Percentage;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the split area in px or in %

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.commons.SplitterSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getFirstPaneContent firstPaneContent}. and returns its index if found or -1 otherwise.
	* @param	oFirstPaneContent The firstPaneContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfFirstPaneContent( oFirstPaneContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getSecondPaneContent secondPaneContent}. and returns its index if found or -1 otherwise.
	* @param	oSecondPaneContent The secondPaneContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSecondPaneContent( oSecondPaneContent:sap.ui.core.Control):Int;

	/**
	* Inserts a firstPaneContent into the aggregation {@link #getFirstPaneContent firstPaneContent}.
	* @param	oFirstPaneContent The firstPaneContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the firstPaneContent should be inserted at; for a negative value of <code>iIndex</code>, the firstPaneContent is inserted at position 0; for a value greater than the current size of the aggregation, the firstPaneContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertFirstPaneContent( oFirstPaneContent:sap.ui.core.Control, iIndex:Int):sap.ui.commons.Splitter;

	/**
	* Inserts a secondPaneContent into the aggregation {@link #getSecondPaneContent secondPaneContent}.
	* @param	oSecondPaneContent The secondPaneContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the secondPaneContent should be inserted at; for a negative value of <code>iIndex</code>, the secondPaneContent is inserted at position 0; for a value greater than the current size of the aggregation, the secondPaneContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSecondPaneContent( oSecondPaneContent:sap.ui.core.Control, iIndex:Int):sap.ui.commons.Splitter;

	/**
	* Removes all the controls from the aggregation {@link #getFirstPaneContent firstPaneContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllFirstPaneContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getSecondPaneContent secondPaneContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSecondPaneContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vFirstPaneContent:Int):sap.ui.core.Control{ })
	@:overload( function(vFirstPaneContent:String):sap.ui.core.Control{ })

	/**
	* Removes a firstPaneContent from the aggregation {@link #getFirstPaneContent firstPaneContent}.
	* @param	vFirstPaneContent The firstPaneContent to remove or its index or id
	* @return	The removed firstPaneContent or <code>null</code>
	*/
	public function removeFirstPaneContent( vFirstPaneContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vSecondPaneContent:Int):sap.ui.core.Control{ })
	@:overload( function(vSecondPaneContent:String):sap.ui.core.Control{ })

	/**
	* Removes a secondPaneContent from the aggregation {@link #getSecondPaneContent secondPaneContent}.
	* @param	vSecondPaneContent The secondPaneContent to remove or its index or id
	* @return	The removed secondPaneContent or <code>null</code>
	*/
	public function removeSecondPaneContent( vSecondPaneContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height of the split area in px or in %

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.commons.SplitterSize):sap.ui.commons.Splitter;

	/**
	* Sets a new value for property {@link #getMinSizeFirstPane minSizeFirstPane}.

The minimum size (width for vertical splitter or height for horizontal splitter) of the first Pane

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0%</code>.
	* @param	sMinSizeFirstPane New value for property <code>minSizeFirstPane</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinSizeFirstPane( sMinSizeFirstPane:sap.ui.core.Percentage):sap.ui.commons.Splitter;

	/**
	* Sets a new value for property {@link #getMinSizeSecondPane minSizeSecondPane}.

The minimum size (width for vertical splitter or height for horizontal splitter) of the second Pane

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0%</code>.
	* @param	sMinSizeSecondPane New value for property <code>minSizeSecondPane</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinSizeSecondPane( sMinSizeSecondPane:sap.ui.core.Percentage):sap.ui.commons.Splitter;

	/**
	* Sets a new value for property {@link #getShowScrollBars showScrollBars}.

Specifies if the browser should display scroll bars or simply cut the content of a splitter pane when the content does not fit into its pane.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowScrollBars New value for property <code>showScrollBars</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowScrollBars( bShowScrollBars:Bool):sap.ui.commons.Splitter;

	/**
	* Sets a new value for property {@link #getSplitterBarVisible splitterBarVisible}.

set the splitter bar to be visible or not.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSplitterBarVisible New value for property <code>splitterBarVisible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSplitterBarVisible( bSplitterBarVisible:Bool):sap.ui.commons.Splitter;

	/**
	* Sets a new value for property {@link #getSplitterOrientation splitterOrientation}.

The splitter can have horizontal or vertical orientation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Vertical</code>.
	* @param	sSplitterOrientation New value for property <code>splitterOrientation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSplitterOrientation( sSplitterOrientation:sap.ui.core.Orientation):sap.ui.commons.Splitter;

	/**
	* Sets a new value for property {@link #getSplitterPosition splitterPosition}.

Position of splitter bar in percentage. The default value means that the splitter is positioned in the middle of the area that is available for the splitter.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>50%</code>.
	* @param	sSplitterPosition New value for property <code>splitterPosition</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSplitterPosition( sSplitterPosition:sap.ui.core.Percentage):sap.ui.commons.Splitter;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the split area in px or in %

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.commons.SplitterSize):sap.ui.commons.Splitter;
}

typedef SplitterArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The splitter can have horizontal or vertical orientation.
	*/
	@:optional var splitterOrientation:haxe.extern.EitherType<String,sap.ui.core.Orientation>;

	/**
	* Position of splitter bar in percentage. The default value means that the splitter is positioned in the middle of the area that is available for the splitter.
	*/
	@:optional var splitterPosition:haxe.extern.EitherType<String,sap.ui.core.Percentage>;

	/**
	* The minimum size (width for vertical splitter or height for horizontal splitter) of the first Pane
	*/
	@:optional var minSizeFirstPane:haxe.extern.EitherType<String,sap.ui.core.Percentage>;

	/**
	* The minimum size (width for vertical splitter or height for horizontal splitter) of the second Pane
	*/
	@:optional var minSizeSecondPane:haxe.extern.EitherType<String,sap.ui.core.Percentage>;

	/**
	* The width of the split area in px or in %
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.commons.SplitterSize>;

	/**
	* The height of the split area in px or in %
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.commons.SplitterSize>;

	/**
	* Specifies if the browser should display scroll bars or simply cut the content of a splitter pane when the content does not fit into its pane.
	*/
	@:optional var showScrollBars:haxe.extern.EitherType<String,Bool>;

	/**
	* set the splitter bar to be visible or not.
	*/
	@:optional var splitterBarVisible:haxe.extern.EitherType<String,Bool>;

    /**
    * Controls inside the first pane. These are the left ones in case of defining a vertical splitter, and the top ones in case of using the horizontal splitter.
    */
	@:optional var firstPaneContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Controls inside the second pane. These are the right ones in case of defining a vertical splitter, and the bottom ones in case of using the horizontal splitter.
    */
	@:optional var secondPaneContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
