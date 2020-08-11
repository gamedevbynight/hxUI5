package sap.ui.layout;

@:native("sap.ui.layout.Splitter")

/**
* <h3>Overview</h3> A layout that contains several content areas. The content that is added to the splitter should contain <code>layoutData</code> of type {@link sap.ui.layout.SplitterLayoutData SplitterLayoutData} which defines its size and size constraints. If such <code>layoutData</code> is not defined, it will be generated automatically.

By adding or changing the <code>layoutData</code> to the controls that make up the content areas, the size can be changed programmatically. Additionally the content areas can be made non-resizable individually and a minimal size (in px) can be set.

The orientation of the splitter can be set to horizontal (default) or vertical. All content areas of the splitter will be arranged in that way. In order to split vertically and horizontally at the same time, splitters need to be nested.

The splitter bars are focusable to enable resizing of the content areas via keyboard. The size of the content areas can be manipulated when the splitter bar is focused and Shift-Left/Down/Right/Up are pressed. When Shift-Home/End are pressed, the content areas are resized to their minimum or maximum size (Note, that resizing one auto-size content area next to another auto-size content area, might lead to the effect that the former does not take its maximum size but only the maximum size before recalculating the auto-sizes).

The splitter bars used for resizing the content areas by the user can be set to different widths (or heights in vertical mode) and the splitter will automatically resize the other content areas accordingly. In case the splitter bar is resized after the splitter has been rendered, a manual resize has to be triggered by invoking triggerResize() on the splitter.

<h3>Responsive Behavior</h3> On touch-enabled devices the bars of the splitter can be moved by touching the grip.
*/
extern class Splitter extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SplitterArgs):Void {})
	public function new(?mSettings:SplitterArgs):Void;

	/**
	* Adds some contentArea to the aggregation {@link #getContentAreas contentAreas}.
	* @param	oContentArea The contentArea to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContentArea( oContentArea:sap.ui.core.Control):sap.ui.layout.Splitter;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:resize resize} event of this <code>sap.ui.layout.Splitter</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.layout.Splitter</code> itself.

Event is fired when contents are resized.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.layout.Splitter</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachResize( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.layout.Splitter;

	/**
	* Destroys all the contentAreas in the aggregation {@link #getContentAreas contentAreas}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContentAreas( ):sap.ui.layout.Splitter;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:resize resize} event of this <code>sap.ui.layout.Splitter</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachResize( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.layout.Splitter;

	/**
	* Creates a new subclass of class sap.ui.layout.Splitter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContentAreas contentAreas}.

The content areas to be split. The control will show n-1 splitter bars between n controls in this aggregation.
	* @return	null
	*/
	public function getContentAreas( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getHeight height}.

The height of the control

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.layout.Splitter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getOrientation orientation}.

Whether to split the contents horizontally (default) or vertically.

Default value is <code>Horizontal</code>.
	* @return	Value of property <code>orientation</code>
	*/
	public function getOrientation( ):sap.ui.core.Orientation;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the control

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContentAreas contentAreas}. and returns its index if found or -1 otherwise.
	* @param	oContentArea The contentArea whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContentArea( oContentArea:sap.ui.core.Control):Int;

	/**
	* Inserts a contentArea into the aggregation {@link #getContentAreas contentAreas}.
	* @param	oContentArea The contentArea to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the contentArea should be inserted at; for a negative value of <code>iIndex</code>, the contentArea is inserted at position 0; for a value greater than the current size of the aggregation, the contentArea is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContentArea( oContentArea:sap.ui.core.Control, iIndex:Int):sap.ui.layout.Splitter;

	/**
	* Removes all the controls from the aggregation {@link #getContentAreas contentAreas}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContentAreas( ):Array<sap.ui.core.Control>;
	@:overload( function(vContentArea:Int):sap.ui.core.Control{ })
	@:overload( function(vContentArea:String):sap.ui.core.Control{ })

	/**
	* Removes a contentArea from the aggregation {@link #getContentAreas contentAreas}.
	* @param	vContentArea The contentArea to remove or its index or id
	* @return	The removed contentArea or <code>null</code>
	*/
	public function removeContentArea( vContentArea:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Resets the size (width or height) of each of the content areas.
	* @return	Void
	*/
	public function resetContentAreasSizes( ):Void;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height of the control

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.layout.Splitter;

	/**
	* Sets a new value for property {@link #getOrientation orientation}.

Whether to split the contents horizontally (default) or vertically.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Horizontal</code>.
	* @param	sOrientation New value for property <code>orientation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOrientation( ?sOrientation:sap.ui.core.Orientation):sap.ui.layout.Splitter;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the control

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.layout.Splitter;

	/**
	* This method triggers a resize on the Splitter - meaning it forces the Splitter to recalculate all sizes. This method should only be used in rare cases, for example when the CSS that defines the sizes of the splitter bars changes without triggering a rerendering of the splitter.
	* @param	forceDirectly Do not delay the resize, trigger it right now.
	* @return	Void
	*/
	public function triggerResize( ?forceDirectly:Bool):Void;
}

typedef SplitterArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Whether to split the contents horizontally (default) or vertically.
	*/
	@:optional var orientation:haxe.extern.EitherType<String,sap.ui.core.Orientation>;

	/**
	* The width of the control
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The height of the control
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * The content areas to be split. The control will show n-1 splitter bars between n controls in this aggregation.
    */
	@:optional var contentAreas:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when contents are resized.
	*/
	@:optional var resize:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
