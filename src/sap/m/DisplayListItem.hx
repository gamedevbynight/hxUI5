package sap.m;

@:native("sap.m.DisplayListItem")

/**
* <code>sap.m.DisplayListItem</code> can be used to represent a label and a value.
*/
extern class DisplayListItem extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:DisplayListItemArgs):Void {})
	public function new(?mSettings:DisplayListItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.DisplayListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getLabel label}.

Defines the label of the list item.
	* @return	Value of property <code>label</code>
	*/
	public function getLabel( ):String;

	/**
	* Returns a metadata object for class sap.m.DisplayListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getValue value}.

Defines the value of the list item.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueTextDirection valueTextDirection}.

Defines the <code>value</code> text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>valueTextDirection</code>
	*/
	public function getValueTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Sets a new value for property {@link #getLabel label}.

Defines the label of the list item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLabel New value for property <code>label</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabel( sLabel:String):sap.m.DisplayListItem;

	/**
	* Sets a new value for property {@link #getValue value}.

Defines the value of the list item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( sValue:String):sap.m.DisplayListItem;

	/**
	* Sets a new value for property {@link #getValueTextDirection valueTextDirection}.

Defines the <code>value</code> text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sValueTextDirection New value for property <code>valueTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueTextDirection( sValueTextDirection:sap.ui.core.TextDirection):sap.m.DisplayListItem;
}

typedef DisplayListItemArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Defines the label of the list item.
	*/
	@:optional var label:String;

	/**
	* Defines the value of the list item.
	*/
	@:optional var value:String;

	/**
	* Defines the <code>value</code> text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var valueTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;
}
