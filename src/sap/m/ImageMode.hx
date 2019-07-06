package sap.m;

@:native("sap.m.ImageMode")
@:enum extern abstract ImageMode(String)
{
    /**
    * The image is rendered with 'span' tag and the 'src' property is set to the 'background-image' CSS style on the output DOM element
    */
    var Background= "Background";
    /**
    * The image is rendered with 'img' tag and the 'src' property is set to the src attribute on the output DOM element.
    */
    var Image= "Image";
}
