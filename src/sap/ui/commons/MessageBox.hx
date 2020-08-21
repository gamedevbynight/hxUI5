package sap.ui.commons;

@:native("sap.ui.commons.MessageBox")
extern class MessageBox
{
	@:overload( function(vMessage:String, ?fnCallback:(Dynamic)->Void, ?sTitle:String, ?sDialogId:String):Void{ })

	/**
	* Displays an alert box with the given message and an OK button (no icons). If a callback is given, it is called after the alert box has been closed by the user via the OK button or via the Close icon. The callback is called with the following signature:

<pre>
  function ()
</pre>

The alert box opened by this method is modal and it is processed asynchronously. Applications have to use the <code>fnCallback</code> to continue work after the user closed the alert box.
	* @param	vMessage Message to be displayed in the alert box
	* @param	fnCallback callback function to be called when the user closed the dialog
	* @param	sTitle Title to be displayed in the alert box
	* @param	sDialogId ID to be used for the alert box. Intended for test scenarios, not recommended for productive apps
	* @return	Void
	*/
	public static function alert( vMessage:sap.ui.core.Control, ?fnCallback:(Dynamic)->Void, ?sTitle:String, ?sDialogId:String):Void;
	@:overload( function(vMessage:String, ?fnCallback:(Dynamic)->Void, ?sTitle:String, ?sDialogId:String):Void{ })

	/**
	* Displays a confirmation dialog box with the given message, a question icon, an OK button, and a Cancel button. If a callback is given, it is called after the alert box has been closed by the user via one of the buttons or via the close icon. The callback is called with the following signature

<pre>
  function(bConfirmed)
</pre>

where bConfirmed is set to true when the user has activated the OK button.

The confirmation dialog box opened by this method is modal and it is processed asynchronously. Applications have to use the <code>fnCallback</code> to continue work after the user closed the alert box.
	* @param	vMessage Message to display
	* @param	fnCallback Callback to be called
	* @param	sTitle Title to display
	* @param	sDialogId ID to be used for the confirmation dialog. Intended for test scenarios, not recommended for productive apps
	* @return	Void
	*/
	public static function confirm( vMessage:sap.ui.core.Control, ?fnCallback:(Dynamic)->Void, ?sTitle:String, ?sDialogId:String):Void;
	@:overload( function(vMessage:String, ?oIcon:sap.ui.commons.MessageBox.Icon, ?sTitle:String, ?vActions:sap.ui.commons.MessageBox.Action, ?fnCallback:(Dynamic)->Void, ?oDefaultAction:sap.ui.commons.MessageBox.Action, ?sDialogId:String):Void{ })
	@:overload( function(vMessage:String, ?oIcon:sap.ui.commons.MessageBox.Icon, ?sTitle:String, ?vActions:Array<sap.ui.commons.MessageBox.Action>, ?fnCallback:(Dynamic)->Void, ?oDefaultAction:sap.ui.commons.MessageBox.Action, ?sDialogId:String):Void{ })
	@:overload( function(vMessage:sap.ui.core.Control, ?oIcon:sap.ui.commons.MessageBox.Icon, ?sTitle:String, ?vActions:sap.ui.commons.MessageBox.Action, ?fnCallback:(Dynamic)->Void, ?oDefaultAction:sap.ui.commons.MessageBox.Action, ?sDialogId:String):Void{ })

	/**
	* Creates and displays a simple message box with the given text and buttons, and optionally other parts. After the user has selected a button or closed the message box using the close icon, the <code>callback</code> function is invoked when given.

The only mandatory parameter is <code>vMessage</code>. Either a string with the corresponding text or even a layout control could be provided.

The created dialog box is executed asynchronously. When it has been created and registered for rendering, this function returns without waiting for a user reaction.

When applications have to react on the users choice, they have to provide a callback function and postpone any reaction on the user choice until that callback is triggered.

The signature of the callback is

function (oAction);

where <code>oAction</code> is the button that the user has pressed. When the user has pressed the close button, a MessageBox.Action.Close is returned.
	* @param	vMessage The message to be displayed.
	* @param	oIcon The icon to be displayed.
	* @param	sTitle The title of the message box.
	* @param	vActions Either a single action, or an array of actions. If no action(s) are given, the single action MessageBox.Action.OK is taken as a default for the parameter.
	* @param	fnCallback Function to be called when the user has pressed a button or has closed the message box.
	* @param	oDefaultAction Must be one of the actions provided in vActions.
	* @param	sDialogId ID to be used for the dialog. Intended for test scenarios, not recommended for productive apps
	* @return	Void
	*/
	public static function show( vMessage:sap.ui.core.Control, ?oIcon:sap.ui.commons.MessageBox.Icon, ?sTitle:String, ?vActions:Array<sap.ui.commons.MessageBox.Action>, ?fnCallback:(Dynamic)->Void, ?oDefaultAction:sap.ui.commons.MessageBox.Action, ?sDialogId:String):Void;
}

