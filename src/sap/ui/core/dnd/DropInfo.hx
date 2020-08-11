package sap.ui.core.dnd;

@:native("sap.ui.core.dnd.DropInfo")

/**
* Provides the configuration for drop operations. <b>Note:</b> This configuration might be ignored due to control {@link sap.ui.core.Element.extend metadata} restrictions.
*/
extern class DropInfo extends sap.ui.core.dnd.DragDropBase implements sap.ui.core.dnd.IDropInfo
{
	@:overload(function(?sId:String, ?mSettings:DropInfoArgs):Void {})
	public function new(?mSettings:DropInfoArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:dragEnter dragEnter} event of this <code>sap.ui.core.dnd.DropInfo</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.dnd.DropInfo</code> itself.

This event is fired when a dragged element enters a drop target.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.dnd.DropInfo</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDragEnter( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DropInfo;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:dragOver dragOver} event of this <code>sap.ui.core.dnd.DropInfo</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.dnd.DropInfo</code> itself.

This event is fired when an element is being dragged over a valid drop target.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.dnd.DropInfo</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDragOver( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DropInfo;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:drop drop} event of this <code>sap.ui.core.dnd.DropInfo</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.dnd.DropInfo</code> itself.

This event is fired when an element is dropped on a valid drop target, as specified by the drag-and-drop info.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.dnd.DropInfo</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDrop( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DropInfo;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:dragEnter dragEnter} event of this <code>sap.ui.core.dnd.DropInfo</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDragEnter( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DropInfo;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:dragOver dragOver} event of this <code>sap.ui.core.dnd.DropInfo</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDragOver( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DropInfo;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:drop drop} event of this <code>sap.ui.core.dnd.DropInfo</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDrop( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.dnd.DropInfo;

	/**
	* Creates a new subclass of class sap.ui.core.dnd.DropInfo with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.dnd.DragDropBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDropEffect dropEffect}.

Defines the visual drop effect.

In Internet Explorer, default visual drop effect is <code>Copy</code> and this property has no effect.

Default value is <code>Move</code>.
	* @return	Value of property <code>dropEffect</code>
	*/
	public function getDropEffect( ):sap.ui.core.dnd.DropEffect;

	/**
	* Gets current value of property {@link #getDropLayout dropLayout}.

Defines the layout of the droppable controls if <code>dropPosition</code> is set to <code>Between</code> or <code>OnOrBetween</code>.

Default value is <code>Default</code>.
	* @return	Value of property <code>dropLayout</code>
	*/
	public function getDropLayout( ):sap.ui.core.dnd.DropLayout;

	/**
	* Gets current value of property {@link #getDropPosition dropPosition}.

Defines the position for the drop action, visualized by a rectangle.

Default value is <code>On</code>.
	* @return	Value of property <code>dropPosition</code>
	*/
	public function getDropPosition( ):sap.ui.core.dnd.DropPosition;

	/**
	* Returns a metadata object for class sap.ui.core.dnd.DropInfo.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTargetAggregation targetAggregation}.

The aggregation name in the drop target control which is the target of this drag-and-drop action. If undefined, the entire control is the target. This can be handy if the target control does not have any aggregations or if the drop position within the target does not matter.
	* @return	Value of property <code>targetAggregation</code>
	*/
	public function getTargetAggregation( ):String;

	/**
	* Sets a new value for property {@link #getDropEffect dropEffect}.

Defines the visual drop effect.

In Internet Explorer, default visual drop effect is <code>Copy</code> and this property has no effect.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Move</code>.
	* @param	sDropEffect New value for property <code>dropEffect</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDropEffect( ?sDropEffect:sap.ui.core.dnd.DropEffect):sap.ui.core.dnd.DropInfo;

	/**
	* Sets a new value for property {@link #getDropLayout dropLayout}.

Defines the layout of the droppable controls if <code>dropPosition</code> is set to <code>Between</code> or <code>OnOrBetween</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sDropLayout New value for property <code>dropLayout</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDropLayout( ?sDropLayout:sap.ui.core.dnd.DropLayout):sap.ui.core.dnd.DropInfo;

	/**
	* Sets a new value for property {@link #getDropPosition dropPosition}.

Defines the position for the drop action, visualized by a rectangle.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>On</code>.
	* @param	sDropPosition New value for property <code>dropPosition</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDropPosition( ?sDropPosition:sap.ui.core.dnd.DropPosition):sap.ui.core.dnd.DropInfo;

	/**
	* Sets a new value for property {@link #getTargetAggregation targetAggregation}.

The aggregation name in the drop target control which is the target of this drag-and-drop action. If undefined, the entire control is the target. This can be handy if the target control does not have any aggregations or if the drop position within the target does not matter.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTargetAggregation New value for property <code>targetAggregation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTargetAggregation( sTargetAggregation:String):sap.ui.core.dnd.DropInfo;
}

typedef DropInfoArgs = sap.ui.core.dnd.DragDropBase.DragDropBaseArgs & {

	/**
	* The aggregation name in the drop target control which is the target of this drag-and-drop action. If undefined, the entire control is the target. This can be handy if the target control does not have any aggregations or if the drop position within the target does not matter.
	*/
	@:optional var targetAggregation:String;

	/**
	* Defines the visual drop effect.

In Internet Explorer, default visual drop effect is <code>Copy</code> and this property has no effect.
	*/
	@:optional var dropEffect:haxe.extern.EitherType<String,sap.ui.core.dnd.DropEffect>;

	/**
	* Defines the position for the drop action, visualized by a rectangle.
	*/
	@:optional var dropPosition:haxe.extern.EitherType<String,sap.ui.core.dnd.DropPosition>;

	/**
	* Defines the layout of the droppable controls if <code>dropPosition</code> is set to <code>Between</code> or <code>OnOrBetween</code>.
	*/
	@:optional var dropLayout:haxe.extern.EitherType<String,sap.ui.core.dnd.DropLayout>;

	/**
	* This event is fired when a dragged element enters a drop target.
	*/
	@:optional var dragEnter:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when an element is being dragged over a valid drop target.
	*/
	@:optional var dragOver:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when an element is dropped on a valid drop target, as specified by the drag-and-drop info.
	*/
	@:optional var drop:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
