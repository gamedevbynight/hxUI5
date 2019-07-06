package sap.uxap;

@:native("sap.uxap.BlockBase")

/**
* The main element that holds the content that is displayed in an {@link sap.uxap.ObjectPageLayout ObjectPageLayout}, but not necessarily only there.

<h3>Overview</h3>

The blocks give the flexibility to combine different content types.

A block is a control that: <ul> <li>Has modes and a view associated to each mode. At rendering time, the view associated to the mode is rendered.</li> <li>Can use all view types for storing its internal control tree (XML, JS, JSON, HTML)</li> </ul>

As any UI5 view, the XML view can have a controller which automatically comes with a <code>this.oParentBlock</code> attribute (so that the controller can interact with the block). The <code>oParentBlock</code> is firstly available in <code>onParentBlockModeChange</code> method. If the controller implements the <code>onParentBlockModeChange</code> method, this method will be called with the <code>sMode</code> parameter when the view is used or reused by the block.
*/
extern class BlockBase extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:BlockBaseArgs):Void {})
	public function new(?mSettings:BlockBaseArgs):Void;

	/**
	* Adds some mapping to the aggregation {@link #getMappings mappings}.
	* @param	oMapping The mapping to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMapping( oMapping:sap.uxap.ModelMapping):sap.uxap.BlockBase;

	/**
	* Destroys all the mappings in the aggregation {@link #getMappings mappings}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMappings( ):sap.uxap.BlockBase;

	/**
	* Creates a new subclass of class sap.uxap.BlockBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumnLayout columnLayout}.

Determines on how many columns the layout will be rendered. Allowed values are integers from 1 to 4 and "auto".

Default value is <code>auto</code>.
	* @return	Value of property <code>columnLayout</code>
	*/
	public function getColumnLayout( ):sap.uxap.BlockBaseColumnLayout;

	/**
	* Gets current value of property {@link #getFormAdjustment formAdjustment}.

Determines if the block should automatically adjust its inner forms. Allowed values are "BlockColumns" and "OneColumn" and "None". If the value is "BlockColumns", then the inner form will have as many columns as the colspan of its parent block. If the value is "OneColumn", the inner form will have exactly one column, regardless the colspan of its parent block. If the value is "None", no automatic adjustment of inner forms will be made and the form will keep its original column count.

Default value is <code>BlockColumns</code>.
	* @return	Value of property <code>formAdjustment</code>
	*/
	public function getFormAdjustment( ):sap.uxap.BlockBaseFormAdjustment;

	/**
	* Gets content of aggregation {@link #getMappings mappings}.

Map external UI5 model and internal Block model
	* @return	null
	*/
	public function getMappings( ):Array<sap.uxap.ModelMapping>;

	/**
	* Returns a metadata object for class sap.uxap.BlockBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMode mode}.

Determines the mode of the block. When block is used inside ObjectPage this mode is inherited my the SubSection. The mode of the block is changed when SubSection mode changes.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):String;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedView selectedView}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedView( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getShowSubSectionMore showSubSectionMore}.

Determines whether the show more button should be shown.

<b>Note:</b> The property will take effect if the <code>BlockBase</code> is inside <code>ObjectPageSubSection</code> and would be ignored in case the <code>BlockBase</code> is nested inside another <code>BlockBase</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>showSubSectionMore</code>
	*/
	public function getShowSubSectionMore( ):Bool;

	/**
	* Gets current value of property {@link #getVisible visible}.

Determines the visibility of the block.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Checks for the provided <code>sap.uxap.ModelMapping</code> in the aggregation {@link #getMappings mappings}. and returns its index if found or -1 otherwise.
	* @param	oMapping The mapping whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfMapping( oMapping:sap.uxap.ModelMapping):Int;

	/**
	* Inserts a mapping into the aggregation {@link #getMappings mappings}.
	* @param	oMapping The mapping to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the mapping should be inserted at; for a negative value of <code>iIndex</code>, the mapping is inserted at position 0; for a value greater than the current size of the aggregation, the mapping is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMapping( oMapping:sap.uxap.ModelMapping, iIndex:Int):sap.uxap.BlockBase;

	/**
	* Removes all the controls from the aggregation {@link #getMappings mappings}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllMappings( ):Array<sap.uxap.ModelMapping>;
	@:overload( function(vMapping:Int):sap.uxap.ModelMapping{ })
	@:overload( function(vMapping:String):sap.uxap.ModelMapping{ })

	/**
	* Removes a mapping from the aggregation {@link #getMappings mappings}.
	* @param	vMapping The mapping to remove or its index or id
	* @return	The removed mapping or <code>null</code>
	*/
	public function removeMapping( vMapping:sap.uxap.ModelMapping):sap.uxap.ModelMapping;

	/**
	* Set the column layout for this particular block.
	* @param	sLayout The column layout to apply to the control
	* @return	Void
	*/
	public function setColumnLayout( sLayout:String):Void;

	/**
	* Sets a new value for property {@link #getFormAdjustment formAdjustment}.

Determines if the block should automatically adjust its inner forms. Allowed values are "BlockColumns" and "OneColumn" and "None". If the value is "BlockColumns", then the inner form will have as many columns as the colspan of its parent block. If the value is "OneColumn", the inner form will have exactly one column, regardless the colspan of its parent block. If the value is "None", no automatic adjustment of inner forms will be made and the form will keep its original column count.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>BlockColumns</code>.
	* @param	sFormAdjustment New value for property <code>formAdjustment</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFormAdjustment( sFormAdjustment:sap.uxap.BlockBaseFormAdjustment):sap.uxap.BlockBase;

	/**
	* Set the view mode for this particular block.
	* @param	sMode the mode to apply to the control (that should be synchronized with view declared)
	* @return	this
	*/
	public function setMode( sMode:String):Dynamic;
	@:overload( function(oSelectedView:sap.ui.core.ID):sap.uxap.BlockBase{ })

	/**
	* Sets the associated {@link #getSelectedView selectedView}.
	* @param	oSelectedView ID of an element which becomes the new target of this selectedView association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedView( oSelectedView:sap.ui.core.Control):sap.uxap.BlockBase;

	/**
	* Sets a new value for property {@link #getShowSubSectionMore showSubSectionMore}.

Determines whether the show more button should be shown.

<b>Note:</b> The property will take effect if the <code>BlockBase</code> is inside <code>ObjectPageSubSection</code> and would be ignored in case the <code>BlockBase</code> is nested inside another <code>BlockBase</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSubSectionMore New value for property <code>showSubSectionMore</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSubSectionMore( bShowSubSectionMore:Bool):sap.uxap.BlockBase;

	/**
	* Setter for the visibility of the block.
	* @return	Void
	*/
	public function setVisible( ):Void;
}

typedef BlockBaseArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the mode of the block. When block is used inside ObjectPage this mode is inherited my the SubSection. The mode of the block is changed when SubSection mode changes.
	*/
	@:optional var mode:String;

	/**
	* Determines the visibility of the block.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines on how many columns the layout will be rendered. Allowed values are integers from 1 to 4 and "auto".
	*/
	@:optional var columnLayout:haxe.extern.EitherType<String,sap.uxap.BlockBaseColumnLayout>;

	/**
	* Determines if the block should automatically adjust its inner forms. Allowed values are "BlockColumns" and "OneColumn" and "None". If the value is "BlockColumns", then the inner form will have as many columns as the colspan of its parent block. If the value is "OneColumn", the inner form will have exactly one column, regardless the colspan of its parent block. If the value is "None", no automatic adjustment of inner forms will be made and the form will keep its original column count.
	*/
	@:optional var formAdjustment:haxe.extern.EitherType<String,sap.uxap.BlockBaseFormAdjustment>;

	/**
	* Determines whether the show more button should be shown.

<b>Note:</b> The property will take effect if the <code>BlockBase</code> is inside <code>ObjectPageSubSection</code> and would be ignored in case the <code>BlockBase</code> is nested inside another <code>BlockBase</code>.
	*/
	@:optional var showSubSectionMore:haxe.extern.EitherType<String,Bool>;

    /**
    * Map external UI5 model and internal Block model
    */
	@:optional var mappings:Array<haxe.extern.EitherType<String,sap.uxap.ModelMapping>>;

    /**
    * Internal aggregation that contains all views inside this Block
    */
	@:optional var _views:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* The view that is rendered now. Can be used as getter for the rendered view.
	*/
	@:optional var selectedView:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
