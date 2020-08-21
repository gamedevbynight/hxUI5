package sap.m;

@:native("sap.m.SinglePlanningCalendarMonthView")

/**
* Represents a one month view of the <code>SinglePlanningCalendar</code>. The purpose of the element is to decouple the view logic from parent control <code>SinglePlanningCalendar</code>.
*/
extern class SinglePlanningCalendarMonthView extends sap.m.SinglePlanningCalendarView
{
	@:overload(function(?sId:String, ?mSettings:SinglePlanningCalendarMonthViewArgs):Void {})
	public function new(?mSettings:SinglePlanningCalendarMonthViewArgs):Void;

	/**
	* Creates a new subclass of class sap.m.SinglePlanningCalendarMonthView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.SinglePlanningCalendarView.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.SinglePlanningCalendarMonthView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef SinglePlanningCalendarMonthViewArgs = sap.m.SinglePlanningCalendarView.SinglePlanningCalendarViewArgs & {
}
