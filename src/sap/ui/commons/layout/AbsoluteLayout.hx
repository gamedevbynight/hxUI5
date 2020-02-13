package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.AbsoluteLayout")

/**
* The Absolute Layout positions its child controls absolutely
*/
extern class AbsoluteLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:AbsoluteLayoutArgs):Void {})
	public function new(?mSettings:AbsoluteLayoutArgs):Void;

	/**
	* Adds the given control and a corresponding position container into the aggregation named 'positions'. Returns 'this' to allow method chaining.
	* @param	oContent The content to add; if empty, nothing is inserted.
	* @param	oPos JSON-like object which defines the position of the child control in the layout. The object is expected to have one or more from the attribute set top, bottom, left, right; each with a value of type sap.ui.core.CSSSize. If no object is given, the default is left=0px,right=0px
	* @return	null
	*/
	public function addContent( oContent:sap.ui.core.Control, oPos:Dynamic):sap.ui.commons.layout.AbsoluteLayout;

	/**
	* Adds element to the layout.
	* @param	oPosition Element which must be positioned in the layout.
	* @return	<code>this</code> Control reference for chaining.
	*/
	public function addPosition( oPosition:Dynamic):sap.ui.commons.layout.AbsoluteLayout;

	/**
	* Destroys all aggregated position containers and their child controls. Returns 'this' to allow method chaining.
	* @return	null
	*/
	public function destroyContent( ):sap.ui.commons.layout.AbsoluteLayout;

	/**
	* Destroys all elements from the layout.
	* @return	<code>this</code> Control reference for chaining.
	*/
	public function destroyPositions( ):sap.ui.commons.layout.AbsoluteLayout;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.AbsoluteLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns an array of the controls contained in the aggregated position containers (might be empty).
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getHeight height}.

The overall height of the control. When not set, 100% is automatically set.

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getHorizontalScrolling horizontalScrolling}.

'Auto', 'Scroll', 'Hidden', and 'None' are the available values for setting the vertical scrolling mode.

Default value is <code>Hidden</code>.
	* @return	Value of property <code>horizontalScrolling</code>
	*/
	public function getHorizontalScrolling( ):sap.ui.core.Scrolling;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.AbsoluteLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getPositions positions}.

Positioned child controls within the layout
	* @return	null
	*/
	public function getPositions( ):Array<sap.ui.commons.layout.PositionContainer>;

	/**
	* Gets current value of property {@link #getVerticalScrolling verticalScrolling}.

'Auto', 'Scroll', 'Hidden', and 'None' are the available values for setting the vertical scrolling mode.

Default value is <code>Hidden</code>.
	* @return	Value of property <code>verticalScrolling</code>
	*/
	public function getVerticalScrolling( ):sap.ui.core.Scrolling;

	/**
	* Gets current value of property {@link #getWidth width}.

The overall width of the control. When not set, 100% is automatically set.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided sap.ui.core.Control in the aggregated position containers, and returns the index of the container in the positions aggregation if found, or '-1' otherwise.
	* @param	oContent The content of which the index is looked for
	* @return	null
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.commons.layout.PositionContainer</code> in the aggregation {@link #getPositions positions}. and returns its index if found or -1 otherwise.
	* @param	oPosition The position whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPosition( oPosition:sap.ui.commons.layout.PositionContainer):Int;

	/**
	* Inserts the given control and a corresponding position container into the aggregation named 'positions'. Returns 'this' to allow method chaining.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The '0'-based index where the content shall be inserted at. For a negative value of iIndex, the content is inserted at position '0'; for a value greater than the current size of the aggregation, the content is inserted at the last position.
	* @param	oPos JSON-like object which defines the position of the child control within the layout. The object is expected to have one or more from the attribute set top, bottom, left, right; each with a value of type sap.ui.core.CSSSize. If no object is given, the default is left=0px,right=0px.
	* @return	null
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int, oPos:Dynamic):sap.ui.commons.layout.AbsoluteLayout;

	/**
	* Inserts element to the layout on a specific index.
	* @param	oPosition Element which must be positioned in the layout.
	* @param	iIndex Index of the element which is to be positioned.
	* @return	<code>this</code> Control reference for chaining.
	*/
	public function insertPosition( oPosition:Dynamic, iIndex:Int):sap.ui.commons.layout.AbsoluteLayout;

	/**
	* Removes all aggregated position containers. Returns an array of the controls contained in the removed position containers (might be empty).
	* @return	null
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all elements from the layout.
	* @return	Removed elements.
	*/
	public function removeAllPositions( ):Dynamic;

	/**
	* Removes the given control and its corresponding position container from the aggregation named 'positions'.
	* @param	oContent The content control to remove, its ID, or the index of the corresponding position container in the 'positions' aggregation.
	* @return	null
	*/
	public function removeContent( oContent:Dynamic):sap.ui.core.Control;

	/**
	* Removes element from the layout.
	* @param	vPosition Element which must be removed from the positions element within the layout.
	* @return	Removed element.
	*/
	public function removePosition( vPosition:Dynamic):Dynamic;

	/**
	* Sets the <code>height</code> property.
	* @param	sHeight The passed height of the control.
	* @return	<code>this</code> Control reference for chaining.
	*/
	public function setHeight( sHeight:String):sap.ui.commons.layout.AbsoluteLayout;

	/**
	* Sets the <code>horizontalScrolling</code> property.
	* @param	oHorizontalScrolling Object that contains settings for Horizontal scrolling.
	* @return	<code>this</code> Control reference for chaining.
	*/
	public function setHorizontalScrolling( oHorizontalScrolling:Dynamic):sap.ui.commons.layout.AbsoluteLayout;

	/**
	* Allows to set or change the position information of the given child control
	* @param	oControl The child control for which to change the position information; if empty or not aggregated, nothing is changed
	* @param	oPos JSON-like object which defines the position of the child control. The object is expected to have one or more from the attribute set top, bottom, left, right; each with a value of type sap.ui.core.CSSSize. If no object is given, the default is used which is left=0px,right=0px.
	* @return	null
	*/
	public function setPositionOfChild( oControl:sap.ui.core.Control, oPos:Dynamic):Bool;

	/**
	* Sets the <code>verticalScrolling</code> property.
	* @param	oVerticalScrolling Object that contains settings for Vertical scrolling.
	* @return	<code>this</code> Control reference for chaining.
	*/
	public function setVerticalScrolling( oVerticalScrolling:Dynamic):sap.ui.commons.layout.AbsoluteLayout;

	/**
	* Sets the <code>width</code> property.
	* @param	sWidth The passed width of the control.
	* @return	<code>this</code> Control reference for chaining.
	*/
	public function setWidth( sWidth:String):sap.ui.commons.layout.AbsoluteLayout;
}

typedef AbsoluteLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The overall width of the control. When not set, 100% is automatically set.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The overall height of the control. When not set, 100% is automatically set.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* 'Auto', 'Scroll', 'Hidden', and 'None' are the available values for setting the vertical scrolling mode.
	*/
	@:optional var verticalScrolling:haxe.extern.EitherType<String,sap.ui.core.Scrolling>;

	/**
	* 'Auto', 'Scroll', 'Hidden', and 'None' are the available values for setting the vertical scrolling mode.
	*/
	@:optional var horizontalScrolling:haxe.extern.EitherType<String,sap.ui.core.Scrolling>;

    /**
    * Positioned child controls within the layout
    */
	@:optional var positions:Array<haxe.extern.EitherType<String,sap.ui.commons.layout.PositionContainer>>;
}
