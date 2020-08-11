package sap.m;

@:native("sap.m.P13nColumnsPanel")

/**
* The <code>P13nColumnsPanel</code> control is used to define column-specific settings for table personalization.
*/
extern class P13nColumnsPanel extends sap.m.P13nPanel
{
	@:overload(function(?sId:String, ?mSettings:P13nColumnsPanelArgs):Void {})
	public function new(?mSettings:P13nColumnsPanelArgs):Void;

	/**
	* Adds some columnsItem to the aggregation {@link #getColumnsItems columnsItems}.
	* @param	oColumnsItem The columnsItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addColumnsItem( oColumnsItem:sap.m.P13nColumnsItem):sap.m.P13nColumnsPanel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:changeColumnsItems changeColumnsItems} event of this <code>sap.m.P13nColumnsPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nColumnsPanel</code> itself.

Event raised if <code>columnsItems</code> is changed or new one needs to be created in the model.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nColumnsPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChangeColumnsItems( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nColumnsPanel;

	/**
	* Binds aggregation {@link #getColumnsItems columnsItems} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindColumnsItems( oBindingInfo:Dynamic):sap.m.P13nColumnsPanel;

	/**
	* Destroys all the columnsItems in the aggregation {@link #getColumnsItems columnsItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyColumnsItems( ):sap.m.P13nColumnsPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:changeColumnsItems changeColumnsItems} event of this <code>sap.m.P13nColumnsPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChangeColumnsItems( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nColumnsPanel;

	/**
	* Creates a new subclass of class sap.m.P13nColumnsPanel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.P13nPanel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getColumnsItems columnsItems}.

List of columns that has been changed.
	* @return	null
	*/
	public function getColumnsItems( ):Array<sap.m.P13nColumnsItem>;

	/**
	* Returns a metadata object for class sap.m.P13nColumnsPanel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Delivers a payload for columnsPanel that can be used at consumer side
	* @return	oPayload, which contains useful information
	*/
	public function getOkPayload( ):Dynamic;

	/**
	* Delivers a payload for columnsPanel that can be used at consumer side
	* @return	oPayload, which contains useful information
	*/
	public function getResetPayload( ):Dynamic;

	/**
	* Gets current value of property {@link #getVisibleItemsThreshold visibleItemsThreshold}.

Specifies a threshold of visible items. If the end user makes a lot of columns visible, this might cause performance to slow down. When this happens, the user can receive a corresponding warning triggered by the <code>visibleItemsThreshold</code> property. The property needs to be activated and set to the required value by the consuming application to ensure that the warning message is shown when the threshold has been exceeded. In the following example the message will be shown if more than 100 visible columns are selected:

<pre>
customData&gt;
core:CustomData key=&quot;p13nDialogSettings&quot;
value='\{&quot;columns&quot;:\{&quot;visible&quot;: true, &quot;payload&quot;: \{&quot;visibleItemsThreshold&quot;: 3\}\}\}' /&gt;
/customData&gt;
</pre>

Default value is <code>-1</code>.
	* @return	Value of property <code>visibleItemsThreshold</code>
	*/
	public function getVisibleItemsThreshold( ):Int;

	/**
	* Checks for the provided <code>sap.m.P13nColumnsItem</code> in the aggregation {@link #getColumnsItems columnsItems}. and returns its index if found or -1 otherwise.
	* @param	oColumnsItem The columnsItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfColumnsItem( oColumnsItem:sap.m.P13nColumnsItem):Int;

	/**
	* Inserts a columnsItem into the aggregation {@link #getColumnsItems columnsItems}.
	* @param	oColumnsItem The columnsItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the columnsItem should be inserted at; for a negative value of <code>iIndex</code>, the columnsItem is inserted at position 0; for a value greater than the current size of the aggregation, the columnsItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertColumnsItem( oColumnsItem:sap.m.P13nColumnsItem, iIndex:Int):sap.m.P13nColumnsPanel;

	/**
	* This method does a re-initialization of the panel
	* @return	Void
	*/
	public function reInitialize( ):Void;

	/**
	* Removes all the controls from the aggregation {@link #getColumnsItems columnsItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllColumnsItems( ):Array<sap.m.P13nColumnsItem>;
	@:overload( function(vColumnsItem:Int):sap.m.P13nColumnsItem{ })
	@:overload( function(vColumnsItem:String):sap.m.P13nColumnsItem{ })

	/**
	* Removes a columnsItem from the aggregation {@link #getColumnsItems columnsItems}.
	* @param	vColumnsItem The columnsItem to remove or its index or id
	* @return	The removed columnsItem or <code>null</code>
	*/
	public function removeColumnsItem( vColumnsItem:sap.m.P13nColumnsItem):sap.m.P13nColumnsItem;

	/**
	* Sets a new value for property {@link #getVisibleItemsThreshold visibleItemsThreshold}.

Specifies a threshold of visible items. If the end user makes a lot of columns visible, this might cause performance to slow down. When this happens, the user can receive a corresponding warning triggered by the <code>visibleItemsThreshold</code> property. The property needs to be activated and set to the required value by the consuming application to ensure that the warning message is shown when the threshold has been exceeded. In the following example the message will be shown if more than 100 visible columns are selected:

<pre>
customData&gt;
core:CustomData key=&quot;p13nDialogSettings&quot;
value='\{&quot;columns&quot;:\{&quot;visible&quot;: true, &quot;payload&quot;: \{&quot;visibleItemsThreshold&quot;: 3\}\}\}' /&gt;
/customData&gt;
</pre>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	iVisibleItemsThreshold New value for property <code>visibleItemsThreshold</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleItemsThreshold( ?iVisibleItemsThreshold:Int):sap.m.P13nColumnsPanel;

	/**
	* Unbinds aggregation {@link #getColumnsItems columnsItems} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindColumnsItems( ):sap.m.P13nColumnsPanel;
}

typedef P13nColumnsPanelArgs = sap.m.P13nPanel.P13nPanelArgs & {

	/**
	* Specifies a threshold of visible items. If the end user makes a lot of columns visible, this might cause performance to slow down. When this happens, the user can receive a corresponding warning triggered by the <code>visibleItemsThreshold</code> property. The property needs to be activated and set to the required value by the consuming application to ensure that the warning message is shown when the threshold has been exceeded. In the following example the message will be shown if more than 100 visible columns are selected:

<pre>
customData&gt;
core:CustomData key=&quot;p13nDialogSettings&quot;
value='\{&quot;columns&quot;:\{&quot;visible&quot;: true, &quot;payload&quot;: \{&quot;visibleItemsThreshold&quot;: 3\}\}\}' /&gt;
/customData&gt;
</pre>
	*/
	@:optional var visibleItemsThreshold:haxe.extern.EitherType<String,Int>;

    /**
    * List of columns that has been changed.
    */
	@:optional var columnsItems:Array<haxe.extern.EitherType<String,sap.m.P13nColumnsItem>>;

    /**
    * Internal aggregation for the toolbar content.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event raised if <code>columnsItems</code> is changed or new one needs to be created in the model.
	*/
	@:optional var changeColumnsItems:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
