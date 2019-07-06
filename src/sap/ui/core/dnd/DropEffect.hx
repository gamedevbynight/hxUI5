package sap.ui.core.dnd;

@:native("sap.ui.core.dnd.DropEffect")
@:enum extern abstract DropEffect(String)
{
    /**
    * A copy of the source item is made at the new location.
    */
    var Copy= "Copy";
    /**
    * A link is established to the source at the new location.
    */
    var Link= "Link";
    /**
    * An item is moved to a new location.
    */
    var Move= "Move";
    /**
    * The item cannot be dropped.
    */
    var None= "None";
}
