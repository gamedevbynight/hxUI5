package sap.m;

@:native("sap.m.ButtonType")
@:enum extern abstract ButtonType(String)
{
    /**
    * accept type (green button)
    */
    var Accept= "Accept";
    /**
    * back type (back navigation button for header)
    */
    var Back= "Back";
    /**
    * default type (no special styling)
    */
    var Default= "Default";
    /**
    * emphasized type
    */
    var Emphasized= "Emphasized";
    /**
    * ghost type
    */
    var Ghost= "Ghost";
    /**
    * reject style (red button)
    */
    var Reject= "Reject";
    /**
    * transparent type
    */
    var Transparent= "Transparent";
    /**
    * Unstyled type (no styling)
    */
    var Unstyled= "Unstyled";
    /**
    * up type (up navigation button for header)
    */
    var Up= "Up";
}
