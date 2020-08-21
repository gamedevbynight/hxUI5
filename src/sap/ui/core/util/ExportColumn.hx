package sap.ui.core.util;

@:native("sap.ui.core.util.ExportColumn")

/**
* Can have a name and a cell template.
*/
extern class ExportColumn extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:ExportColumnArgs):Void {})
	public function new(?mSettings:ExportColumnArgs):Void;

	/**
	* Destroys the template in the aggregation {@link #getTemplate template}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTemplate( ):sap.ui.core.util.ExportColumn;

	/**
	* Creates a new subclass of class sap.ui.core.util.ExportColumn with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.core.util.ExportColumn.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Gets current value of property {@link #getName name}.

Column name.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets content of aggregation {@link #getTemplate template}.

Cell template for column.
	* @return	null
	*/
	public function getTemplate( ):sap.ui.core.util.ExportCell;

	/**
	* Sets a new value for property {@link #getName name}.

Column name.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.ui.core.util.ExportColumn;

	/**
	* Sets the aggregated {@link #getTemplate template}.
	* @param	oTemplate The template to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTemplate( oTemplate:sap.ui.core.util.ExportCell):sap.ui.core.util.ExportColumn;
}

typedef ExportColumnArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* Column name.
	*/
	@:optional var name:String;

    /**
    * Cell template for column.
    */
	@:optional var template:haxe.extern.EitherType<String,sap.ui.core.util.ExportCell>;
}
