package sap.m;

@:native("sap.m.FacetFilterItem")

/**
* Represents a value for the {@link sap.m.FacetFilterList} control.
*/
extern class FacetFilterItem extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:FacetFilterItemArgs):Void {})
	public function new(?mSettings:FacetFilterItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.FacetFilterItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getKey key}.

Can be used as input for subsequent actions.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.m.FacetFilterItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

Determines the text to be displayed for the item.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getKey key}.

Can be used as input for subsequent actions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.m.FacetFilterItem;

	/**
	* Sets a new value for property {@link #getText text}.

Determines the text to be displayed for the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.FacetFilterItem;
}

typedef FacetFilterItemArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Can be used as input for subsequent actions.
	*/
	@:optional var key:String;

	/**
	* Determines the text to be displayed for the item.
	*/
	@:optional var text:String;
}
