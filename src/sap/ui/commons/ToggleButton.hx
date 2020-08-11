package sap.ui.commons;

@:native("sap.ui.commons.ToggleButton")

/**
* The ToggleButton Control is a Button that can be toggled between pressed and normal state
*/
extern class ToggleButton extends sap.ui.commons.Button
{
	@:overload(function(?sId:String, ?mSettings:ToggleButtonArgs):Void {})
	public function new(?mSettings:ToggleButtonArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.ToggleButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.Button.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.ToggleButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPressed pressed}.

The property is “true” when the control is toggled. The default state of this property is "false".

Default value is <code>false</code>.
	* @return	Value of property <code>pressed</code>
	*/
	public function getPressed( ):Bool;

	/**
	* Sets a new value for property {@link #getPressed pressed}.

The property is “true” when the control is toggled. The default state of this property is "false".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bPressed New value for property <code>pressed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPressed( ?bPressed:Bool):sap.ui.commons.ToggleButton;
}

typedef ToggleButtonArgs = sap.ui.commons.Button.ButtonArgs & {

	/**
	* The property is “true” when the control is toggled. The default state of this property is "false".
	*/
	@:optional var pressed:haxe.extern.EitherType<String,Bool>;
}
