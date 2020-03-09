package sap.m;

@:native("sap.m.Tokenizer")

/**
* <h3>Overview</h3> A tokenizer is a container for {@link sap.m.Token Tokens}. It also handles all actions associated with the tokens like adding, deleting, selecting and editing. <h3>Structure</h3> The tokens are stored in the <code>tokens</code> aggregation. The tokenizer can determine, by setting the <code>editable</code> property, whether the tokens in it are editable. Still the Token itself can determine if it is <code>editable</code>. This allows you to have non-editable Tokens in an editable Tokenizer.

<h3>Usage</h3> <h4>When to use:</h4> The tokenizer can only be used as part of {@link sap.m.MultiComboBox MultiComboBox},{@link sap.m.MultiInput MultiInput} or {@link sap.ui.comp.valuehelpdialog.ValueHelpDialog ValueHelpDialog}
*/
extern class Tokenizer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TokenizerArgs):Void {})
	public function new(?mSettings:TokenizerArgs):Void;

	/**
	* Function removes all selected tokens.
	* @return	this instance for method chaining
	*/
	public function _removeSelectedTokens( ):sap.m.Tokenizer;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.Tokenizer{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.Tokenizer;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Tokenizer{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Tokenizer;

	/**
	* Adds some token to the aggregation {@link #getTokens tokens}.
	* @param	oToken The token to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addToken( oToken:sap.m.Token):sap.m.Tokenizer;

	/**
	* Function validates the given text and adds a new token if validation was successful.
	* @param	oParameters Parameter bag containing the following fields:
	* @return	Void
	*/
	public function addValidateToken( oParameters:Dynamic):Void;

	/**
	* Function adds a validation callback called before any new token gets added to the tokens aggregation.
	* @param	fValidator The validation function
	* @return	Void
	*/
	public function addValidator( fValidator:()->Void):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:tokenChange tokenChange} event of this <code>sap.m.Tokenizer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Tokenizer</code> itself.

fired when the tokens aggregation changed (add / remove token)
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Tokenizer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTokenChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Tokenizer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:tokenUpdate tokenUpdate} event of this <code>sap.m.Tokenizer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Tokenizer</code> itself.

Fired when the tokens aggregation changed due to a user interaction (add / remove token)
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Tokenizer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTokenUpdate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Tokenizer;

	/**
	* Destroys all the tokens in the aggregation {@link #getTokens tokens}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTokens( ):sap.m.Tokenizer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:tokenChange tokenChange} event of this <code>sap.m.Tokenizer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTokenChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Tokenizer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:tokenUpdate tokenUpdate} event of this <code>sap.m.Tokenizer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTokenUpdate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Tokenizer;

	/**
	* Creates a new subclass of class sap.m.Tokenizer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
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

true if tokens shall be editable otherwise false

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getMaxWidth maxWidth}.

Defines the maximum width of the Tokenizer.

Default value is <code>100%</code>.
	* @return	Value of property <code>maxWidth</code>
	*/
	public function getMaxWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.Tokenizer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Function returns the internally used scroll delegate.
	* @return	The scroll delegate
	*/
	public function getScrollDelegate( ):sap.ui.core.delegate.ScrollEnablement;

	/**
	* Function returns the tokens' width.
	* @return	The complete width of all tokens
	*/
	public function getScrollWidth( ):String;

	/**
	* Function returns all currently selected tokens.
	* @return	Array of selected tokens or empty array
	*/
	public function getSelectedTokens( ):Array<sap.m.Token>;

	/**
	* Gets content of aggregation {@link #getTokens tokens}.

the currently displayed tokens
	* @return	null
	*/
	public function getTokens( ):Array<sap.m.Token>;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the Tokenizer.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.Token</code> in the aggregation {@link #getTokens tokens}. and returns its index if found or -1 otherwise.
	* @param	oToken The token whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfToken( oToken:sap.m.Token):Int;

	/**
	* Inserts a token into the aggregation {@link #getTokens tokens}.
	* @param	oToken The token to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the token should be inserted at; for a negative value of <code>iIndex</code>, the token is inserted at position 0; for a value greater than the current size of the aggregation, the token is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertToken( oToken:sap.m.Token, iIndex:Int):sap.m.Tokenizer;

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

	/**
	* Removes all the controls from the aggregation {@link #getTokens tokens}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTokens( ):Array<sap.m.Token>;

	/**
	* Function removes all validation callbacks
	* @return	Void
	*/
	public function removeAllValidators( ):Void;
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
	@:overload( function(vToken:Int):sap.m.Token{ })
	@:overload( function(vToken:String):sap.m.Token{ })

	/**
	* Removes a token from the aggregation {@link #getTokens tokens}.
	* @param	vToken The token to remove or its index or id
	* @return	The removed token or <code>null</code>
	*/
	public function removeToken( vToken:sap.m.Token):sap.m.Token;

	/**
	* Function removes a validation callback.
	* @param	fValidator The validation function
	* @return	Void
	*/
	public function removeValidator( fValidator:()->Void):Void;

	/**
	* Function scrolls the tokens to the end.
	* @return	Void
	*/
	public function scrollToEnd( ):Void;

	/**
	* Function scrolls the tokens to the start.
	* @return	Void
	*/
	public function scrollToStart( ):Void;

	/**
	* Function selects all tokens.
	* @param	bSelect [optional] true for selecting, false for deselecting
	* @return	this instance for method chaining
	*/
	public function selectAllTokens( bSelect:Bool):sap.m.Tokenizer;

	/**
	* Sets the editable property of the <code>sap.m.Tokenizer</code> and propagates it to its internal <code>sap.m.Token</code> controls. The value should be set to true, if tokens shall be editable; otherwise it should be set as false. When called with a value of null or undefined, the default value of the property will be restored. Default value is true.
	* @param	bEditable Whether the control should be editable
	* @return	this instance for method chaining
	*/
	public function setEditable( bEditable:Bool):sap.m.Tokenizer;

	/**
	* Function sets the maximum width of the Tokenizer.
	* @param	sWidth The new maximal width
	* @return	this instance for method chaining
	*/
	public function setMaxWidth( sWidth:String):sap.m.Tokenizer;

	/**
	* Function sets the tokenizer's width in pixels.
	* @param	nWidth The new width in pixels
	* @return	Void
	*/
	public function setPixelWidth( nWidth:String):Void;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the Tokenizer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.Tokenizer;
}

typedef TokenizerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* true if tokens shall be editable otherwise false
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the width of the Tokenizer.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the maximum width of the Tokenizer.
	*/
	@:optional var maxWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * the currently displayed tokens
    */
	@:optional var tokens:Array<haxe.extern.EitherType<String,sap.m.Token>>;

    /**
    * Hidden text used for accesibility
    */
	@:optional var _tokensInfo:haxe.extern.EitherType<String,sap.ui.core.InvisibleText>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* fired when the tokens aggregation changed (add / remove token)
	*/
	@:optional var tokenChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the tokens aggregation changed due to a user interaction (add / remove token)
	*/
	@:optional var tokenUpdate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
