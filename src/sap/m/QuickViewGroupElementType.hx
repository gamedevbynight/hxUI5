package sap.m;

@:native("sap.m.QuickViewGroupElementType")
@:enum extern abstract QuickViewGroupElementType(String)
{
    /**
    * Displays an e-mail link
    */
    var email= "email";
    /**
    * Displays a regular HTML link
    */
    var link= "link";
    /**
    * Displays a phone number link for direct dialing and an icon for sending a text message
    */
    var mobile= "mobile";
    /**
    * Displays a link for navigating to another QuickViewPage
    */
    var pageLink= "pageLink";
    /**
    * Displays a phone number link for direct dialing
    */
    var phone= "phone";
    /**
    * Displays text
    */
    var text= "text";
}
