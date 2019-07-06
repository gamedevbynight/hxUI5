package sap.m;

@:native("sap.m.Token")

/**
* <h3>Overview</h3> Tokens are small items of information (similar to tags) that mainly serve to visualize previously selected items. Tokens are manipulated by a {@link sap.m.Tokenizer Tokenizer}. <h3>Structure</h3> The tokens store single text items or sometimes key-value pairs, such as "John Miller (ID1234567)". Each token also contains a delete icon, which is invisible if the token is in edit mode.

<h3>Usage</h3> <h4>When to use:</h4> Tokens can only be used with the Tokenizer as a container.
*/
extern class Token extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TokenArgs):Void {})
	public function new(?mSettings:TokenArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.Token{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.Token;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Token{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Token;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:delete delete} event of this <code>sap.m.Token</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Token</code> itself.

This event is fired if the user clicks the token's delete icon.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Token</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDelete( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Token;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:deselect deselect} event of this <code>sap.m.Token</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Token</code> itself.

This event is fired when the token gets deselected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Token</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDeselect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Token;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.Token</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Token</code> itself.

This event is fired when the user clicks on the token.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Token</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Token;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.m.Token</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Token</code> itself.

This event is fired when the token gets selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Token</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Token;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:delete delete} event of this <code>sap.m.Token</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDelete( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Token;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:deselect deselect} event of this <code>sap.m.Token</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDeselect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Token;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.Token</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Token;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.m.Token</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Token;

	/**
	* Creates a new subclass of class sap.m.Token with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getEditable editable}.

Indicates the editable status of the token. If it is set to <code>true</code>, token displays a delete icon.

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getKey key}.

Key of the token.

Default value is <code>empty string</code>.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.m.Token.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getSelected selected}.

Indicates the current selection status of the token.

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Displayed text of the token.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

This property specifies the text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets the editable status of the token.
	* @param	bEditable Indicates if the token is editable.
	* @return	this instance for method chaining
	*/
	public function setEditable( bEditable:Bool):sap.m.Token;

	/**
	* Sets a new value for property {@link #getKey key}.

Key of the token.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.m.Token;

	/**
	* Sets the selection status of the token.
	* @param	bSelected Indicates if the token is selected.
	* @return	this instance for method chaining
	*/
	public function setSelected( bSelected:Bool):sap.m.Token;

	/**
	* Sets a new value for property {@link #getText text}.

Displayed text of the token.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.Token;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

This property specifies the text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.m.Token;
}

typedef TokenArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Indicates the current selection status of the token.
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

	/**
	* Key of the token.
	*/
	@:optional var key:String;

	/**
	* Displayed text of the token.
	*/
	@:optional var text:String;

	/**
	* Indicates the editable status of the token. If it is set to <code>true</code>, token displays a delete icon.
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* This property specifies the text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

    /**
    * The delete icon.
    */
	@:optional var deleteIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event is fired if the user clicks the token's delete icon.
	*/
	@:optional var delete:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the token gets deselected.
	*/
	@:optional var deselect:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the user clicks on the token.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the token gets selected.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
