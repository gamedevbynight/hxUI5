package sap.ui.layout;

@:native("sap.ui.layout.Grid")

/**
* A layout control which positions its child controls in a 12 column flow layout.

The <code>Grid</code> control's children can be specified to take on a variable amount of columns depending on available screen size. With this control it is possible to achieve flexible layouts and line-breaks for extra large-, large-, medium- and small-sized screens, such as large desktop, desktop, tablet, and mobile.

The <code>Grid</code> control's width can be percentage- or pixel-based and the spacing between its columns can be set to various predefined values.

<b>Notes:</b> <ul> <li>The visibility of the child control does not affect the horizontal space it occupies, meaning that even if the control is not visible, its horizontal space still exists, even if it is empty.</li> <li> If it gets wider, the content of the columns is designed to overflow outside of its dimensions. An additional <code>sapUiRespGridOverflowHidden</code> CSS class should be added to the control in order to hide the overflowing part of it.</li> </ul>
*/
extern class Grid extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:GridArgs):Void {})
	public function new(?mSettings:GridArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.layout.Grid{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.layout.Grid;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.layout.Grid;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.layout.Grid;

	/**
	* Creates a new subclass of class sap.ui.layout.Grid with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getContainerQuery containerQuery}.

If set to <code>true</code>, the current range (large, medium or small) is defined by the size of the container surrounding the <code>Grid</code> instead of the device screen size (media Query).

Default value is <code>false</code>.
	* @return	Value of property <code>containerQuery</code>
	*/
	public function getContainerQuery( ):Bool;

	/**
	* Gets content of aggregation {@link #getContent content}.

Controls that are placed into Grid layout.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getDefaultIndent defaultIndent}.

Optional. Defines default for the whole Grid numbers of empty columns before the current span begins. It can be defined for large, medium and small screens. Allowed values are separated by space Letters L, M or S followed by number of columns from 0 to 11 that the container has to take, for example, <code>L2 M4 S6</code>, <code>M11</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.

Default value is <code>"XL0 L0 M0 S0"</code>.
	* @return	Value of property <code>defaultIndent</code>
	*/
	public function getDefaultIndent( ):sap.ui.layout.GridIndent;

	/**
	* Gets current value of property {@link #getDefaultSpan defaultSpan}.

Optional. A string type that represents the span values of the <code>Grid</code> for large, medium and small screens. Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 12 that the container has to take, for example, <code>L2 M4 S6</code>, <code>M12</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.

Default value is <code>"XL3 L3 M6 S12"</code>.
	* @return	Value of property <code>defaultSpan</code>
	*/
	public function getDefaultSpan( ):sap.ui.layout.GridSpan;

	/**
	* Gets current value of property {@link #getHSpacing hSpacing}.

Optional. Defines the horizontal spacing between the content in the <code>Grid</code>. In rem, allowed values are 0, 0.5 , 1 or 2.

Default value is <code>1</code>.
	* @return	Value of property <code>hSpacing</code>
	*/
	public function getHSpacing( ):Float;

	/**
	* Returns a metadata object for class sap.ui.layout.Grid.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPosition position}.

Optional. Defines the position of the <code>Grid</code> in the window or surrounding container.

Default value is <code>"Left"</code>.
	* @return	Value of property <code>position</code>
	*/
	public function getPosition( ):sap.ui.layout.GridPosition;

	/**
	* Gets current value of property {@link #getVSpacing vSpacing}.

Optional. Defines the vertical spacing between the rows in the <code>Grid</code>. In rem, allowed values are 0, 0.5, 1 and 2.

Default value is <code>1</code>.
	* @return	Value of property <code>vSpacing</code>
	*/
	public function getVSpacing( ):Float;

	/**
	* Gets current value of property {@link #getWidth width}.

Optional. Defines the width of the <code>Grid</code>. If not specified, then 100%.

Default value is <code>'100%'</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.layout.Grid;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getContainerQuery containerQuery}.

If set to <code>true</code>, the current range (large, medium or small) is defined by the size of the container surrounding the <code>Grid</code> instead of the device screen size (media Query).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bContainerQuery New value for property <code>containerQuery</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContainerQuery( ?bContainerQuery:Bool):sap.ui.layout.Grid;

	/**
	* Sets a new value for property {@link #getDefaultIndent defaultIndent}.

Optional. Defines default for the whole Grid numbers of empty columns before the current span begins. It can be defined for large, medium and small screens. Allowed values are separated by space Letters L, M or S followed by number of columns from 0 to 11 that the container has to take, for example, <code>L2 M4 S6</code>, <code>M11</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"XL0 L0 M0 S0"</code>.
	* @param	sDefaultIndent New value for property <code>defaultIndent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultIndent( ?sDefaultIndent:sap.ui.layout.GridIndent):sap.ui.layout.Grid;

	/**
	* Sets a new value for property {@link #getDefaultSpan defaultSpan}.

Optional. A string type that represents the span values of the <code>Grid</code> for large, medium and small screens. Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 12 that the container has to take, for example, <code>L2 M4 S6</code>, <code>M12</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"XL3 L3 M6 S12"</code>.
	* @param	sDefaultSpan New value for property <code>defaultSpan</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultSpan( ?sDefaultSpan:sap.ui.layout.GridSpan):sap.ui.layout.Grid;

	/**
	* Sets a new value for property {@link #getHSpacing hSpacing}.

Optional. Defines the horizontal spacing between the content in the <code>Grid</code>. In rem, allowed values are 0, 0.5 , 1 or 2.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	fHSpacing New value for property <code>hSpacing</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHSpacing( ?fHSpacing:Float):sap.ui.layout.Grid;

	/**
	* Sets a new value for property {@link #getPosition position}.

Optional. Defines the position of the <code>Grid</code> in the window or surrounding container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"Left"</code>.
	* @param	sPosition New value for property <code>position</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPosition( ?sPosition:sap.ui.layout.GridPosition):sap.ui.layout.Grid;

	/**
	* Sets a new value for property {@link #getVSpacing vSpacing}.

Optional. Defines the vertical spacing between the rows in the <code>Grid</code>. In rem, allowed values are 0, 0.5, 1 and 2.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	fVSpacing New value for property <code>vSpacing</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVSpacing( ?fVSpacing:Float):sap.ui.layout.Grid;

	/**
	* Sets a new value for property {@link #getWidth width}.

Optional. Defines the width of the <code>Grid</code>. If not specified, then 100%.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'100%'</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.layout.Grid;
}

typedef GridArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Optional. Defines the width of the <code>Grid</code>. If not specified, then 100%.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Optional. Defines the vertical spacing between the rows in the <code>Grid</code>. In rem, allowed values are 0, 0.5, 1 and 2.
	*/
	@:optional var vSpacing:haxe.extern.EitherType<String,Float>;

	/**
	* Optional. Defines the horizontal spacing between the content in the <code>Grid</code>. In rem, allowed values are 0, 0.5 , 1 or 2.
	*/
	@:optional var hSpacing:haxe.extern.EitherType<String,Float>;

	/**
	* Optional. Defines the position of the <code>Grid</code> in the window or surrounding container.
	*/
	@:optional var position:haxe.extern.EitherType<String,sap.ui.layout.GridPosition>;

	/**
	* Optional. A string type that represents the span values of the <code>Grid</code> for large, medium and small screens. Allowed values are separated by space Letters L, M or S followed by number of columns from 1 to 12 that the container has to take, for example, <code>L2 M4 S6</code>, <code>M12</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.
	*/
	@:optional var defaultSpan:haxe.extern.EitherType<String,sap.ui.layout.GridSpan>;

	/**
	* Optional. Defines default for the whole Grid numbers of empty columns before the current span begins. It can be defined for large, medium and small screens. Allowed values are separated by space Letters L, M or S followed by number of columns from 0 to 11 that the container has to take, for example, <code>L2 M4 S6</code>, <code>M11</code>, <code>s10</code> or <code>l4 m4</code>.

<b>Note:</b> The parameters must be provided in the order <large medium small>.
	*/
	@:optional var defaultIndent:haxe.extern.EitherType<String,sap.ui.layout.GridIndent>;

	/**
	* If set to <code>true</code>, the current range (large, medium or small) is defined by the size of the container surrounding the <code>Grid</code> instead of the device screen size (media Query).
	*/
	@:optional var containerQuery:haxe.extern.EitherType<String,Bool>;

    /**
    * Controls that are placed into Grid layout.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs that label this control (see WAI-ARIA attribute <code>aria-labelledby</code>).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
