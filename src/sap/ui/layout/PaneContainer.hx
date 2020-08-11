package sap.ui.layout;

@:native("sap.ui.layout.PaneContainer")

/**
* PaneContainer is an abstraction of Splitter.

Could be used as an aggregation of ResponsiveSplitter or nested in other PaneContainers.
*/
extern class PaneContainer extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:PaneContainerArgs):Void {})
	public function new(?mSettings:PaneContainerArgs):Void;

	/**
	* Adds some pane to the aggregation {@link #getPanes panes}.
	* @param	oPane The pane to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addPane( oPane:sap.ui.core.Element):sap.ui.layout.PaneContainer;

	/**
	* Destroys all the panes in the aggregation {@link #getPanes panes}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPanes( ):sap.ui.layout.PaneContainer;

	/**
	* Creates a new subclass of class sap.ui.layout.PaneContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.layout.PaneContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getOrientation orientation}.

The orientation of the Splitter

Default value is <code>Horizontal</code>.
	* @return	Value of property <code>orientation</code>
	*/
	public function getOrientation( ):sap.ui.core.Orientation;

	/**
	* Gets content of aggregation {@link #getPanes panes}.

The panes to be split. The control will show n-1 splitter bars between n controls in this aggregation.
	* @return	null
	*/
	public function getPanes( ):Array<sap.ui.core.Element>;

	/**
	* Checks for the provided <code>sap.ui.core.Element</code> in the aggregation {@link #getPanes panes}. and returns its index if found or -1 otherwise.
	* @param	oPane The pane whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPane( oPane:sap.ui.core.Element):Int;

	/**
	* Pane insertion
	* @param	oObject null
	* @param	iIndex null
	* @return	null
	*/
	public function insertPane( oObject:Dynamic, iIndex:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Removes all the controls from the aggregation {@link #getPanes panes}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllPanes( ):Array<sap.ui.core.Element>;

	/**
	* Pane removal
	* @param	oObject null
	* @return	null
	*/
	public function removePane( oObject:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Setter for property layoutData.
	* @param	oLayoutData The LayoutData object.
	* @return	this to allow method chaining.
	*/
	public function setLayoutData( oLayoutData:sap.ui.core.LayoutData):sap.ui.layout.PaneContainer;

	/**
	* Setter for property orientation. Default value is sap.ui.core.Orientation.Horizontal
	* @param	sOrientation The Orientation type.
	* @return	this to allow method chaining.
	*/
	public function setOrientation( sOrientation:sap.ui.core.Orientation):sap.ui.layout.PaneContainer;
}

typedef PaneContainerArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The orientation of the Splitter
	*/
	@:optional var orientation:haxe.extern.EitherType<String,sap.ui.core.Orientation>;

    /**
    * The panes to be split. The control will show n-1 splitter bars between n controls in this aggregation.
    */
	@:optional var panes:Array<haxe.extern.EitherType<String,sap.ui.core.Element>>;
}
