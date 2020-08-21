package sap.m;

@:native("sap.m.HeaderContainer")

/**
* The container that provides a horizontal layout. It provides a horizontal scrolling on the mobile devices. On the desktop, it provides scroll left and scroll right buttons. This control supports keyboard navigation. You can use left and right arrow keys to navigate through the inner content. The Home key puts focus on the first control and the End key puts focus on the last control. Use Enter or Space key to choose the control.
*/
extern class HeaderContainer extends sap.ui.core.Control implements sap.m.ObjectHeaderContainer
{
	@:overload(function(?sId:String, ?mSettings:HeaderContainerArgs):Void {})
	public function new(?mSettings:HeaderContainerArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.HeaderContainer{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.HeaderContainer;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.HeaderContainer;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.HeaderContainer;

	/**
	* Creates a new subclass of class sap.m.HeaderContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

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
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the content. The visualization of the different options depends on the used theme.

Default value is <code>Transparent</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets content of aggregation {@link #getContent content}.

Content to add to HeaderContainer.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getHeight height}.

The height of the whole HeaderContainer. If not specified, it is rendered as 'auto' in horizontal orientation and as '100%' in vertical orientation.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.HeaderContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getOrientation orientation}.

The orientation of the HeaderContainer. There are two orientation modes: horizontal and vertical. In horizontal mode the content controls are displayed next to each other, in vertical mode the content controls are displayed on top of each other.

Default value is <code>Horizontal</code>.
	* @return	Value of property <code>orientation</code>
	*/
	public function getOrientation( ):sap.ui.core.Orientation;

	/**
	* Gets current value of property {@link #getScrollStep scrollStep}.

Number of pixels to scroll when the user chooses Next or Previous buttons. Relevant only for desktop.

Default value is <code>300</code>.
	* @return	Value of property <code>scrollStep</code>
	*/
	public function getScrollStep( ):Int;

	/**
	* Gets current value of property {@link #getScrollStepByItem scrollStepByItem}.

Number of items to scroll when the user chose Next or Previous buttons. Relevant only for desktop. Have priority over 'ScrollStep'. Have to be positive number.

Default value is <code>1</code>.
	* @return	Value of property <code>scrollStepByItem</code>
	*/
	public function getScrollStepByItem( ):Int;

	/**
	* Gets current value of property {@link #getScrollTime scrollTime}.

Scroll animation time in milliseconds.

Default value is <code>500</code>.
	* @return	Value of property <code>scrollTime</code>
	*/
	public function getScrollTime( ):Int;

	/**
	* Gets current value of property {@link #getShowDividers showDividers}.

If set to true, it shows dividers between the different content controls.

Default value is <code>true</code>.
	* @return	Value of property <code>showDividers</code>
	*/
	public function getShowDividers( ):Bool;

	/**
	* Gets current value of property {@link #getShowOverflowItem showOverflowItem}.

Indicates whether the incomplete item on the edge of visible area is displayed or hidden.

Default value is <code>true</code>.
	* @return	Value of property <code>showOverflowItem</code>
	*/
	public function getShowOverflowItem( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the whole HeaderContainer. If not specified, it is rendered as '100%' in horizontal orientation and as 'auto' in vertical orientation.
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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.HeaderContainer;

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
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the content. The visualization of the different options depends on the used theme.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Transparent</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.m.BackgroundDesign):sap.m.HeaderContainer;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height of the whole HeaderContainer. If not specified, it is rendered as 'auto' in horizontal orientation and as '100%' in vertical orientation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.HeaderContainer;

	/**
	* Sets a new value for property {@link #getOrientation orientation}.

The orientation of the HeaderContainer. There are two orientation modes: horizontal and vertical. In horizontal mode the content controls are displayed next to each other, in vertical mode the content controls are displayed on top of each other.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Horizontal</code>.
	* @param	sOrientation New value for property <code>orientation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOrientation( ?sOrientation:sap.ui.core.Orientation):sap.m.HeaderContainer;

	/**
	* Sets a new value for property {@link #getScrollStep scrollStep}.

Number of pixels to scroll when the user chooses Next or Previous buttons. Relevant only for desktop.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>300</code>.
	* @param	iScrollStep New value for property <code>scrollStep</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScrollStep( ?iScrollStep:Int):sap.m.HeaderContainer;

	/**
	* Sets a new value for property {@link #getScrollStepByItem scrollStepByItem}.

Number of items to scroll when the user chose Next or Previous buttons. Relevant only for desktop. Have priority over 'ScrollStep'. Have to be positive number.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iScrollStepByItem New value for property <code>scrollStepByItem</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScrollStepByItem( ?iScrollStepByItem:Int):sap.m.HeaderContainer;

	/**
	* Sets a new value for property {@link #getScrollTime scrollTime}.

Scroll animation time in milliseconds.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>500</code>.
	* @param	iScrollTime New value for property <code>scrollTime</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScrollTime( ?iScrollTime:Int):sap.m.HeaderContainer;

	/**
	* Sets a new value for property {@link #getShowDividers showDividers}.

If set to true, it shows dividers between the different content controls.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowDividers New value for property <code>showDividers</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowDividers( ?bShowDividers:Bool):sap.m.HeaderContainer;

	/**
	* Sets a new value for property {@link #getShowOverflowItem showOverflowItem}.

Indicates whether the incomplete item on the edge of visible area is displayed or hidden.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowOverflowItem New value for property <code>showOverflowItem</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowOverflowItem( ?bShowOverflowItem:Bool):sap.m.HeaderContainer;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the whole HeaderContainer. If not specified, it is rendered as '100%' in horizontal orientation and as 'auto' in vertical orientation.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.HeaderContainer;
}

typedef HeaderContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Number of pixels to scroll when the user chooses Next or Previous buttons. Relevant only for desktop.
	*/
	@:optional var scrollStep:haxe.extern.EitherType<String,Int>;

	/**
	* Number of items to scroll when the user chose Next or Previous buttons. Relevant only for desktop. Have priority over 'ScrollStep'. Have to be positive number.
	*/
	@:optional var scrollStepByItem:haxe.extern.EitherType<String,Int>;

	/**
	* Scroll animation time in milliseconds.
	*/
	@:optional var scrollTime:haxe.extern.EitherType<String,Int>;

	/**
	* Indicates whether the incomplete item on the edge of visible area is displayed or hidden.
	*/
	@:optional var showOverflowItem:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to true, it shows dividers between the different content controls.
	*/
	@:optional var showDividers:haxe.extern.EitherType<String,Bool>;

	/**
	* The orientation of the HeaderContainer. There are two orientation modes: horizontal and vertical. In horizontal mode the content controls are displayed next to each other, in vertical mode the content controls are displayed on top of each other.
	*/
	@:optional var orientation:haxe.extern.EitherType<String,sap.ui.core.Orientation>;

	/**
	* Specifies the background color of the content. The visualization of the different options depends on the used theme.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

	/**
	* The width of the whole HeaderContainer. If not specified, it is rendered as '100%' in horizontal orientation and as 'auto' in vertical orientation.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The height of the whole HeaderContainer. If not specified, it is rendered as 'auto' in horizontal orientation and as '100%' in vertical orientation.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * Content to add to HeaderContainer.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Scroll container for smooth scrolling on different platforms.
    */
	@:optional var _scrollContainer:haxe.extern.EitherType<String,sap.m.ScrollContainer>;

    /**
    * Button that allows to scroll to previous section.
    */
	@:optional var _prevButton:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Button that allows to scroll to next section.
    */
	@:optional var _nextButton:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Controls or IDs that label controls in the <code>content</code> aggregation. Each ariaLabelledBy item is assigned to its appropriate counterpart in the <code>content</code> aggregation. <br>If you want to annotate all the controls in the <code>content</code> aggregation, add the same number of items to the <code>ariaLabelledBy</code> annotation. <br>Can be used by screen reader software.
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
