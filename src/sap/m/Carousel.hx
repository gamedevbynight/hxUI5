package sap.m;

@:native("sap.m.Carousel")

/**
* The carousel allows the user to browse through a set of items by swiping right or left. <h3>Overview</h3> The control is mostly used for showing a gallery of images, but can hold any sap.m control. <h3>Structure</h3> The carousel consists of a the following elements: <ul> <li>Content area - displays the different items.</li> <li>Navigation - arrows to the left and right for switching between items.</li> <li>(optional) Paging - indicator at the bottom to show the current position in the set.</li> </ul> The paging indicator can be configured as follows: <ul> <li><code>showPageIndicator</code> - determines if the indicator is displayed.</li> <li>If the pages are less than 9, the page indicator is represented with bullets.</li> <li>If the pages are 9 or more, the page indicator is numeric.</li> <li><code>pageIndicatorPlacement</code> - determines where the indicator is located. Default (<code>sap.m.PlacementType.Bottom</code>) - below the content.</li> </ul> Additionally, you can also change the location of the navigation arrows. By setting <code>arrowsPlacement</code> to <code>sap.m.CarouselArrowsPlacement.PageIndicator</code>, the arrows will be located at the bottom by the paging indicator. Note: When the content is of type <code>sap.m.Image</code> add "Image" text at the end of the <code>"alt"</code> description in order to provide accessibility info for the UI element. <h3>Usage</h3> <h4> When to use</h4> <ul> <li>The items you want to display are very different from each other.</li> <li>You want to display the items one after the other.</li> </ul> <h4> When not to use</h4> <ul> <li>The items you want to display need to be visible at the same time.</li> <li>The items you want to display are uniform and very similar</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>On touch devices, navigation is performed with swipe gestures (swipe right or swipe left).</li> <li>On desktop, navigation is done with the navigation arrows.</li> <li>The paging indicator (when activated) is visible on each form factor.</li> </ul>
*/
extern class Carousel extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:CarouselArgs):Void {})
	public function new(?mSettings:CarouselArgs):Void;

	/**
	* Adds some page to the aggregation {@link #getPages pages}.
	* @param	oPage The page to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addPage( oPage:sap.ui.core.Control):sap.m.Carousel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforePageChanged beforePageChanged} event of this <code>sap.m.Carousel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Carousel</code> itself.

This event is fired before a carousel swipe has been completed. It is triggered both by physical swipe events and through API carousel manipulations such as calling 'next', 'previous' or 'setActivePageId' functions.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Carousel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforePageChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Carousel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:pageChanged pageChanged} event of this <code>sap.m.Carousel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Carousel</code> itself.

This event is fired after a carousel swipe has been completed. It is triggered both by physical swipe events and through API carousel manipulations such as calling 'next', 'previous' or 'setActivePageId' functions.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Carousel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPageChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Carousel;

	/**
	* Destroys the customLayout in the aggregation {@link #getCustomLayout customLayout}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomLayout( ):sap.m.Carousel;

	/**
	* Destroys all the pages in the aggregation {@link #getPages pages}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPages( ):sap.m.Carousel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforePageChanged beforePageChanged} event of this <code>sap.m.Carousel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforePageChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Carousel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:pageChanged pageChanged} event of this <code>sap.m.Carousel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPageChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Carousel;

	/**
	* Creates a new subclass of class sap.m.Carousel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* ID of the element which is the current target of the association {@link #getActivePage activePage}, or <code>null</code>.
	* @return	null
	*/
	public function getActivePage( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getArrowsPlacement arrowsPlacement}.

Defines where the carousel's arrows are placed. Default is <code>sap.m.CarouselArrowsPlacement.Content</code> used to place the arrows on the sides of the carousel. Alternatively <code>sap.m.CarouselArrowsPlacement.PageIndicator</code> can be used to place the arrows on the sides of the page indicator.

Default value is <code>Content</code>.
	* @return	Value of property <code>arrowsPlacement</code>
	*/
	public function getArrowsPlacement( ):sap.m.CarouselArrowsPlacement;

	/**
	* Gets content of aggregation {@link #getCustomLayout customLayout}.

Defines how many pages are displayed in the visible area of the <code>Carousel</code> control.

<b>Note:</b> When this property is used, the <code>loop</code> property is ignored.
	* @return	null
	*/
	public function getCustomLayout( ):sap.m.CarouselLayout;

	/**
	* Gets current value of property {@link #getHeight height}.

The height of the carousel. Note that when a percentage value is used, the height of the surrounding container must be defined.

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getLoop loop}.

Defines whether the carousel should loop, i.e show the first page after the last page is reached and vice versa.

Default value is <code>false</code>.
	* @return	Value of property <code>loop</code>
	*/
	public function getLoop( ):Bool;

	/**
	* Returns a metadata object for class sap.m.Carousel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getPageIndicatorPlacement pageIndicatorPlacement}.

Defines where the carousel's page indicator is displayed. Possible values are sap.m.PlacementType.Top, sap.m.PlacementType.Bottom. Other values are ignored and the default value will be applied. The default value is sap.m.PlacementType.Bottom.

Default value is <code>Bottom</code>.
	* @return	Value of property <code>pageIndicatorPlacement</code>
	*/
	public function getPageIndicatorPlacement( ):sap.m.PlacementType;

	/**
	* Gets content of aggregation {@link #getPages pages}.

The content which the carousel displays.
	* @return	null
	*/
	public function getPages( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getShowPageIndicator showPageIndicator}.

Show or hide carousel's page indicator.

Default value is <code>true</code>.
	* @return	Value of property <code>showPageIndicator</code>
	*/
	public function getShowPageIndicator( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the carousel. Note that when a percentage value is used, the height of the surrounding container must be defined.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getPages pages}. and returns its index if found or -1 otherwise.
	* @param	oPage The page whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPage( oPage:sap.ui.core.Control):Int;

	/**
	* Inserts a page into the aggregation {@link #getPages pages}.
	* @param	oPage The page to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the page should be inserted at; for a negative value of <code>iIndex</code>, the page is inserted at position 0; for a value greater than the current size of the aggregation, the page is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertPage( oPage:sap.ui.core.Control, iIndex:Int):sap.m.Carousel;

	/**
	* Call this method to display the next page (corresponds to a swipe right). Returns 'this' for method chaining.
	* @return	null
	*/
	public function next( ):sap.m.Carousel;

	/**
	* Call this method to display the previous page (corresponds to a swipe left). Returns 'this' for method chaining.
	* @return	null
	*/
	public function previous( ):sap.m.Carousel;

	/**
	* Removes all the controls from the aggregation {@link #getPages pages}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllPages( ):Array<sap.ui.core.Control>;
	@:overload( function(vPage:Int):sap.ui.core.Control{ })
	@:overload( function(vPage:String):sap.ui.core.Control{ })

	/**
	* Removes a page from the aggregation {@link #getPages pages}.
	* @param	vPage The page to remove or its index or id
	* @return	The removed page or <code>null</code>
	*/
	public function removePage( vPage:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(oActivePage:sap.ui.core.ID):sap.m.Carousel{ })

	/**
	* Sets the associated {@link #getActivePage activePage}.
	* @param	oActivePage ID of an element which becomes the new target of this activePage association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActivePage( oActivePage:sap.ui.core.Control):sap.m.Carousel;

	/**
	* Sets a new value for property {@link #getArrowsPlacement arrowsPlacement}.

Defines where the carousel's arrows are placed. Default is <code>sap.m.CarouselArrowsPlacement.Content</code> used to place the arrows on the sides of the carousel. Alternatively <code>sap.m.CarouselArrowsPlacement.PageIndicator</code> can be used to place the arrows on the sides of the page indicator.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Content</code>.
	* @param	sArrowsPlacement New value for property <code>arrowsPlacement</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setArrowsPlacement( sArrowsPlacement:sap.m.CarouselArrowsPlacement):sap.m.Carousel;

	/**
	* Sets the aggregated {@link #getCustomLayout customLayout}.
	* @param	oCustomLayout The customLayout to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomLayout( oCustomLayout:sap.m.CarouselLayout):sap.m.Carousel;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height of the carousel. Note that when a percentage value is used, the height of the surrounding container must be defined.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.Carousel;

	/**
	* Sets a new value for property {@link #getLoop loop}.

Defines whether the carousel should loop, i.e show the first page after the last page is reached and vice versa.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bLoop New value for property <code>loop</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLoop( bLoop:Bool):sap.m.Carousel;

	/**
	* Sets a new value for property {@link #getPageIndicatorPlacement pageIndicatorPlacement}.

Defines where the carousel's page indicator is displayed. Possible values are sap.m.PlacementType.Top, sap.m.PlacementType.Bottom. Other values are ignored and the default value will be applied. The default value is sap.m.PlacementType.Bottom.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Bottom</code>.
	* @param	sPageIndicatorPlacement New value for property <code>pageIndicatorPlacement</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPageIndicatorPlacement( sPageIndicatorPlacement:sap.m.PlacementType):sap.m.Carousel;

	/**
	* Sets a new value for property {@link #getShowPageIndicator showPageIndicator}.

Show or hide carousel's page indicator.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowPageIndicator New value for property <code>showPageIndicator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowPageIndicator( bShowPageIndicator:Bool):sap.m.Carousel;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the carousel. Note that when a percentage value is used, the height of the surrounding container must be defined.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.Carousel;
}

typedef CarouselArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The height of the carousel. Note that when a percentage value is used, the height of the surrounding container must be defined.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The width of the carousel. Note that when a percentage value is used, the height of the surrounding container must be defined.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines whether the carousel should loop, i.e show the first page after the last page is reached and vice versa.
	*/
	@:optional var loop:haxe.extern.EitherType<String,Bool>;

	/**
	* Show or hide carousel's page indicator.
	*/
	@:optional var showPageIndicator:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines where the carousel's page indicator is displayed. Possible values are sap.m.PlacementType.Top, sap.m.PlacementType.Bottom. Other values are ignored and the default value will be applied. The default value is sap.m.PlacementType.Bottom.
	*/
	@:optional var pageIndicatorPlacement:haxe.extern.EitherType<String,sap.m.PlacementType>;

	/**
	* Defines where the carousel's arrows are placed. Default is <code>sap.m.CarouselArrowsPlacement.Content</code> used to place the arrows on the sides of the carousel. Alternatively <code>sap.m.CarouselArrowsPlacement.PageIndicator</code> can be used to place the arrows on the sides of the page indicator.
	*/
	@:optional var arrowsPlacement:haxe.extern.EitherType<String,sap.m.CarouselArrowsPlacement>;

    /**
    * The content which the carousel displays.
    */
	@:optional var pages:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Defines how many pages are displayed in the visible area of the <code>Carousel</code> control.

<b>Note:</b> When this property is used, the <code>loop</code> property is ignored.
    */
	@:optional var customLayout:haxe.extern.EitherType<String,sap.m.CarouselLayout>;

	/**
	* Provides getter and setter for the currently displayed page. For the setter, argument may be the control itself, which must be member of the carousel's page list, or the control's id. The getter will return the control id
	*/
	@:optional var activePage:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* This event is fired before a carousel swipe has been completed. It is triggered both by physical swipe events and through API carousel manipulations such as calling 'next', 'previous' or 'setActivePageId' functions.
	*/
	@:optional var beforePageChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired after a carousel swipe has been completed. It is triggered both by physical swipe events and through API carousel manipulations such as calling 'next', 'previous' or 'setActivePageId' functions.
	*/
	@:optional var pageChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
