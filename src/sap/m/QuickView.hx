package sap.m;

@:native("sap.m.QuickView")

/**
* A responsive popover that displays information on an object in a business-card format. <h3>Overview</h3> The quick view is used to show business information on either a person or an entity (e.g. a company). It uses a set of pre-defined controls. Objects can be linked together and you can navigate between several objects. An unlimited number of objects can be linked. <h3>Structure</h3> Each card is represented by a {@link sap.m.QuickViewPage} which holds all the information (icon, title, header, description) for the object. A single quick view can hold multiple objects, each showing information on a single entity. <h3>Usage</h3> <h4>When to use</h4> <ul> <li>You want to display a concise overview of an object (an employee or a company).</li> <li>Information on the object can be split into concrete groups.</li> </ul> <h4>When not to use</h4> <ul> <li>You want to display complex information about an object.</li> </ul> <h3>Responsive Behavior</h3> The quick view is displayed in a {@link sap.m.Popover popover} on desktop and a full-screen {@link sap.m.Dialog dialog} on mobile devices.
*/
extern class QuickView extends sap.m.QuickViewBase
{
	@:overload(function(?sId:String, ?mSettings:QuickViewArgs):Void {})
	public function new(?mSettings:QuickViewArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterClose afterClose} event of this <code>sap.m.QuickView</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.QuickView</code> itself.

This event fires after the QuickView is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.QuickView</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.QuickView;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterOpen afterOpen} event of this <code>sap.m.QuickView</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.QuickView</code> itself.

This event fires after the QuickView is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.QuickView</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.QuickView;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeClose beforeClose} event of this <code>sap.m.QuickView</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.QuickView</code> itself.

This event fires before the QuickView is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.QuickView</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.QuickView;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.QuickView</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.QuickView</code> itself.

This event fires before the QuickView is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.QuickView</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.QuickView;

	/**
	* Closes the QuickView.
	* @return	Pointer to the control instance for chaining
	*/
	public function close( ):sap.m.QuickView;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterClose afterClose} event of this <code>sap.m.QuickView</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.QuickView;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterOpen afterOpen} event of this <code>sap.m.QuickView</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.QuickView;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeClose beforeClose} event of this <code>sap.m.QuickView</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.QuickView;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.QuickView</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.m.QuickView;

	/**
	* Creates a new subclass of class sap.m.QuickView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.QuickViewBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.QuickView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getPlacement placement}.

This property is reused from sap.m.Popover and only takes effect when running on desktop or tablet. Please refer the documentation of the placement property of sap.m.Popover.

Default value is <code>Right</code>.
	* @return	Value of property <code>placement</code>
	*/
	public function getPlacement( ):sap.m.PlacementType;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the QuickView. The property takes effect only when running on desktop or tablet.

Default value is <code>320px</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Opens the QuickView.
	* @param	oControl The control which opens the QuickView.
	* @return	Pointer to the control instance for chaining
	*/
	public function openBy( oControl:sap.ui.core.Control):sap.m.QuickView;

	/**
	* The method sets placement position of the QuickView.
	* @param	sPlacement The side from which the QuickView appears relative to the control that opens it.
	* @return	Pointer to the control instance for chaining.
	*/
	public function setPlacement( sPlacement:sap.m.PlacementType):sap.m.QuickView;

	/**
	* The method sets the width of the QuickView. Works only on desktop or tablet.
	* @param	sWidth The new width of the QuickView.
	* @return	Pointer to the control instance for chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.QuickView;
}

typedef QuickViewArgs = sap.m.QuickViewBase.QuickViewBaseArgs & {

	/**
	* This property is reused from sap.m.Popover and only takes effect when running on desktop or tablet. Please refer the documentation of the placement property of sap.m.Popover.
	*/
	@:optional var placement:haxe.extern.EitherType<String,sap.m.PlacementType>;

	/**
	* The width of the QuickView. The property takes effect only when running on desktop or tablet.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* This event fires after the QuickView is closed.
	*/
	@:optional var afterClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event fires after the QuickView is opened.
	*/
	@:optional var afterOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event fires before the QuickView is closed.
	*/
	@:optional var beforeClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event fires before the QuickView is opened.
	*/
	@:optional var beforeOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
