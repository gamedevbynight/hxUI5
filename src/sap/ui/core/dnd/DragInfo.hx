package sap.ui.core.dnd;

@:native("sap.ui.core.dnd.DragInfo")

/**
* Provides the configuration for drag operations.

<b>Note:</b> This configuration might be ignored due to control {@link sap.ui.core.Element.extend metadata} restrictions.
*/
extern class DragInfo extends sap.ui.core.dnd.DragDropBase implements sap.ui.core.dnd.IDragInfo
{
	@:overload(function(?sId:String, ?mSettings:DragInfoArgs):Void {})
	public function new(?mSettings:DragInfoArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:dragEnd dragEnd} event of this <code>sap.ui.core.dnd.DragInfo</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.dnd.DragInfo</code> itself.

This event is fired when a drag operation is being ended.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.dnd.DragInfo</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDragEnd( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DragInfo;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:dragStart dragStart} event of this <code>sap.ui.core.dnd.DragInfo</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.dnd.DragInfo</code> itself.

This event is fired when the user starts dragging an element.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.dnd.DragInfo</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDragStart( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DragInfo;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:dragEnd dragEnd} event of this <code>sap.ui.core.dnd.DragInfo</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDragEnd( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DragInfo;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:dragStart dragStart} event of this <code>sap.ui.core.dnd.DragInfo</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDragStart( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DragInfo;

	/**
	* Creates a new subclass of class sap.ui.core.dnd.DragInfo with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.dnd.DragDropBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.dnd.DragInfo.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getSourceAggregation sourceAggregation}.

The name of the aggregation from which all children can be dragged. If undefined, the control itself can be dragged.
	* @return	Value of property <code>sourceAggregation</code>
	*/
	public function getSourceAggregation( ):String;

	/**
	* Sets a new value for property {@link #getSourceAggregation sourceAggregation}.

The name of the aggregation from which all children can be dragged. If undefined, the control itself can be dragged.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSourceAggregation New value for property <code>sourceAggregation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSourceAggregation( sSourceAggregation:String):sap.ui.core.dnd.DragInfo;
}

typedef DragInfoArgs = sap.ui.core.dnd.DragDropBase.DragDropBaseArgs & {

	/**
	* The name of the aggregation from which all children can be dragged. If undefined, the control itself can be dragged.
	*/
	@:optional var sourceAggregation:String;

	/**
	* This event is fired when a drag operation is being ended.
	*/
	@:optional var dragEnd:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the user starts dragging an element.
	*/
	@:optional var dragStart:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
