package sap.m;

@:native("sap.m.QuickViewGroupElement")

/**
* QuickViewGroupElement is a combination of one label and another control (Link or Text) associated to this label.
*/
extern class QuickViewGroupElement extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:QuickViewGroupElementArgs):Void {})
	public function new(?mSettings:QuickViewGroupElementArgs):Void;

	/**
	* Creates a new subclass of class sap.m.QuickViewGroupElement with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEmailSubject emailSubject}.

The subject of the email. Works only with QuickViewGroupElement of type email.

Default value is <code>empty string</code>.
	* @return	Value of property <code>emailSubject</code>
	*/
	public function getEmailSubject( ):String;

	/**
	* Gets current value of property {@link #getLabel label}.

Specifies the text displayed below the associated label.

Default value is <code>empty string</code>.
	* @return	Value of property <code>label</code>
	*/
	public function getLabel( ):String;

	/**
	* Returns a metadata object for class sap.m.QuickViewGroupElement.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPageLinkId pageLinkId}.

Specifies the ID of the QuickViewPage, which is opened from the link in the QuickViewGroupElement. Works only with QuickViewGroupElement of type pageLink.

Default value is <code>empty string</code>.
	* @return	Value of property <code>pageLinkId</code>
	*/
	public function getPageLinkId( ):String;

	/**
	* Gets current value of property {@link #getTarget target}.

Specifies the target of the link - it works like the target property of the HTML <a> tag. Works only with QuickViewGroupElement of type link.

Default value is <code>_blank</code>.
	* @return	Value of property <code>target</code>
	*/
	public function getTarget( ):String;

	/**
	* Gets current value of property {@link #getType type}.

Specifies the type of the displayed information - phone number, mobile number, e-mail, link, text or a link to another QuickViewPage. Default value is 'text'.

Default value is <code>text</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.QuickViewGroupElementType;

	/**
	* Gets current value of property {@link #getUrl url}.

Specifies the address of the QuickViewGroupElement link. Works only with QuickViewGroupElement of type link.

Default value is <code>empty string</code>.
	* @return	Value of property <code>url</code>
	*/
	public function getUrl( ):String;

	/**
	* Gets current value of property {@link #getValue value}.

Specifies the text of the control that associates with the label.

Default value is <code>empty string</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getVisible visible}.

Determines whether the element should be visible on the screen.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getEmailSubject emailSubject}.

The subject of the email. Works only with QuickViewGroupElement of type email.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sEmailSubject New value for property <code>emailSubject</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmailSubject( sEmailSubject:String):sap.m.QuickViewGroupElement;

	/**
	* Sets a new value for property {@link #getLabel label}.

Specifies the text displayed below the associated label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sLabel New value for property <code>label</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabel( sLabel:String):sap.m.QuickViewGroupElement;

	/**
	* Sets a new value for property {@link #getPageLinkId pageLinkId}.

Specifies the ID of the QuickViewPage, which is opened from the link in the QuickViewGroupElement. Works only with QuickViewGroupElement of type pageLink.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sPageLinkId New value for property <code>pageLinkId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPageLinkId( sPageLinkId:String):sap.m.QuickViewGroupElement;

	/**
	* Sets a new value for property {@link #getTarget target}.

Specifies the target of the link - it works like the target property of the HTML <a> tag. Works only with QuickViewGroupElement of type link.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>_blank</code>.
	* @param	sTarget New value for property <code>target</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTarget( sTarget:String):sap.m.QuickViewGroupElement;

	/**
	* Sets a new value for property {@link #getType type}.

Specifies the type of the displayed information - phone number, mobile number, e-mail, link, text or a link to another QuickViewPage. Default value is 'text'.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>text</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:sap.m.QuickViewGroupElementType):sap.m.QuickViewGroupElement;

	/**
	* Sets a new value for property {@link #getUrl url}.

Specifies the address of the QuickViewGroupElement link. Works only with QuickViewGroupElement of type link.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sUrl New value for property <code>url</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUrl( sUrl:String):sap.m.QuickViewGroupElement;

	/**
	* Sets a new value for property {@link #getValue value}.

Specifies the text of the control that associates with the label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( sValue:String):sap.m.QuickViewGroupElement;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Determines whether the element should be visible on the screen.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.m.QuickViewGroupElement;
}

typedef QuickViewGroupElementArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Determines whether the element should be visible on the screen.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the text displayed below the associated label.
	*/
	@:optional var label:String;

	/**
	* Specifies the text of the control that associates with the label.
	*/
	@:optional var value:String;

	/**
	* Specifies the address of the QuickViewGroupElement link. Works only with QuickViewGroupElement of type link.
	*/
	@:optional var url:String;

	/**
	* Specifies the target of the link - it works like the target property of the HTML <a> tag. Works only with QuickViewGroupElement of type link.
	*/
	@:optional var target:String;

	/**
	* Specifies the type of the displayed information - phone number, mobile number, e-mail, link, text or a link to another QuickViewPage. Default value is 'text'.
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.QuickViewGroupElementType>;

	/**
	* Specifies the ID of the QuickViewPage, which is opened from the link in the QuickViewGroupElement. Works only with QuickViewGroupElement of type pageLink.
	*/
	@:optional var pageLinkId:String;

	/**
	* The subject of the email. Works only with QuickViewGroupElement of type email.
	*/
	@:optional var emailSubject:String;
}
