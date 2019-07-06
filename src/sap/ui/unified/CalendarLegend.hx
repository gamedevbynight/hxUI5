package sap.ui.unified;

@:native("sap.ui.unified.CalendarLegend")

/**
* A legend for the Calendar Control. Displays special dates colors with their corresponding description. The aggregation specialDates can be set herefor.
*/
extern class CalendarLegend extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:CalendarLegendArgs):Void {})
	public function new(?mSettings:CalendarLegendArgs):Void;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.ui.unified.CalendarLegendItem):sap.ui.unified.CalendarLegend;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.ui.unified.CalendarLegend;

	/**
	* Creates a new subclass of class sap.ui.unified.CalendarLegend with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColumnWidth columnWidth}.

Defines the width of the created columns in which the items are arranged.

Default value is <code>120px</code>.
	* @return	Value of property <code>columnWidth</code>
	*/
	public function getColumnWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getItems items}.

Items to be displayed.
	* @return	null
	*/
	public function getItems( ):Array<sap.ui.unified.CalendarLegendItem>;

	/**
	* Returns a metadata object for class sap.ui.unified.CalendarLegend.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getStandardItems standardItems}.

Determines the standard items related to the calendar days, such as, today, selected, working and non-working. Values must be one of <code>sap.ui.unified.StandardCalendarLegendItem</code>. Note: for versions 1.50 and 1.52, this property was defined in the the subclass <code>sap.m.PlanningCalendarLegend</code>

Default value is <code>Today,Selected,WorkingDay,NonWorkingDay</code>.
	* @return	Value of property <code>standardItems</code>
	*/
	public function getStandardItems( ):Array<String>;

	/**
	* Checks for the provided <code>sap.ui.unified.CalendarLegendItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.ui.unified.CalendarLegendItem):Int;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.ui.unified.CalendarLegendItem, iIndex:Int):sap.ui.unified.CalendarLegend;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.ui.unified.CalendarLegendItem>;
	@:overload( function(vItem:Int):sap.ui.unified.CalendarLegendItem{ })
	@:overload( function(vItem:String):sap.ui.unified.CalendarLegendItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.ui.unified.CalendarLegendItem):sap.ui.unified.CalendarLegendItem;

	/**
	* Sets a new value for property {@link #getColumnWidth columnWidth}.

Defines the width of the created columns in which the items are arranged.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>120px</code>.
	* @param	sColumnWidth New value for property <code>columnWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnWidth( sColumnWidth:sap.ui.core.CSSSize):sap.ui.unified.CalendarLegend;

	/**
	* Sets a new value for property {@link #getStandardItems standardItems}.

Determines the standard items related to the calendar days, such as, today, selected, working and non-working. Values must be one of <code>sap.ui.unified.StandardCalendarLegendItem</code>. Note: for versions 1.50 and 1.52, this property was defined in the the subclass <code>sap.m.PlanningCalendarLegend</code>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Today,Selected,WorkingDay,NonWorkingDay</code>.
	* @param	sStandardItems New value for property <code>standardItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStandardItems( sStandardItems:Array<String>):sap.ui.unified.CalendarLegend;
}

typedef CalendarLegendArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the standard items related to the calendar days, such as, today, selected, working and non-working. Values must be one of <code>sap.ui.unified.StandardCalendarLegendItem</code>. Note: for versions 1.50 and 1.52, this property was defined in the the subclass <code>sap.m.PlanningCalendarLegend</code>
	*/
	@:optional var standardItems:Array<String>;

	/**
	* Defines the width of the created columns in which the items are arranged.
	*/
	@:optional var columnWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * Items to be displayed.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.ui.unified.CalendarLegendItem>>;

    /**
    * null
    */
	@:optional var _standardItems:Array<haxe.extern.EitherType<String,sap.ui.unified.CalendarLegendItem>>;
}
