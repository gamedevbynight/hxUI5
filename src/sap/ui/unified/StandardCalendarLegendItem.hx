package sap.ui.unified;

@:native("sap.ui.unified.StandardCalendarLegendItem")
@:enum extern abstract StandardCalendarLegendItem(String)
{
    /**
    * Type used for visualization of the non-working days.
    */
    var NonWorkingDay= "NonWorkingDay";
    /**
    * Type used for visualization of the currently selected day.
    */
    var Selected= "Selected";
    /**
    * Type used for visualization of the current date.
    */
    var Today= "Today";
    /**
    * Type used for visualization of the regular work days.
    */
    var WorkingDay= "WorkingDay";
}
