package sap.m;

@:native("sap.m.AvatarType")
@:enum extern abstract AvatarType(String)
{
    /**
    * The displayed content is an icon.
    */
    var Icon= "Icon";
    /**
    * The displayed content is an image.
    */
    var Image= "Image";
    /**
    * The displayed content is initials.
    */
    var Initials= "Initials";
}
