package sap.f.cards;

@:native("sap.f.cards.NumericSideIndicator")

/**
* Holds a set of side indicator attributes used in the {@link sap.f.cards.NumericHeader} control.
*/
extern class NumericSideIndicator extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:NumericSideIndicatorArgs):Void {})
	public function new(?mSettings:NumericSideIndicatorArgs):Void;

	/**
	* Creates a new subclass of class sap.f.cards.NumericSideIndicator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.f.cards.NumericSideIndicator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNumber number}.

The numeric value
	* @return	Value of property <code>number</code>
	*/
	public function getNumber( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

The title of the indicator
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getUnit unit}.

Defines the unit of measurement (scaling prefix) for the numeric value
	* @return	Value of property <code>unit</code>
	*/
	public function getUnit( ):String;

	/**
	* Sets the numeric value.
	* @param	sValue The text of the title
	* @return	this pointer for chaining
	*/
	public function setNumber( sValue:String):sap.f.cards.NumericSideIndicator;

	/**
	* Sets the title.
	* @param	sValue The text of the title
	* @return	this pointer for chaining
	*/
	public function setTitle( sValue:String):sap.f.cards.NumericSideIndicator;

	/**
	* Sets the unit of measurement.
	* @param	sValue The text of the title
	* @return	this pointer for chaining
	*/
	public function setUnit( sValue:String):sap.f.cards.NumericSideIndicator;
}

typedef NumericSideIndicatorArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The title of the indicator
	*/
	@:optional var title:String;

	/**
	* The numeric value
	*/
	@:optional var number:String;

	/**
	* Defines the unit of measurement (scaling prefix) for the numeric value
	*/
	@:optional var unit:String;

    /**
    * Used to display title
    */
	@:optional var _title:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * Used to display the number part of the indicator
    */
	@:optional var _number:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * Used to display the unit of measurement for the number
    */
	@:optional var _unit:haxe.extern.EitherType<String,sap.m.Text>;
}
