package sap.m;

@:native("sap.m.FeedInput")

/**
* The Feed Input allows the user to enter text for a new feed entry and then post it.
*/
extern class FeedInput extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:FeedInputArgs):Void {})
	public function new(?mSettings:FeedInputArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:post post} event of this <code>sap.m.FeedInput</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FeedInput</code> itself.

The Post event is triggered when the user has entered a value and pressed the post button. After firing this event, the value is reset.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FeedInput</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPost( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.FeedInput;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:post post} event of this <code>sap.m.FeedInput</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPost( fnFunction:()->Void, ?oListener:Dynamic):sap.m.FeedInput;

	/**
	* Creates a new subclass of class sap.m.FeedInput with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAriaLabelForPicture ariaLabelForPicture}.

Text for Picture which will be read by screenreader. If a new ariaLabelForPicture is set, any previously set ariaLabelForPicture is deactivated.
	* @return	Value of property <code>ariaLabelForPicture</code>
	*/
	public function getAriaLabelForPicture( ):String;

	/**
	* Gets current value of property {@link #getButtonTooltip buttonTooltip}.

Sets a new tooltip for Submit button. The tooltip can either be a simple string (which in most cases will be rendered as the title attribute of this element) or an instance of sap.ui.core.TooltipBase. If a new tooltip is set, any previously set tooltip is deactivated. The default value is set language dependent.

Default value is <code>Submit</code>.
	* @return	Value of property <code>buttonTooltip</code>
	*/
	public function getButtonTooltip( ):sap.ui.core.TooltipBase;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Set this flag to "false" to disable both text input and post button.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getGrowing growing}.

Indicates the ability of the control to automatically grow and shrink dynamically with its content.

Default value is <code>false</code>.
	* @return	Value of property <code>growing</code>
	*/
	public function getGrowing( ):Bool;

	/**
	* Gets current value of property {@link #getGrowingMaxLines growingMaxLines}.

Defines the maximum number of lines that the control can grow. Value is set to 0 by default, which means an unlimited numbers of rows. <b>Note:</b> Minimum value to set is equal to the <code>rows</code> property value, maximum value is 15.

Default value is <code>0</code>.
	* @return	Value of property <code>growingMaxLines</code>
	*/
	public function getGrowingMaxLines( ):Int;

	/**
	* Gets current value of property {@link #getIcon icon}.

Icon to be displayed as a graphical element within the feed input. This can be an image or an icon from the icon font.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

Some mobile devices support higher resolution images while others do not. Therefore, you should provide image resources for all relevant densities. If the property is set to "true", one or more requests are sent to the server to try and get the perfect density version of an image. If an image of a certain density is not available, the image control falls back to the default image, which should be provided.

If you do not have higher resolution images, you should set the property to "false" to avoid unnecessary round-trips.

Please be aware that this property is relevant only for images and not for icons.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getMaxLength maxLength}.

The maximum length (the maximum number of characters) for the feed's input value. By default this is not limited.

Default value is <code>0</code>.
	* @return	Value of property <code>maxLength</code>
	*/
	public function getMaxLength( ):Int;

	/**
	* Returns a metadata object for class sap.m.FeedInput.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPlaceholder placeholder}.

The placeholder text shown in the input area as long as the user has not entered any text value.

Default value is <code>Post something here</code>.
	* @return	Value of property <code>placeholder</code>
	*/
	public function getPlaceholder( ):String;

	/**
	* Gets current value of property {@link #getRows rows}.

Defines the number of visible text lines for the control. <b>Note:</b> Minimum value is 2, maximum value is 15.

Default value is <code>2</code>.
	* @return	Value of property <code>rows</code>
	*/
	public function getRows( ):Int;

	/**
	* Gets current value of property {@link #getShowExceededText showExceededText}.

Determines whether the characters, exceeding the maximum allowed character count, are visible in the input field.

If set to <code>false</code>, the user is not allowed to enter more characters than what is set in the <code>maxLength</code> property. If set to <code>true</code>, the characters exceeding the <code>maxLength</code> value are selected on paste and the counter below the input field displays their number.

Default value is <code>false</code>.
	* @return	Value of property <code>showExceededText</code>
	*/
	public function getShowExceededText( ):Bool;

	/**
	* Gets current value of property {@link #getShowIcon showIcon}.

If set to "true" (default), icons will be displayed. In case no icon is provided the standard placeholder will be displayed. if set to "false" icons are hidden

Default value is <code>true</code>.
	* @return	Value of property <code>showIcon</code>
	*/
	public function getShowIcon( ):Bool;

	/**
	* Gets current value of property {@link #getValue value}.

The text value of the feed input. As long as the user has not entered any text the post button is disabled
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Sets a new value for property {@link #getAriaLabelForPicture ariaLabelForPicture}.

Text for Picture which will be read by screenreader. If a new ariaLabelForPicture is set, any previously set ariaLabelForPicture is deactivated.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAriaLabelForPicture New value for property <code>ariaLabelForPicture</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAriaLabelForPicture( sAriaLabelForPicture:String):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getButtonTooltip buttonTooltip}.

Sets a new tooltip for Submit button. The tooltip can either be a simple string (which in most cases will be rendered as the title attribute of this element) or an instance of sap.ui.core.TooltipBase. If a new tooltip is set, any previously set tooltip is deactivated. The default value is set language dependent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Submit</code>.
	* @param	sButtonTooltip New value for property <code>buttonTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setButtonTooltip( ?sButtonTooltip:sap.ui.core.TooltipBase):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Set this flag to "false" to disable both text input and post button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getGrowing growing}.

Indicates the ability of the control to automatically grow and shrink dynamically with its content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bGrowing New value for property <code>growing</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrowing( ?bGrowing:Bool):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getGrowingMaxLines growingMaxLines}.

Defines the maximum number of lines that the control can grow. Value is set to 0 by default, which means an unlimited numbers of rows. <b>Note:</b> Minimum value to set is equal to the <code>rows</code> property value, maximum value is 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iGrowingMaxLines New value for property <code>growingMaxLines</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrowingMaxLines( ?iGrowingMaxLines:Int):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Icon to be displayed as a graphical element within the feed input. This can be an image or an icon from the icon font.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

Some mobile devices support higher resolution images while others do not. Therefore, you should provide image resources for all relevant densities. If the property is set to "true", one or more requests are sent to the server to try and get the perfect density version of an image. If an image of a certain density is not available, the image control falls back to the default image, which should be provided.

If you do not have higher resolution images, you should set the property to "false" to avoid unnecessary round-trips.

Please be aware that this property is relevant only for images and not for icons.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( ?bIconDensityAware:Bool):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getMaxLength maxLength}.

The maximum length (the maximum number of characters) for the feed's input value. By default this is not limited.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxLength New value for property <code>maxLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLength( ?iMaxLength:Int):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getPlaceholder placeholder}.

The placeholder text shown in the input area as long as the user has not entered any text value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Post something here</code>.
	* @param	sPlaceholder New value for property <code>placeholder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholder( ?sPlaceholder:String):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getRows rows}.

Defines the number of visible text lines for the control. <b>Note:</b> Minimum value is 2, maximum value is 15.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	iRows New value for property <code>rows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRows( ?iRows:Int):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getShowExceededText showExceededText}.

Determines whether the characters, exceeding the maximum allowed character count, are visible in the input field.

If set to <code>false</code>, the user is not allowed to enter more characters than what is set in the <code>maxLength</code> property. If set to <code>true</code>, the characters exceeding the <code>maxLength</code> value are selected on paste and the counter below the input field displays their number.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowExceededText New value for property <code>showExceededText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowExceededText( ?bShowExceededText:Bool):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getShowIcon showIcon}.

If set to "true" (default), icons will be displayed. In case no icon is provided the standard placeholder will be displayed. if set to "false" icons are hidden

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowIcon New value for property <code>showIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowIcon( ?bShowIcon:Bool):sap.m.FeedInput;

	/**
	* Sets a new value for property {@link #getValue value}.

The text value of the feed input. As long as the user has not entered any text the post button is disabled

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( sValue:String):sap.m.FeedInput;
}

typedef FeedInputArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Set this flag to "false" to disable both text input and post button.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the number of visible text lines for the control. <b>Note:</b> Minimum value is 2, maximum value is 15.
	*/
	@:optional var rows:haxe.extern.EitherType<String,Int>;

	/**
	* Determines whether the characters, exceeding the maximum allowed character count, are visible in the input field.

If set to <code>false</code>, the user is not allowed to enter more characters than what is set in the <code>maxLength</code> property. If set to <code>true</code>, the characters exceeding the <code>maxLength</code> value are selected on paste and the counter below the input field displays their number.
	*/
	@:optional var showExceededText:haxe.extern.EitherType<String,Bool>;

	/**
	* The maximum length (the maximum number of characters) for the feed's input value. By default this is not limited.
	*/
	@:optional var maxLength:haxe.extern.EitherType<String,Int>;

	/**
	* Indicates the ability of the control to automatically grow and shrink dynamically with its content.
	*/
	@:optional var growing:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the maximum number of lines that the control can grow. Value is set to 0 by default, which means an unlimited numbers of rows. <b>Note:</b> Minimum value to set is equal to the <code>rows</code> property value, maximum value is 15.
	*/
	@:optional var growingMaxLines:haxe.extern.EitherType<String,Int>;

	/**
	* The placeholder text shown in the input area as long as the user has not entered any text value.
	*/
	@:optional var placeholder:String;

	/**
	* The text value of the feed input. As long as the user has not entered any text the post button is disabled
	*/
	@:optional var value:String;

	/**
	* Icon to be displayed as a graphical element within the feed input. This can be an image or an icon from the icon font.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* If set to "true" (default), icons will be displayed. In case no icon is provided the standard placeholder will be displayed. if set to "false" icons are hidden
	*/
	@:optional var showIcon:haxe.extern.EitherType<String,Bool>;

	/**
	* Some mobile devices support higher resolution images while others do not. Therefore, you should provide image resources for all relevant densities. If the property is set to "true", one or more requests are sent to the server to try and get the perfect density version of an image. If an image of a certain density is not available, the image control falls back to the default image, which should be provided.

If you do not have higher resolution images, you should set the property to "false" to avoid unnecessary round-trips.

Please be aware that this property is relevant only for images and not for icons.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets a new tooltip for Submit button. The tooltip can either be a simple string (which in most cases will be rendered as the title attribute of this element) or an instance of sap.ui.core.TooltipBase. If a new tooltip is set, any previously set tooltip is deactivated. The default value is set language dependent.
	*/
	@:optional var buttonTooltip:haxe.extern.EitherType<String,sap.ui.core.TooltipBase>;

	/**
	* Text for Picture which will be read by screenreader. If a new ariaLabelForPicture is set, any previously set ariaLabelForPicture is deactivated.
	*/
	@:optional var ariaLabelForPicture:String;

	/**
	* The Post event is triggered when the user has entered a value and pressed the post button. After firing this event, the value is reset.
	*/
	@:optional var post:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
