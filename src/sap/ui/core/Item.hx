package sap.ui.core;

@:native("sap.ui.core.Item")

/**
* A control base type.
*/
extern class Item extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ItemArgs):Void {})
	public function new(?mSettings:ItemArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.Item with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Enabled items can be selected.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getKey key}.

Can be used as input for subsequent actions.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.Item.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getText text}.

The text to be displayed for the item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Options are RTL and LTR. Alternatively, an item can inherit its text direction from its parent control.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Enabled items can be selected.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.core.Item;

	/**
	* Sets a new value for property {@link #getKey key}.

Can be used as input for subsequent actions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.ui.core.Item;

	/**
	* Sets a new value for property {@link #getText text}.

The text to be displayed for the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.core.Item;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Options are RTL and LTR. Alternatively, an item can inherit its text direction from its parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.ui.core.Item;
}

typedef ItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The text to be displayed for the item.
	*/
	@:optional var text:String;

	/**
	* Enabled items can be selected.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Options are RTL and LTR. Alternatively, an item can inherit its text direction from its parent control.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Can be used as input for subsequent actions.
	*/
	@:optional var key:String;
}
