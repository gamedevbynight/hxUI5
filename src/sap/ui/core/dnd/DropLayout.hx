package sap.ui.core.dnd;

@:native("sap.ui.core.dnd.DropLayout")
@:enum extern abstract DropLayout(String)
{
    /**
    * Default {@link sap.ui.core.Element.extend layout} definition of the aggregations.
    */
    var Default= "Default";
    /**
    * Droppable controls are arranged horizontally.
    */
    var Horizontal= "Horizontal";
    /**
    * Droppable controls are arranged vertically.
    */
    var Vertical= "Vertical";
}
