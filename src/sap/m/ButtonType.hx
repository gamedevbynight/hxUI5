package sap.m;

@:native("sap.m.ButtonType")
@:enum extern abstract ButtonType(String)
{
    /**
    * Accept type
    */
    var Accept= "Accept";
    /**
    * Attention type
    */
    var Attention= "Attention";
    /**
    * Back type (back navigation button for header)
    */
    var Back= "Back";
    /**
    * Critical type

<b>Note:</b> To be used only in controls of type <code>sap.m.Button</code>. When the button opens a <code>sap.m.MessagePopover</code> list, use this <code>ButtonType</code> if the message with the highest severity is <code>Warning</code> type.
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

<b>Note:</b> To be used only in controls of type <code>sap.m.Button</code>. When the button opens a <code>sap.m.MessagePopover</code> list, use this <code>ButtonType</code> if the message with the highest severity is <code>Error</code> type.
    */
    var Negative= "Negative";
    /**
    * Neutral type

<b>Note:</b> To be used only in controls of type <code>sap.m.Button</code>. When the button opens a <code>sap.m.MessagePopover</code> list, use this <code>ButtonType</code> if the message with the highest severity is <code>Information</code> type.
    */
    var Neutral= "Neutral";
    /**
    * Reject style
    */
    var Reject= "Reject";
    /**
    * Success type

<b>Note:</b> To be used only in controls of type <code>sap.m.Button</code>. When the button opens a <code>sap.m.MessagePopover</code> list, use this <code>ButtonType</code> if the message with the highest severity is <code>Success</code> type.
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
