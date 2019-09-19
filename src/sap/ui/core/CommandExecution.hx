package sap.ui.core;

@:native("sap.ui.core.CommandExecution")

/**
* null
*/
extern class CommandExecution extends sap.ui.core.Element
{
public function new():Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:execute execute} event of this <code>sap.ui.core.CommandExecution</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.core.CommandExecution</code> itself.

Execute will be fired when the CommandExecution will be triggered.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.core.CommandExecution</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachExecute( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.CommandExecution;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:execute execute} event of this <code>sap.ui.core.CommandExecution</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachExecute( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.core.CommandExecution;

	/**
	* Creates a new subclass of class sap.ui.core.CommandExecution with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCommand command}.

The command's name, that has to be defined in the manifest. This property can only be applied initially.
	* @return	Value of property <code>command</code>
	*/
	public function getCommand( ):String;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Whether the CommandExecution is enabled or not. By default, it is enabled

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.core.CommandExecution.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Whether the CommandExecution is enabled or not. By default, it is enabled

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.core.CommandExecution;

	/**
	* Fires the execute event and triggers the attached handler. If the CommandExecution is disabled, the handler will not be triggered.
	* @return	Void
	*/
	public function trigger( ):Void;
}

