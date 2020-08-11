package sap.ui.core;

@:native("sap.ui.core.ScrollBar")

/**
* The ScrollBar control can be used for virtual scrolling of a certain area. This means: to simulate a very large scrollable area when technically the area is small and the control takes care of displaying the respective part only. E.g. a Table control can take care of only rendering the currently visible rows and use this ScrollBar control to make the user think he actually scrolls through a long list.
*/
extern class ScrollBar extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ScrollBarArgs):Void {})
	public function new(?mSettings:ScrollBarArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:scroll scroll} event of this <code>sap.ui.core.ScrollBar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.ScrollBar</code> itself.

Scroll event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.ScrollBar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachScroll( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ScrollBar;

	/**
	* Binds the mouse wheel scroll event of the control that has the scrollbar to the scrollbar itself.
	* @param	oOwnerDomRef Dom ref of the control that uses the scrollbar
	* @return	Void
	*/
	public function bind( oOwnerDomRef:String):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:scroll scroll} event of this <code>sap.ui.core.ScrollBar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachScroll( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.ScrollBar;

	/**
	* Creates a new subclass of class sap.ui.core.ScrollBar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getContentSize contentSize}.

Size of the scrollable content (in pixels).
	* @return	Value of property <code>contentSize</code>
	*/
	public function getContentSize( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.core.ScrollBar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getScrollPosition scrollPosition}.

Scroll position in steps or pixels.
	* @return	Value of property <code>scrollPosition</code>
	*/
	public function getScrollPosition( ):Int;

	/**
	* Gets current value of property {@link #getSize size}.

Size of the Scrollbar (in pixels).
	* @return	Value of property <code>size</code>
	*/
	public function getSize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getSteps steps}.

Number of steps to scroll. Used if the size of the content is not known as the data is loaded dynamically.
	* @return	Value of property <code>steps</code>
	*/
	public function getSteps( ):Int;

	/**
	* Gets current value of property {@link #getVertical vertical}.

Orientation. Defines if the Scrollbar is vertical or horizontal.

Default value is <code>true</code>.
	* @return	Value of property <code>vertical</code>
	*/
	public function getVertical( ):Bool;

	/**
	* Page Down is used to scroll one page forward.
	* @return	Void
	*/
	public function pageDown( ):Void;

	/**
	* Page Up is used to scroll one page back.
	* @return	Void
	*/
	public function pageUp( ):Void;

	/**
	* Sets a new value for property {@link #getContentSize contentSize}.

Size of the scrollable content (in pixels).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentSize New value for property <code>contentSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentSize( sContentSize:sap.ui.core.CSSSize):sap.ui.core.ScrollBar;

	/**
	* Sets a new value for property {@link #getScrollPosition scrollPosition}.

Scroll position in steps or pixels.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iScrollPosition New value for property <code>scrollPosition</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScrollPosition( iScrollPosition:Int):sap.ui.core.ScrollBar;

	/**
	* Sets a new value for property {@link #getSize size}.

Size of the Scrollbar (in pixels).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSize New value for property <code>size</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSize( sSize:sap.ui.core.CSSSize):sap.ui.core.ScrollBar;

	/**
	* Sets a new value for property {@link #getSteps steps}.

Number of steps to scroll. Used if the size of the content is not known as the data is loaded dynamically.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iSteps New value for property <code>steps</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSteps( iSteps:Int):sap.ui.core.ScrollBar;

	/**
	* Sets a new value for property {@link #getVertical vertical}.

Orientation. Defines if the Scrollbar is vertical or horizontal.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVertical New value for property <code>vertical</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVertical( ?bVertical:Bool):sap.ui.core.ScrollBar;

	/**
	* Unbinds the mouse wheel scroll event of the control that has the scrollbar
	* @param	oOwnerDomRef Dom ref of the Control that uses the scrollbar
	* @return	Void
	*/
	public function unbind( oOwnerDomRef:String):Void;
}

typedef ScrollBarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Orientation. Defines if the Scrollbar is vertical or horizontal.
	*/
	@:optional var vertical:haxe.extern.EitherType<String,Bool>;

	/**
	* Scroll position in steps or pixels.
	*/
	@:optional var scrollPosition:haxe.extern.EitherType<String,Int>;

	/**
	* Size of the Scrollbar (in pixels).
	*/
	@:optional var size:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Size of the scrollable content (in pixels).
	*/
	@:optional var contentSize:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Number of steps to scroll. Used if the size of the content is not known as the data is loaded dynamically.
	*/
	@:optional var steps:haxe.extern.EitherType<String,Int>;

	/**
	* Scroll event.
	*/
	@:optional var scroll:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
