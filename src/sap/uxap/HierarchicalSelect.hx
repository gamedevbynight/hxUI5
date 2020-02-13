package sap.uxap;

@:native("sap.uxap.HierarchicalSelect")

/**
* A select that displays items on a hierarchy of 2 levels.

If a provided item has a custom data named <code>secondLevel</code>, then it will be displayed as a second level, otherwise it would be displayed as a first level.
*/
extern class HierarchicalSelect extends sap.m.Select
{
	@:overload(function(?sId:String, ?mSettings:HierarchicalSelectArgs):Void {})
	public function new(?mSettings:HierarchicalSelectArgs):Void;

	/**
	* Creates a new subclass of class sap.uxap.HierarchicalSelect with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Select.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.uxap.HierarchicalSelect.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getUpperCase upperCase}.

Determines whether the HierarchicalSelect items are displayed in upper case.

Default value is <code>false</code>.
	* @return	Value of property <code>upperCase</code>
	*/
	public function getUpperCase( ):Bool;

	/**
	* Sets a new value for property {@link #getUpperCase upperCase}.

Determines whether the HierarchicalSelect items are displayed in upper case.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUpperCase New value for property <code>upperCase</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUpperCase( bUpperCase:Bool):sap.uxap.HierarchicalSelect;
}

typedef HierarchicalSelectArgs = sap.m.Select.SelectArgs & {

	/**
	* Determines whether the HierarchicalSelect items are displayed in upper case.
	*/
	@:optional var upperCase:haxe.extern.EitherType<String,Bool>;
}
