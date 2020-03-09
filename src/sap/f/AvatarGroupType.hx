package sap.f;

@:native("sap.f.AvatarGroupType")
@:enum extern abstract AvatarGroupType(String)
{
    /**
    * The avatars are displayed as partially overlapped on top of each other and the entire group has one click/tap area.
    */
    var Group= "Group";
    /**
    * The avatars are displayed side-by-side and each avatar has its own click/tap area.
    */
    var Individual= "Individual";
}
