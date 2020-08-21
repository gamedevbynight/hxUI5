package sap.ui.commons;

@:native("sap.ui.commons.RowRepeaterSorter")

/**
* This element is used by the RowRepeater and allows to define a sorter in this context along with the related data such as a text and an icon.
*/
extern class RowRepeaterSorter extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:RowRepeaterSorterArgs):Void {})
	public function new(?mSettings:RowRepeaterSorterArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.RowRepeaterSorter with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getIcon icon}.

The sorter icon if needed for display.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.RowRepeaterSorter.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSorter sorter}.

The sorter object.
	* @return	Value of property <code>sorter</code>
	*/
	public function getSorter( ):Dynamic;

	/**
	* Gets current value of property {@link #getText text}.

The sorter title if needed for display.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The sorter icon if needed for display.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:String):sap.ui.commons.RowRepeaterSorter;

	/**
	* Sets a new value for property {@link #getSorter sorter}.

The sorter object.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oSorter New value for property <code>sorter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSorter( ?oSorter:Dynamic):sap.ui.commons.RowRepeaterSorter;

	/**
	* Sets a new value for property {@link #getText text}.

The sorter title if needed for display.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.ui.commons.RowRepeaterSorter;
}

typedef RowRepeaterSorterArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The sorter title if needed for display.
	*/
	@:optional var text:String;

	/**
	* The sorter icon if needed for display.
	*/
	@:optional var icon:String;

	/**
	* The sorter object.
	*/
	@:optional var sorter:haxe.extern.EitherType<String,Dynamic>;
}
