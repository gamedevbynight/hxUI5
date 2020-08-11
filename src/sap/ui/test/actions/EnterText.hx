package sap.ui.test.actions;

@:native("sap.ui.test.actions.EnterText")

/**
* The <code>EnterText</code> action is used to simulate a user entering texts to inputs. <code>EnterText</code> will be executed on a control's focus dom ref. Supported controls are (for other controls this action still might work): <ul> <li><code>sap.m.Input</code></li> <li><code>sap.m.SearchField</code></li> <li><code>sap.m.TextArea</code></li> </ul>
*/
extern class EnterText extends sap.ui.test.actions.Action
{
public function new():Void;

	/**
	* Sets focus on given control and triggers Multiple keyboard events on it, one event for every character in the text. Logs an error if control has no focusable dom ref or is not visible.
	* @param	oControl the control on which the text event should be entered in.
	* @return	Void
	*/
	public function executeOn( oControl:sap.ui.core.Control):Void;

	/**
	* Creates a new subclass of class sap.ui.test.actions.EnterText with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.actions.Action.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getClearTextFirst clearTextFirst}.

If it is set to <code>false</code>, the current text of the control will be preserved. By default, the current text of the control will be cleared. When the text is going to be cleared, a delete character event will be fired and then the value of the input is emptied. This will trigger a <code>liveChange</code> event on the input with an empty value.

Default value is <code>true</code>.
	* @return	Value of property <code>clearTextFirst</code>
	*/
	public function getClearTextFirst( ):Bool;

	/**
	* Gets current value of property {@link #getKeepFocus keepFocus}.

Default value is <code>false</code>.
	* @return	Value of property <code>keepFocus</code>
	*/
	public function getKeepFocus( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.test.actions.EnterText.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;
<<<<<<< HEAD

	/**
	* Gets current value of property {@link #getPressEnterKey pressEnterKey}.

Default value is <code>false</code>.
	* @return	Value of property <code>pressEnterKey</code>
	*/
	public function getPressEnterKey( ):Bool;
=======
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11

	/**
	* Gets current value of property {@link #getText text}.

The Text that is going to be typed to the control. If you are entering an empty string, the value will be cleared.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getClearTextFirst clearTextFirst}.

If it is set to <code>false</code>, the current text of the control will be preserved. By default, the current text of the control will be cleared. When the text is going to be cleared, a delete character event will be fired and then the value of the input is emptied. This will trigger a <code>liveChange</code> event on the input with an empty value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bClearTextFirst New value for property <code>clearTextFirst</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setClearTextFirst( ?bClearTextFirst:Bool):sap.ui.test.actions.EnterText;

	/**
	* Sets a new value for property {@link #getKeepFocus keepFocus}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bKeepFocus New value for property <code>keepFocus</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKeepFocus( ?bKeepFocus:Bool):sap.ui.test.actions.EnterText;

	/**
	* Sets a new value for property {@link #getPressEnterKey pressEnterKey}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPressEnterKey New value for property <code>pressEnterKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPressEnterKey( ?bPressEnterKey:Bool):sap.ui.test.actions.EnterText;

	/**
	* Sets a new value for property {@link #getText text}.

The Text that is going to be typed to the control. If you are entering an empty string, the value will be cleared.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.test.actions.EnterText;
}

