package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.PositionContainer")

/**
* Is used to specify the position of a control in the AbsoluteLayout
*/
extern class PositionContainer extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:PositionContainerArgs):Void {})
	public function new(?mSettings:PositionContainerArgs):Void;

	/**
	* Destroys the control in the aggregation {@link #getControl control}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyControl( ):sap.ui.commons.layout.PositionContainer;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.PositionContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBottom bottom}.

Defines the distance to the bottom of the layout (as specified in HTML)
	* @return	Value of property <code>bottom</code>
	*/
	public function getBottom( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getCenterHorizontally centerHorizontally}.

Indicates whether this container shall be centered horizontally within the AbsoluteLayout area. The values of the attributes left and right are ignored when this feature is activated.

Default value is <code>false</code>.
	* @return	Value of property <code>centerHorizontally</code>
	*/
	public function getCenterHorizontally( ):Bool;

	/**
	* Gets current value of property {@link #getCenterVertically centerVertically}.

Indicates whether this container should be centered vertically within the AbsoluteLayout area. The values of the attributes top and bottom are ignored when this feature is activated.

Default value is <code>false</code>.
	* @return	Value of property <code>centerVertically</code>
	*/
	public function getCenterVertically( ):Bool;

	/**
	* Gets content of aggregation {@link #getControl control}.

Child control of the position container
	* @return	null
	*/
	public function getControl( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getLeft left}.

Defines the distance to the left of the layout (as specified in HTML)
	* @return	Value of property <code>left</code>
	*/
	public function getLeft( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.PositionContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRight right}.

Defines the distance to the right of the layout (as specified in HTML)
	* @return	Value of property <code>right</code>
	*/
	public function getRight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getTop top}.

Defines the distance to the top of the layout (as specified in HTML)
	* @return	Value of property <code>top</code>
	*/
	public function getTop( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getBottom bottom}.

Defines the distance to the bottom of the layout (as specified in HTML)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBottom New value for property <code>bottom</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBottom( sBottom:sap.ui.core.CSSSize):sap.ui.commons.layout.PositionContainer;

	/**
	* Sets a new value for property {@link #getCenterHorizontally centerHorizontally}.

Indicates whether this container shall be centered horizontally within the AbsoluteLayout area. The values of the attributes left and right are ignored when this feature is activated.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bCenterHorizontally New value for property <code>centerHorizontally</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCenterHorizontally( ?bCenterHorizontally:Bool):sap.ui.commons.layout.PositionContainer;

	/**
	* Sets a new value for property {@link #getCenterVertically centerVertically}.

Indicates whether this container should be centered vertically within the AbsoluteLayout area. The values of the attributes top and bottom are ignored when this feature is activated.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bCenterVertically New value for property <code>centerVertically</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCenterVertically( ?bCenterVertically:Bool):sap.ui.commons.layout.PositionContainer;

	/**
	* Sets the aggregated {@link #getControl control}.
	* @param	oControl The control to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setControl( oControl:sap.ui.core.Control):sap.ui.commons.layout.PositionContainer;

	/**
	* Sets a new value for property {@link #getLeft left}.

Defines the distance to the left of the layout (as specified in HTML)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLeft New value for property <code>left</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLeft( sLeft:sap.ui.core.CSSSize):sap.ui.commons.layout.PositionContainer;

	/**
	* Sets a new value for property {@link #getRight right}.

Defines the distance to the right of the layout (as specified in HTML)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sRight New value for property <code>right</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRight( sRight:sap.ui.core.CSSSize):sap.ui.commons.layout.PositionContainer;

	/**
	* Sets a new value for property {@link #getTop top}.

Defines the distance to the top of the layout (as specified in HTML)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTop New value for property <code>top</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTop( sTop:sap.ui.core.CSSSize):sap.ui.commons.layout.PositionContainer;

	/**
	* Updates the position properties of the container according to the given position in JSON style.
	* @param	oPos JSON-like object which defines the position of the child control in the absolute layout. The object is expected to have one or more out of the attributes top, bottom, left, right (each with a value of type sap.ui.core.CSSSize). If no object is given, nothing is updated.
	* @return	Void
	*/
	public function updatePosition( oPos:Dynamic):Void;
}

typedef PositionContainerArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Defines the distance to the top of the layout (as specified in HTML)
	*/
	@:optional var top:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the distance to the bottom of the layout (as specified in HTML)
	*/
	@:optional var bottom:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the distance to the left of the layout (as specified in HTML)
	*/
	@:optional var left:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the distance to the right of the layout (as specified in HTML)
	*/
	@:optional var right:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates whether this container shall be centered horizontally within the AbsoluteLayout area. The values of the attributes left and right are ignored when this feature is activated.
	*/
	@:optional var centerHorizontally:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates whether this container should be centered vertically within the AbsoluteLayout area. The values of the attributes top and bottom are ignored when this feature is activated.
	*/
	@:optional var centerVertically:haxe.extern.EitherType<String,Bool>;

    /**
    * Child control of the position container
    */
	@:optional var control:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
