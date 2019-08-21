package sap.m;

@:native("sap.m.MultiInput")

/**
* <h3>Overview</h3> A multi-input field allows the user to enter multiple values, which are displayed as {@link sap.m.Token tokens}. You can enable auto-complete suggestions or value help to help the user choose the correct entry. You can define validator functions to define what token values are accepted. <b>Notes:</b> <ul> <li> New valid tokens are created, when the user presses Enter, selects a value from the suggestions drop-down, or when the focus leaves the field.</li> <li> When multiple values are copied and pasted in the field, separate tokens are created for each of them.</li> <li> When a single value is copied and pasted in the field, it is shown as a text value, as further editing might be required before it is converted into a token.</li> <li> Provide meaningful labels for all input fields. Do not use the placeholder as a replacement for the label.</li> </ul> <h3>Usage</h3> <h4>When to use:</h4> <ul> <li> You need to provide the value help option to help users select or search multiple business objects.</li> <li> The dataset to choose from is expected to increase over time (for example, to more than 200 values).</li> </ul> <h4>When not to use:</h4> <ul> <li> When you need to select only one value.</li> <li> When you want the user to select from a predefined set of options. Use {@link sap.m.MultiComboBox} instead.</li> </ul> <h3>Responsive Behavior</h3> If there are many tokens, the control shows only the last selected tokens that fit and for the others a label <i>N-more</i> is provided. In case the length of the last selected token is exceeding the width of the control, only a label <i>N-Items</i> is shown. In both cases, pressing on the label will show the tokens in a popup. <u>On Phones:</u> <ul> <li> Only the last entered token is displayed.</li> <li> A new full-screen dialog opens where the auto-complete suggestions can be selected.</li> <li> You can review the tokens by tapping on the token or the input field.</li> </ul> <u> On Tablets:</u> <ul> <li> The auto-complete suggestions appear below or above the multi-input field.</li> <li> You can review the tokens by swiping them to the left or right.</li> </ul> <u>On Desktop:</u> <ul> <li> The auto-complete suggestions appear below or above the multi-input field.</li> <li> You can review the tokens by pressing the right or left arrows on the keyboard.</li> <li> You can select single tokens or a range of tokens and you can copy/cut/delete them.</li> </ul>
*/
extern class MultiInput extends sap.m.Input
{
	@:overload(function(?sId:String, ?mSettings:MultiInputArgs):Void {})
	public function new(?mSettings:MultiInputArgs):Void;

	/**
	* Adds some token to the aggregation {@link #getTokens tokens}.
	* @param	oToken The token to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addToken( oToken:sap.m.Token):sap.m.MultiInput;

	/**
	* Function adds a validation callback called before any new token gets added to the tokens aggregation
	* @param	fValidator The validation callback whose parameter contains the following properties:
	* @return	Void
	*/
	public function addValidator( fValidator:()->Void):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:tokenUpdate tokenUpdate} event of this <code>sap.m.MultiInput</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MultiInput</code> itself.

Fired when the tokens aggregation changed due to a user interaction (add / remove token)
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MultiInput</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTokenUpdate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MultiInput;

	/**
	* Destroys all the tokens in the aggregation {@link #getTokens tokens}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTokens( ):sap.m.MultiInput;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:tokenUpdate tokenUpdate} event of this <code>sap.m.MultiInput</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTokenUpdate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MultiInput;

	/**
	* Creates a new subclass of class sap.m.MultiInput with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Input.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getMaxTokens maxTokens}.

The max number of tokens that is allowed in MultiInput.
	* @return	Value of property <code>maxTokens</code>
	*/
	public function getMaxTokens( ):Int;

	/**
	* Returns a metadata object for class sap.m.MultiInput.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Function returns domref which acts as reference point for the opening suggestion menu
	* @return	The domref at which to open the suggestion menu
	*/
	public function getPopupAnchorDomRef( ):js.html.Element;

	/**
	* Gets content of aggregation {@link #getTokens tokens}.

The currently displayed tokens
	* @return	null
	*/
	public function getTokens( ):Array<sap.m.Token>;

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
	public function insertToken( oToken:sap.m.Token, iIndex:Int):sap.m.MultiInput;

	/**
	* Focus is on MultiInput
	* @param	oEvent The event object
	* @return	Void
	*/
	public function onfocusin( oEvent:jquery.Event):Void;

	/**
	* When press ESC, deselect all tokens and all texts
	* @param	oEvent The event object
	* @return	Void
	*/
	public function onsapescape( oEvent:jquery.Event):Void;

	/**
	* When tap on text field, deselect all tokens
	* @param	oEvent The event object
	* @return	Void
	*/
	public function ontap( oEvent:jquery.Event):Void;

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
	@:overload( function(vToken:Int):sap.m.Token{ })
	@:overload( function(vToken:String):sap.m.Token{ })

	/**
	* Removes a token from the aggregation {@link #getTokens tokens}.
	* @param	vToken The token to remove or its index or id
	* @return	The removed token or <code>null</code>
	*/
	public function removeToken( vToken:sap.m.Token):sap.m.Token;

	/**
	* Function removes a validation callback
	* @param	fValidator The validation callback to be removed
	* @return	Void
	*/
	public function removeValidator( fValidator:()->Void):Void;

	/**
	* Sets a new value for property {@link #getMaxTokens maxTokens}.

The max number of tokens that is allowed in MultiInput.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iMaxTokens New value for property <code>maxTokens</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxTokens( iMaxTokens:Int):sap.m.MultiInput;

	/**
	* Function sets an array of tokens, existing tokens will get overridden
	* @param	aTokens The new token set
	* @return	Pointer to the control instance for chaining
	*/
	public function setTokens( aTokens:Array<sap.m.Token>):sap.m.MultiInput;
}

typedef MultiInputArgs = sap.m.Input.InputArgs & {

	/**
	* The max number of tokens that is allowed in MultiInput.
	*/
	@:optional var maxTokens:haxe.extern.EitherType<String,Int>;

    /**
    * The currently displayed tokens
    */
	@:optional var tokens:Array<haxe.extern.EitherType<String,sap.m.Token>>;

    /**
    * The tokenizer which displays the tokens
    */
	@:optional var tokenizer:haxe.extern.EitherType<String,sap.m.Tokenizer>;

	/**
	* Fired when the tokens aggregation changed due to a user interaction (add / remove token)
	*/
	@:optional var tokenUpdate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
