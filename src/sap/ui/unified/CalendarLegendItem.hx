package sap.ui.unified;

@:native("sap.ui.unified.CalendarLegendItem")

/**
* Item to be displayed in a CalendarLegend.
*/
extern class CalendarLegendItem extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:CalendarLegendItemArgs):Void {})
	public function new(?mSettings:CalendarLegendItemArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.unified.CalendarLegendItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getColor color}.

Overrides the color derived from the <code>type</code> property.
	* @return	Value of property <code>color</code>
	*/
	public function getColor( ):sap.ui.core.CSSColor;

	/**
	* Returns a metadata object for class sap.ui.unified.CalendarLegendItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getText text}.

Text to be displayed for the item.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getType type}.

Type of the item. If not set the type is automatically determined from the order of the items in the CalendarLegend.

Default value is <code>None</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.ui.unified.CalendarDayType;

	/**
	* Sets a new value for property {@link #getColor color}.

Overrides the color derived from the <code>type</code> property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColor New value for property <code>color</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColor( sColor:sap.ui.core.CSSColor):sap.ui.unified.CalendarLegendItem;

	/**
	* Sets a new value for property {@link #getText text}.

Text to be displayed for the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.unified.CalendarLegendItem;

	/**
	* Sets a new value for property {@link #getType type}.

Type of the item. If not set the type is automatically determined from the order of the items in the CalendarLegend.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:sap.ui.unified.CalendarDayType):sap.ui.unified.CalendarLegendItem;
}

typedef CalendarLegendItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Text to be displayed for the item.
	*/
	@:optional var text:String;

	/**
	* Type of the item. If not set the type is automatically determined from the order of the items in the CalendarLegend.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.ui.unified.CalendarDayType>;

	/**
	* Overrides the color derived from the <code>type</code> property.
	*/
	@:optional var color:haxe.extern.EitherType<String,sap.ui.core.CSSColor>;
}
