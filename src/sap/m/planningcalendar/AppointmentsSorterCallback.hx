package sap.m.planningcalendar;

@:native("sap.m.PlanningCalendar.appointmentsSorterCallback")
extern class AppointmentsSorterCallback
{

	/**
	* First appointment to compare
	*/
	 public var appointment1:sap.ui.unified.CalendarAppointment;

	/**
	* Second appointment to compare
	*/
	 public var appointment2:sap.ui.unified.CalendarAppointment;


}

