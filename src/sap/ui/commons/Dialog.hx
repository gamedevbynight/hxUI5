package sap.ui.commons;

@:native("sap.ui.commons.Dialog")

/**
* An interactive window appearing on request displaying information to the user. The API supports features such as popups with fixed sizes, popups with unlimited width, scrolling bars for large windows, and control nesting (for example, a drop-down list can be included in the window).
*/
extern class Dialog extends sap.ui.core.Control implements sap.ui.core.PopupInterface
{
	@:overload(function(?sId:String, ?mSettings:DialogArgs):Void {})
	public function new(?mSettings:DialogArgs):Void;

	/**
	* Adds some button to the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addButton( oButton:sap.ui.core.Control):sap.ui.commons.Dialog;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.commons.Dialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:closed closed} event of this <code>sap.ui.commons.Dialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Dialog</code> itself.

Event is fired when the dialog has been closed (after closing-animation etc.). Event parameters provide information about last position and last size.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Dialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClosed( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.Dialog;

	/**
	* Closes the dialog control instance.
	* @return	Void
	*/
	public function close( ):Void;

	/**
	* Destroys all the buttons in the aggregation {@link #getButtons buttons}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyButtons( ):sap.ui.commons.Dialog;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.commons.Dialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:closed closed} event of this <code>sap.ui.commons.Dialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClosed( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.Dialog;

	/**
	* Creates a new subclass of class sap.ui.commons.Dialog with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAccessibleRole accessibleRole}.

The ARIA role for the control. E.g. for alert-style Dialogs this can be set to "AlertDialog".

Default value is <code>Dialog</code>.
	* @return	Value of property <code>accessibleRole</code>
	*/
	public function getAccessibleRole( ):sap.ui.core.AccessibleRole;

	/**
	* Gets current value of property {@link #getApplyContentPadding applyContentPadding}.

Padding is theme-dependent. When set to "false", the content extends to the dialog borders.

Default value is <code>true</code>.
	* @return	Value of property <code>applyContentPadding</code>
	*/
	public function getApplyContentPadding( ):Bool;

	/**
	* Gets current value of property {@link #getAutoClose autoClose}.

If this property is set to true the Dialog will close if the Dialog loses its focus

Default value is <code>false</code>.
	* @return	Value of property <code>autoClose</code>
	*/
	public function getAutoClose( ):Bool;

	/**
	* Gets content of aggregation {@link #getButtons buttons}.

Aggregation of the buttons to display at the bottom of the dialog, for example OK and Cancel. Association defaultButton can be used for one of the defined buttons.
	* @return	null
	*/
	public function getButtons( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getContent content}.

Aggregation of the content of the dialog (one or more controls).

Warning: when content is added with width given as a percentage, the Dialog itself should have a width set.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getContentBorderDesign contentBorderDesign}.

Specifies the border design. Border design is theme dependent.

Default value is <code>None</code>.
	* @return	Value of property <code>contentBorderDesign</code>
	*/
	public function getContentBorderDesign( ):sap.ui.commons.enums.BorderDesign;

	/**
	* ID of the element which is the current target of the association {@link #getDefaultButton defaultButton}, or <code>null</code>.
	* @return	null
	*/
	public function getDefaultButton( ):sap.ui.core.ID;

	/**
	* Determines whether the dialog is currently enabled or not.

Applications can't control the enabled state via a property. A dialog is implicitly enabled depending on its <code>openState</code>. Descendant controls that honor the enabled state of their ancestors will appear disabled after the dialog is closed.
	* @return	indicates whether the dialog is currently enabled or not.
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Outer height of dialog window. When not set and not constrained by one of the height parameters (minHeight/maxHeight), the window size is automatically adapted to the content.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* ID of the element which is the current target of the association {@link #getInitialFocus initialFocus}, or <code>null</code>.
	* @return	null
	*/
	public function getInitialFocus( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getKeepInWindow keepInWindow}.

Specifies whether Dialog movement should be restricted to the visible area of the window. This only affects drag&drop movements by the user. This doesn't affect modal dialogs -> modal dialogs always stay in the window.

Default value is <code>false</code>.
	* @return	Value of property <code>keepInWindow</code>
	*/
	public function getKeepInWindow( ):Bool;

	/**
	* Gets current value of property {@link #getMaxHeight maxHeight}.

Maximum outer height of the dialog window. If set, neither the user nor some layout settings can make the window larger.
	* @return	Value of property <code>maxHeight</code>
	*/
	public function getMaxHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getMaxWidth maxWidth}.

Maximum outer width of the dialog window. If set, neither the user nor some layout settings can make the window larger.
	* @return	Value of property <code>maxWidth</code>
	*/
	public function getMaxWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.Dialog.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinHeight minHeight}.

Minimum outer height of the dialog window. When set, neither the user nor some layout settings can make the window smaller.
	* @return	Value of property <code>minHeight</code>
	*/
	public function getMinHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getMinWidth minWidth}.

Minimum outer width of the dialog window. When set, neither the user nor some layout settings can make the window smaller.
	* @return	Value of property <code>minWidth</code>
	*/
	public function getMinWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getModal modal}.

Specifies whether the dialog should be modal, or not. In case of <code>true</code> the focus is kept inside the dialog.

Default value is <code>false</code>.
	* @return	Value of property <code>modal</code>
	*/
	public function getModal( ):Bool;

	/**
	* Indicates whether the Dialog is currently open, closed, or transitioning between these states.
	* @return	null
	*/
	public function getOpenState( ):sap.ui.core.OpenState;

	/**
	* Gets current value of property {@link #getResizable resizable}.

Specifies whether the dialog window can be resized by the user. The dialog frame contains the visual symbol.

Default value is <code>true</code>.
	* @return	Value of property <code>resizable</code>
	*/
	public function getResizable( ):Bool;

	/**
	* Gets current value of property {@link #getScrollLeft scrollLeft}.

Scroll position from left to right. "0" means leftmost position.

Default value is <code>0</code>.
	* @return	Value of property <code>scrollLeft</code>
	*/
	public function getScrollLeft( ):Int;

	/**
	* Gets current value of property {@link #getScrollTop scrollTop}.

Scroll position from top to bottom. "0" means topmost position.

Default value is <code>0</code>.
	* @return	Value of property <code>scrollTop</code>
	*/
	public function getScrollTop( ):Int;

	/**
	* Gets current value of property {@link #getShowCloseButton showCloseButton}.

Displays a close button in the title bar.

Default value is <code>true</code>.
	* @return	Value of property <code>showCloseButton</code>
	*/
	public function getShowCloseButton( ):Bool;

	/**
	* Gets current value of property {@link #getTitle title}.

Dialog title displayed in the header.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Outer width of dialog window. When not set and not constrained by one of the width parameters (minWidth/maxWidth), the window size is automatically adapted to the content.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getButtons buttons}. and returns its index if found or -1 otherwise.
	* @param	oButton The button whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfButton( oButton:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a button into the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the button should be inserted at; for a negative value of <code>iIndex</code>, the button is inserted at position 0; for a value greater than the current size of the aggregation, the button is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertButton( oButton:sap.ui.core.Control, iIndex:Int):sap.ui.commons.Dialog;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.commons.Dialog;

	/**
	* Indicates whether the Dialog is open (this includes opening and closing animations). For more detailed information about the current state check Dialog.getOpenState().
	* @return	null
	*/
	public function isOpen( ):Bool;

	/**
	* Opens the dialog control instance.
	* @return	Void
	*/
	public function open( ):Void;

	/**
	* Removes all the controls from the aggregation {@link #getButtons buttons}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllButtons( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vButton:Int):sap.ui.core.Control{ })
	@:overload( function(vButton:String):sap.ui.core.Control{ })

	/**
	* Removes a button from the aggregation {@link #getButtons buttons}.
	* @param	vButton The button to remove or its index or id
	* @return	The removed button or <code>null</code>
	*/
	public function removeButton( vButton:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getAccessibleRole accessibleRole}.

The ARIA role for the control. E.g. for alert-style Dialogs this can be set to "AlertDialog".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Dialog</code>.
	* @param	sAccessibleRole New value for property <code>accessibleRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAccessibleRole( ?sAccessibleRole:sap.ui.core.AccessibleRole):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getApplyContentPadding applyContentPadding}.

Padding is theme-dependent. When set to "false", the content extends to the dialog borders.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bApplyContentPadding New value for property <code>applyContentPadding</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setApplyContentPadding( ?bApplyContentPadding:Bool):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getAutoClose autoClose}.

If this property is set to true the Dialog will close if the Dialog loses its focus

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAutoClose New value for property <code>autoClose</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoClose( ?bAutoClose:Bool):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getContentBorderDesign contentBorderDesign}.

Specifies the border design. Border design is theme dependent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sContentBorderDesign New value for property <code>contentBorderDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentBorderDesign( ?sContentBorderDesign:sap.ui.commons.enums.BorderDesign):sap.ui.commons.Dialog;
	@:overload( function(oDefaultButton:sap.ui.core.ID):sap.ui.commons.Dialog{ })

	/**
	* Sets the associated {@link #getDefaultButton defaultButton}.
	* @param	oDefaultButton ID of an element which becomes the new target of this defaultButton association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultButton( oDefaultButton:sap.ui.commons.Button):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getHeight height}.

Outer height of dialog window. When not set and not constrained by one of the height parameters (minHeight/maxHeight), the window size is automatically adapted to the content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.commons.Dialog;
	@:overload( function(oInitialFocus:sap.ui.core.ID):sap.ui.commons.Dialog{ })

	/**
	* Sets the associated {@link #getInitialFocus initialFocus}.
	* @param	oInitialFocus ID of an element which becomes the new target of this initialFocus association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialFocus( oInitialFocus:sap.ui.core.Control):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getKeepInWindow keepInWindow}.

Specifies whether Dialog movement should be restricted to the visible area of the window. This only affects drag&drop movements by the user. This doesn't affect modal dialogs -> modal dialogs always stay in the window.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bKeepInWindow New value for property <code>keepInWindow</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKeepInWindow( ?bKeepInWindow:Bool):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getMaxHeight maxHeight}.

Maximum outer height of the dialog window. If set, neither the user nor some layout settings can make the window larger.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMaxHeight New value for property <code>maxHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxHeight( ?sMaxHeight:sap.ui.core.CSSSize):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getMaxWidth maxWidth}.

Maximum outer width of the dialog window. If set, neither the user nor some layout settings can make the window larger.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMaxWidth New value for property <code>maxWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxWidth( ?sMaxWidth:sap.ui.core.CSSSize):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getMinHeight minHeight}.

Minimum outer height of the dialog window. When set, neither the user nor some layout settings can make the window smaller.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMinHeight New value for property <code>minHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinHeight( ?sMinHeight:sap.ui.core.CSSSize):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getMinWidth minWidth}.

Minimum outer width of the dialog window. When set, neither the user nor some layout settings can make the window smaller.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMinWidth New value for property <code>minWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinWidth( ?sMinWidth:sap.ui.core.CSSSize):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getModal modal}.

Specifies whether the dialog should be modal, or not. In case of <code>true</code> the focus is kept inside the dialog.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bModal New value for property <code>modal</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setModal( ?bModal:Bool):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getResizable resizable}.

Specifies whether the dialog window can be resized by the user. The dialog frame contains the visual symbol.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bResizable New value for property <code>resizable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResizable( ?bResizable:Bool):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getScrollLeft scrollLeft}.

Scroll position from left to right. "0" means leftmost position.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iScrollLeft New value for property <code>scrollLeft</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScrollLeft( ?iScrollLeft:Int):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getScrollTop scrollTop}.

Scroll position from top to bottom. "0" means topmost position.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iScrollTop New value for property <code>scrollTop</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScrollTop( ?iScrollTop:Int):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getShowCloseButton showCloseButton}.

Displays a close button in the title bar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowCloseButton New value for property <code>showCloseButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowCloseButton( ?bShowCloseButton:Bool):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getTitle title}.

Dialog title displayed in the header.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.ui.commons.Dialog;

	/**
	* Sets a new value for property {@link #getWidth width}.

Outer width of dialog window. When not set and not constrained by one of the width parameters (minWidth/maxWidth), the window size is automatically adapted to the content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.Dialog;
}

typedef DialogArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Outer width of dialog window. When not set and not constrained by one of the width parameters (minWidth/maxWidth), the window size is automatically adapted to the content.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Outer height of dialog window. When not set and not constrained by one of the height parameters (minHeight/maxHeight), the window size is automatically adapted to the content.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Scroll position from left to right. "0" means leftmost position.
	*/
	@:optional var scrollLeft:haxe.extern.EitherType<String,Int>;

	/**
	* Scroll position from top to bottom. "0" means topmost position.
	*/
	@:optional var scrollTop:haxe.extern.EitherType<String,Int>;

	/**
	* Dialog title displayed in the header.
	*/
	@:optional var title:String;

	/**
	* Padding is theme-dependent. When set to "false", the content extends to the dialog borders.
	*/
	@:optional var applyContentPadding:haxe.extern.EitherType<String,Bool>;

	/**
	* Displays a close button in the title bar.
	*/
	@:optional var showCloseButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies whether the dialog window can be resized by the user. The dialog frame contains the visual symbol.
	*/
	@:optional var resizable:haxe.extern.EitherType<String,Bool>;

	/**
	* Minimum outer width of the dialog window. When set, neither the user nor some layout settings can make the window smaller.
	*/
	@:optional var minWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Minimum outer height of the dialog window. When set, neither the user nor some layout settings can make the window smaller.
	*/
	@:optional var minHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Maximum outer width of the dialog window. If set, neither the user nor some layout settings can make the window larger.
	*/
	@:optional var maxWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Maximum outer height of the dialog window. If set, neither the user nor some layout settings can make the window larger.
	*/
	@:optional var maxHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies the border design. Border design is theme dependent.
	*/
	@:optional var contentBorderDesign:haxe.extern.EitherType<String,sap.ui.commons.enums.BorderDesign>;

	/**
	* Specifies whether the dialog should be modal, or not. In case of <code>true</code> the focus is kept inside the dialog.
	*/
	@:optional var modal:haxe.extern.EitherType<String,Bool>;

	/**
	* The ARIA role for the control. E.g. for alert-style Dialogs this can be set to "AlertDialog".
	*/
	@:optional var accessibleRole:haxe.extern.EitherType<String,sap.ui.core.AccessibleRole>;

	/**
	* Specifies whether Dialog movement should be restricted to the visible area of the window. This only affects drag&drop movements by the user. This doesn't affect modal dialogs -> modal dialogs always stay in the window.
	*/
	@:optional var keepInWindow:haxe.extern.EitherType<String,Bool>;

	/**
	* If this property is set to true the Dialog will close if the Dialog loses its focus
	*/
	@:optional var autoClose:haxe.extern.EitherType<String,Bool>;

    /**
    * Aggregation of the buttons to display at the bottom of the dialog, for example OK and Cancel. Association defaultButton can be used for one of the defined buttons.
    */
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Aggregation of the content of the dialog (one or more controls).

Warning: when content is added with width given as a percentage, the Dialog itself should have a width set.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Defines one of the buttons that have been provided via button aggregation to be the default button. This default button is initially selected, if no control is set via the initialFocus association explicitly. The default button is activated when Enter is pressed in the context of the dialog and when the currently selected element does not handle the Enter event itself.
	*/
	@:optional var defaultButton:haxe.extern.EitherType<String,sap.ui.commons.Button>;

	/**
	* Defines the control that shall get the focus when the dialog is opened.
	*/
	@:optional var initialFocus:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Event is fired when the dialog has been closed (after closing-animation etc.). Event parameters provide information about last position and last size.
	*/
	@:optional var closed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
