package sap.ui.unified;

@:native("sap.ui.unified.GroupAppointmentsMode")
@:enum extern abstract GroupAppointmentsMode(String)
{
    /**
    * Overlapping appointments are displayed as a collapsed group appointment.
    */
    var Collapsed= "Collapsed";
    /**
    * Overlapping appointments are displayed individually (expanded from a group).
    */
    var Expanded= "Expanded";
}
