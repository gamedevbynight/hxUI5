package sap.uxap;

@:native("sap.uxap.ObjectPageSubSection")

/**
* Second-level information container of an {@link sap.uxap.ObjectPageLayout}.

An <code>ObjectPageSubSection</code> may only be used within sections in the <code>ObjectPageLayout</code>. Subsections are used to display primary information in the <code>blocks</code> aggregation (always visible) and not-so-important information in the <code>moreBlocks</code> aggregation. The content in the <code>moreBlocks</code> aggregation is initially hidden, but may be accessed with a "See more" (...) button.

As of version 1.61, applications can enable auto-expand of the subsections to fit the sections container by adding the <code>sapUxAPObjectPageSubSectionFitContainer</code> class to the subsection. This is useful in situations where the sub-section contains a control that has “100%” height, for example, <code>sap.ui.table.Table</code> with <code>visibleRowCountMode</code> set to <code>Auto</code>.

<b>Note:</b> This control is intended to be used only as part of the <code>ObjectPageLayout</code>.
*/
extern class ObjectPageSubSection extends sap.uxap.ObjectPageSectionBase
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageSubSectionArgs):Void {})
	public function new(?mSettings:ObjectPageSubSectionArgs):Void;

	/**
	* Adds some action to the aggregation {@link #getActions actions}.
	* @param	oAction The action to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAction( oAction:sap.ui.core.Control):sap.uxap.ObjectPageSubSection;

	/**
	* Adds some block to the aggregation {@link #getBlocks blocks}.
	* @param	oBlock The block to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addBlock( oBlock:sap.ui.core.Control):sap.uxap.ObjectPageSubSection;

	/**
	* Adds some moreBlock to the aggregation {@link #getMoreBlocks moreBlocks}.
	* @param	oMoreBlock The moreBlock to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMoreBlock( oMoreBlock:sap.ui.core.Control):sap.uxap.ObjectPageSubSection;

	/**
	* Destroys all the actions in the aggregation {@link #getActions actions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyActions( ):sap.uxap.ObjectPageSubSection;

	/**
	* Destroys all the blocks in the aggregation {@link #getBlocks blocks}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyBlocks( ):sap.uxap.ObjectPageSubSection;

	/**
	* Destroys all the moreBlocks in the aggregation {@link #getMoreBlocks moreBlocks}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMoreBlocks( ):sap.uxap.ObjectPageSubSection;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageSubSection with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.uxap.ObjectPageSectionBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getActions actions}.

Actions available for this subsection.

Although this aggregation accepts type <code>sap.ui.core.Control</code>, it is strongly recommended to use only simple controls, such as buttons, so that the layout of the app is preserved.

<b>Note:</b> Keep in mind that the controls set in the <code>actions</code> aggregation of <code>ObjectPageSubSection</code> do NOT have overflow behavior. If the available space is not enough, the controls will be displayed on more lines.
	* @return	null
	*/
	public function getActions( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getBlocks blocks}.

Controls to be displayed in the subsection

<b>Note:</b> The SAP Fiori Design guidelines require that the <code>ObjectPageHeader</code>'s content and the <code>ObjectPage</code>'s subsection content are aligned vertically. When using {@link sap.ui.layout.form.Form}, {@link sap.m.Panel}, {@link sap.m.Table} and {@link sap.m.List} in the subsection content area of <code>ObjectPage</code>, if the content is not already aligned, you need to adjust their left text offset to achieve the vertical alignment. To do this, apply the <code>sapUxAPObjectPageSubSectionAlignContent</code> CSS class to them and set their <code>width</code> property to <code>auto</code> (if not set by default).

Don't use the <code>sapUxAPObjectPageSubSectionAlignContent</code> CSS class in the following cases: <ul> <li>In combination with <code>ResponsiveLayout</code>, because <code>ResponsiveLayout</code> applies custom paddings. To align items with <code>sapUxAPObjectPageSubSectionAlignContent</code>, use <code>ColumnLayout</code>.</li> <li>If there are multiple controls in the same <code>ObjectPageSubSection</code>, because the CSS class interferes with their alignment.</li> </ul> Example:

<pre>
<code> &lt;Panel class="sapUxAPObjectPageSubSectionAlignContent" width="auto"&gt;&lt;/Panel&gt; </code>
</pre>
	* @return	null
	*/
	public function getBlocks( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageSubSection.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMode mode}.

A mode property that will be passed to the controls in the blocks and moreBlocks aggregations. Only relevant if these aggregations use Object page blocks.

Default value is <code>Collapsed</code>.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):sap.uxap.ObjectPageSubSectionMode;

	/**
	* Gets content of aggregation {@link #getMoreBlocks moreBlocks}.

Additional controls to display when the Show more / See all / (...) button is pressed
	* @return	null
	*/
	public function getMoreBlocks( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getShowTitle showTitle}.

Determines whether to display the <code>SubSection</code> title or not.

<b>Note:</b> If a subsection is the only one (or the only one visible) within a section, its title is displayed instead of the section title even if this property is set to <code>false</code>. To hide the title of a subsection which is the only one (or the only one visible), you need to set the <code>showTitle</code> properties to <code>false</code> for both the section and its subsection.

Default value is <code>true</code>.
	* @return	Value of property <code>showTitle</code>
	*/
	public function getShowTitle( ):Bool;

	/**
	* Gets current value of property {@link #getTitleUppercase titleUppercase}.

Determines whether the Subsection title is displayed in upper case.

Default value is <code>false</code>.
	* @return	Value of property <code>titleUppercase</code>
	*/
	public function getTitleUppercase( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getActions actions}. and returns its index if found or -1 otherwise.
	* @param	oAction The action whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAction( oAction:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getBlocks blocks}. and returns its index if found or -1 otherwise.
	* @param	oBlock The block whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfBlock( oBlock:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getMoreBlocks moreBlocks}. and returns its index if found or -1 otherwise.
	* @param	oMoreBlock The moreBlock whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfMoreBlock( oMoreBlock:sap.ui.core.Control):Int;

	/**
	* Inserts a action into the aggregation {@link #getActions actions}.
	* @param	oAction The action to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the action should be inserted at; for a negative value of <code>iIndex</code>, the action is inserted at position 0; for a value greater than the current size of the aggregation, the action is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAction( oAction:sap.ui.core.Control, iIndex:Int):sap.uxap.ObjectPageSubSection;

	/**
	* Adds an <code>sap.uxap.BlockBase</code> instance to the <code>blocks</code> aggregation.

<b>Note:</b> The <code>insertBlock</code> method is not supported by design. If used, it works as an <code>addBlock</code>, adding a single block to the end of the <code>blocks</code> aggregation.
	* @param	oObject The <code>sap.uxap.BlockBase</code> instance
	* @param	iIndex The insertion index
	* @return	The <code>sap.uxap.ObjectPageSubSection</code> instance
	*/
	public function insertBlock( oObject:sap.uxap.BlockBase, iIndex:Int):sap.uxap.ObjectPageSubSection;

	/**
	* Adds an <code>sap.uxap.BlockBase</code> instance to the <code>moreBlocks</code> aggregation.

<b>Note:</b> The <code>insertMoreBlock</code> method is not supported by design. If used, it works as an <code>addMoreBlock</code>, adding a single block to the end of the <code>moreBlocks</code> aggregation.
	* @param	oObject The <code>sap.uxap.BlockBase</code> instance
	* @param	iIndex The insertion index
	* @return	The <code>sap.uxap.ObjectPageSubSection</code> instance
	*/
	public function insertMoreBlock( oObject:sap.uxap.BlockBase, iIndex:Int):sap.uxap.ObjectPageSubSection;
	@:overload( function(vAction:Int):sap.ui.core.Control{ })
	@:overload( function(vAction:String):sap.ui.core.Control{ })

	/**
	* Removes a action from the aggregation {@link #getActions actions}.
	* @param	vAction The action to remove or its index or id
	* @return	The removed action or <code>null</code>
	*/
	public function removeAction( vAction:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Removes all the controls from the aggregation {@link #getActions actions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllActions( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getBlocks blocks}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllBlocks( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getMoreBlocks moreBlocks}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllMoreBlocks( ):Array<sap.ui.core.Control>;
	@:overload( function(vBlock:Int):sap.ui.core.Control{ })
	@:overload( function(vBlock:String):sap.ui.core.Control{ })

	/**
	* Removes a block from the aggregation {@link #getBlocks blocks}.
	* @param	vBlock The block to remove or its index or id
	* @return	The removed block or <code>null</code>
	*/
	public function removeBlock( vBlock:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vMoreBlock:Int):sap.ui.core.Control{ })
	@:overload( function(vMoreBlock:String):sap.ui.core.Control{ })

	/**
	* Removes a moreBlock from the aggregation {@link #getMoreBlocks moreBlocks}.
	* @param	vMoreBlock The moreBlock to remove or its index or id
	* @return	The removed moreBlock or <code>null</code>
	*/
	public function removeMoreBlock( vMoreBlock:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getMode mode}.

A mode property that will be passed to the controls in the blocks and moreBlocks aggregations. Only relevant if these aggregations use Object page blocks.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Collapsed</code>.
	* @param	sMode New value for property <code>mode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMode( ?sMode:sap.uxap.ObjectPageSubSectionMode):sap.uxap.ObjectPageSubSection;

	/**
	* Sets a new value for property {@link #getShowTitle showTitle}.

Determines whether to display the <code>SubSection</code> title or not.

<b>Note:</b> If a subsection is the only one (or the only one visible) within a section, its title is displayed instead of the section title even if this property is set to <code>false</code>. To hide the title of a subsection which is the only one (or the only one visible), you need to set the <code>showTitle</code> properties to <code>false</code> for both the section and its subsection.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowTitle New value for property <code>showTitle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowTitle( ?bShowTitle:Bool):sap.uxap.ObjectPageSubSection;

	/**
	* Sets a new value for property {@link #getTitleUppercase titleUppercase}.

Determines whether the Subsection title is displayed in upper case.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bTitleUppercase New value for property <code>titleUppercase</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleUppercase( ?bTitleUppercase:Bool):sap.uxap.ObjectPageSubSection;
}

typedef ObjectPageSubSectionArgs = sap.uxap.ObjectPageSectionBase.ObjectPageSectionBaseArgs & {

	/**
	* Determines whether to display the <code>SubSection</code> title or not.

<b>Note:</b> If a subsection is the only one (or the only one visible) within a section, its title is displayed instead of the section title even if this property is set to <code>false</code>. To hide the title of a subsection which is the only one (or the only one visible), you need to set the <code>showTitle</code> properties to <code>false</code> for both the section and its subsection.
	*/
	@:optional var showTitle:haxe.extern.EitherType<String,Bool>;

	/**
	* A mode property that will be passed to the controls in the blocks and moreBlocks aggregations. Only relevant if these aggregations use Object page blocks.
	*/
	@:optional var mode:haxe.extern.EitherType<String,sap.uxap.ObjectPageSubSectionMode>;

	/**
	* Determines whether the Subsection title is displayed in upper case.
	*/
	@:optional var titleUppercase:haxe.extern.EitherType<String,Bool>;

    /**
    * Internal grid aggregation
    */
	@:optional var _grid:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Controls to be displayed in the subsection

<b>Note:</b> The SAP Fiori Design guidelines require that the <code>ObjectPageHeader</code>'s content and the <code>ObjectPage</code>'s subsection content are aligned vertically. When using {@link sap.ui.layout.form.Form}, {@link sap.m.Panel}, {@link sap.m.Table} and {@link sap.m.List} in the subsection content area of <code>ObjectPage</code>, if the content is not already aligned, you need to adjust their left text offset to achieve the vertical alignment. To do this, apply the <code>sapUxAPObjectPageSubSectionAlignContent</code> CSS class to them and set their <code>width</code> property to <code>auto</code> (if not set by default).

Don't use the <code>sapUxAPObjectPageSubSectionAlignContent</code> CSS class in the following cases: <ul> <li>In combination with <code>ResponsiveLayout</code>, because <code>ResponsiveLayout</code> applies custom paddings. To align items with <code>sapUxAPObjectPageSubSectionAlignContent</code>, use <code>ColumnLayout</code>.</li> <li>If there are multiple controls in the same <code>ObjectPageSubSection</code>, because the CSS class interferes with their alignment.</li> </ul> Example:

<pre>
<code> &lt;Panel class="sapUxAPObjectPageSubSectionAlignContent" width="auto"&gt;&lt;/Panel&gt; </code>
</pre>
    */
	@:optional var blocks:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Additional controls to display when the Show more / See all / (...) button is pressed
    */
	@:optional var moreBlocks:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Actions available for this subsection.

Although this aggregation accepts type <code>sap.ui.core.Control</code>, it is strongly recommended to use only simple controls, such as buttons, so that the layout of the app is preserved.

<b>Note:</b> Keep in mind that the controls set in the <code>actions</code> aggregation of <code>ObjectPageSubSection</code> do NOT have overflow behavior. If the available space is not enough, the controls will be displayed on more lines.
    */
	@:optional var actions:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
