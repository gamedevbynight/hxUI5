package sap.ui.core;

@:native("sap.ui.core.ListItem")

/**
* An item that is used in list controls, such as <code>DropdownBox</code>.

The element foresees the usage of additional texts displayed in a second column.
*/
extern class ListItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:ListItemArgs):Void {})
	public function new(?mSettings:ListItemArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.ListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAdditionalText additionalText}.

Some additional text of type string, optionally to be displayed along with this item.
	* @return	Value of property <code>additionalText</code>
	*/
	public function getAdditionalText( ):String;

	/**
	* Gets current value of property {@link #getIcon icon}.

The icon belonging to this list item instance. This can be a URI to an image or an icon font URI.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.ListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getAdditionalText additionalText}.

Some additional text of type string, optionally to be displayed along with this item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAdditionalText New value for property <code>additionalText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdditionalText( ?sAdditionalText:String):sap.ui.core.ListItem;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The icon belonging to this list item instance. This can be a URI to an image or an icon font URI.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:String):sap.ui.core.ListItem;
}

typedef ListItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* The icon belonging to this list item instance. This can be a URI to an image or an icon font URI.
	*/
	@:optional var icon:String;

	/**
	* Some additional text of type string, optionally to be displayed along with this item.
	*/
	@:optional var additionalText:String;
}
