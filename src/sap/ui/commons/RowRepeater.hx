package sap.ui.commons;

@:native("sap.ui.commons.RowRepeater")

/**
* This control displays items in a stacked list format, allowing the user to page in order to see more items or to use the offered filtering and sorting capabilities in order to manipulate the displayed data.
*/
extern class RowRepeater extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:RowRepeaterArgs):Void {})
	public function new(?mSettings:RowRepeaterArgs):Void;

	/**
	* Adds some filter to the aggregation {@link #getFilters filters}.
	* @param	oFilter The filter to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addFilter( oFilter:sap.ui.commons.RowRepeaterFilter):sap.ui.commons.RowRepeater;

	/**
	* Adds some row to the aggregation {@link #getRows rows}.
	* @param	oRow The row to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addRow( oRow:sap.ui.core.Control):sap.ui.commons.RowRepeater;

	/**
	* Adds some sorter to the aggregation {@link #getSorters sorters}.
	* @param	oSorter The sorter to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSorter( oSorter:sap.ui.commons.RowRepeaterSorter):sap.ui.commons.RowRepeater;

	/**
	* Applies a filter.
	* @param	sId The ID if the filter.
	* @return	Void
	*/
	public function applyFilter( sId:String):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:filter filter} event of this <code>sap.ui.commons.RowRepeater</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.RowRepeater</code> itself.

This event is triggered when a filter is set.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.RowRepeater</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFilter( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RowRepeater;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:page page} event of this <code>sap.ui.commons.RowRepeater</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.RowRepeater</code> itself.

This event is triggered when paging was executed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.RowRepeater</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPage( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RowRepeater;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:resize resize} event of this <code>sap.ui.commons.RowRepeater</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.RowRepeater</code> itself.

This event is triggered when the number of rows was changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.RowRepeater</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachResize( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RowRepeater;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:sort sort} event of this <code>sap.ui.commons.RowRepeater</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.RowRepeater</code> itself.

This event is triggered when a sorting is applied.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.RowRepeater</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSort( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RowRepeater;

	/**
	* Binds aggregation {@link #getRows rows} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindRows( oBindingInfo:Dynamic):sap.ui.commons.RowRepeater;

	/**
	* Destroys all the filters in the aggregation {@link #getFilters filters}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFilters( ):sap.ui.commons.RowRepeater;

	/**
	* Destroys the noData in the aggregation {@link #getNoData noData}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyNoData( ):sap.ui.commons.RowRepeater;

	/**
	* Destroys all the rows in the aggregation {@link #getRows rows}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRows( ):sap.ui.commons.RowRepeater;

	/**
	* Destroys all the sorters in the aggregation {@link #getSorters sorters}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySorters( ):sap.ui.commons.RowRepeater;

	/**
	* Destroys the title in the aggregation {@link #getTitle title}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitle( ):sap.ui.commons.RowRepeater;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:filter filter} event of this <code>sap.ui.commons.RowRepeater</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFilter( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RowRepeater;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:page page} event of this <code>sap.ui.commons.RowRepeater</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPage( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RowRepeater;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:resize resize} event of this <code>sap.ui.commons.RowRepeater</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachResize( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RowRepeater;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:sort sort} event of this <code>sap.ui.commons.RowRepeater</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSort( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RowRepeater;

	/**
	* Creates a new subclass of class sap.ui.commons.RowRepeater with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Switch to first page.
	* @return	Void
	*/
	public function firstPage( ):Void;

	/**
	* Gets current value of property {@link #getCurrentPage currentPage}.

The index of the page currently displayed. The index starts at 1.

Default value is <code>1</code>.
	* @return	Value of property <code>currentPage</code>
	*/
	public function getCurrentPage( ):Int;

	/**
	* Gets current value of property {@link #getDesign design}.

The visual design of the control.

Default value is <code>Standard</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.ui.commons.RowRepeaterDesign;

	/**
	* Gets content of aggregation {@link #getFilters filters}.

Filters to be provided in toolbar.
	* @return	null
	*/
	public function getFilters( ):Array<sap.ui.commons.RowRepeaterFilter>;

	/**
	* Gets current value of property {@link #getFixedRowHeight fixedRowHeight}.

Row height adapts to rendered content. If a fixed height is specified the cells have a maximum height and the overflow will be hidden.

Default value is <code>empty string</code>.
	* @return	Value of property <code>fixedRowHeight</code>
	*/
	public function getFixedRowHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.RowRepeater.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getNoData noData}.

This control is shown, in case there is no data available to be displayed in the RowRepeater.
	* @return	null
	*/
	public function getNoData( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getNumberOfRows numberOfRows}.

Number of rows displayed.

Default value is <code>5</code>.
	* @return	Value of property <code>numberOfRows</code>
	*/
	public function getNumberOfRows( ):Int;

	/**
	* Gets content of aggregation {@link #getRows rows}.

Rows to be repeated.
	* @return	null
	*/
	public function getRows( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getShowMoreSteps showMoreSteps}.

Step size used to increase the numberOfRows value. This feature is only active if value is greater than 0. This will deactivate the paging feature.

Default value is <code>0</code>.
	* @return	Value of property <code>showMoreSteps</code>
	*/
	public function getShowMoreSteps( ):Int;

	/**
	* Gets content of aggregation {@link #getSorters sorters}.

Sorters to be provided in secondary toolbar.
	* @return	null
	*/
	public function getSorters( ):Array<sap.ui.commons.RowRepeaterSorter>;

	/**
	* Gets current value of property {@link #getThreshold threshold}.

Threshold to fetch the next chunk of data. The minimal threshold can be the numberOfRows of the RR.
	* @return	Value of property <code>threshold</code>
	*/
	public function getThreshold( ):Int;

	/**
	* Gets content of aggregation {@link #getTitle title}.

Title to be displayed in top left corner. Either text or icon.
	* @return	null
	*/
	public function getTitle( ):sap.ui.core.Title;

	/**
	* Switch to specified page.
	* @param	iPageNumber The index of the page to go to.
	* @return	Void
	*/
	public function gotoPage( iPageNumber:Int):Void;

	/**
	* Checks for the provided <code>sap.ui.commons.RowRepeaterFilter</code> in the aggregation {@link #getFilters filters}. and returns its index if found or -1 otherwise.
	* @param	oFilter The filter whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfFilter( oFilter:sap.ui.commons.RowRepeaterFilter):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getRows rows}. and returns its index if found or -1 otherwise.
	* @param	oRow The row whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfRow( oRow:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.commons.RowRepeaterSorter</code> in the aggregation {@link #getSorters sorters}. and returns its index if found or -1 otherwise.
	* @param	oSorter The sorter whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSorter( oSorter:sap.ui.commons.RowRepeaterSorter):Int;

	/**
	* Inserts a filter into the aggregation {@link #getFilters filters}.
	* @param	oFilter The filter to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the filter should be inserted at; for a negative value of <code>iIndex</code>, the filter is inserted at position 0; for a value greater than the current size of the aggregation, the filter is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertFilter( oFilter:sap.ui.commons.RowRepeaterFilter, iIndex:Int):sap.ui.commons.RowRepeater;

	/**
	* Inserts a row into the aggregation {@link #getRows rows}.
	* @param	oRow The row to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the row should be inserted at; for a negative value of <code>iIndex</code>, the row is inserted at position 0; for a value greater than the current size of the aggregation, the row is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertRow( oRow:sap.ui.core.Control, iIndex:Int):sap.ui.commons.RowRepeater;

	/**
	* Inserts a sorter into the aggregation {@link #getSorters sorters}.
	* @param	oSorter The sorter to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the sorter should be inserted at; for a negative value of <code>iIndex</code>, the sorter is inserted at position 0; for a value greater than the current size of the aggregation, the sorter is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSorter( oSorter:sap.ui.commons.RowRepeaterSorter, iIndex:Int):sap.ui.commons.RowRepeater;

	/**
	* Switch to last page.
	* @return	Void
	*/
	public function lastPage( ):Void;

	/**
	* Switch to next page.
	* @return	Void
	*/
	public function nextPage( ):Void;

	/**
	* Switch to previous page.
	* @return	Void
	*/
	public function previousPage( ):Void;

	/**
	* Removes all the controls from the aggregation {@link #getFilters filters}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllFilters( ):Array<sap.ui.commons.RowRepeaterFilter>;

	/**
	* Removes all the controls from the aggregation {@link #getRows rows}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllRows( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getSorters sorters}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSorters( ):Array<sap.ui.commons.RowRepeaterSorter>;
	@:overload( function(vFilter:Int):sap.ui.commons.RowRepeaterFilter{ })
	@:overload( function(vFilter:String):sap.ui.commons.RowRepeaterFilter{ })

	/**
	* Removes a filter from the aggregation {@link #getFilters filters}.
	* @param	vFilter The filter to remove or its index or id
	* @return	The removed filter or <code>null</code>
	*/
	public function removeFilter( vFilter:sap.ui.commons.RowRepeaterFilter):sap.ui.commons.RowRepeaterFilter;
	@:overload( function(vRow:Int):sap.ui.core.Control{ })
	@:overload( function(vRow:String):sap.ui.core.Control{ })

	/**
	* Removes a row from the aggregation {@link #getRows rows}.
	* @param	vRow The row to remove or its index or id
	* @return	The removed row or <code>null</code>
	*/
	public function removeRow( vRow:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vSorter:Int):sap.ui.commons.RowRepeaterSorter{ })
	@:overload( function(vSorter:String):sap.ui.commons.RowRepeaterSorter{ })

	/**
	* Removes a sorter from the aggregation {@link #getSorters sorters}.
	* @param	vSorter The sorter to remove or its index or id
	* @return	The removed sorter or <code>null</code>
	*/
	public function removeSorter( vSorter:sap.ui.commons.RowRepeaterSorter):sap.ui.commons.RowRepeaterSorter;

	/**
	* Resizes the row repeater by changing the number of displayed rows. This method will only resize the RowRepeater if the property showMoreSteps is set.
	* @param	iNumberOfRows The new value of number of rows displayed.
	* @return	Void
	*/
	public function resize( iNumberOfRows:Int):Void;

	/**
	* Setter for property <code>currentPage</code>.
	* @param	iCurrentPage new value for property <code>currentPage</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setCurrentPage( iCurrentPage:Int):sap.ui.commons.RowRepeater;

	/**
	* Sets a new value for property {@link #getDesign design}.

The visual design of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( sDesign:sap.ui.commons.RowRepeaterDesign):sap.ui.commons.RowRepeater;

	/**
	* Sets a new value for property {@link #getFixedRowHeight fixedRowHeight}.

Row height adapts to rendered content. If a fixed height is specified the cells have a maximum height and the overflow will be hidden.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sFixedRowHeight New value for property <code>fixedRowHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFixedRowHeight( sFixedRowHeight:sap.ui.core.CSSSize):sap.ui.commons.RowRepeater;

	/**
	* Sets the aggregated {@link #getNoData noData}.
	* @param	oNoData The noData to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoData( oNoData:sap.ui.core.Control):sap.ui.commons.RowRepeater;

	/**
	* Setter for property <code>numberOfRows</code>.

Default value is <code>5</code>
	* @param	iNumberOfRows new value for property <code>numberOfRows</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setNumberOfRows( iNumberOfRows:Int):sap.ui.commons.RowRepeater;

	/**
	* Override the default behavior of <code>setShowMoreSteps</code> to update the paging mode flag. Any change to the paging mode flag will result in the current page being set to the first page.
	* @param	iShowMoreSteps new value for property <code>showMoreSteps</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setShowMoreSteps( iShowMoreSteps:Int):sap.ui.commons.RowRepeater;

	/**
	* Sets a new value for property {@link #getThreshold threshold}.

Threshold to fetch the next chunk of data. The minimal threshold can be the numberOfRows of the RR.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iThreshold New value for property <code>threshold</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setThreshold( iThreshold:Int):sap.ui.commons.RowRepeater;

	/**
	* Sets the aggregated {@link #getTitle title}.
	* @param	oTitle The title to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( oTitle:sap.ui.core.Title):sap.ui.commons.RowRepeater;

	/**
	* The <code>triggerShowMore</code> function increments the number of rows by the value of <code>showMoreSteps</code>.

This method will only trigger a showMore if the property showMoreSteps is set.
	* @return	<code>this</code> to allow method chaining
	*/
	public function triggerShowMore( ):sap.ui.commons.RowRepeater;

	/**
	* Sort the data.
	* @param	sId The ID of the sorter.
	* @return	Void
	*/
	public function triggerSort( sId:String):Void;

	/**
	* Unbinds aggregation {@link #getRows rows} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindRows( ):sap.ui.commons.RowRepeater;
}

typedef RowRepeaterArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Number of rows displayed.
	*/
	@:optional var numberOfRows:haxe.extern.EitherType<String,Int>;

	/**
	* The index of the page currently displayed. The index starts at 1.
	*/
	@:optional var currentPage:haxe.extern.EitherType<String,Int>;

	/**
	* Step size used to increase the numberOfRows value. This feature is only active if value is greater than 0. This will deactivate the paging feature.
	*/
	@:optional var showMoreSteps:haxe.extern.EitherType<String,Int>;

	/**
	* Row height adapts to rendered content. If a fixed height is specified the cells have a maximum height and the overflow will be hidden.
	*/
	@:optional var fixedRowHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The visual design of the control.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.ui.commons.RowRepeaterDesign>;

	/**
	* Threshold to fetch the next chunk of data. The minimal threshold can be the numberOfRows of the RR.
	*/
	@:optional var threshold:haxe.extern.EitherType<String,Int>;

    /**
    * Rows to be repeated.
    */
	@:optional var rows:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Title to be displayed in top left corner. Either text or icon.
    */
	@:optional var title:haxe.extern.EitherType<String,sap.ui.core.Title>;

    /**
    * Filters to be provided in toolbar.
    */
	@:optional var filters:Array<haxe.extern.EitherType<String,sap.ui.commons.RowRepeaterFilter>>;

    /**
    * Sorters to be provided in secondary toolbar.
    */
	@:optional var sorters:Array<haxe.extern.EitherType<String,sap.ui.commons.RowRepeaterSorter>>;

    /**
    * This control is shown, in case there is no data available to be displayed in the RowRepeater.
    */
	@:optional var noData:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * A Toolbar which used internally by the RowRepeater
    */
	@:optional var filterToolbar:haxe.extern.EitherType<String,sap.ui.commons.Toolbar>;

    /**
    * A Toolbar which used internally by the RowRepeater
    */
	@:optional var sorterToolbar:haxe.extern.EitherType<String,sap.ui.commons.Toolbar>;

    /**
    * A Button which used internally by the RowRepeater
    */
	@:optional var headerShowMoreButton:haxe.extern.EitherType<String,sap.ui.commons.Button>;

    /**
    * A Button which used internally by the RowRepeater
    */
	@:optional var footerShowMoreButton:haxe.extern.EitherType<String,sap.ui.commons.Button>;

    /**
    * A Paginator which used internally by the RowRepeater
    */
	@:optional var footerPager:haxe.extern.EitherType<String,sap.ui.commons.Paginator>;

	/**
	* This event is triggered when a filter is set.
	*/
	@:optional var filter:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is triggered when paging was executed.
	*/
	@:optional var page:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is triggered when the number of rows was changed.
	*/
	@:optional var resize:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is triggered when a sorting is applied.
	*/
	@:optional var sort:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
