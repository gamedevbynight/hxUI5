package sap.m;

@:native("sap.m.ActionListItem")

/**
* The <code>sap.m.ActionListItem</code> can be used like a <code>button</code> to fire actions when pressed. <b>Note:</b> The inherited <code>selected</code> property of the <code>sap.m.ListItemBase</code> is not supported.
*/
extern class ActionListItem extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:ActionListItemArgs):Void {})
	public function new(?mSettings:ActionListItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.ActionListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.ActionListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getText text}.

Defines the text that appears in the control.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the text that appears in the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.ActionListItem;
}

typedef ActionListItemArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Defines the text that appears in the control.
	*/
	@:optional var text:String;
}
