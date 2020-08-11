package sap.m;

@:native("sap.m.SelectionDetailsItem")

/**
* This protected element provides an item for {@link sap.m.SelectionDetails} that is shown inside a list. The item includes SelectionDetailsItemLine as its lines that are displayed in one block above the optional actions. <b><i>Note:</i></b>It is protected and should only be used within the framework itself.
*/
extern class SelectionDetailsItem extends sap.ui.core.Element
{

	/**
	* Adds some action to the aggregation {@link #getActions actions}.
	* @param	oAction The action to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAction( oAction:sap.ui.core.Item):sap.m.SelectionDetailsItem;

	/**
	* Adds some line to the aggregation {@link #getLines lines}.
	* @param	oLine The line to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addLine( oLine:sap.m.SelectionDetailsItemLine):sap.m.SelectionDetailsItem;

	/**
	* Binds aggregation {@link #getLines lines} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindLines( oBindingInfo:Dynamic):sap.m.SelectionDetailsItem;

	/**
	* Destroys all the actions in the aggregation {@link #getActions actions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyActions( ):sap.m.SelectionDetailsItem;

	/**
	* Destroys all the lines in the aggregation {@link #getLines lines}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLines( ):sap.m.SelectionDetailsItem;

	/**
	* Creates a new subclass of class sap.m.SelectionDetailsItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getActions actions}.

Contains custom actions shown below the main content of the item.
	* @return	null
	*/
	public function getActions( ):Array<sap.ui.core.Item>;

	/**
	* Gets current value of property {@link #getEnableNav enableNav}.

Determines whether or not the item is active and a navigation event is triggered on press.

Default value is <code>false</code>.
	* @return	Value of property <code>enableNav</code>
	*/
	public function getEnableNav( ):Bool;

	/**
	* Gets content of aggregation {@link #getLines lines}.

Contains a record of information about, for example, measures and dimensions. These entries are usually obtained via selection in chart controls.
	* @return	null
	*/
	public function getLines( ):Array<sap.m.SelectionDetailsItemLine>;

	/**
	* Returns a metadata object for class sap.m.SelectionDetailsItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getActions actions}. and returns its index if found or -1 otherwise.
	* @param	oAction The action whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAction( oAction:sap.ui.core.Item):Int;

	/**
	* Checks for the provided <code>sap.m.SelectionDetailsItemLine</code> in the aggregation {@link #getLines lines}. and returns its index if found or -1 otherwise.
	* @param	oLine The line whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfLine( oLine:sap.m.SelectionDetailsItemLine):Int;

	/**
	* Inserts a action into the aggregation {@link #getActions actions}.
	* @param	oAction The action to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the action should be inserted at; for a negative value of <code>iIndex</code>, the action is inserted at position 0; for a value greater than the current size of the aggregation, the action is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAction( oAction:sap.ui.core.Item, iIndex:Int):sap.m.SelectionDetailsItem;

	/**
	* Inserts a line into the aggregation {@link #getLines lines}.
	* @param	oLine The line to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the line should be inserted at; for a negative value of <code>iIndex</code>, the line is inserted at position 0; for a value greater than the current size of the aggregation, the line is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertLine( oLine:sap.m.SelectionDetailsItemLine, iIndex:Int):sap.m.SelectionDetailsItem;
	@:overload( function(vAction:Int):sap.ui.core.Item{ })
	@:overload( function(vAction:String):sap.ui.core.Item{ })

	/**
	* Removes a action from the aggregation {@link #getActions actions}.
	* @param	vAction The action to remove or its index or id
	* @return	The removed action or <code>null</code>
	*/
	public function removeAction( vAction:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Removes all the controls from the aggregation {@link #getActions actions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllActions( ):Array<sap.ui.core.Item>;

	/**
	* Removes all the controls from the aggregation {@link #getLines lines}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllLines( ):Array<sap.m.SelectionDetailsItemLine>;
	@:overload( function(vLine:Int):sap.m.SelectionDetailsItemLine{ })
	@:overload( function(vLine:String):sap.m.SelectionDetailsItemLine{ })

	/**
	* Removes a line from the aggregation {@link #getLines lines}.
	* @param	vLine The line to remove or its index or id
	* @return	The removed line or <code>null</code>
	*/
	public function removeLine( vLine:sap.m.SelectionDetailsItemLine):sap.m.SelectionDetailsItemLine;

	/**
	* Sets a new value for property {@link #getEnableNav enableNav}.

Determines whether or not the item is active and a navigation event is triggered on press.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableNav New value for property <code>enableNav</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableNav( ?bEnableNav:Bool):sap.m.SelectionDetailsItem;

	/**
	* Unbinds aggregation {@link #getLines lines} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindLines( ):sap.m.SelectionDetailsItem;
}

typedef SelectionDetailsItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Determines whether or not the item is active and a navigation event is triggered on press.
	*/
	@:optional var enableNav:haxe.extern.EitherType<String,Bool>;

    /**
    * Contains a record of information about, for example, measures and dimensions. These entries are usually obtained via selection in chart controls.
    */
	@:optional var lines:Array<haxe.extern.EitherType<String,sap.m.SelectionDetailsItemLine>>;

    /**
    * Contains custom actions shown below the main content of the item.
    */
	@:optional var actions:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

    /**
    * Shows custom action buttons below the main content of the item.
    */
	@:optional var _overflowToolbar:haxe.extern.EitherType<String,sap.m.OverflowToolbar>;
}
