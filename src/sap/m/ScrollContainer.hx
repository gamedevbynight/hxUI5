package sap.m;

@:native("sap.m.ScrollContainer")

/**
* The ScrollContainer is a control that can display arbitrary content within a limited screen area and provides scrolling to make all content accessible. <h3>When not to use</h3> Do not nest scrolling areas that scroll in the same direction (e.g. a ScrollContainer that scrolls vertically inside a Page control with scrolling enabled).
*/
extern class ScrollContainer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ScrollContainerArgs):Void {})
	public function new(?mSettings:ScrollContainerArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.ScrollContainer;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.ScrollContainer;

	/**
	* Creates a new subclass of class sap.m.ScrollContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content of the ScrollContainer.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getFocusable focusable}.

Whether the scroll container can be focused.

Note that it should be set to "true" when there are no focusable elements inside or when keyboard interaction requires an additional tab stop on the container.

Default value is <code>false</code>.
	* @return	Value of property <code>focusable</code>
	*/
	public function getFocusable( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

The height of the ScrollContainer. By default the height equals the content height. If only horizontal scrolling is used, do not set the height or make sure the height is always larger than the height of the content.

Note that when a percentage is given, for the height to work as expected, the height of the surrounding container must be defined.

Default value is <code>auto</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getHorizontal horizontal}.

Whether horizontal scrolling should be possible.

Default value is <code>true</code>.
	* @return	Value of property <code>horizontal</code>
	*/
	public function getHorizontal( ):Bool;

	/**
	* Returns a metadata object for class sap.m.ScrollContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getVertical vertical}.

Whether vertical scrolling should be possible.

Note that this is off by default because typically a Page is used as fullscreen element which can handle vertical scrolling. If this is not the case and vertical scrolling is required, this flag needs to be set to "true". Important: it is not supported to have nested controls that both enable scrolling into the same dimension.

Default value is <code>false</code>.
	* @return	Value of property <code>vertical</code>
	*/
	public function getVertical( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the ScrollContainer. If not set, it consumes the complete available width, behaving like normal HTML block elements. If only vertical scrolling is enabled, make sure the content always fits or wraps.

Default value is <code>auto</code>.
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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.ScrollContainer;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Scrolls to the given position. When called while the control is not rendered (yet), the scrolling position is still applied, but there is no animation.
	* @param	x The horizontal pixel position to scroll to. Scrolling to the right happens with positive values. In right-to-left mode scrolling starts at the right side and higher values scroll to the left. If only vertical scrolling is enabled, give 0 as value.
	* @param	y The vertical pixel position to scroll to. Scrolling down happens with positive values. If only horizontal scrolling is enabled, give 0 as value.
	* @param	time The duration of animated scrolling. To scroll immediately without animation, give 0 as value. 0 is also the default value, when this optional parameter is omitted.
	* @return	<code>this</code> to facilitate method chaining
	*/
	public function scrollTo( x:Int, y:Int, time:Int):sap.m.ScrollContainer;
	@:overload( function(element:js.html.HtmlElement, ?time:Int):sap.m.ScrollContainer{ })

	/**
	* Scrolls to an element(DOM or sap.ui.core.Element) within the page if the element is rendered.
	* @param	element The element to which should be scrolled.
	* @param	time The duration of animated scrolling. To scroll immediately without animation, give 0 as value or leave it default.
	* @return	<code>this</code> to facilitate method chaining.
	*/
	public function scrollToElement( element:sap.ui.core.Element, ?time:Int):sap.m.ScrollContainer;

	/**
	* Sets a new value for property {@link #getFocusable focusable}.

Whether the scroll container can be focused.

Note that it should be set to "true" when there are no focusable elements inside or when keyboard interaction requires an additional tab stop on the container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFocusable New value for property <code>focusable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFocusable( bFocusable:Bool):sap.m.ScrollContainer;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height of the ScrollContainer. By default the height equals the content height. If only horizontal scrolling is used, do not set the height or make sure the height is always larger than the height of the content.

Note that when a percentage is given, for the height to work as expected, the height of the surrounding container must be defined.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.ScrollContainer;

	/**
	* Sets a new value for property {@link #getHorizontal horizontal}.

Whether horizontal scrolling should be possible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHorizontal New value for property <code>horizontal</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHorizontal( bHorizontal:Bool):sap.m.ScrollContainer;

	/**
	* Sets a new value for property {@link #getVertical vertical}.

Whether vertical scrolling should be possible.

Note that this is off by default because typically a Page is used as fullscreen element which can handle vertical scrolling. If this is not the case and vertical scrolling is required, this flag needs to be set to "true". Important: it is not supported to have nested controls that both enable scrolling into the same dimension.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bVertical New value for property <code>vertical</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVertical( bVertical:Bool):sap.m.ScrollContainer;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the ScrollContainer. If not set, it consumes the complete available width, behaving like normal HTML block elements. If only vertical scrolling is enabled, make sure the content always fits or wraps.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.ScrollContainer;
}

typedef ScrollContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The width of the ScrollContainer. If not set, it consumes the complete available width, behaving like normal HTML block elements. If only vertical scrolling is enabled, make sure the content always fits or wraps.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The height of the ScrollContainer. By default the height equals the content height. If only horizontal scrolling is used, do not set the height or make sure the height is always larger than the height of the content.

Note that when a percentage is given, for the height to work as expected, the height of the surrounding container must be defined.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Whether horizontal scrolling should be possible.
	*/
	@:optional var horizontal:haxe.extern.EitherType<String,Bool>;

	/**
	* Whether vertical scrolling should be possible.

Note that this is off by default because typically a Page is used as fullscreen element which can handle vertical scrolling. If this is not the case and vertical scrolling is required, this flag needs to be set to "true". Important: it is not supported to have nested controls that both enable scrolling into the same dimension.
	*/
	@:optional var vertical:haxe.extern.EitherType<String,Bool>;

	/**
	* Whether the scroll container can be focused.

Note that it should be set to "true" when there are no focusable elements inside or when keyboard interaction requires an additional tab stop on the container.
	*/
	@:optional var focusable:haxe.extern.EitherType<String,Bool>;

    /**
    * The content of the ScrollContainer.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
