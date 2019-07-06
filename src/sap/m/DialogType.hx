package sap.m;

@:native("sap.m.DialogType")
@:enum extern abstract DialogType(String)
{
    /**
    * Dialog with type Message looks the same as the Standard Dialog in Android. It puts the Left and the Right buttons at the bottom of the Dialog in iOS.
    */
    var Message= "Message";
    /**
    * This is the default value for Dialog type.

The Standard Dialog in iOS has a header on the top. The Left and the Right buttons are put inside the header. In Android, the Left and the Right buttons are put at the bottom of the Dialog.
    */
    var Standard= "Standard";
}
