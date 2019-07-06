package sap.ui.core.dnd;

@:native("sap.ui.core.dnd.DropPosition")
@:enum extern abstract DropPosition(String)
{
    /**
    * Drop between the controls.
    */
    var Between= "Between";
    /**
    * Drop on the control.
    */
    var On= "On";
    /**
    * Drop on the control or between the controls.
    */
    var OnOrBetween= "OnOrBetween";
}
