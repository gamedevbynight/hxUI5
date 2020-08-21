package sap.m;

@:native("sap.m.P13nDimMeasurePanel")

/**
* The P13nDimMeasurePanel control is used to define chart-specific settings like chart type, the visibility, the order and roles of dimensions and measures for table personalization.
*/
extern class P13nDimMeasurePanel extends sap.m.P13nPanel
{
	@:overload(function(?sId:String, ?mSettings:P13nDimMeasurePanelArgs):Void {})
	public function new(?mSettings:P13nDimMeasurePanelArgs):Void;

	/**
	* Adds some availableChartType to the aggregation {@link #getAvailableChartTypes availableChartTypes}.
	* @param	oAvailableChartType The availableChartType to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAvailableChartType( oAvailableChartType:sap.ui.core.Item):sap.m.P13nDimMeasurePanel;

	/**
	* Adds some dimMeasureItem to the aggregation {@link #getDimMeasureItems dimMeasureItems}.
	* @param	oDimMeasureItem The dimMeasureItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addDimMeasureItem( oDimMeasureItem:sap.m.P13nDimMeasureItem):sap.m.P13nDimMeasurePanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:changeChartType changeChartType} event of this <code>sap.m.P13nDimMeasurePanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nDimMeasurePanel</code> itself.

Event raised when a <code>ChartType</code> has been updated.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nDimMeasurePanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChangeChartType( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nDimMeasurePanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:changeDimMeasureItems changeDimMeasureItems} event of this <code>sap.m.P13nDimMeasurePanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nDimMeasurePanel</code> itself.

Event raised when one or more <code>DimMeasureItems</code> has been updated. Aggregation <code>DimMeasureItems</code> should be updated outside...
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nDimMeasurePanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChangeDimMeasureItems( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nDimMeasurePanel;

	/**
	* Binds aggregation {@link #getDimMeasureItems dimMeasureItems} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindDimMeasureItems( oBindingInfo:Dynamic):sap.m.P13nDimMeasurePanel;

	/**
	* Destroys all the availableChartTypes in the aggregation {@link #getAvailableChartTypes availableChartTypes}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAvailableChartTypes( ):sap.m.P13nDimMeasurePanel;

	/**
	* Destroys all the dimMeasureItems in the aggregation {@link #getDimMeasureItems dimMeasureItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDimMeasureItems( ):sap.m.P13nDimMeasurePanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:changeChartType changeChartType} event of this <code>sap.m.P13nDimMeasurePanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChangeChartType( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nDimMeasurePanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:changeDimMeasureItems changeDimMeasureItems} event of this <code>sap.m.P13nDimMeasurePanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChangeDimMeasureItems( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.P13nDimMeasurePanel;

	/**
	* Creates a new subclass of class sap.m.P13nDimMeasurePanel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.P13nPanel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getAvailableChartTypes availableChartTypes}.

Specifies available chart types.
	* @return	null
	*/
	public function getAvailableChartTypes( ):Array<sap.ui.core.Item>;

	/**
	* Gets current value of property {@link #getChartTypeKey chartTypeKey}.

Specifies a chart type key.

Default value is <code>empty string</code>.
	* @return	Value of property <code>chartTypeKey</code>
	*/
	public function getChartTypeKey( ):String;

	/**
	* Gets content of aggregation {@link #getDimMeasureItems dimMeasureItems}.

List of columns that has been changed.
	* @return	null
	*/
	public function getDimMeasureItems( ):Array<sap.m.P13nDimMeasureItem>;

	/**
	* Returns a metadata object for class sap.m.P13nDimMeasurePanel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getAvailableChartTypes availableChartTypes}. and returns its index if found or -1 otherwise.
	* @param	oAvailableChartType The availableChartType whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAvailableChartType( oAvailableChartType:sap.ui.core.Item):Int;

	/**
	* Checks for the provided <code>sap.m.P13nDimMeasureItem</code> in the aggregation {@link #getDimMeasureItems dimMeasureItems}. and returns its index if found or -1 otherwise.
	* @param	oDimMeasureItem The dimMeasureItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfDimMeasureItem( oDimMeasureItem:sap.m.P13nDimMeasureItem):Int;

	/**
	* Inserts a availableChartType into the aggregation {@link #getAvailableChartTypes availableChartTypes}.
	* @param	oAvailableChartType The availableChartType to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the availableChartType should be inserted at; for a negative value of <code>iIndex</code>, the availableChartType is inserted at position 0; for a value greater than the current size of the aggregation, the availableChartType is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAvailableChartType( oAvailableChartType:sap.ui.core.Item, iIndex:Int):sap.m.P13nDimMeasurePanel;

	/**
	* Inserts a dimMeasureItem into the aggregation {@link #getDimMeasureItems dimMeasureItems}.
	* @param	oDimMeasureItem The dimMeasureItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the dimMeasureItem should be inserted at; for a negative value of <code>iIndex</code>, the dimMeasureItem is inserted at position 0; for a value greater than the current size of the aggregation, the dimMeasureItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertDimMeasureItem( oDimMeasureItem:sap.m.P13nDimMeasureItem, iIndex:Int):sap.m.P13nDimMeasurePanel;

	/**
	* Removes all the controls from the aggregation {@link #getAvailableChartTypes availableChartTypes}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAvailableChartTypes( ):Array<sap.ui.core.Item>;

	/**
	* Removes all the controls from the aggregation {@link #getDimMeasureItems dimMeasureItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllDimMeasureItems( ):Array<sap.m.P13nDimMeasureItem>;
	@:overload( function(vAvailableChartType:Int):sap.ui.core.Item{ })
	@:overload( function(vAvailableChartType:String):sap.ui.core.Item{ })

	/**
	* Removes a availableChartType from the aggregation {@link #getAvailableChartTypes availableChartTypes}.
	* @param	vAvailableChartType The availableChartType to remove or its index or id
	* @return	The removed availableChartType or <code>null</code>
	*/
	public function removeAvailableChartType( vAvailableChartType:sap.ui.core.Item):sap.ui.core.Item;
	@:overload( function(vDimMeasureItem:Int):sap.m.P13nDimMeasureItem{ })
	@:overload( function(vDimMeasureItem:String):sap.m.P13nDimMeasureItem{ })

	/**
	* Removes a dimMeasureItem from the aggregation {@link #getDimMeasureItems dimMeasureItems}.
	* @param	vDimMeasureItem The dimMeasureItem to remove or its index or id
	* @return	The removed dimMeasureItem or <code>null</code>
	*/
	public function removeDimMeasureItem( vDimMeasureItem:sap.m.P13nDimMeasureItem):sap.m.P13nDimMeasureItem;

	/**
	* Sets a new value for property {@link #getChartTypeKey chartTypeKey}.

Specifies a chart type key.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sChartTypeKey New value for property <code>chartTypeKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setChartTypeKey( ?sChartTypeKey:String):sap.m.P13nDimMeasurePanel;

	/**
	* Unbinds aggregation {@link #getDimMeasureItems dimMeasureItems} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindDimMeasureItems( ):sap.m.P13nDimMeasurePanel;
}

typedef P13nDimMeasurePanelArgs = sap.m.P13nPanel.P13nPanelArgs & {

	/**
	* Specifies a chart type key.
	*/
	@:optional var chartTypeKey:String;

    /**
    * List of columns that has been changed.
    */
	@:optional var dimMeasureItems:Array<haxe.extern.EitherType<String,sap.m.P13nDimMeasureItem>>;

    /**
    * Internal aggregation for the toolbar content.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Specifies available chart types.
    */
	@:optional var availableChartTypes:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

	/**
	* Event raised when a <code>ChartType</code> has been updated.
	*/
	@:optional var changeChartType:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event raised when one or more <code>DimMeasureItems</code> has been updated. Aggregation <code>DimMeasureItems</code> should be updated outside...
	*/
	@:optional var changeDimMeasureItems:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
