package sap.m;

@:native("sap.m.MessageBox")
extern class MessageBox
{

	/**
	* Displays an alert dialog with the given message and an OK button (no icons).

<pre>
sap.m.MessageBox.alert("This message should appear in the alert", {
    title: "Alert",                                      // default
    onClose: null,                                       // default
    styleClass: "",                                      // default
    initialFocus: null,                                  // default
    textDirection: sap.ui.core.TextDirection.Inherit     // default
});
</pre>

If a callback is given, it is called after the alert dialog has been closed by the user via the OK button. The callback is called with the following signature:

<pre>
  function (oAction)
</pre>

where <code>oAction</code> can be either sap.m.MessageBox.Action.OK when the alert dialog is closed by tapping on the OK button or null when the alert dialog is closed by calling <code>sap.m.InstanceManager.closeAllDialogs()</code>.

The alert dialog opened by this method is processed asynchronously. Applications have to use <code>fnCallback</code> to continue work after the user closed the alert dialog.
	* @param	vMessage Message to be displayed in the alert dialog. The usage of sap.core.Control as vMessage is deprecated since version 1.30.4.
	* @param	mOptions Other options (optional)
	* @return	Void
	*/
	public static function alert( vMessage:String, ?mOptions:Dynamic):Void;

	/**
	* Displays a confirmation dialog with the given message, a QUESTION icon, an OK button and a Cancel button. If a callback is given, it is called after the confirmation box has been closed by the user with one of the buttons.

<pre>
sap.m.MessageBox.confirm("This message should appear in the confirmation", {
    title: "Confirm",                                    // default
    onClose: null,                                       // default
    styleClass: "",                                      // default
    initialFocus: null,                                  // default
    textDirection: sap.ui.core.TextDirection.Inherit     // default
});
</pre>

The callback is called with the following signature

<pre>
  function(oAction)
</pre>

where oAction is set by one of the following three values: 1. sap.m.MessageBox.Action.OK: OK (confirmed) button is tapped. 2. sap.m.MessageBox.Action.Cancel: Cancel (unconfirmed) button is tapped. 3. null: Confirm dialog is closed by calling <code>sap.m.InstanceManager.closeAllDialogs()</code>

The confirmation dialog opened by this method is processed asynchronously. Applications have to use <code>fnCallback</code> to continue work after the user closed the confirmation dialog
	* @param	vMessage Message to be displayed in the alert dialog. The usage of sap.core.Control as vMessage is deprecated since version 1.30.4.
	* @param	mOptions Other options (optional)
	* @return	Void
	*/
	public static function confirm( vMessage:String, ?mOptions:Dynamic):Void;

	/**
	* Displays an error dialog with the given message, an ERROR icon, a CLOSE button.. If a callback is given, it is called after the error box has been closed by the user with one of the buttons.

<pre>
sap.m.MessageBox.error("This message should appear in the error message box", {
    title: "Error",                                      // default
    onClose: null,                                       // default
    styleClass: "",                                      // default
    initialFocus: null,                                  // default
    textDirection: sap.ui.core.TextDirection.Inherit     // default
});
</pre>

The callback is called with the following signature

<pre>
  function (oAction)
</pre>

The error dialog opened by this method is processed asynchronously. Applications have to use <code>fnCallback</code> to continue work after the user closed the error dialog.
	* @param	vMessage Message to be displayed in the alert dialog. The usage of sap.core.Control as vMessage is deprecated since version 1.30.4.
	* @param	mOptions Other options (optional)
	* @return	Void
	*/
	public static function error( vMessage:String, ?mOptions:Dynamic):Void;

	/**
	* Displays an information dialog with the given message, an INFO icon, an OK button. If a callback is given, it is called after the info box has been closed by the user with one of the buttons.

<pre>
sap.m.MessageBox.information("This message should appear in the information message box", {
    title: "Information",                                // default
    onClose: null,                                       // default
    styleClass: "",                                      // default
    initialFocus: null,                                  // default
    textDirection: sap.ui.core.TextDirection.Inherit     // default
});
</pre>

The callback is called with the following signature * <pre>
  function (oAction)
</pre>

The information dialog opened by this method is processed asynchronously. Applications have to use <code>fnCallback</code> to continue work after the user closed the information dialog
	* @param	vMessage Message to be displayed in the alert dialog. The usage of sap.core.Control as vMessage is deprecated since version 1.30.4.
	* @param	mOptions Other options (optional)
	* @return	Void
	*/
	public static function information( vMessage:String, ?mOptions:Dynamic):Void;

	/**
	* Creates and displays an sap.m.Dialog with type sap.m.DialogType.Message with the given text and buttons, and optionally other parts. After the user has tapped a button, the <code>onClose</code> function is invoked when given.

The only mandatory parameter is <code>vMessage</code>. Either a string with the corresponding text or even a layout control could be provided.

<pre>
sap.m.MessageBox.show("This message should appear in the message box", {
    icon: sap.m.MessageBox.Icon.NONE,                    // default
    title: "",                                           // default
    actions: sap.m.MessageBox.Action.OK,                 // default
    emphasizedAction: sap.m.MessageBox.Action.OK,        // default
    onClose: null,                                       // default
    styleClass: "",                                      // default
    initialFocus: null,                                  // default
    textDirection: sap.ui.core.TextDirection.Inherit     // default
});
</pre>

The created dialog is executed asynchronously. When it has been created and registered for rendering, this function returns without waiting for a user reaction.

When applications have to react on the users choice, they have to provide a callback function and postpone any reaction on the user choice until that callback is triggered.

The signature of the callback is

function (oAction);

where <code>oAction</code> is the button that the user has tapped. For example, when the user has pressed the close button, an sap.m.MessageBox.Action.Close is returned.
	* @param	vMessage Message to be displayed in the alert dialog. The usage of sap.core.Control as vMessage is deprecated since version 1.30.4.
	* @param	mOptions Other options (optional)
	* @return	Void
	*/
	public static function show( vMessage:String, ?mOptions:Dynamic):Void;

	/**
	* Displays a success dialog with the given message, a SUCCESS icon, an OK button. If a callback is given, it is called after the success box has been closed by the user with one of the buttons.

<pre>
sap.m.MessageBox.success("This message should appear in the success message box", {
    title: "Success",                                    // default
    onClose: null,                                       // default
    styleClass: "",                                      // default
    initialFocus: null,                                  // default
    textDirection: sap.ui.core.TextDirection.Inherit     // default
});
</pre>

The callback is called with the following signature

<pre>
  function(oAction)
</pre>

The success dialog opened by this method is processed asynchronously. Applications have to use <code>fnCallback</code> to continue work after the user closed the success dialog
	* @param	vMessage Message to be displayed in the alert dialog. The usage of sap.core.Control as vMessage is deprecated since version 1.30.4.
	* @param	mOptions Other options (optional)
	* @return	Void
	*/
	public static function success( vMessage:String, ?mOptions:Dynamic):Void;

	/**
	* Displays a warning dialog with the given message, a WARNING icon, an OK button. If a callback is given, it is called after the warning box has been closed by the user with one of the buttons.

<pre>
sap.m.MessageBox.warning("This message should appear in the warning message box", {
    title: "Warning",                                    // default
    onClose: null,                                       // default
    styleClass: "",                                      // default
    initialFocus: null,                                  // default
    textDirection: sap.ui.core.TextDirection.Inherit     // default
});
</pre>

The callback is called with the following signature * <pre>
  function (oAction)
</pre>

The warning dialog opened by this method is processed asynchronously. Applications have to use <code>fnCallback</code> to continue work after the user closed the warning dialog
	* @param	vMessage Message to be displayed in the alert dialog. The usage of sap.core.Control as vMessage is deprecated since version 1.30.4.
	* @param	mOptions Other options (optional)
	* @return	Void
	*/
	public static function warning( vMessage:String, ?mOptions:Dynamic):Void;
}

