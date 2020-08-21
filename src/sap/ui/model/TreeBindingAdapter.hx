package sap.ui.model;

@:native("sap.ui.model.TreeBindingAdapter")

/**
* null
*/
extern class TreeBindingAdapter
{

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChanged selectionChanged} event of this <code>sap.ui.model.TreeBindingAdapter</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.model.TreeBindingAdapter</code> itself.

Event is fired if the selection of tree nodes is changed in any way.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>TreeBindingAdapter</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChanged( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.TreeBindingAdapter;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChanged selectionChanged} event of this <code>sap.ui.model.TreeBindingAdapter</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChanged( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.model.TreeBindingAdapter;
}

