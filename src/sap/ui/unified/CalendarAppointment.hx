package sap.ui.unified;

@:native("sap.ui.unified.CalendarAppointment")

/**
* An appointment for use in a <code>PlanningCalendar</code> or similar. The rendering must be done in the Row collecting the appointments. (Because there are different visualizations possible.)

Applications could inherit from this element to add own fields.
*/
extern class CalendarAppointment extends sap.ui.unified.DateTypeRange
{
	@:overload(function(?sId:String, ?mSettings:CalendarAppointmentArgs):Void {})
	public function new(?mSettings:CalendarAppointmentArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.unified.CalendarAppointment with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.DateTypeRange.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColor color}.

Overrides the color derived from the <code>type</code> property. This property will work only with full hex color with pound symbol, e.g.: #FF0000.
	* @return	Value of property <code>color</code>
	*/
	public function getColor( ):sap.ui.core.CSSColor;

	/**
	* Gets current value of property {@link #getIcon icon}.

Icon of the Appointment. (e.g. picture of the person)

URI of an image or an icon registered in sap.ui.core.IconPool.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getKey key}.

Can be used as identifier of the appointment
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.ui.unified.CalendarAppointment.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getSelected selected}.

Indicates if the icon is selected.

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Gets current value of property {@link #getTentative tentative}.

Indicates if the icon is tentative.

Default value is <code>false</code>.
	* @return	Value of property <code>tentative</code>
	*/
	public function getTentative( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Text of the appointment.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

Title of the appointment.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Sets a new value for property {@link #getColor color}.

Overrides the color derived from the <code>type</code> property. This property will work only with full hex color with pound symbol, e.g.: #FF0000.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColor New value for property <code>color</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColor( sColor:sap.ui.core.CSSColor):sap.ui.unified.CalendarAppointment;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Icon of the Appointment. (e.g. picture of the person)

URI of an image or an icon registered in sap.ui.core.IconPool.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.ui.unified.CalendarAppointment;

	/**
	* Sets a new value for property {@link #getKey key}.

Can be used as identifier of the appointment

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.ui.unified.CalendarAppointment;

	/**
	* Sets a new value for property {@link #getSelected selected}.

Indicates if the icon is selected.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSelected New value for property <code>selected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelected( bSelected:Bool):sap.ui.unified.CalendarAppointment;

	/**
	* Sets a new value for property {@link #getTentative tentative}.

Indicates if the icon is tentative.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bTentative New value for property <code>tentative</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTentative( bTentative:Bool):sap.ui.unified.CalendarAppointment;

	/**
	* Sets a new value for property {@link #getText text}.

Text of the appointment.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.unified.CalendarAppointment;

	/**
	* Sets a new value for property {@link #getTitle title}.

Title of the appointment.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.ui.unified.CalendarAppointment;
}

typedef CalendarAppointmentArgs = sap.ui.unified.DateTypeRange.DateTypeRangeArgs & {

	/**
	* Title of the appointment.
	*/
	@:optional var title:String;

	/**
	* Text of the appointment.
	*/
	@:optional var text:String;

	/**
	* Icon of the Appointment. (e.g. picture of the person)

URI of an image or an icon registered in sap.ui.core.IconPool.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Indicates if the icon is tentative.
	*/
	@:optional var tentative:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates if the icon is selected.
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

	/**
	* Can be used as identifier of the appointment
	*/
	@:optional var key:String;

	/**
	* Overrides the color derived from the <code>type</code> property. This property will work only with full hex color with pound symbol, e.g.: #FF0000.
	*/
	@:optional var color:haxe.extern.EitherType<String,sap.ui.core.CSSColor>;
}
