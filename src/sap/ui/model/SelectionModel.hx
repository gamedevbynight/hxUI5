package sap.ui.model;

@:native("sap.ui.model.SelectionModel")

/**
* This artefact is used by the table controls for handling selections. It is not associated with the model layer of UI5.
*/
extern class SelectionModel extends sap.ui.base.EventProvider
{

	/**
	* 
	* @param	iSelectionMode <code>sap.ui.model.SelectionModel.SINGLE_SELECTION</code> or <code>sap.ui.model.SelectionModel.MULTI_SELECTION</code>
	* @return	Object
	*/
	public function new( ?iSelectionMode:Int):Void;

	/**
	* Changes the selection to be the union of the current selection and the range between <code>iFromIndex</code> and <code>iToIndex</code> inclusive. If <code>iFromIndex</code> is smaller than <code>iToIndex</code>, both parameters are swapped.

In <code>SINGLE_SELECTION</code> selection mode, this is equivalent to calling <code>setSelectionInterval</code>, and only the second index is used.

If this call results in a change to the current selection or lead selection, then a <code>SelectionChanged</code> event is fired.
	* @param	iFromIndex one end of the interval.
	* @param	iToIndex other end of the interval
	* @return	<code>this</code> to allow method chaining
	*/
	public function addSelectionInterval( iFromIndex:Int, iToIndex:Int):sap.ui.model.SelectionModel;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChanged selectionChanged} event of this <code>sap.ui.model.SelectionModel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.SelectionModel</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>SelectionModel</code> itself
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachSelectionChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.SelectionModel;

	/**
	* Change the selection to the empty set and clears the lead selection.

If this call results in a change to the current selection or lead selection, then a <code>SelectionChanged</code> event is fired.
	* @return	<code>this</code> to allow method chaining
	*/
	public function clearSelection( ):sap.ui.model.SelectionModel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChanged selectionChanged} event of this <code>sap.ui.model.SelectionModel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.SelectionModel;

	/**
	* Creates a new subclass of class sap.ui.model.SelectionModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Return the second index argument from the most recent call to setSelectionInterval(), addSelectionInterval() or removeSelectionInterval().
	* @return	lead selected index
	*/
	public function getLeadSelectedIndex( ):Int;

	/**
	* Returns a metadata object for class sap.ui.model.SelectionModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the selected indices as array.
	* @return	array of selected indices
	*/
	public function getSelectedIndices( ):Array<Int>;

	/**
	* Returns the current selection mode.
	* @return	the current selection mode
	*/
	public function getSelectionMode( ):Int;

	/**
	* Returns true if the specified index is selected.
	* @param	iIndex null
	* @return	true if the specified index is selected.
	*/
	public function isSelectedIndex( iIndex:Int):Bool;

	/**
	* Moves all selected indices starting at the position <code>iStartIndex</code> <code>iMove</code> items.

This can be used if new items are inserted to the item set and you want to keep the selection. To handle a deletion of items use <code>sliceSelectionInterval</code>.

If this call results in a change to the current selection or lead selection, then a <code>SelectionChanged</code> event is fired.
	* @param	iStartIndex start at this position
	* @param	iMove null
	* @return	<code>this</code> to allow method chaining
	*/
	public function moveSelectionInterval( iStartIndex:Int, iMove:Int):sap.ui.model.SelectionModel;

	/**
	* Changes the selection to be the set difference of the current selection and the indices between <code>iFromIndex</code> and <code>iToIndex</code> inclusive. If <code>iFromIndex</code> is smaller than <code>iToIndex</code>, both parameters are swapped.

If the range of removed selection indices includes the current lead selection, then the lead selection will be unset (set to -1).

If this call results in a change to the current selection or lead selection, then a <code>SelectionChanged</code> event is fired.
	* @param	iFromIndex one end of the interval.
	* @param	iToIndex other end of the interval
	* @return	<code>this</code> to allow method chaining
	*/
	public function removeSelectionInterval( iFromIndex:Int, iToIndex:Int):sap.ui.model.SelectionModel;

	/**
	* Selects all rows up to the <code>iToIndex</code>.

If this call results in a change to the current selection, then a <code>SelectionChanged</code> event is fired.
	* @param	iToIndex end of the interval
	* @return	<code>this</code> to allow method chaining
	*/
	public function selectAll( iToIndex:Int):sap.ui.model.SelectionModel;

	/**
	* Changes the selection to be equal to the range <code>iFromIndex</code> and <code>iToIndex</code> inclusive. If <code>iFromIndex</code> is smaller than <code>iToIndex</code>, both parameters are swapped.

In <code>SINGLE_SELECTION</code> selection mode, only <code>iToIndex</code> is used.

If this call results in a change to the current selection, then a <code>SelectionChanged</code> event is fired.
	* @param	iFromIndex one end of the interval.
	* @param	iToIndex other end of the interval
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSelectionInterval( iFromIndex:Int, iToIndex:Int):sap.ui.model.SelectionModel;

	/**
	* Sets the selection mode. The following list describes the accepted selection modes: <ul> <li><code>sap.ui.model.SelectionModel.SINGLE_SELECTION</code> - Only one list index can be selected at a time. In this mode, <code>setSelectionInterval</code> and <code>addSelectionInterval</code> are equivalent, both replacing the current selection with the index represented by the second argument (the "lead"). <li><code>sap.ui.model.SelectionModel.MULTI_SELECTION</code> - In this mode, there's no restriction on what can be selected. </ul>
	* @param	iSelectionMode selection mode
	* @return	Void
	*/
	public function setSelectionMode( iSelectionMode:Int):Void;

	/**
	* Slices a the indices between the two indices from the selection. If <code>iFromIndex</code> is smaller than <code>iToIndex</code>, both parameters are swapped.

If the range of removed selection indices includes the current lead selection, then the lead selection will be unset (set to -1).

If this call results in a change to the current selection or lead selection, then a <code>SelectionChanged</code> event is fired.
	* @param	iFromIndex one end of the interval.
	* @param	iToIndex other end of the interval
	* @return	<code>this</code> to allow method chaining
	*/
	public function sliceSelectionInterval( iFromIndex:Int, iToIndex:Int):sap.ui.model.SelectionModel;
}

