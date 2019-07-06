package sap.tnt;

@:native("sap.tnt.RenderMode")
@:enum extern abstract RenderMode(String)
{
    /**
    * When type of the content of <code>InfoLabel</code> is text padding are loose
    */
    var Loose= "Loose";
    /**
    * When type of the content of <code>InfoLabel</code> is numeric paddings are narrow
    */
    var Narrow= "Narrow";
}
