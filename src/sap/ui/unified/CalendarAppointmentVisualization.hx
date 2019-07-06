package sap.ui.unified;

@:native("sap.ui.unified.CalendarAppointmentVisualization")
@:enum extern abstract CalendarAppointmentVisualization(String)
{
    /**
    * Visualization with fill color depending on the used theme.
    */
    var Filled= "Filled";
    /**
    * Standard visualization with no fill color.
    */
    var Standard= "Standard";
}
