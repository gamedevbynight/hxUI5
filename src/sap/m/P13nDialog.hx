package sap.m;

@:native("sap.m.P13nDialog")

/**
* The P13nDialog control provides a dialog that contains one or more panels. On each of the panels, one or more changes with regards to a table can be processed. For example, a panel to set a column to invisible, change the order of the columns or a panel to sort or filter tables.
*/
extern class P13nDialog extends sap.m.Dialog
{
	@:overload(function(?sId:String, ?mSettings:P13nDialogArgs):Void {})
	public function new(?mSettings:P13nDialogArgs):Void;

	/**
	* Adds some panel to the aggregation {@link #getPanels panels}.
	* @param	oPanel The panel to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addPanel( oPanel:sap.m.P13nPanel):sap.m.P13nDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cancel cancel} event of this <code>sap.m.P13nDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nDialog</code> itself.

Event fired if the 'cancel' button in <code>P13nDialog</code> is clicked.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCancel( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:ok ok} event of this <code>sap.m.P13nDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nDialog</code> itself.

Event fired if the 'ok' button in <code>P13nDialog</code> is clicked.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachOk( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:reset reset} event of this <code>sap.m.P13nDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nDialog</code> itself.

Event fired if the 'reset' button in <code>P13nDialog</code> is clicked.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachReset( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nDialog;

	/**
	* Binds aggregation {@link #getPanels panels} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindPanels( oBindingInfo:Dynamic):sap.m.P13nDialog;

	/**
	* Destroys all the panels in the aggregation {@link #getPanels panels}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPanels( ):sap.m.P13nDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cancel cancel} event of this <code>sap.m.P13nDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCancel( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:ok ok} event of this <code>sap.m.P13nDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachOk( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:reset reset} event of this <code>sap.m.P13nDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachReset( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nDialog;

	/**
	* Creates a new subclass of class sap.m.P13nDialog with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Dialog.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getInitialVisiblePanelType initialVisiblePanelType}.

This property determines which panel is initially shown when dialog is opened. If not defined then the first visible panel of <code>panels</code> aggregation is taken. Setting value after the dialog is opened has no effect anymore. Due to extensibility reason the type should be <code>string</code>. So it is feasible to add a custom panel without expanding the type.
	* @return	Value of property <code>initialVisiblePanelType</code>
	*/
	public function getInitialVisiblePanelType( ):String;

	/**
	* Returns a metadata object for class sap.m.P13nDialog.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getPanels panels}.

The dialog panels displayed in the dialog.
	* @return	null
	*/
	public function getPanels( ):Array<sap.m.P13nPanel>;

	/**
	* Gets current value of property {@link #getShowReset showReset}.

This property determines whether the 'Restore' button is shown inside the dialog. If this property is set to true, clicking the 'Reset' button will trigger the <code>reset</code> event sending a notification that model data must be reset.

Default value is <code>false</code>.
	* @return	Value of property <code>showReset</code>
	*/
	public function getShowReset( ):Bool;

	/**
	* Gets current value of property {@link #getShowResetEnabled showResetEnabled}.

This property determines whether the 'Restore' button is enabled and is taken into account only if <code>showReset</code> is set to <code>true</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>showResetEnabled</code>
	*/
	public function getShowResetEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getValidationExecutor validationExecutor}.

Calls the validation listener once all panel-relevant validation checks have been done. This callback function is called in order to perform cross-model validation checks.
	* @return	Value of property <code>validationExecutor</code>
	*/
	public function getValidationExecutor( ):Dynamic;

	/**
	* Returns visible panel.
	* @return	panel
	*/
	public function getVisiblePanel( ):Dynamic;

	/**
	* Checks for the provided <code>sap.m.P13nPanel</code> in the aggregation {@link #getPanels panels}. and returns its index if found or -1 otherwise.
	* @param	oPanel The panel whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPanel( oPanel:sap.m.P13nPanel):Int;

	/**
	* Inserts a panel into the aggregation {@link #getPanels panels}.
	* @param	oPanel The panel to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the panel should be inserted at; for a negative value of <code>iIndex</code>, the panel is inserted at position 0; for a value greater than the current size of the aggregation, the panel is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertPanel( oPanel:sap.m.P13nPanel, iIndex:Int):sap.m.P13nDialog;

	/**
	* Removes all the controls from the aggregation {@link #getPanels panels}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllPanels( ):Array<sap.m.P13nPanel>;
	@:overload( function(vPanel:Int):sap.m.P13nPanel{ })
	@:overload( function(vPanel:String):sap.m.P13nPanel{ })

	/**
	* Removes a panel from the aggregation {@link #getPanels panels}.
	* @param	vPanel The panel to remove or its index or id
	* @return	The removed panel or <code>null</code>
	*/
	public function removePanel( vPanel:sap.m.P13nPanel):sap.m.P13nPanel;

	/**
	* Sets a new value for property {@link #getInitialVisiblePanelType initialVisiblePanelType}.

This property determines which panel is initially shown when dialog is opened. If not defined then the first visible panel of <code>panels</code> aggregation is taken. Setting value after the dialog is opened has no effect anymore. Due to extensibility reason the type should be <code>string</code>. So it is feasible to add a custom panel without expanding the type.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sInitialVisiblePanelType New value for property <code>initialVisiblePanelType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialVisiblePanelType( sInitialVisiblePanelType:String):sap.m.P13nDialog;

	/**
	* Sets a new value for property {@link #getShowReset showReset}.

This property determines whether the 'Restore' button is shown inside the dialog. If this property is set to true, clicking the 'Reset' button will trigger the <code>reset</code> event sending a notification that model data must be reset.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowReset New value for property <code>showReset</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowReset( bShowReset:Bool):sap.m.P13nDialog;

	/**
	* Sets a new value for property {@link #getShowResetEnabled showResetEnabled}.

This property determines whether the 'Restore' button is enabled and is taken into account only if <code>showReset</code> is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowResetEnabled New value for property <code>showResetEnabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowResetEnabled( bShowResetEnabled:Bool):sap.m.P13nDialog;

	/**
	* Sets a new value for property {@link #getValidationExecutor validationExecutor}.

Calls the validation listener once all panel-relevant validation checks have been done. This callback function is called in order to perform cross-model validation checks.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oValidationExecutor New value for property <code>validationExecutor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValidationExecutor( oValidationExecutor:Dynamic):sap.m.P13nDialog;

	/**
	* Unbinds aggregation {@link #getPanels panels} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindPanels( ):sap.m.P13nDialog;
}

typedef P13nDialogArgs = sap.m.Dialog.DialogArgs & {

	/**
	* This property determines which panel is initially shown when dialog is opened. If not defined then the first visible panel of <code>panels</code> aggregation is taken. Setting value after the dialog is opened has no effect anymore. Due to extensibility reason the type should be <code>string</code>. So it is feasible to add a custom panel without expanding the type.
	*/
	@:optional var initialVisiblePanelType:String;

	/**
	* This property determines whether the 'Restore' button is shown inside the dialog. If this property is set to true, clicking the 'Reset' button will trigger the <code>reset</code> event sending a notification that model data must be reset.
	*/
	@:optional var showReset:haxe.extern.EitherType<String,Bool>;

	/**
	* This property determines whether the 'Restore' button is enabled and is taken into account only if <code>showReset</code> is set to <code>true</code>.
	*/
	@:optional var showResetEnabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Calls the validation listener once all panel-relevant validation checks have been done. This callback function is called in order to perform cross-model validation checks.
	*/
	@:optional var validationExecutor:haxe.extern.EitherType<String,Dynamic>;

    /**
    * The dialog panels displayed in the dialog.
    */
	@:optional var panels:Array<haxe.extern.EitherType<String,sap.m.P13nPanel>>;

	/**
	* Event fired if the 'cancel' button in <code>P13nDialog</code> is clicked.
	*/
	@:optional var cancel:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event fired if the 'ok' button in <code>P13nDialog</code> is clicked.
	*/
	@:optional var ok:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event fired if the 'reset' button in <code>P13nDialog</code> is clicked.
	*/
	@:optional var reset:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
