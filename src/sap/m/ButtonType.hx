package sap.m;

@:native("sap.m.ButtonType")
@:enum extern abstract ButtonType(String)
{
    /**
    * Accept type
    */
    var Accept= "Accept";
    /**
<<<<<<< HEAD
    * Attention type
    */
    var Attention= "Attention";
    /**
=======
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
    * Back type (back navigation button for header)
    */
    var Back= "Back";
    /**
    * Critical type
<<<<<<< HEAD

<b>Note:</b> To be used only in controls of type <code>sap.m.Button</code>. When the button opens a <code>sap.m.MessagePopover</code> list, use this <code>ButtonType</code> if the message with the highest severity is <code>Warning</code> type.
=======
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
    */
    var Critical= "Critical";
    /**
    * Default type (no special styling)
    */
    var Default= "Default";
    /**
    * Emphasized type
    */
    var Emphasized= "Emphasized";
    /**
    * Ghost type
    */
    var Ghost= "Ghost";
    /**
    * Negative type
<<<<<<< HEAD

<b>Note:</b> To be used only in controls of type <code>sap.m.Button</code>. When the button opens a <code>sap.m.MessagePopover</code> list, use this <code>ButtonType</code> if the message with the highest severity is <code>Error</code> type.
=======
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
    */
    var Negative= "Negative";
    /**
    * Neutral type
<<<<<<< HEAD

<b>Note:</b> To be used only in controls of type <code>sap.m.Button</code>. When the button opens a <code>sap.m.MessagePopover</code> list, use this <code>ButtonType</code> if the message with the highest severity is <code>Information</code> type.
=======
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
    */
    var Neutral= "Neutral";
    /**
    * Reject style
    */
    var Reject= "Reject";
    /**
    * Success type
<<<<<<< HEAD

<b>Note:</b> To be used only in controls of type <code>sap.m.Button</code>. When the button opens a <code>sap.m.MessagePopover</code> list, use this <code>ButtonType</code> if the message with the highest severity is <code>Success</code> type.
=======
>>>>>>> bd78e88ba76c5bd0a95baa0cbb72c1713c532a11
    */
    var Success= "Success";
    /**
    * Transparent type
    */
    var Transparent= "Transparent";
    /**
    * Unstyled type (no styling)
    */
    var Unstyled= "Unstyled";
    /**
    * Up type (up navigation button for header)
    */
    var Up= "Up";
}
