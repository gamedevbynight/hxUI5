package sap.m;

@:native("sap.m.FlexRendertype")
@:enum extern abstract FlexRendertype(String)
{
    /**
    * The UI5 controls are not wrapped in an additional HTML element, the surrounding Flex Box is a DIV element.
    */
    var Bare= "Bare";
    /**
    * The UI5 controls are wrapped in DIV elements.
    */
    var Div= "Div";
    /**
    * The UI5 controls are wrapped in LI elements, the surrounding Flex Box is an unordered list (UL).
    */
    var List= "List";
}
