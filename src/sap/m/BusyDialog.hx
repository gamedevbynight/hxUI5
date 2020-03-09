package sap.m;

@:native("sap.m.BusyDialog")

/**
* BusyDialog is used to indicate that the system is busy. <h3>Overview</h3> When the busy dialog is displayed, the whole application is blocked. <h3>Structure</h3> The busy dialog can hold several elements, most of which are optional. <ul> <li><code>title</code> - A title for the dialog. By default, there is no title.</li> <li><code>text</code> - A text displayed above the busy animation.</li> <li><code>showCancelButton</code> - An optional Cancel button to stop the execution.</li> <li><code>customIcon</code> - An optional alternative icon to use as a busy animation.</li> </ul> <h3>Usage</h3> <h4>When to use</h4> <ul> <li>The operation lasts more than one second.</li> <li>You want to indicate loading in a page-to-page navigation (lightweight version).</li> <li>Offer a Cancel button if you expect the process to run more than 10 seconds.</li> <li> If you do not show a title or text, use the {@link sap.ui.core.InvisibleText invisible text} control to provide the reason for users with assistive technologies.</li> </ul> <h4>When not to use</h4> <ul> <li>The screen is not supposed to be blocked. Use a {@link sap.m.BusyIndicator} for the specific application part.</li> <li>Do not use the title of the busy dialog. Provide a precise text describing the operation in <code>text</code>.</li> </ul>
*/
extern class BusyDialog extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:BusyDialogArgs):Void {})
	public function new(?mSettings:BusyDialogArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.BusyDialog{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.BusyDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:close close} event of this <code>sap.m.BusyDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.BusyDialog</code> itself.

Fires when the busy dialog is closed. Note: the BusyDialog will not be closed by the InstanceManager.closeAllDialogs method
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.BusyDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.BusyDialog;

	/**
	* Closes the BusyDialog.
	* @param	isClosedFromUserInteraction Indicates if the BusyDialog is closed from a user interaction.
	* @return	The modified BusyDialog.
	*/
	public function close( isClosedFromUserInteraction:Bool):sap.m.BusyDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:close close} event of this <code>sap.m.BusyDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClose( fnFunction:()->Void, ?oListener:Dynamic):sap.m.BusyDialog;

	/**
	* Creates a new subclass of class sap.m.BusyDialog with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getCancelButtonText cancelButtonText}.

The text of the cancel button. The default text is "Cancel" (translated to the respective language).

Default value is <code>empty string</code>.
	* @return	Value of property <code>cancelButtonText</code>
	*/
	public function getCancelButtonText( ):String;

	/**
	* Gets current value of property {@link #getCustomIcon customIcon}.

Icon, used from the BusyIndicator. This icon is invisible in iOS platform and it is density aware. You can use the density convention (@2, @1.5, etc.) to provide higher resolution image for higher density screens.

Default value is <code>empty string</code>.
	* @return	Value of property <code>customIcon</code>
	*/
	public function getCustomIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getCustomIconDensityAware customIconDensityAware}.

If this is set to <code>false</code>, the source image will be loaded directly without attempting to fetch the density perfect image for high density devices. By default, this is set to <code>true</code> but then one or more requests are sent trying to get the density perfect version of the image.

If bandwidth is the key for the application, set this value to <code>false</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>customIconDensityAware</code>
	*/
	public function getCustomIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getCustomIconHeight customIconHeight}.

Height of the provided icon with default value "44px".

Default value is <code>44px</code>.
	* @return	Value of property <code>customIconHeight</code>
	*/
	public function getCustomIconHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getCustomIconRotationSpeed customIconRotationSpeed}.

Defines the rotation speed of the given image. If GIF file is used, the speed has to be set to 0. The value is in milliseconds.

Default value is <code>1000</code>.
	* @return	Value of property <code>customIconRotationSpeed</code>
	*/
	public function getCustomIconRotationSpeed( ):Int;

	/**
	* Gets current value of property {@link #getCustomIconWidth customIconWidth}.

Width of the provided icon with default value "44px".

Default value is <code>44px</code>.
	* @return	Value of property <code>customIconWidth</code>
	*/
	public function getCustomIconWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets the DOM reference for the BusyDialog.
	* @return	Dom reference.
	*/
	public function getDomRef( ):sap.m.BusyDialog;

	/**
	* Returns a metadata object for class sap.m.BusyDialog.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowCancelButton showCancelButton}.

Indicates if the cancel button will be rendered inside the busy dialog. The default value is set to <code>false</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>showCancelButton</code>
	*/
	public function getShowCancelButton( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Optional text displayed inside the dialog.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

Sets the title of the BusyDialog. The default value is an empty string.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Opens the BusyDialog.
	* @return	BusyDialog reference for chaining.
	*/
	public function open( ):sap.m.BusyDialog;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Shows the text for the cancel button.
	* @param	sText Text for the cancel button.
	* @return	The modified BusyDialog.
	*/
	public function setCancelButtonText( sText:String):sap.m.BusyDialog;

	/**
	* Sets custom icon.
	* @param	sIcon Icon to use as a busy animation.
	* @return	BusyDialog reference for chaining.
	*/
	public function setCustomIcon( sIcon:String):sap.m.BusyDialog;

	/**
	* Sets the density of the custom icon.
	* @param	bIsDensityAware Determines if the source image will be loaded directly without attempting to fetch the density for high density devices.
	* @return	BusyDialog reference for chaining.
	*/
	public function setCustomIconDensityAware( bIsDensityAware:Bool):sap.m.BusyDialog;

	/**
	* Sets the height of the custom icon.
	* @param	sHeight Height of the provided icon in CSSSize.
	* @return	BusyDialog reference for chaining.
	*/
	public function setCustomIconHeight( sHeight:String):sap.m.BusyDialog;

	/**
	* Sets the rotation speed of the custom icon.
	* @param	iSpeed Defines the rotation speed of the given image.
	* @return	BusyDialog reference for chaining.
	*/
	public function setCustomIconRotationSpeed( iSpeed:Int):sap.m.BusyDialog;

	/**
	* Sets the width of the custom icon.
	* @param	sWidth Width of the provided icon in CSSSize.
	* @return	BusyDialog reference for chaining.
	*/
	public function setCustomIconWidth( sWidth:String):sap.m.BusyDialog;

	/**
	* Shows the cancel button.
	* @param	bIsCancelButtonShown Determines if the Cancel button is shown.
	* @return	BusyDialog reference for chaining.
	*/
	public function setShowCancelButton( bIsCancelButtonShown:Bool):sap.m.BusyDialog;

	/**
	* Sets the text for the BusyDialog.
	* @param	sText The text for the BusyDialog.
	* @return	BusyDialog reference for chaining.
	*/
	public function setText( sText:String):sap.m.BusyDialog;

	/**
	* Sets the title for the BusyDialog.
	* @param	sTitle The title for the BusyDialog.
	* @return	BusyDialog reference for chaining.
	*/
	public function setTitle( sTitle:String):sap.m.BusyDialog;

	/**
	* Sets the tooltip for the BusyDialog.
	* @param	sTooltip The tooltip for the BusyDialog.
	* @return	BusyDialog reference for chaining.
	*/
	public function setTooltip( sTooltip:String):sap.m.BusyDialog;
}

typedef BusyDialogArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Optional text displayed inside the dialog.
	*/
	@:optional var text:String;

	/**
	* Sets the title of the BusyDialog. The default value is an empty string.
	*/
	@:optional var title:String;

	/**
	* Icon, used from the BusyIndicator. This icon is invisible in iOS platform and it is density aware. You can use the density convention (@2, @1.5, etc.) to provide higher resolution image for higher density screens.
	*/
	@:optional var customIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the rotation speed of the given image. If GIF file is used, the speed has to be set to 0. The value is in milliseconds.
	*/
	@:optional var customIconRotationSpeed:haxe.extern.EitherType<String,Int>;

	/**
	* If this is set to <code>false</code>, the source image will be loaded directly without attempting to fetch the density perfect image for high density devices. By default, this is set to <code>true</code> but then one or more requests are sent trying to get the density perfect version of the image.

If bandwidth is the key for the application, set this value to <code>false</code>.
	*/
	@:optional var customIconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Width of the provided icon with default value "44px".
	*/
	@:optional var customIconWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Height of the provided icon with default value "44px".
	*/
	@:optional var customIconHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The text of the cancel button. The default text is "Cancel" (translated to the respective language).
	*/
	@:optional var cancelButtonText:String;

	/**
	* Indicates if the cancel button will be rendered inside the busy dialog. The default value is set to <code>false</code>.
	*/
	@:optional var showCancelButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fires when the busy dialog is closed. Note: the BusyDialog will not be closed by the InstanceManager.closeAllDialogs method
	*/
	@:optional var close:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
