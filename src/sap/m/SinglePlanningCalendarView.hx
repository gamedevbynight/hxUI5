package sap.m;

@:native("sap.m.SinglePlanningCalendarView")

/**
* <h3>Overview</h3>

A {@link sap.m.SinglePlanningCalendarView} element represents a day view of the SinglePlanningCalendar. The purpose of the element is to decouple the view logic from parent control <code>SinglePlanningCalendar</code>.

<b>Disclaimer</b>: This control is in a beta state - incompatible API changes may be done before its official public release. Use at your own discretion.
*/
extern class SinglePlanningCalendarView extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:SinglePlanningCalendarViewArgs):Void {})
	public function new(?mSettings:SinglePlanningCalendarViewArgs):Void;

	/**
	* Should calculate the startDate which will be displayed in the <code>sap.m.SinglePlanningCalendar</code> based on a given date.
	* @param	oDate the given date
	* @return	Void
	*/
	public function calculateStartDate( oDate:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.m.SinglePlanningCalendarView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Should return the number of columns to be displayed in the grid of the <code>sap.m.SinglePlanningCalendar</code>.
	* @return	Void
	*/
	public function getEntityCount( ):Void;

	/**
	* Gets current value of property {@link #getKey key}.

Indicates a unique key for the view
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.m.SinglePlanningCalendarView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Should return a number of entities until the next/previous startDate of the <code>sap.m.SinglePlanningCalendar</code> after navigating forward/backward with the arrows. For example, by pressing the forward button inside the work week view, the next startDate of a work week will be 7 entities (days) away from the current one.
	* @return	Void
	*/
	public function getScrollEntityCount( ):Void;

	/**
	* Gets current value of property {@link #getTitle title}.

Adds a title for the view
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Sets a new value for property {@link #getKey key}.

Indicates a unique key for the view

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.m.SinglePlanningCalendarView;

	/**
	* Sets a new value for property {@link #getTitle title}.

Adds a title for the view

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.SinglePlanningCalendarView;
}

typedef SinglePlanningCalendarViewArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Indicates a unique key for the view
	*/
	@:optional var key:String;

	/**
	* Adds a title for the view
	*/
	@:optional var title:String;
}
