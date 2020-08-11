package sap.m;

@:native("sap.m.ListItemBase")

/**
* ListItemBase contains the base features of all specific list items. <b>Note:</b> If not mentioned otherwise in the individual subclasses, list items must only be used in the <code>items</code> aggregation of <code>sap.m.ListBase</code> controls.
*/
extern class ListItemBase extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ListItemBaseArgs):Void {})
	public function new(?mSettings:ListItemBaseArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.ListItemBase{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.ListItemBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:detailPress detailPress} event of this <code>sap.m.ListItemBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ListItemBase</code> itself.

Fires when the user clicks on the detail button of the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ListItemBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDetailPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ListItemBase;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.ListItemBase</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ListItemBase</code> itself.

Fires when the user clicks on the control. <b>Note:</b> This event is not fired when the parent <code>mode</code> is <code>SingleSelectMaster</code> or when the <code>includeItemInSelection</code> property is set to <code>true</code>. If there is an interactive element that handles its own <code>press</code> event then the list item's <code>press</code> event is not fired. Also see {@link sap.m.ListBase#attachItemPress}.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ListItemBase</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ListItemBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:detailPress detailPress} event of this <code>sap.m.ListItemBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDetailPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ListItemBase;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.ListItemBase</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ListItemBase;

	/**
	* Creates a new subclass of class sap.m.ListItemBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getCounter counter}.

Defines the counter value of the list items.
	* @return	Value of property <code>counter</code>
	*/
	public function getCounter( ):Int;

	/**
	* Gets current value of property {@link #getHighlight highlight}.

Defines the highlight state of the list items.

Valid values for the <code>highlight</code> property are values of the enumerations {@link sap.ui.core.MessageType} or {@link sap.ui.core.IndicationColor}.

Accessibility support is provided through the associated {@link sap.m.ListItemBase#setHighlightText highlightText} property. If the <code>highlight</code> property is set to a value of {@link sap.ui.core.MessageType}, the <code>highlightText</code> property does not need to be set because a default text is used. However, the default text can be overridden by setting the <code>highlightText</code> property. In all other cases the <code>highlightText</code> property must be set.

Default value is <code>None</code>.
	* @return	Value of property <code>highlight</code>
	*/
	public function getHighlight( ):String;

	/**
	* Gets current value of property {@link #getHighlightText highlightText}.

Defines the semantics of the {@link sap.m.ListItemBase#setHighlight highlight} property for accessibility purposes.

Default value is <code>empty string</code>.
	* @return	Value of property <code>highlightText</code>
	*/
	public function getHighlightText( ):String;

	/**
	* Returns a metadata object for class sap.m.ListItemBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
<<<<<<< HEAD
=======

	/**
	* Gets current value of property {@link #getNavigated navigated}.

The navigated state of the list item.

If set to <code>true</code>, a navigation indicator is displayed at the end of the list item.

Default value is <code>false</code>.
	* @return	Value of property <code>navigated</code>
	*/
	public function getNavigated( ):Bool;
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11

	/**
	* Gets current value of property {@link #getNavigated navigated}.

The navigated state of the list item.

If set to <code>true</code>, a navigation indicator is displayed at the end of the list item.

Default value is <code>false</code>.
	* @return	Value of property <code>navigated</code>
	*/
	public function getNavigated( ):Bool;

	/**
	* Gets current value of property {@link #getSelected selected}.

Defines the selected state of the list items. <b>Note:</b> Binding the <code>selected</code> property in single selection modes may cause unwanted results if you have more than one selected items in your binding.

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Gets current value of property {@link #getType type}.

Defines the visual indication and behavior of the list items, e.g. <code>Active</code>, <code>Navigation</code>, <code>Detail</code>.

Default value is <code>Inactive</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.ListType;

	/**
	* Gets current value of property {@link #getUnread unread}.

Activates the unread indicator for the list item, if set to <code>true</code>. <b>Note:</b> This flag is ignored when the <code>showUnread</code> property of the parent is set to <code>false</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>unread</code>
	*/
	public function getUnread( ):Bool;

	/**
	* Gets current value of property {@link #getVisible visible}.

Whether the control should be visible on the screen. If set to false, a placeholder is rendered instead of the real control.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getCounter counter}.

Defines the counter value of the list items.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iCounter New value for property <code>counter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCounter( iCounter:Int):sap.m.ListItemBase;

	/**
	* Sets a new value for property {@link #getHighlight highlight}.

Defines the highlight state of the list items.

Valid values for the <code>highlight</code> property are values of the enumerations {@link sap.ui.core.MessageType} or {@link sap.ui.core.IndicationColor}.

Accessibility support is provided through the associated {@link sap.m.ListItemBase#setHighlightText highlightText} property. If the <code>highlight</code> property is set to a value of {@link sap.ui.core.MessageType}, the <code>highlightText</code> property does not need to be set because a default text is used. However, the default text can be overridden by setting the <code>highlightText</code> property. In all other cases the <code>highlightText</code> property must be set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sHighlight New value for property <code>highlight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHighlight( ?sHighlight:String):sap.m.ListItemBase;

	/**
	* Sets a new value for property {@link #getHighlightText highlightText}.

Defines the semantics of the {@link sap.m.ListItemBase#setHighlight highlight} property for accessibility purposes.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHighlightText New value for property <code>highlightText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHighlightText( ?sHighlightText:String):sap.m.ListItemBase;

	/**
	* Sets a new value for property {@link #getNavigated navigated}.

The navigated state of the list item.

If set to <code>true</code>, a navigation indicator is displayed at the end of the list item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bNavigated New value for property <code>navigated</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNavigated( ?bNavigated:Bool):sap.m.ListItemBase;

	/**
	* Sets a new value for property {@link #getSelected selected}.

Defines the selected state of the list items. <b>Note:</b> Binding the <code>selected</code> property in single selection modes may cause unwanted results if you have more than one selected items in your binding.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSelected New value for property <code>selected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelected( ?bSelected:Bool):sap.m.ListItemBase;

	/**
	* Sets a new value for property {@link #getType type}.

Defines the visual indication and behavior of the list items, e.g. <code>Active</code>, <code>Navigation</code>, <code>Detail</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inactive</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:sap.m.ListType):sap.m.ListItemBase;

	/**
	* Sets a new value for property {@link #getUnread unread}.

Activates the unread indicator for the list item, if set to <code>true</code>. <b>Note:</b> This flag is ignored when the <code>showUnread</code> property of the parent is set to <code>false</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUnread New value for property <code>unread</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUnread( ?bUnread:Bool):sap.m.ListItemBase;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Whether the control should be visible on the screen. If set to false, a placeholder is rendered instead of the real control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.m.ListItemBase;
}

typedef ListItemBaseArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the visual indication and behavior of the list items, e.g. <code>Active</code>, <code>Navigation</code>, <code>Detail</code>.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.ListType>;

	/**
	* Whether the control should be visible on the screen. If set to false, a placeholder is rendered instead of the real control.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Activates the unread indicator for the list item, if set to <code>true</code>. <b>Note:</b> This flag is ignored when the <code>showUnread</code> property of the parent is set to <code>false</code>.
	*/
	@:optional var unread:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the selected state of the list items. <b>Note:</b> Binding the <code>selected</code> property in single selection modes may cause unwanted results if you have more than one selected items in your binding.
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the counter value of the list items.
	*/
	@:optional var counter:haxe.extern.EitherType<String,Int>;

	/**
	* Defines the highlight state of the list items.

Valid values for the <code>highlight</code> property are values of the enumerations {@link sap.ui.core.MessageType} or {@link sap.ui.core.IndicationColor}.

Accessibility support is provided through the associated {@link sap.m.ListItemBase#setHighlightText highlightText} property. If the <code>highlight</code> property is set to a value of {@link sap.ui.core.MessageType}, the <code>highlightText</code> property does not need to be set because a default text is used. However, the default text can be overridden by setting the <code>highlightText</code> property. In all other cases the <code>highlightText</code> property must be set.
	*/
	@:optional var highlight:String;

	/**
	* Defines the semantics of the {@link sap.m.ListItemBase#setHighlight highlight} property for accessibility purposes.
	*/
	@:optional var highlightText:String;

	/**
	* The navigated state of the list item.

If set to <code>true</code>, a navigation indicator is displayed at the end of the list item.
	*/
	@:optional var navigated:haxe.extern.EitherType<String,Bool>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fires when the user clicks on the detail button of the control.
	*/
	@:optional var detailPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when the user clicks on the control. <b>Note:</b> This event is not fired when the parent <code>mode</code> is <code>SingleSelectMaster</code> or when the <code>includeItemInSelection</code> property is set to <code>true</code>. If there is an interactive element that handles its own <code>press</code> event then the list item's <code>press</code> event is not fired. Also see {@link sap.m.ListBase#attachItemPress}.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
