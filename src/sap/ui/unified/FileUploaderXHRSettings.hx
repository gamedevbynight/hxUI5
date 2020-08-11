package sap.ui.unified;

@:native("sap.ui.unified.FileUploaderXHRSettings")

/**
* Properties for the <code>XMLHttpRequest</code> object used for file uploads.
*/
extern class FileUploaderXHRSettings extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:FileUploaderXHRSettingsArgs):Void {})
	public function new(?mSettings:FileUploaderXHRSettingsArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.unified.FileUploaderXHRSettings with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.unified.FileUploaderXHRSettings.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getWithCredentials withCredentials}.

Determines the value of the <code>XMLHttpRequest.withCredentials</code> property

Default value is <code>false</code>.
	* @return	Value of property <code>withCredentials</code>
	*/
	public function getWithCredentials( ):Bool;

	/**
	* Sets a new value for property {@link #getWithCredentials withCredentials}.

Determines the value of the <code>XMLHttpRequest.withCredentials</code> property

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bWithCredentials New value for property <code>withCredentials</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWithCredentials( ?bWithCredentials:Bool):sap.ui.unified.FileUploaderXHRSettings;
}

typedef FileUploaderXHRSettingsArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Determines the value of the <code>XMLHttpRequest.withCredentials</code> property
	*/
	@:optional var withCredentials:haxe.extern.EitherType<String,Bool>;
}
