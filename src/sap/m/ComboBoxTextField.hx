package sap.m;

@:native("sap.m.ComboBoxTextField")

/**
* The <code>sap.m.ComboBoxTextField</code>.
*/
extern class ComboBoxTextField extends sap.m.InputBase
{
	@:overload(function(?sId:String, ?mSettings:ComboBoxTextFieldArgs):Void {})
	public function new(?mSettings:ComboBoxTextFieldArgs):Void;

	/**
	* Creates a new subclass of class sap.m.ComboBoxTextField with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.InputBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getMaxWidth maxWidth}.

Sets the maximum width of the text field.

Default value is <code>100%</code>.
	* @return	Value of property <code>maxWidth</code>
	*/
	public function getMaxWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.ComboBoxTextField.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowButton showButton}.

Indicates whether the dropdown downward-facing arrow button is shown.

Default value is <code>true</code>.
	* @return	Value of property <code>showButton</code>
	*/
	public function getShowButton( ):Bool;

	/**
	* Gets the <code>value</code>.

Default value is an empty string.
	* @return	The value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Sets a new value for property {@link #getMaxWidth maxWidth}.

Sets the maximum width of the text field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sMaxWidth New value for property <code>maxWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxWidth( ?sMaxWidth:sap.ui.core.CSSSize):sap.m.ComboBoxTextField;

	/**
	* Sets a new value for property {@link #getShowButton showButton}.

Indicates whether the dropdown downward-facing arrow button is shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowButton New value for property <code>showButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowButton( ?bShowButton:Bool):sap.m.ComboBoxTextField;
}

typedef ComboBoxTextFieldArgs = sap.m.InputBase.InputBaseArgs & {

	/**
	* Sets the maximum width of the text field.
	*/
	@:optional var maxWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Indicates whether the dropdown downward-facing arrow button is shown.
	*/
	@:optional var showButton:haxe.extern.EitherType<String,Bool>;

    /**
    * null
    */
	@:optional var _buttonLabelText:haxe.extern.EitherType<String,sap.ui.core.InvisibleText>;
}
