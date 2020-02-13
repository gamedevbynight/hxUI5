package sap.m;

@:native("sap.m.ButtonType")
@:enum extern abstract ButtonType(String)
{
    /**
    * Accept type
    */
    var Accept= "Accept";
    /**
    * Back type (back navigation button for header)
    */
    var Back= "Back";
    /**
    * Critical type
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
    */
    var Negative= "Negative";
    /**
    * Neutral type
    */
    var Neutral= "Neutral";
    /**
    * Reject style
    */
    var Reject= "Reject";
    /**
    * Success type
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
