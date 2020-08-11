package sap.ui.table.plugins;

@:native("sap.ui.table.plugins.MultiSelectionPlugin")

/**
* Implements a plugin to enable a special multi-selection behavior: <ul> <li>No Select All checkbox, select all can only be done via range selection</li> <li>Dedicated Deselect All button to clear the selection</li> <li>The number of indices which can be selected in a range is defined by the <code>limit</code> property by the application. If the user tries to select more indices, the selection is automatically limited, and the table scrolls to the last selected index.</li> <li>The plugin makes sure that the corresponding binding contexts up to the given limit are available, by requesting them from the binding.</li> <li>Multiple consecutive selections are possible</li> </ul>

This plugin is intended for the multi-selection mode, but also supports single selection for ease of use. When this plugin is applied to the table, the table's selection mode is automatically set to MultiToggle and cannot be changed.
*/
extern class MultiSelectionPlugin extends sap.ui.table.plugins.SelectionPlugin
{
public function new():Void;

	/**
	* Adds the given selection interval to the selection and requests the corresponding binding contexts. In single-selection mode it requests the context and sets the selected index to <code>iIndexTo</code>.

If the number of indices in the range is greater than the value of the <code>limit</code> property, only n=limit indices, starting from <code>iIndexFrom</code>, are selected. The table is scrolled to display the index last selected.
	* @param	iIndexFrom Index from which the selection starts
	* @param	iIndexTo Index up to which to select
	* @param	oEventPayload If the function call triggers a {@link #event:selectionChange selectionChange} event, this object is transferred to the event in the <code>customPayload</code> parameter
	* @return	A Promise that resolves after the selection has been completed or is rejected with an error
	*/
	public function addSelectionInterval( iIndexFrom:Int, iIndexTo:Int, ?oEventPayload:Dynamic):js.lib.Promise<MultiSelectionPlugin>;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChange selectionChange} event of this <code>sap.ui.table.plugins.MultiSelectionPlugin</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.table.plugins.MultiSelectionPlugin</code> itself.

This event is fired when the selection is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.table.plugins.MultiSelectionPlugin</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.plugins.MultiSelectionPlugin;

	/**
	* Removes the complete selection.
	* @param	oEventPayload If the function call triggers a {@link #event:selectionChange selectionChange} event, this object is transferred to the event in the <code>customPayload</code> parameter
	* @return	Void
	*/
	public function clearSelection( ?oEventPayload:Dynamic):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChange selectionChange} event of this <code>sap.ui.table.plugins.MultiSelectionPlugin</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.table.plugins.MultiSelectionPlugin;

	/**
	* Creates a new subclass of class sap.ui.table.plugins.MultiSelectionPlugin with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.table.plugins.SelectionPlugin.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEnableNotification enableNotification}.

Enables notifications that are displayed once a selection has been limited.

Default value is <code>false</code>.
	* @return	Value of property <code>enableNotification</code>
	*/
	public function getEnableNotification( ):Bool;

	/**
	* Gets current value of property {@link #getLimit limit}.

Number of indices which can be selected in a range. Accepts positive integer values. If set to 0, the limit is disabled, and the Select All checkbox appears instead of the Deselect All button. <b>Note:</b> To avoid severe performance problems, the limit should only be set to 0 in the following cases: <ul> <li>With client-side models</li> <li>With server-side models if they are used in client mode</li> <li>If the entity set is small</li> </ul> In other cases, we recommend to set the limit to at least double the value of the {@link sap.ui.table.Table#getThreshold threshold} property of the related <code>sap.ui.table.Table</code> control.

Default value is <code>200</code>.
	* @return	Value of property <code>limit</code>
	*/
	public function getLimit( ):Int;

	/**
	* Returns a metadata object for class sap.ui.table.plugins.MultiSelectionPlugin.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Zero-based indices of selected indices, wrapped in an array. An empty array means nothing has been selected.
	* @return	An array containing all selected indices
	*/
	public function getSelectedIndices( ):Array<Int>;

	/**
	* Gets current value of property {@link #getSelectionMode selectionMode}.

Selection mode of the plugin. This property controls whether single or multiple rows can be selected. It also influences the visual appearance. When the selection mode is changed, the current selection is removed.

Default value is <code>MultiToggle</code>.
	* @return	Value of property <code>selectionMode</code>
	*/
	public function getSelectionMode( ):sap.ui.table.SelectionMode;

	/**
	* Gets current value of property {@link #getShowHeaderSelector showHeaderSelector}.

Show header selector

Default value is <code>true</code>.
	* @return	Value of property <code>showHeaderSelector</code>
	*/
	public function getShowHeaderSelector( ):Bool;

	/**
	* Returns the information whether the given index is selected.
	* @param	iIndex The index for which the selection state is retrieved
	* @return	<code>true</code> if the index is selected
	*/
	public function isIndexSelected( iIndex:Int):Bool;

	/**
	* Removes the given selection interval from the selection. In case of single selection, only <code>iIndexTo</code> is removed from the selection.
	* @param	iIndexFrom Index from which the deselection starts
	* @param	iIndexTo Index up to which to deselect
	* @param	oEventPayload If the function call triggers a {@link #event:selectionChange selectionChange} event, this object is transferred to the event in the <code>customPayload</code> parameter
	* @return	Void
	*/
	public function removeSelectionInterval( iIndexFrom:Int, iIndexTo:Int, ?oEventPayload:Dynamic):Void;

	/**
	* Requests the binding contexts and adds all indices to the selection if the limit is disabled or the binding length is smaller then the limit.
	* @param	oEventPayload If the function call triggers a {@link #event:selectionChange selectionChange} event, this object is transferred to the event in the <code>customPayload</code> parameter
	* @return	A Promise that resolves after the selection has been completed or is rejected with an error
	*/
	public function selectAll( ?oEventPayload:Dynamic):js.lib.Promise<MultiSelectionPlugin>;

	/**
	* Sets a new value for property {@link #getEnableNotification enableNotification}.

Enables notifications that are displayed once a selection has been limited.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableNotification New value for property <code>enableNotification</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableNotification( ?bEnableNotification:Bool):sap.ui.table.plugins.MultiSelectionPlugin;

	/**
	* Sets a new value for property {@link #getLimit limit}.

Number of indices which can be selected in a range. Accepts positive integer values. If set to 0, the limit is disabled, and the Select All checkbox appears instead of the Deselect All button. <b>Note:</b> To avoid severe performance problems, the limit should only be set to 0 in the following cases: <ul> <li>With client-side models</li> <li>With server-side models if they are used in client mode</li> <li>If the entity set is small</li> </ul> In other cases, we recommend to set the limit to at least double the value of the {@link sap.ui.table.Table#getThreshold threshold} property of the related <code>sap.ui.table.Table</code> control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>200</code>.
	* @param	iLimit New value for property <code>limit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLimit( ?iLimit:Int):sap.ui.table.plugins.MultiSelectionPlugin;

	/**
	* Requests the context and sets the selected index to <code>iIndex</code>.
	* @param	iIndex The index to select
	* @param	oEventPayload If the function call triggers a {@link #event:selectionChange selectionChange} event, this object is transferred to the event in the <code>customPayload</code> parameter
	* @return	A Promise that resolves after the selection has been completed or is rejected with an error
	*/
	public function setSelectedIndex( iIndex:Int, ?oEventPayload:Dynamic):js.lib.Promise<MultiSelectionPlugin>;

	/**
	* Sets the given selection interval as the selection and requests the corresponding binding contexts. In single-selection mode it requests the context and sets the selected index to <code>iIndexTo</code>.

If the number of indices in the range is greater than the value of the <code>limit</code> property, only n=limit indices, starting from <code>iIndexFrom</code>, are selected. The table is scrolled to display the index last selected.
	* @param	iIndexFrom Index from which the selection starts
	* @param	iIndexTo Index up to which to select
	* @param	oEventPayload If the function call triggers a {@link #event:selectionChange selectionChange} event, this object is transferred to the event in the <code>customPayload</code> parameter
	* @return	A Promise that resolves after the selection has been completed or is rejected with an error
	*/
	public function setSelectionInterval( iIndexFrom:Int, iIndexTo:Int, ?oEventPayload:Dynamic):js.lib.Promise<MultiSelectionPlugin>;

	/**
	* Sets a new value for property {@link #getSelectionMode selectionMode}.

Selection mode of the plugin. This property controls whether single or multiple rows can be selected. It also influences the visual appearance. When the selection mode is changed, the current selection is removed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>MultiToggle</code>.
	* @param	sSelectionMode New value for property <code>selectionMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectionMode( ?sSelectionMode:sap.ui.table.SelectionMode):sap.ui.table.plugins.MultiSelectionPlugin;

	/**
	* Sets a new value for property {@link #getShowHeaderSelector showHeaderSelector}.

Show header selector

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeaderSelector New value for property <code>showHeaderSelector</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeaderSelector( ?bShowHeaderSelector:Bool):sap.ui.table.plugins.MultiSelectionPlugin;
}

