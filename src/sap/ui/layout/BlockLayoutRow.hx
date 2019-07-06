package sap.ui.layout;

@:native("sap.ui.layout.BlockLayoutRow")

/**
* The BlockLayoutRow is used as an aggregation to the BlockLayout. It aggregates Block Layout cells. The BlockLayoutRow has 2 rendering modes - scrollable and non scrollable.
*/
extern class BlockLayoutRow extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:BlockLayoutRowArgs):Void {})
	public function new(?mSettings:BlockLayoutRowArgs):Void;
	@:overload( function(vAccentCell:sap.ui.core.ID):sap.ui.layout.BlockLayoutRow{ })

	/**
	* Adds some accentCell into the association {@link #getAccentCells accentCells}.
	* @param	vAccentCell The accentCells to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAccentCell( vAccentCell:sap.ui.layout.BlockLayoutCell):sap.ui.layout.BlockLayoutRow;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.layout.BlockLayoutCell):sap.ui.layout.BlockLayoutRow;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.layout.BlockLayoutRow;

	/**
	* Creates a new subclass of class sap.ui.layout.BlockLayoutRow with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAccentCells accentCells}.
	* @return	null
	*/
	public function getAccentCells( ):Array<sap.ui.core.ID>;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content cells to be included in the row.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.layout.BlockLayoutCell>;

	/**
	* Returns a metadata object for class sap.ui.layout.BlockLayoutRow.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getRowColorSet rowColorSet}.

Defines background type for that row. There might be several rows with the same type
	* @return	Value of property <code>rowColorSet</code>
	*/
	public function getRowColorSet( ):sap.ui.layout.BlockRowColorSets;

	/**
	* Gets current value of property {@link #getScrollable scrollable}.

Sets the rendering mode of the BlockLayoutRow to scrollable. In scrollable mode, the cells get aligned side by side, with horizontal scroll bar for the row.

Default value is <code>false</code>.
	* @return	Value of property <code>scrollable</code>
	*/
	public function getScrollable( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.layout.BlockLayoutCell</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.layout.BlockLayoutCell):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.layout.BlockLayoutCell, iIndex:Int):sap.ui.layout.BlockLayoutRow;
	@:overload( function(vAccentCell:Int):sap.ui.core.ID{ })
	@:overload( function(vAccentCell:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an accentCell from the association named {@link #getAccentCells accentCells}.
	* @param	vAccentCell The accentCell to be removed or its index or ID
	* @return	The removed accentCell or <code>null</code>
	*/
	public function removeAccentCell( vAccentCell:sap.ui.layout.BlockLayoutCell):sap.ui.core.ID;

	/**
	* Removes all the controls in the association named {@link #getAccentCells accentCells}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAccentCells( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.layout.BlockLayoutCell>;
	@:overload( function(vContent:Int):sap.ui.layout.BlockLayoutCell{ })
	@:overload( function(vContent:String):sap.ui.layout.BlockLayoutCell{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.layout.BlockLayoutCell):sap.ui.layout.BlockLayoutCell;

	/**
	* Changes dynamically row color set Note: this might invalidate cells inside and also change color sets of the other BlockLayoutRow-s below it.
	* @param	sType null
	* @return	null
	*/
	public function setRowColorSet( sType:sap.ui.layout.BlockRowColorSets):sap.ui.layout.BlockLayoutRow;

	/**
	* Sets a new value for property {@link #getScrollable scrollable}.

Sets the rendering mode of the BlockLayoutRow to scrollable. In scrollable mode, the cells get aligned side by side, with horizontal scroll bar for the row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bScrollable New value for property <code>scrollable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScrollable( bScrollable:Bool):sap.ui.layout.BlockLayoutRow;
}

typedef BlockLayoutRowArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Sets the rendering mode of the BlockLayoutRow to scrollable. In scrollable mode, the cells get aligned side by side, with horizontal scroll bar for the row.
	*/
	@:optional var scrollable:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines background type for that row. There might be several rows with the same type
	*/
	@:optional var rowColorSet:haxe.extern.EitherType<String,sap.ui.layout.BlockRowColorSets>;

    /**
    * The content cells to be included in the row.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.layout.BlockLayoutCell>>;

	/**
	* Cells that would be accented. *Note:* This association has visual impact only for BlockLayouts with background types "Mixed" and "Accent".

Mixed: In this type, areas of 25% (on desktop) can have a dark background color. Per section one area can be dark. Accent: Every section can contain multiple gray blocks, which are used alternately, beginning with the bright one
	*/
	@:optional var accentCells:Array<haxe.extern.EitherType<String,sap.ui.layout.BlockLayoutCell>>;
}
