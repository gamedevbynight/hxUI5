package sap.ui.layout.form;

@:native("sap.ui.layout.form.FormLayout")

/**
* Base layout to render a <code>Form</code>. Other layouts to render a <code>Form</code> must inherit from this one.

<b>Note:</b> This control must not be used to render a <code>Form</code> in productive applications as it does not fulfill any design guidelines and usability standards.
*/
extern class FormLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:FormLayoutArgs):Void {})
	public function new(?mSettings:FormLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.form.FormLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the <code>Form</code> content.

<b>Note:</b> The visualization of the different options depends on the theme used.

Default value is <code>Translucent</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.ui.layout.BackgroundDesign;

	/**
	* Returns a metadata object for class sap.ui.layout.form.FormLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Specifies the background color of the <code>Form</code> content.

<b>Note:</b> The visualization of the different options depends on the theme used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Translucent</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( sBackgroundDesign:sap.ui.layout.BackgroundDesign):sap.ui.layout.form.FormLayout;
}

typedef FormLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies the background color of the <code>Form</code> content.

<b>Note:</b> The visualization of the different options depends on the theme used.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.ui.layout.BackgroundDesign>;
}
