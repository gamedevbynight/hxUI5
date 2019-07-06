package sap.ui.table.plugins;

@:native("sap.ui.table.plugins.MultiSelectionPlugin")

/**
* Implements a plugin to enable a special multi-selection behavior: <ul> <li>No Select All checkbox, select all can only be done via range selection</li> <li>Dedicated Deselect All button to clear the selection</li> <li>The number of items which can be selected in a range is defined with the limit property by the application. If the user tries to select more items, the selection is automatically limited, and the table scrolls back to the last selected item</li> <li>If not already loaded, the table loads the selected items up to the given limit</li> <li>Multiple consecutive selections are possible</li> </ul>

When this plugin is applied to the table, the table's selection mode is automatically set to MultiToggle and cannot be changed.
*/
extern class MultiSelectionPlugin extends sap.ui.table.plugins.SelectionPlugin
{
public function new():Void;

	/**
	* Loads the context of the selected range and adds the given selection interval to the selection.
	* @param	iIndexFrom Index from which the selection starts
	* @param	iIndexTo Index up to which to select
	* @return	Void
	*/
	public function addSelectionInterval( iIndexFrom:Int, iIndexTo:Int):Void;

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
	* @return	Void
	*/
	public function clearSelection( ):Void;

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
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getLimit limit}.

Number of items which can be selected in a range. Accepts positive integer values. If set to 0, the limit is disabled, and the Select All checkbox appears instead of the Deselect All button. The plugin loads all selected items. <b>Note:</b> To avoid severe performance problems, the limit should only be set to 0 in the following cases: <ul> <li>With client-side models</li> <li>With server-side models if they are used in client mode</li> <li>If the entity set is small</li> </ul>

Default value is <code>200</code>.
	* @return	Value of property <code>limit</code>
	*/
	public function getLimit( ):Int;

	/**
	* Returns a metadata object for class sap.ui.table.plugins.MultiSelectionPlugin.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Zero-based indices of selected items, wrapped in an array. An empty array means nothing has been selected.
	* @return	An array containing all selected indices
	*/
	public function getSelectedIndices( ):Array<Int>;

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
	* @return	Void
	*/
	public function removeSelectionInterval( iIndexFrom:Int, iIndexTo:Int):Void;

	/**
	* Loads all contexts and adds all indices to the selection if the limit is disabled.
	* @return	Void
	*/
	public function selectAll( ):Void;

	/**
	* Sets a new value for property {@link #getLimit limit}.

Number of items which can be selected in a range. Accepts positive integer values. If set to 0, the limit is disabled, and the Select All checkbox appears instead of the Deselect All button. The plugin loads all selected items. <b>Note:</b> To avoid severe performance problems, the limit should only be set to 0 in the following cases: <ul> <li>With client-side models</li> <li>With server-side models if they are used in client mode</li> <li>If the entity set is small</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>200</code>.
	* @param	iLimit New value for property <code>limit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLimit( iLimit:Int):sap.ui.table.plugins.MultiSelectionPlugin;

	/**
	* Loads the contexts of the selected range and sets the given selection interval as the selection.
	* @param	iIndexFrom Index from which the selection starts
	* @param	iIndexTo Index up to which to select
	* @return	Void
	*/
	public function setSelectionInterval( iIndexFrom:Int, iIndexTo:Int):Void;

	/**
	* Sets a new value for property {@link #getShowHeaderSelector showHeaderSelector}.

Show header selector

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeaderSelector New value for property <code>showHeaderSelector</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeaderSelector( bShowHeaderSelector:Bool):sap.ui.table.plugins.MultiSelectionPlugin;
}

