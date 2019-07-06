package sap.m;

@:native("sap.m.SinglePlanningCalendarWeekView")

/**
* <h3>Overview</h3>

A {@link sap.m.SinglePlanningCalendarWeekView} element represents a week view of the SinglePlanningCalendar. The purpose of the element is to decouple the view logic from parent control <code>SinglePlanningCalendar</code>.

<b>Disclaimer</b>: This control is in a beta state - incompatible API changes may be done before its official public release. Use at your own discretion.
*/
extern class SinglePlanningCalendarWeekView extends sap.m.SinglePlanningCalendarView
{
	@:overload(function(?sId:String, ?mSettings:SinglePlanningCalendarWeekViewArgs):Void {})
	public function new(?mSettings:SinglePlanningCalendarWeekViewArgs):Void;

	/**
	* Creates a new subclass of class sap.m.SinglePlanningCalendarWeekView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.SinglePlanningCalendarView.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.SinglePlanningCalendarWeekView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef SinglePlanningCalendarWeekViewArgs = sap.m.SinglePlanningCalendarView.SinglePlanningCalendarViewArgs & {
}
