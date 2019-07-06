package sap.m;

@:native("sap.m.IBarHTMLTag")
@:enum extern abstract IBarHTMLTag(String)
{
    /**
    * Renders as a div element.
    */
    var Div= "Div";
    /**
    * Renders as a footer element.
    */
    var Footer= "Footer";
    /**
    * Renders as a header element.
    */
    var Header= "Header";
}
