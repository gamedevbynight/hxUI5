package sap.m;

@:native("sap.m.SinglePlanningCalendarWorkWeekView")

/**
* Represents a week view of the {@link sap.m.SinglePlanningCalendar}. The purpose of the element is to decouple the view logic from parent control <code>SinglePlanningCalendar</code>.
*/
extern class SinglePlanningCalendarWorkWeekView extends sap.m.SinglePlanningCalendarView
{
	@:overload(function(?sId:String, ?mSettings:SinglePlanningCalendarWorkWeekViewArgs):Void {})
	public function new(?mSettings:SinglePlanningCalendarWorkWeekViewArgs):Void;

	/**
	* Creates a new subclass of class sap.m.SinglePlanningCalendarWorkWeekView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.SinglePlanningCalendarView.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.SinglePlanningCalendarWorkWeekView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef SinglePlanningCalendarWorkWeekViewArgs = sap.m.SinglePlanningCalendarView.SinglePlanningCalendarViewArgs & {
}
