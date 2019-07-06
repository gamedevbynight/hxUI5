package sap.ui.model;

@:native("sap.ui.model.TreeBindingAdapter")

/**
* null
*/
extern class TreeBindingAdapter
{

	/**
	* Attach event-handler <code>fnFunction</code> to the 'selectionChanged' event of this <code>sap.ui.model.SelectionModel</code>.<br/> Event is fired if the selection of tree nodes is changed in any way.
	* @param	oData The object, that should be passed along with the event-object when firing the event.
	* @param	fnFunction The function to call, when the event occurs. This function will be called on the oListener-instance (if present) or in a 'static way'.
	* @param	oListener Object on which to call the given function. If empty, this <code>TreeBindingAdapter</code> is used.
	* @return	<code>this</code> to allow method chaining
	*/
	public function attachSelectionChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.model.SelectionModel;

	/**
	* Detach event-handler <code>fnFunction</code> from the 'selectionChanged' event of this <code>sap.ui.model.SelectionModel</code>.<br/>

The passed function and listener object must match the ones previously used for event registration.
	* @param	fnFunction The function to call, when the event occurs.
	* @param	oListener Object on which the given function had to be called.
	* @return	<code>this</code> to allow method chaining
	*/
	public function detachSelectionChanged( fnFunction:()->Void, oListener:Dynamic):sap.ui.model.SelectionModel;
}

