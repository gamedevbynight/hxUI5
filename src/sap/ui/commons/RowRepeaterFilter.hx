package sap.ui.commons;

@:native("sap.ui.commons.RowRepeaterFilter")

/**
* This element is used by the RowRepeater and allows to define a filter in this context along with the related data such as a text and an icon.
*/
extern class RowRepeaterFilter extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:RowRepeaterFilterArgs):Void {})
	public function new(?mSettings:RowRepeaterFilterArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.RowRepeaterFilter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getFilters filters}.

The set of filter objects.
	* @return	Value of property <code>filters</code>
	*/
	public function getFilters( ):Dynamic;

	/**
	* Gets current value of property {@link #getIcon icon}.

The filter icon if needed for display.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.RowRepeaterFilter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

The filter title if needed for display.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getFilters filters}.

The set of filter objects.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oFilters New value for property <code>filters</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilters( oFilters:Dynamic):sap.ui.commons.RowRepeaterFilter;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The filter icon if needed for display.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:String):sap.ui.commons.RowRepeaterFilter;

	/**
	* Sets a new value for property {@link #getText text}.

The filter title if needed for display.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.commons.RowRepeaterFilter;
}

typedef RowRepeaterFilterArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The filter title if needed for display.
	*/
	@:optional var text:String;

	/**
	* The filter icon if needed for display.
	*/
	@:optional var icon:String;

	/**
	* The set of filter objects.
	*/
	@:optional var filters:haxe.extern.EitherType<String,Dynamic>;
}
