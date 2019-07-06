package sap.ui.core.util;

@:native("sap.ui.core.util.ExportCell")

/**
* Contains content that can be used to export data. Used in {@link sap.ui.core.util.ExportColumn ExportColumn} / {@link sap.ui.core.util.Export Export}.
*/
extern class ExportCell extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ExportCellArgs):Void {})
	public function new(?mSettings:ExportCellArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.util.ExportCell with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getContent content}.

Cell content.
	* @return	Value of property <code>content</code>
	*/
	public function getContent( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.util.ExportCell.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets a new value for property {@link #getContent content}.

Cell content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContent New value for property <code>content</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( sContent:String):sap.ui.core.util.ExportCell;
}

typedef ExportCellArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Cell content.
	*/
	@:optional var content:String;
}
