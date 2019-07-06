package sap.m;

@:native("sap.m.Bar")

/**
* Used as a header, sub-header and a footer of a page.

<h3>Overview</h3>

The <code>Bar</code> control consists of three areas to hold its content. It has the capability to center content, such as a title, while having other controls on the left and right side.

<h3>Usage</h3>

With the use of the <code>design</code> property, you can set the style of the <code>Bar</code> to appear as a header, sub-header and footer.

<b>Note:</b> Do not place a <code>sap.m.Bar</code> inside another <code>sap.m.Bar</code> or inside any bar-like control. Doing so causes unpredictable behavior.

<h3>Responsive Behavior</h3>

The content in the middle area is centrally positioned if there is enough space. If the right or left content overlaps the middle content, the middle content will be centered in the space between.
*/
extern class Bar extends sap.ui.core.Control implements sap.m.IBar
{
	@:overload(function(?sId:String, ?mSettings:BarArgs):Void {})
	public function new(?mSettings:BarArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Bar{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Bar;

	/**
	* Adds some contentLeft to the aggregation {@link #getContentLeft contentLeft}.
	* @param	oContentLeft The contentLeft to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContentLeft( oContentLeft:sap.ui.core.Control):sap.m.Bar;

	/**
	* Adds some contentMiddle to the aggregation {@link #getContentMiddle contentMiddle}.
	* @param	oContentMiddle The contentMiddle to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContentMiddle( oContentMiddle:sap.ui.core.Control):sap.m.Bar;

	/**
	* Adds some contentRight to the aggregation {@link #getContentRight contentRight}.
	* @param	oContentRight The contentRight to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContentRight( oContentRight:sap.ui.core.Control):sap.m.Bar;

	/**
	* Destroys all the contentLeft in the aggregation {@link #getContentLeft contentLeft}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContentLeft( ):sap.m.Bar;

	/**
	* Destroys all the contentMiddle in the aggregation {@link #getContentMiddle contentMiddle}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContentMiddle( ):sap.m.Bar;

	/**
	* Destroys all the contentRight in the aggregation {@link #getContentRight contentRight}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContentRight( ):sap.m.Bar;

	/**
	* Creates a new subclass of class sap.m.Bar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets content of aggregation {@link #getContentLeft contentLeft}.

Represents the left content area, usually containing a button or an app icon. If it is overlapped by the right content, its content will disappear and the text will show an ellipsis.
	* @return	null
	*/
	public function getContentLeft( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getContentMiddle contentMiddle}.

Represents the middle content area. Controls such as label, segmented buttons or select can be placed here. The content is centrally positioned if there is enough space. If the right or left content overlaps the middle content, the middle content will be centered in the space between the left and the right content.
	* @return	null
	*/
	public function getContentMiddle( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getContentRight contentRight}.

Represents the right content area. Controls such as action buttons or search field can be placed here.
	* @return	null
	*/
	public function getContentRight( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getDesign design}.

Determines the design of the bar. If set to auto, it becomes dependent on the place where the bar is placed.

Default value is <code>Auto</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.m.BarDesign;

	/**
	* Returns a metadata object for class sap.m.Bar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContentLeft contentLeft}. and returns its index if found or -1 otherwise.
	* @param	oContentLeft The contentLeft whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContentLeft( oContentLeft:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContentMiddle contentMiddle}. and returns its index if found or -1 otherwise.
	* @param	oContentMiddle The contentMiddle whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContentMiddle( oContentMiddle:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContentRight contentRight}. and returns its index if found or -1 otherwise.
	* @param	oContentRight The contentRight whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContentRight( oContentRight:sap.ui.core.Control):Int;

	/**
	* Inserts a contentLeft into the aggregation {@link #getContentLeft contentLeft}.
	* @param	oContentLeft The contentLeft to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the contentLeft should be inserted at; for a negative value of <code>iIndex</code>, the contentLeft is inserted at position 0; for a value greater than the current size of the aggregation, the contentLeft is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContentLeft( oContentLeft:sap.ui.core.Control, iIndex:Int):sap.m.Bar;

	/**
	* Inserts a contentMiddle into the aggregation {@link #getContentMiddle contentMiddle}.
	* @param	oContentMiddle The contentMiddle to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the contentMiddle should be inserted at; for a negative value of <code>iIndex</code>, the contentMiddle is inserted at position 0; for a value greater than the current size of the aggregation, the contentMiddle is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContentMiddle( oContentMiddle:sap.ui.core.Control, iIndex:Int):sap.m.Bar;

	/**
	* Inserts a contentRight into the aggregation {@link #getContentRight contentRight}.
	* @param	oContentRight The contentRight to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the contentRight should be inserted at; for a negative value of <code>iIndex</code>, the contentRight is inserted at position 0; for a value greater than the current size of the aggregation, the contentRight is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContentRight( oContentRight:sap.ui.core.Control, iIndex:Int):sap.m.Bar;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getContentLeft contentLeft}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContentLeft( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getContentMiddle contentMiddle}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContentMiddle( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getContentRight contentRight}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContentRight( ):Array<sap.ui.core.Control>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vContentLeft:Int):sap.ui.core.Control{ })
	@:overload( function(vContentLeft:String):sap.ui.core.Control{ })

	/**
	* Removes a contentLeft from the aggregation {@link #getContentLeft contentLeft}.
	* @param	vContentLeft The contentLeft to remove or its index or id
	* @return	The removed contentLeft or <code>null</code>
	*/
	public function removeContentLeft( vContentLeft:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vContentMiddle:Int):sap.ui.core.Control{ })
	@:overload( function(vContentMiddle:String):sap.ui.core.Control{ })

	/**
	* Removes a contentMiddle from the aggregation {@link #getContentMiddle contentMiddle}.
	* @param	vContentMiddle The contentMiddle to remove or its index or id
	* @return	The removed contentMiddle or <code>null</code>
	*/
	public function removeContentMiddle( vContentMiddle:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vContentRight:Int):sap.ui.core.Control{ })
	@:overload( function(vContentRight:String):sap.ui.core.Control{ })

	/**
	* Removes a contentRight from the aggregation {@link #getContentRight contentRight}.
	* @param	vContentRight The contentRight to remove or its index or id
	* @return	The removed contentRight or <code>null</code>
	*/
	public function removeContentRight( vContentRight:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getDesign design}.

Determines the design of the bar. If set to auto, it becomes dependent on the place where the bar is placed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( sDesign:sap.m.BarDesign):sap.m.Bar;
}

typedef BarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the design of the bar. If set to auto, it becomes dependent on the place where the bar is placed.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.m.BarDesign>;

    /**
    * Represents the left content area, usually containing a button or an app icon. If it is overlapped by the right content, its content will disappear and the text will show an ellipsis.
    */
	@:optional var contentLeft:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Represents the middle content area. Controls such as label, segmented buttons or select can be placed here. The content is centrally positioned if there is enough space. If the right or left content overlaps the middle content, the middle content will be centered in the space between the left and the right content.
    */
	@:optional var contentMiddle:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Represents the right content area. Controls such as action buttons or search field can be placed here.
    */
	@:optional var contentRight:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
