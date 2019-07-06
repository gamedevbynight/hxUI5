package sap.ui.commons;

@:native("sap.ui.commons.ValueHelpField")

/**
* A TextField with an attached icon which triggeres an event.
*/
extern class ValueHelpField extends sap.ui.commons.TextField
{
	@:overload(function(?sId:String, ?mSettings:ValueHelpFieldArgs):Void {})
	public function new(?mSettings:ValueHelpFieldArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:valueHelpRequest valueHelpRequest} event of this <code>sap.ui.commons.ValueHelpField</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.ValueHelpField</code> itself.

Event which is fired when the ValueHelp is requested.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.ValueHelpField</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachValueHelpRequest( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.ValueHelpField;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:valueHelpRequest valueHelpRequest} event of this <code>sap.ui.commons.ValueHelpField</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachValueHelpRequest( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.ValueHelpField;

	/**
	* Creates a new subclass of class sap.ui.commons.ValueHelpField with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.TextField.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getIconDisabledURL iconDisabledURL}.

URL of the icon for the value help when disabled. If no parameter is supplied the default icon image will be shown. If an icon font icon is used, this property is ignored.
	* @return	Value of property <code>iconDisabledURL</code>
	*/
	public function getIconDisabledURL( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconHoverURL iconHoverURL}.

URL of the icon for the value help when hovered. If no parameter is supplied the standard icon image will be shown. If an icon font icon is used, this property is ignored.
	* @return	Value of property <code>iconHoverURL</code>
	*/
	public function getIconHoverURL( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconURL iconURL}.

URL of the standard icon for the value help. If no parameter is supplied the default icon image will be shown. This can be a URI to an image or an icon font URI.
	* @return	Value of property <code>iconURL</code>
	*/
	public function getIconURL( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.ui.commons.ValueHelpField.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets a new value for property {@link #getIconDisabledURL iconDisabledURL}.

URL of the icon for the value help when disabled. If no parameter is supplied the default icon image will be shown. If an icon font icon is used, this property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconDisabledURL New value for property <code>iconDisabledURL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDisabledURL( sIconDisabledURL:sap.ui.core.URI):sap.ui.commons.ValueHelpField;

	/**
	* Sets a new value for property {@link #getIconHoverURL iconHoverURL}.

URL of the icon for the value help when hovered. If no parameter is supplied the standard icon image will be shown. If an icon font icon is used, this property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconHoverURL New value for property <code>iconHoverURL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconHoverURL( sIconHoverURL:sap.ui.core.URI):sap.ui.commons.ValueHelpField;

	/**
	* Sets a new value for property {@link #getIconURL iconURL}.

URL of the standard icon for the value help. If no parameter is supplied the default icon image will be shown. This can be a URI to an image or an icon font URI.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconURL New value for property <code>iconURL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconURL( sIconURL:sap.ui.core.URI):sap.ui.commons.ValueHelpField;
}

typedef ValueHelpFieldArgs = sap.ui.commons.TextField.TextFieldArgs & {

	/**
	* URL of the standard icon for the value help. If no parameter is supplied the default icon image will be shown. This can be a URI to an image or an icon font URI.
	*/
	@:optional var iconURL:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* URL of the icon for the value help when hovered. If no parameter is supplied the standard icon image will be shown. If an icon font icon is used, this property is ignored.
	*/
	@:optional var iconHoverURL:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* URL of the icon for the value help when disabled. If no parameter is supplied the default icon image will be shown. If an icon font icon is used, this property is ignored.
	*/
	@:optional var iconDisabledURL:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Event which is fired when the ValueHelp is requested.
	*/
	@:optional var valueHelpRequest:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
