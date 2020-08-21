package sap.ui.commons;

@:native("sap.ui.commons.Carousel")

/**
* Carousel holds multiple controls and displays them vertically or horizontally next to each other. You can define how many content items should be displayed at once or let the Carousel determine that for you. Navigation is done through buttons or keys.
*/
extern class Carousel extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:CarouselArgs):Void {})
	public function new(?mSettings:CarouselArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.commons.Carousel;

	/**
	* Binds aggregation {@link #getContent content} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindContent( oBindingInfo:Dynamic):sap.ui.commons.Carousel;

	/**
	* Calculates and sets the size of the carousel, its items and its buttons
	* @return	Void
	*/
	public function calculateAndSetSize( ):Void;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.commons.Carousel;

	/**
	* Creates a new subclass of class sap.ui.commons.Carousel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAnimationDuration animationDuration}.

Duration for animation when navigating through the contents of the Carousel

Default value is <code>500</code>.
	* @return	Value of property <code>animationDuration</code>
	*/
	public function getAnimationDuration( ):Int;

	/**
	* Gets content of aggregation {@link #getContent content}.

Controls which are displayed inside the Carousel
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getDefaultItemHeight defaultItemHeight}.

Default height of the item in a carousel if no height can be determined

Default value is <code>150</code>.
	* @return	Value of property <code>defaultItemHeight</code>
	*/
	public function getDefaultItemHeight( ):Int;

	/**
	* Gets current value of property {@link #getDefaultItemWidth defaultItemWidth}.

Default width of the item in a carousel if no height can be determined

Default value is <code>150</code>.
	* @return	Value of property <code>defaultItemWidth</code>
	*/
	public function getDefaultItemWidth( ):Int;

	/**
	* Gets current value of property {@link #getFirstVisibleIndex firstVisibleIndex}.

The index of the element in the content aggreation which is displayed first on rendering

Default value is <code>0</code>.
	* @return	Value of property <code>firstVisibleIndex</code>
	*/
	public function getFirstVisibleIndex( ):Int;

	/**
	* Returns the focused DOM element
	* @return	The focused DOM element
	*/
	public function getFocusDomRef( ):Dynamic;

	/**
	* Gets current value of property {@link #getHandleSize handleSize}.

Determines the size of the handle in pixels. (Height for vertical carousel, width for horizontal carousel)

Default value is <code>22</code>.
	* @return	Value of property <code>handleSize</code>
	*/
	public function getHandleSize( ):Int;

	/**
	* Gets current value of property {@link #getHeight height}.

Determines the height of the Carousel
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.Carousel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getOrientation orientation}.

Determines the orientation of the Carousel. Can be either "horizontal" or "vertical"

Default value is <code>horizontal</code>.
	* @return	Value of property <code>orientation</code>
	*/
	public function getOrientation( ):sap.ui.commons.enums.Orientation;

	/**
	* Gets current value of property {@link #getVisibleItems visibleItems}.

If defined, the carousel displays the number of items defined. Items will be resized to fit the area.
	* @return	Value of property <code>visibleItems</code>
	*/
	public function getVisibleItems( ):Int;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the width of the Carousel
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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.commons.Carousel;

	/**
	* If the device supports touch gestures and left swipe is triggered shows the next carousel item
	* @param	oEvent null
	* @return	Void
	*/
	public function onswipeleft( oEvent:jquery.Event):Void;

	/**
	* If the device supports touch gestures and right swipe is triggered shows the previous carousel item
	* @param	oEvent null
	* @return	Void
	*/
	public function onswiperight( oEvent:jquery.Event):Void;

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
	* Sets a new value for property {@link #getAnimationDuration animationDuration}.

Duration for animation when navigating through the contents of the Carousel

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>500</code>.
	* @param	iAnimationDuration New value for property <code>animationDuration</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAnimationDuration( ?iAnimationDuration:Int):sap.ui.commons.Carousel;

	/**
	* Sets a new value for property {@link #getDefaultItemHeight defaultItemHeight}.

Default height of the item in a carousel if no height can be determined

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>150</code>.
	* @param	iDefaultItemHeight New value for property <code>defaultItemHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultItemHeight( ?iDefaultItemHeight:Int):sap.ui.commons.Carousel;

	/**
	* Sets a new value for property {@link #getDefaultItemWidth defaultItemWidth}.

Default width of the item in a carousel if no height can be determined

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>150</code>.
	* @param	iDefaultItemWidth New value for property <code>defaultItemWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultItemWidth( ?iDefaultItemWidth:Int):sap.ui.commons.Carousel;

	/**
	* Setter for property <code>firstVisibleIndex</code>.

Default value is <code>0</code>
	* @param	iFirstVisibleIndex new value for property <code>firstVisibleIndex</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setFirstVisibleIndex( iFirstVisibleIndex:Int):sap.ui.commons.Carousel;

	/**
	* Sets a new value for property {@link #getHandleSize handleSize}.

Determines the size of the handle in pixels. (Height for vertical carousel, width for horizontal carousel)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>22</code>.
	* @param	iHandleSize New value for property <code>handleSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHandleSize( ?iHandleSize:Int):sap.ui.commons.Carousel;

	/**
	* Sets a new value for property {@link #getHeight height}.

Determines the height of the Carousel

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.commons.Carousel;

	/**
	* Sets a new value for property {@link #getOrientation orientation}.

Determines the orientation of the Carousel. Can be either "horizontal" or "vertical"

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>horizontal</code>.
	* @param	sOrientation New value for property <code>orientation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOrientation( ?sOrientation:sap.ui.commons.enums.Orientation):sap.ui.commons.Carousel;

	/**
	* Sets a new value for property {@link #getVisibleItems visibleItems}.

If defined, the carousel displays the number of items defined. Items will be resized to fit the area.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iVisibleItems New value for property <code>visibleItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleItems( ?iVisibleItems:Int):sap.ui.commons.Carousel;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the width of the Carousel

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.Carousel;

	/**
	* Shows the element with the specified Id. This can be only used after the component is rendered.
	* @param	sElementId Id of the element to slide to.
	* @return	Void
	*/
	public function showElementWithId( sElementId:String):Void;

	/**
	* Shows the next item in carousel. This can be only used after the component is rendered.
	* @return	Void
	*/
	public function showNext( ):Void;

	/**
	* Shows the previous item in carousel. This can be only used after the component is rendered.
	* @return	Void
	*/
	public function showPrevious( ):Void;

	/**
	* Unbinds aggregation {@link #getContent content} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindContent( ):sap.ui.commons.Carousel;
}

typedef CarouselArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the orientation of the Carousel. Can be either "horizontal" or "vertical"
	*/
	@:optional var orientation:haxe.extern.EitherType<String,sap.ui.commons.enums.Orientation>;

	/**
	* Determines the width of the Carousel
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines the height of the Carousel
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Default height of the item in a carousel if no height can be determined
	*/
	@:optional var defaultItemHeight:haxe.extern.EitherType<String,Int>;

	/**
	* Default width of the item in a carousel if no height can be determined
	*/
	@:optional var defaultItemWidth:haxe.extern.EitherType<String,Int>;

	/**
	* Duration for animation when navigating through the contents of the Carousel
	*/
	@:optional var animationDuration:haxe.extern.EitherType<String,Int>;

	/**
	* If defined, the carousel displays the number of items defined. Items will be resized to fit the area.
	*/
	@:optional var visibleItems:haxe.extern.EitherType<String,Int>;

	/**
	* Determines the size of the handle in pixels. (Height for vertical carousel, width for horizontal carousel)
	*/
	@:optional var handleSize:haxe.extern.EitherType<String,Int>;

	/**
	* The index of the element in the content aggreation which is displayed first on rendering
	*/
	@:optional var firstVisibleIndex:haxe.extern.EitherType<String,Int>;

    /**
    * Controls which are displayed inside the Carousel
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
