package sap.m;

@:native("sap.m.ObjectMarkerType")
@:enum extern abstract ObjectMarkerType(String)
{
    /**
    * Draft type
    */
    var Draft= "Draft";
    /**
    * Favorite type
    */
    var Favorite= "Favorite";
    /**
    * Flagged type
    */
    var Flagged= "Flagged";
    /**
    * Locked type
    */
    var Locked= "Locked";
    /**
    * LockedBy type Use when you need to display the name of the user who locked the object.
    */
    var LockedBy= "LockedBy";
    /**
    * Unsaved type
    */
    var Unsaved= "Unsaved";
    /**
    * UnsavedBy type Use when you need to display the name of the user whose changes were unsaved.
    */
    var UnsavedBy= "UnsavedBy";
}
