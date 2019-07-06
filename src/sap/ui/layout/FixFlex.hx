package sap.ui.layout;

@:native("sap.ui.layout.FixFlex")

/**
* A layout container with a fixed and a flexible part. <h3>Overview</h3> The FixFlex control builds the container for a layout with a fixed and a flexible part. The flexible container adapts its size to the fix container. <h4>Guidelines:</h4> <ul> <li>The fix container can hold any number of controls, while the flexible container can hold only one</li> <li>In order for the FixFlex to stretch properly, the parent element, in which the control is placed, needs to have a specified height or needs to have an absolute position.</li> <li>Avoid nesting FixFlex in other flexbox-based layout controls ({@link sap.ui.layout.FixFlex FixFlex}, {@link sap.m.FlexBox FlexBox}, Hbox, Vbox). Otherwise, contents may be not accessible or multiple scrollbars can appear.</li> </ul> <h3>Structure</h3> The behavior of the FixFlex is controlled by the following properties: <ul> <li><code>fixContentSize</code> - The width/height of the fix part of the control</li> <li><code>fixFirst</code> - The ordering of the fix and flex part</li> <li><code>minFlexSize</code> - Scrolling inside the flex part, if its contents are large</li> <li><code>vertical</code> - Alignment of the FixFlex control</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>If the child control of the flex or the fix container has width/height bigger than the container itself, the child control will be cropped in the view.</li> <li>If minFlexSize is set, then a scrollbar is shown in the flexible part, depending on the <code>vertical</code> property.</li> </ul>
*/
extern class FixFlex extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:FixFlexArgs):Void {})
	public function new(?mSettings:FixFlexArgs):Void;

	/**
	* Adds some fixContent to the aggregation {@link #getFixContent fixContent}.
	* @param	oFixContent The fixContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addFixContent( oFixContent:sap.ui.core.Control):sap.ui.layout.FixFlex;

	/**
	* Destroys all the fixContent in the aggregation {@link #getFixContent fixContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFixContent( ):sap.ui.layout.FixFlex;

	/**
	* Destroys the flexContent in the aggregation {@link #getFlexContent flexContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFlexContent( ):sap.ui.layout.FixFlex;

	/**
	* Creates a new subclass of class sap.ui.layout.FixFlex with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getFixContent fixContent}.

Controls in the fixed part of the layout.
	* @return	null
	*/
	public function getFixContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getFixContentSize fixContentSize}.

Determines the height (if the vertical property is "true") or the width (if the vertical property is "false") of the fixed area. If left at the default value "auto", the fixed-size area will be as large as its content. In this case the content cannot use percentage sizes.

Default value is <code>auto</code>.
	* @return	Value of property <code>fixContentSize</code>
	*/
	public function getFixContentSize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getFixFirst fixFirst}.

Determines whether the fixed-size area should be on the beginning/top ( if the value is "true") or end/bottom ( if the value is "false").

Default value is <code>true</code>.
	* @return	Value of property <code>fixFirst</code>
	*/
	public function getFixFirst( ):Bool;

	/**
	* Gets content of aggregation {@link #getFlexContent flexContent}.

Control in the stretching part of the layout.
	* @return	null
	*/
	public function getFlexContent( ):sap.ui.core.Control;

	/**
	* Returns a metadata object for class sap.ui.layout.FixFlex.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinFlexSize minFlexSize}.

Enables scrolling inside the flexible part. The given size is calculated in "px". If the child control in the flexible part is larger than the available flexible size on the screen and if the available size for the flexible part is smaller or equal to the minFlexSize value, the scroll will be for the entire FixFlex control.

Default value is <code>0</code>.
	* @return	Value of property <code>minFlexSize</code>
	*/
	public function getMinFlexSize( ):Int;

	/**
	* Gets current value of property {@link #getVertical vertical}.

Determines the direction of the layout of child elements. True for vertical and false for horizontal layout.

Default value is <code>true</code>.
	* @return	Value of property <code>vertical</code>
	*/
	public function getVertical( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getFixContent fixContent}. and returns its index if found or -1 otherwise.
	* @param	oFixContent The fixContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfFixContent( oFixContent:sap.ui.core.Control):Int;

	/**
	* Inserts a fixContent into the aggregation {@link #getFixContent fixContent}.
	* @param	oFixContent The fixContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the fixContent should be inserted at; for a negative value of <code>iIndex</code>, the fixContent is inserted at position 0; for a value greater than the current size of the aggregation, the fixContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertFixContent( oFixContent:sap.ui.core.Control, iIndex:Int):sap.ui.layout.FixFlex;

	/**
	* Removes all the controls from the aggregation {@link #getFixContent fixContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllFixContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vFixContent:Int):sap.ui.core.Control{ })
	@:overload( function(vFixContent:String):sap.ui.core.Control{ })

	/**
	* Removes a fixContent from the aggregation {@link #getFixContent fixContent}.
	* @param	vFixContent The fixContent to remove or its index or id
	* @return	The removed fixContent or <code>null</code>
	*/
	public function removeFixContent( vFixContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getFixContentSize fixContentSize}.

Determines the height (if the vertical property is "true") or the width (if the vertical property is "false") of the fixed area. If left at the default value "auto", the fixed-size area will be as large as its content. In this case the content cannot use percentage sizes.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sFixContentSize New value for property <code>fixContentSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFixContentSize( sFixContentSize:sap.ui.core.CSSSize):sap.ui.layout.FixFlex;

	/**
	* Sets a new value for property {@link #getFixFirst fixFirst}.

Determines whether the fixed-size area should be on the beginning/top ( if the value is "true") or end/bottom ( if the value is "false").

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bFixFirst New value for property <code>fixFirst</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFixFirst( bFixFirst:Bool):sap.ui.layout.FixFlex;

	/**
	* Sets the aggregated {@link #getFlexContent flexContent}.
	* @param	oFlexContent The flexContent to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFlexContent( oFlexContent:sap.ui.core.Control):sap.ui.layout.FixFlex;

	/**
	* Sets a new value for property {@link #getMinFlexSize minFlexSize}.

Enables scrolling inside the flexible part. The given size is calculated in "px". If the child control in the flexible part is larger than the available flexible size on the screen and if the available size for the flexible part is smaller or equal to the minFlexSize value, the scroll will be for the entire FixFlex control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMinFlexSize New value for property <code>minFlexSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinFlexSize( iMinFlexSize:Int):sap.ui.layout.FixFlex;

	/**
	* Sets a new value for property {@link #getVertical vertical}.

Determines the direction of the layout of child elements. True for vertical and false for horizontal layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVertical New value for property <code>vertical</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVertical( bVertical:Bool):sap.ui.layout.FixFlex;
}

typedef FixFlexArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the direction of the layout of child elements. True for vertical and false for horizontal layout.
	*/
	@:optional var vertical:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the fixed-size area should be on the beginning/top ( if the value is "true") or end/bottom ( if the value is "false").
	*/
	@:optional var fixFirst:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the height (if the vertical property is "true") or the width (if the vertical property is "false") of the fixed area. If left at the default value "auto", the fixed-size area will be as large as its content. In this case the content cannot use percentage sizes.
	*/
	@:optional var fixContentSize:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Enables scrolling inside the flexible part. The given size is calculated in "px". If the child control in the flexible part is larger than the available flexible size on the screen and if the available size for the flexible part is smaller or equal to the minFlexSize value, the scroll will be for the entire FixFlex control.
	*/
	@:optional var minFlexSize:haxe.extern.EitherType<String,Int>;

    /**
    * Controls in the fixed part of the layout.
    */
	@:optional var fixContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Control in the stretching part of the layout.
    */
	@:optional var flexContent:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
