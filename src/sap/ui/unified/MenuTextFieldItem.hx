package sap.ui.unified;

@:native("sap.ui.unified.MenuTextFieldItem")

/**
* Special menu item which contains a label and a text field. This menu item is e.g. helpful for filter implementations. The aggregation <code>submenu</code> (inherited from parent class) is not supported for this type of menu item.
*/
extern class MenuTextFieldItem extends sap.ui.unified.MenuItemBase
{
	@:overload(function(?sId:String, ?mSettings:MenuTextFieldItemArgs):Void {})
	public function new(?mSettings:MenuTextFieldItemArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.unified.MenuTextFieldItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.MenuItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the icon of the {@link sap.ui.core.IconPool sap.ui.core.IconPool} or an image which should be displayed on the item.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getLabel label}.

Defines the label of the text field of the item.
	* @return	Value of property <code>label</code>
	*/
	public function getLabel( ):String;

	/**
	* Returns a metadata object for class sap.ui.unified.MenuTextFieldItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getValue value}.

Defines the value of the text field of the item.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Defines the value state of the text field of the item. This allows you to visualize e.g. warnings or errors.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the icon of the {@link sap.ui.core.IconPool sap.ui.core.IconPool} or an image which should be displayed on the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.ui.unified.MenuTextFieldItem;

	/**
	* Sets a new value for property {@link #getLabel label}.

Defines the label of the text field of the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLabel New value for property <code>label</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabel( ?sLabel:String):sap.ui.unified.MenuTextFieldItem;

	/**
	* Sets a new value for property {@link #getValue value}.

Defines the value of the text field of the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( ?sValue:String):sap.ui.unified.MenuTextFieldItem;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Defines the value state of the text field of the item. This allows you to visualize e.g. warnings or errors.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( ?sValueState:sap.ui.core.ValueState):sap.ui.unified.MenuTextFieldItem;
}

typedef MenuTextFieldItemArgs = sap.ui.unified.MenuItemBase.MenuItemBaseArgs & {

	/**
	* Defines the label of the text field of the item.
	*/
	@:optional var label:String;

	/**
	* Defines the icon of the {@link sap.ui.core.IconPool sap.ui.core.IconPool} or an image which should be displayed on the item.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the value of the text field of the item.
	*/
	@:optional var value:String;

	/**
	* Defines the value state of the text field of the item. This allows you to visualize e.g. warnings or errors.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;
}
