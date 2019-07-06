package sap.ui.core.mvc;

@:native("sap.ui.core.mvc.ViewType")
@:enum extern abstract ViewType(String)
{
    /**
    * HTML view
    */
    var HTML= "HTML";
    /**
    * JS View
    */
    var JS= "JS";
    /**
    * JSON View
    */
    var JSON= "JSON";
    /**
    * Template View
    */
    var Template= "Template";
    /**
    * XML view
    */
    var XML= "XML";
}
