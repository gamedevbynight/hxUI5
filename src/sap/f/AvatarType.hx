package sap.f;

@:native("sap.f.AvatarType")
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
