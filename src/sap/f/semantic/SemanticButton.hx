package sap.f.semantic;

@:native("sap.f.semantic.SemanticButton")

/**
* A base class for the available semantic actions, such as {@link sap.f.semantic.AddAction AddAction}, {@link sap.f.semantic.CloseAction CloseAction}, etc.
*/
extern class SemanticButton extends sap.f.semantic.SemanticControl
{
	@:overload(function(?sId:String, ?mSettings:SemanticButtonArgs):Void {})
	public function new(?mSettings:SemanticButtonArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.f.semantic.SemanticButton</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.semantic.SemanticButton</code> itself.

Fired when the user selects the <code>SemanticButton</code>.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.semantic.SemanticButton</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.semantic.SemanticButton;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.f.semantic.SemanticButton</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.f.semantic.SemanticButton;

	/**
	* Creates a new subclass of class sap.f.semantic.SemanticButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.semantic.SemanticControl.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Determines whether the <code>SemanticButton</code> is enabled.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.f.semantic.SemanticButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Determines whether the <code>SemanticButton</code> is enabled.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.f.semantic.SemanticButton;
}

typedef SemanticButtonArgs = sap.f.semantic.SemanticControl.SemanticControlArgs & {

	/**
	* Determines whether the <code>SemanticButton</code> is enabled.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Fired when the user selects the <code>SemanticButton</code>.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
