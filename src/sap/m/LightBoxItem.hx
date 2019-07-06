package sap.m;

@:native("sap.m.LightBoxItem")

/**
* Represents an item which is displayed within an sap.m.LightBox. This item holds all properties of the image as well as the title and subtitle.
*/
extern class LightBoxItem extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:LightBoxItemArgs):Void {})
	public function new(?mSettings:LightBoxItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.LightBoxItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAlt alt}.

Alt value for the image

Default value is <code>empty string</code>.
	* @return	Value of property <code>alt</code>
	*/
	public function getAlt( ):String;

	/**
	* Gets current value of property {@link #getImageSrc imageSrc}.

Source for the image. This property is mandatory. If not set the popup will not open

Default value is <code>empty string</code>.
	* @return	Value of property <code>imageSrc</code>
	*/
	public function getImageSrc( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.m.LightBoxItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getSubtitle subtitle}.

Subtitle text for the image

Default value is <code>empty string</code>.
	* @return	Value of property <code>subtitle</code>
	*/
	public function getSubtitle( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

Title text for the image. This property is mandatory.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Sets the alt text of the image.
	* @param	alt The alt text
	* @return	Pointer to the control instance for chaining.
	*/
	public function setAlt( alt:String):sap.m.LightBoxItem;

	/**
	* Sets the source of the image.
	* @param	sImageSrc The image URI
	* @return	Pointer to the control instance for chaining.
	*/
	public function setImageSrc( sImageSrc:sap.ui.core.URI):sap.m.LightBoxItem;

	/**
	* Sets the subtitle of the image.
	* @param	subtitleText The image subtitle
	* @return	Pointer to the control instance for chaining.
	*/
	public function setSubtitle( subtitleText:String):sap.m.LightBoxItem;

	/**
	* Sets the title of the image.
	* @param	title The image title
	* @return	Pointer to the control instance for chaining.
	*/
	public function setTitle( title:String):sap.m.LightBoxItem;
}

typedef LightBoxItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Source for the image. This property is mandatory. If not set the popup will not open
	*/
	@:optional var imageSrc:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Alt value for the image
	*/
	@:optional var alt:String;

	/**
	* Title text for the image. This property is mandatory.
	*/
	@:optional var title:String;

	/**
	* Subtitle text for the image
	*/
	@:optional var subtitle:String;

    /**
    * The image aggregation inside the LightBoxItem control.
    */
	@:optional var _image:haxe.extern.EitherType<String,sap.m.Image>;

    /**
    * The title aggregation inside the LightBoxItem control.
    */
	@:optional var _title:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * The subtitle aggregation inside the LightBoxItem control.
    */
	@:optional var _subtitle:haxe.extern.EitherType<String,sap.m.Text>;
}
