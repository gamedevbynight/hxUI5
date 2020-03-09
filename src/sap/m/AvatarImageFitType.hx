package sap.m;

@:native("sap.m.AvatarImageFitType")
@:enum extern abstract AvatarImageFitType(String)
{
    /**
    * The image is scaled to the largest size so that both its width and height can fit in the control area.
    */
    var Contain= "Contain";
    /**
    * The image is scaled to be large enough so that the control area is completely covered.
    */
    var Cover= "Cover";
}
