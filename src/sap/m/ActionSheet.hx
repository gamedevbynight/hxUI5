package sap.m;

@:native("sap.m.ActionSheet")

/**
* The action sheet holds a list of options from which the user can select to complete an action. <h3>Overview</h3> The options of the action sheet are represented as {@link sap.m.Button buttons} with icons. Elements in the action sheet are left-aligned. Actions should be arranged in order of importance, from top to bottom. <h3>Guidelines</h3> <ul> <li>Always display text or text and icons for the actions. Do not use icons only.</li> <li>Always provide a Cancel button on mobile phones.</li> <li>Avoid scrolling on action sheets.</li> </ul> <h3>Responsive Behavior</h3> On mobile phones the action sheet is displayed in a {@link sap.m.Dialog dialog}.

On tablets and desktop the action sheet is displayed in a {@link sap.m.Popover popover}.

When an action is triggered, the action sheet closes and you can display a confirmation as a {@link sap.m.MessageToast message toast}.
*/
extern class ActionSheet extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ActionSheetArgs):Void {})
	public function new(?mSettings:ActionSheetArgs):Void;

	/**
	* Adds some button to the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addButton( oButton:sap.m.Button):sap.m.ActionSheet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterClose afterClose} event of this <code>sap.m.ActionSheet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ActionSheet</code> itself.

This event will be fired after the ActionSheet is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ActionSheet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterClose( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterOpen afterOpen} event of this <code>sap.m.ActionSheet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ActionSheet</code> itself.

This event will be fired after the ActionSheet is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ActionSheet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterOpen( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeClose beforeClose} event of this <code>sap.m.ActionSheet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ActionSheet</code> itself.

This event will be fired before the ActionSheet is closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ActionSheet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeClose( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.ActionSheet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ActionSheet</code> itself.

This event will be fired before the ActionSheet is opened.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ActionSheet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeOpen( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cancelButtonPress cancelButtonPress} event of this <code>sap.m.ActionSheet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ActionSheet</code> itself.

This event is fired when the cancelButton is clicked.

<b>Note: </b> For any device other than phones, this event would be fired always when the Popover closes. To prevent this behavior, the <code>showCancelButton</code> property needs to be set to <code>false</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ActionSheet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCancelButtonPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Calling this method will make the ActionSheet disappear from the screen.
	* @return	Void
	*/
	public function close( ):Void;

	/**
	* Destroys all the buttons in the aggregation {@link #getButtons buttons}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyButtons( ):sap.m.ActionSheet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterClose afterClose} event of this <code>sap.m.ActionSheet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterClose( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterOpen afterOpen} event of this <code>sap.m.ActionSheet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterOpen( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeClose beforeClose} event of this <code>sap.m.ActionSheet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeClose( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeOpen beforeOpen} event of this <code>sap.m.ActionSheet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeOpen( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cancelButtonPress cancelButtonPress} event of this <code>sap.m.ActionSheet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCancelButtonPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ActionSheet;

	/**
	* Creates a new subclass of class sap.m.ActionSheet with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getButtons buttons}.

These buttons are added to the content area in ActionSheet control. When button is tapped, the ActionSheet is closed before the tap event listener is called.
	* @return	null
	*/
	public function getButtons( ):Array<sap.m.Button>;

	/**
	* Gets current value of property {@link #getCancelButtonText cancelButtonText}.

This is the text displayed in the cancelButton. Default value is "Cancel", and it's translated according to the current locale setting. This property will be ignored when running either in iPad or showCancelButton is set to false.
	* @return	Value of property <code>cancelButtonText</code>
	*/
	public function getCancelButtonText( ):String;

	/**
	* Returns a metadata object for class sap.m.ActionSheet.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPlacement placement}.

The ActionSheet behaves as an sap.m.Popover in iPad and this property is the information about on which side will the popover be placed at. Possible values are sap.m.PlacementType.Left, sap.m.PlacementType.Right, sap.m.PlacementType.Top, sap.m.PlacementType.Bottom, sap.m.PlacementType.Horizontal, sap.m.PlacementType.HorizontalPreferedLeft, sap.m.PlacementType.HorizontalPreferedRight, sap.m.PlacementType.Vertical, sap.m.PlacementType.VerticalPreferedTop, sap.m.PlacementType.VerticalPreferedBottom. The default value is sap.m.PlacementType.Bottom.

Default value is <code>Bottom</code>.
	* @return	Value of property <code>placement</code>
	*/
	public function getPlacement( ):sap.m.PlacementType;

	/**
	* Gets current value of property {@link #getShowCancelButton showCancelButton}.

If this is set to true, there will be a cancel button shown below the action buttons. There won't be any cancel button shown in iPad regardless of this property. The default value is set to true.

Default value is <code>true</code>.
	* @return	Value of property <code>showCancelButton</code>
	*/
	public function getShowCancelButton( ):Bool;

	/**
	* Gets current value of property {@link #getTitle title}.

Title will be shown in the header area in iPhone and every Android devices. This property will be ignored in tablets and desktop browser.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getButtons buttons}. and returns its index if found or -1 otherwise.
	* @param	oButton The button whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfButton( oButton:sap.m.Button):Int;

	/**
	* Inserts a button into the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the button should be inserted at; for a negative value of <code>iIndex</code>, the button is inserted at position 0; for a value greater than the current size of the aggregation, the button is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertButton( oButton:sap.m.Button, iIndex:Int):sap.m.ActionSheet;

	/**
	* The method checks if the ActionSheet is open. It returns true when the ActionSheet is currently open (this includes opening and closing animations), otherwise it returns false.
	* @return	Whether the ActionSheet is open.
	*/
	public function isOpen( ):Bool;

	/**
	* Calling this method will make the ActionSheet visible on the screen. The control parameter is the object to which the ActionSheet will be placed. It can be not only a UI5 control, but also an existing DOM reference. The side of the placement depends on the <code>placement</code> property set in the Popover (on tablet and desktop). On other platforms, ActionSheet behaves as a standard dialog and this parameter is ignored because dialog is aligned to the screen.
	* @param	oControl The control to which the ActionSheet is opened
	* @return	Void
	*/
	public function openBy( oControl:Dynamic):Void;

	/**
	* Removes all the controls from the aggregation {@link #getButtons buttons}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllButtons( ):Array<sap.m.Button>;
	@:overload( function(vButton:Int):sap.m.Button{ })
	@:overload( function(vButton:String):sap.m.Button{ })

	/**
	* Removes a button from the aggregation {@link #getButtons buttons}.
	* @param	vButton The button to remove or its index or id
	* @return	The removed button or <code>null</code>
	*/
	public function removeButton( vButton:sap.m.Button):sap.m.Button;

	/**
	* Sets a new value for property {@link #getCancelButtonText cancelButtonText}.

This is the text displayed in the cancelButton. Default value is "Cancel", and it's translated according to the current locale setting. This property will be ignored when running either in iPad or showCancelButton is set to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sCancelButtonText New value for property <code>cancelButtonText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCancelButtonText( ?sCancelButtonText:String):sap.m.ActionSheet;

	/**
	* Sets a new value for property {@link #getPlacement placement}.

The ActionSheet behaves as an sap.m.Popover in iPad and this property is the information about on which side will the popover be placed at. Possible values are sap.m.PlacementType.Left, sap.m.PlacementType.Right, sap.m.PlacementType.Top, sap.m.PlacementType.Bottom, sap.m.PlacementType.Horizontal, sap.m.PlacementType.HorizontalPreferedLeft, sap.m.PlacementType.HorizontalPreferedRight, sap.m.PlacementType.Vertical, sap.m.PlacementType.VerticalPreferedTop, sap.m.PlacementType.VerticalPreferedBottom. The default value is sap.m.PlacementType.Bottom.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Bottom</code>.
	* @param	sPlacement New value for property <code>placement</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlacement( ?sPlacement:sap.m.PlacementType):sap.m.ActionSheet;

	/**
	* Sets a new value for property {@link #getShowCancelButton showCancelButton}.

If this is set to true, there will be a cancel button shown below the action buttons. There won't be any cancel button shown in iPad regardless of this property. The default value is set to true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowCancelButton New value for property <code>showCancelButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowCancelButton( ?bShowCancelButton:Bool):sap.m.ActionSheet;

	/**
	* Sets a new value for property {@link #getTitle title}.

Title will be shown in the header area in iPhone and every Android devices. This property will be ignored in tablets and desktop browser.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.m.ActionSheet;
}

typedef ActionSheetArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The ActionSheet behaves as an sap.m.Popover in iPad and this property is the information about on which side will the popover be placed at. Possible values are sap.m.PlacementType.Left, sap.m.PlacementType.Right, sap.m.PlacementType.Top, sap.m.PlacementType.Bottom, sap.m.PlacementType.Horizontal, sap.m.PlacementType.HorizontalPreferedLeft, sap.m.PlacementType.HorizontalPreferedRight, sap.m.PlacementType.Vertical, sap.m.PlacementType.VerticalPreferedTop, sap.m.PlacementType.VerticalPreferedBottom. The default value is sap.m.PlacementType.Bottom.
	*/
	@:optional var placement:haxe.extern.EitherType<String,sap.m.PlacementType>;

	/**
	* If this is set to true, there will be a cancel button shown below the action buttons. There won't be any cancel button shown in iPad regardless of this property. The default value is set to true.
	*/
	@:optional var showCancelButton:haxe.extern.EitherType<String,Bool>;

	/**
	* This is the text displayed in the cancelButton. Default value is "Cancel", and it's translated according to the current locale setting. This property will be ignored when running either in iPad or showCancelButton is set to false.
	*/
	@:optional var cancelButtonText:String;

	/**
	* Title will be shown in the header area in iPhone and every Android devices. This property will be ignored in tablets and desktop browser.
	*/
	@:optional var title:String;

    /**
    * These buttons are added to the content area in ActionSheet control. When button is tapped, the ActionSheet is closed before the tap event listener is called.
    */
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * The internally managed cancel button.
    */
	@:optional var _cancelButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Hidden texts used for accesibility
    */
	@:optional var _invisibleAriaTexts:Array<haxe.extern.EitherType<String,sap.ui.core.InvisibleText>>;

	/**
	* This event will be fired after the ActionSheet is closed.
	*/
	@:optional var afterClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired after the ActionSheet is opened.
	*/
	@:optional var afterOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired before the ActionSheet is closed.
	*/
	@:optional var beforeClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event will be fired before the ActionSheet is opened.
	*/
	@:optional var beforeOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the cancelButton is clicked.

<b>Note: </b> For any device other than phones, this event would be fired always when the Popover closes. To prevent this behavior, the <code>showCancelButton</code> property needs to be set to <code>false</code>.
	*/
	@:optional var cancelButtonPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
