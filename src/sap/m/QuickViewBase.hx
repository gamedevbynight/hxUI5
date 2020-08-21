package sap.m;

@:native("sap.m.QuickViewBase")

/**
* QuickViewBase class provides base functionality for QuickView and QuickViewCard. Do not use it directly.
*/
extern class QuickViewBase extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:QuickViewBaseArgs):Void {})
	public function new(?mSettings:QuickViewBaseArgs):Void;

	/**
	* Adds some page to the aggregation {@link #getPages pages}.
	* @param	oPage The page to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addPage( oPage:sap.m.QuickViewPage):sap.m.QuickViewBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterNavigate afterNavigate} event of this <code>sap.m.QuickViewBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.QuickViewBase</code> itself.

The event is fired when navigation between two pages has completed. In case of animated transitions this event is fired with some delay after the "navigate" event.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.QuickViewBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterNavigate( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.QuickViewBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navigate navigate} event of this <code>sap.m.QuickViewBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.QuickViewBase</code> itself.

The event is fired when navigation between two pages has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.QuickViewBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNavigate( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.QuickViewBase;

	/**
	* Binds aggregation {@link #getPages pages} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindPages( oBindingInfo:Dynamic):sap.m.QuickViewBase;

	/**
	* Destroys all the pages in the aggregation {@link #getPages pages}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPages( ):sap.m.QuickViewBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterNavigate afterNavigate} event of this <code>sap.m.QuickViewBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterNavigate( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.QuickViewBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navigate navigate} event of this <code>sap.m.QuickViewBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNavigate( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.QuickViewBase;

	/**
	* Creates a new subclass of class sap.m.QuickViewBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.QuickViewBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getPages pages}.

Displays a page header, object icon or image, object name with short description, and object information divided in groups
	* @return	null
	*/
	public function getPages( ):Array<sap.m.QuickViewPage>;

	/**
	* Checks for the provided <code>sap.m.QuickViewPage</code> in the aggregation {@link #getPages pages}. and returns its index if found or -1 otherwise.
	* @param	oPage The page whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPage( oPage:sap.m.QuickViewPage):Int;

	/**
	* Inserts a page into the aggregation {@link #getPages pages}.
	* @param	oPage The page to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the page should be inserted at; for a negative value of <code>iIndex</code>, the page is inserted at position 0; for a value greater than the current size of the aggregation, the page is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertPage( oPage:sap.m.QuickViewPage, iIndex:Int):sap.m.QuickViewBase;

	/**
	* Navigates to the previous page if there is such.
	* @return	Void
	*/
	public function navigateBack( ):Void;

	/**
	* Removes all the controls from the aggregation {@link #getPages pages}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllPages( ):Array<sap.m.QuickViewPage>;
	@:overload( function(vPage:Int):sap.m.QuickViewPage{ })
	@:overload( function(vPage:String):sap.m.QuickViewPage{ })

	/**
	* Removes a page from the aggregation {@link #getPages pages}.
	* @param	vPage The page to remove or its index or id
	* @return	The removed page or <code>null</code>
	*/
	public function removePage( vPage:sap.m.QuickViewPage):sap.m.QuickViewPage;

	/**
	* Unbinds aggregation {@link #getPages pages} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindPages( ):sap.m.QuickViewBase;
}

typedef QuickViewBaseArgs = sap.ui.core.Control.ControlArgs & {

    /**
    * Displays a page header, object icon or image, object name with short description, and object information divided in groups
    */
	@:optional var pages:Array<haxe.extern.EitherType<String,sap.m.QuickViewPage>>;

	/**
	* The event is fired when navigation between two pages has completed. In case of animated transitions this event is fired with some delay after the "navigate" event.
	*/
	@:optional var afterNavigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is fired when navigation between two pages has been triggered. The transition (if any) to the new page has not started yet. This event can be aborted by the application with preventDefault(), which means that there will be no navigation.
	*/
	@:optional var navigate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
