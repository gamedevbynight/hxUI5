package sap.ui.core;

@:native("sap.ui.core.InvisibleText")

/**
* An InvisibleText is used to bring hidden texts to the UI for screen reader support. The hidden text can e.g. be referenced in the ariaLabelledBy or ariaDescribedBy associations of other controls.

The inherited properties busy, busyIndicatorDelay and visible and the aggregation tooltip is not supported by this control.
*/
extern class InvisibleText extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:InvisibleTextArgs):Void {})
	public function new(?mSettings:InvisibleTextArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.InvisibleText with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.InvisibleText.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the ID of a shared <code>InvisibleText</code> instance whose <code>text</code> property is retrieved from the given library resource bundle and text key.

Calls with the same library and text key will return the same instance. The instance will be rendered statically.

When accessibility has been switched off by configuration or when the text key is empty or falsy, no ID will be returned.
	* @param	sLibrary Name of the library to load the resource bundle for
	* @param	sTextKey Key of the text to retrieve from the resource bundle
	* @return	ID of the shared control
	*/
	public static function getStaticId( sLibrary:String, ?sTextKey:String):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getText text}.

The text of the InvisibleText.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getText text}.

The text of the InvisibleText.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.core.InvisibleText;

	/**
	* Adds <code>this</code> control into the static, hidden area UI area container.
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function toStatic( ):sap.ui.core.InvisibleText;
}

typedef InvisibleTextArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The text of the InvisibleText.
	*/
	@:optional var text:String;
}
