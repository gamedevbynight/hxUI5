package sap.ui.commons;

@:native("sap.ui.commons.RichTooltip")

/**
* Is used to provide tool tips that can have long text, image and title. This tool tip extends the TooltipBase.
*/
extern class RichTooltip extends sap.ui.core.TooltipBase
{
	@:overload(function(?sId:String, ?mSettings:RichTooltipArgs):Void {})
	public function new(?mSettings:RichTooltipArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.RichTooltip with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.TooltipBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getImageAltText imageAltText}.

This is the alt text for the image
	* @return	Value of property <code>imageAltText</code>
	*/
	public function getImageAltText( ):String;

	/**
	* Gets current value of property {@link #getImageSrc imageSrc}.

If RichTooltip contains an image, this property is used to define the source path.
	* @return	Value of property <code>imageSrc</code>
	*/
	public function getImageSrc( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.ui.commons.RichTooltip.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getTitle title}.

Tool tip title to be displayed in the header.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* This returns the previously set text. Since a FormattedTextView is used for rendering and stuff the corresponding property of the FormattedTextView is being read and returned. If no text was set an empty string is being returned.
	* @return	the ValueState text that was previously set.
	*/
	public function getValueStateText( ):String;

	/**
	* Sets a new value for property {@link #getImageAltText imageAltText}.

This is the alt text for the image

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sImageAltText New value for property <code>imageAltText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImageAltText( sImageAltText:String):sap.ui.commons.RichTooltip;

	/**
	* Sets a new value for property {@link #getImageSrc imageSrc}.

If RichTooltip contains an image, this property is used to define the source path.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sImageSrc New value for property <code>imageSrc</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImageSrc( sImageSrc:sap.ui.core.URI):sap.ui.commons.RichTooltip;

	/**
	* Sets a new value for property {@link #getTitle title}.

Tool tip title to be displayed in the header.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.ui.commons.RichTooltip;

	/**
	* This sets an individual text for the ValueState of the parent element of the RichTooltip.
	* @param	sText the text that should be shown as individual ValueState text
	* @return	Returns <code>this</code> to facilitate method chaining.
	*/
	public function setValueStateText( sText:String):sap.ui.commons.RichTooltip;
}

typedef RichTooltipArgs = sap.ui.core.TooltipBase.TooltipBaseArgs & {

	/**
	* Tool tip title to be displayed in the header.
	*/
	@:optional var title:String;

	/**
	* If RichTooltip contains an image, this property is used to define the source path.
	*/
	@:optional var imageSrc:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* This property is an individual text that will be used instead of the default ValueState text
	*/
	@:optional var valueStateText:String;

	/**
	* This is the alt text for the image
	*/
	@:optional var imageAltText:String;

    /**
    * FormattedTextView control used in the content area to enable HTML-text within the content
    */
	@:optional var formattedText:haxe.extern.EitherType<String,sap.ui.commons.FormattedTextView>;

    /**
    * Value State Text that can be specified individually.
    */
	@:optional var individualStateText:haxe.extern.EitherType<String,sap.ui.commons.FormattedTextView>;
}
