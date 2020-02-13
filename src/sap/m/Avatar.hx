package sap.m;

@:native("sap.m.Avatar")

/**
* An image-like control that has different display options for representing images, initials, and icons.

<h3>Overview</h3>

The <code>Avatar</code> control allows the usage of different content, shapes, and sizes depending on the use case.

The content types that can be displayed are either images, icons, or initials. The shape can be circular or square. There are several predefined sizes, as well as an option to set a custom size.

<h3>Usage</h3>

Up to two Latin letters can be displayed as initials in an <code>Avatar</code>. If there are more than two letters, or if there's a non-Latin character present, a default image placeholder will be created.

There are two options for how the displayed image can fit inside the available area: <ul> <li>Cover - the image is scaled to cover all of the available area</li> <li>Contain - the image is scaled as large as possible while both its height and width fit inside the avalable area</li> </ul> <b>Note:</b> To set a custom size for the <code>Avatar</code>, you have to choose the <code>Custom</code> value for the <code>displaySize</code> property. Then, you have to set both the <code>customDisplaySize</code> and <code>customFontSize</code> properties.
*/
extern class Avatar extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:AvatarArgs):Void {})
	public function new(?mSettings:AvatarArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.Avatar{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.Avatar;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.Avatar{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.Avatar;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.Avatar</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Avatar</code> itself.

Fired when the user selects the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Avatar</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Avatar;

	/**
	* Binds aggregation {@link #getDetailBox detailBox} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindDetailBox( oBindingInfo:Dynamic):sap.m.Avatar;

	/**
	* Destroys the detailBox in the aggregation {@link #getDetailBox detailBox}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDetailBox( ):sap.m.Avatar;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.Avatar</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Avatar;

	/**
	* Creates a new subclass of class sap.m.Avatar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getBackgroundColor backgroundColor}.

Determines the background color of the control.

<b>Note:</b> By using background colors from the predefined sets, your colors can later be customized from the Theme Designer.

Default value is <code>Accent6</code>.
	* @return	Value of property <code>backgroundColor</code>
	*/
	public function getBackgroundColor( ):sap.m.AvatarColor;

	/**
	* Gets current value of property {@link #getCustomDisplaySize customDisplaySize}.

Specifies custom display size of the <code>Avatar</code>.

<b>Note:</b> It takes effect if the <code>displaySize</code> property is set to <code>Custom</code>.

Default value is <code>3rem</code>.
	* @return	Value of property <code>customDisplaySize</code>
	*/
	public function getCustomDisplaySize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getCustomFontSize customFontSize}.

Specifies custom font size of the <code>Avatar</code>.

<b>Note:</b> It takes effect if the <code>displaySize</code> property is set to <code>Custom</code>.

Default value is <code>1.125rem</code>.
	* @return	Value of property <code>customFontSize</code>
	*/
	public function getCustomFontSize( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getDetailBox detailBox}.

A <code>sap.m.LightBox</code> instance, that will be opened automatically when the user interacts with the <code>Avatar</code> control.

The <code>press</code> event will still be fired.
	* @return	null
	*/
	public function getDetailBox( ):sap.m.LightBox;

	/**
	* Gets current value of property {@link #getDisplayShape displayShape}.

Defines the shape of the <code>Avatar</code>.

Default value is <code>Circle</code>.
	* @return	Value of property <code>displayShape</code>
	*/
	public function getDisplayShape( ):sap.m.AvatarShape;

	/**
	* Gets current value of property {@link #getDisplaySize displaySize}.

Sets a predefined display size of the <code>Avatar</code>.

Default value is <code>S</code>.
	* @return	Value of property <code>displaySize</code>
	*/
	public function getDisplaySize( ):sap.m.AvatarSize;

	/**
	* Gets current value of property {@link #getFallbackIcon fallbackIcon}.

Defines the fallback icon displayed in case of wrong image src and no initials set.

<b>Notes:</b> <ul> <li>If not set, a default fallback icon is displayed depending on the set <code>displayShape</code> property.</li> <li>Accepted values are only icons from the SAP icon font.</li> </ul>
	* @return	Value of property <code>fallbackIcon</code>
	*/
	public function getFallbackIcon( ):String;

	/**
	* Gets current value of property {@link #getImageFitType imageFitType}.

Specifies how an image would fit in the <code>Avatar</code>.

Default value is <code>Cover</code>.
	* @return	Value of property <code>imageFitType</code>
	*/
	public function getImageFitType( ):sap.m.AvatarImageFitType;

	/**
	* Gets current value of property {@link #getInitials initials}.

Defines the displayed initials.
	* @return	Value of property <code>initials</code>
	*/
	public function getInitials( ):String;

	/**
	* Returns a metadata object for class sap.m.Avatar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowBorder showBorder}.

Determines whether the control is displayed with border.

Default value is <code>false</code>.
	* @return	Value of property <code>showBorder</code>
	*/
	public function getShowBorder( ):Bool;

	/**
	* Gets current value of property {@link #getSrc src}.

Determines the path to the desired image or icon.
	* @return	Value of property <code>src</code>
	*/
	public function getSrc( ):sap.ui.core.URI;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getBackgroundColor backgroundColor}.

Determines the background color of the control.

<b>Note:</b> By using background colors from the predefined sets, your colors can later be customized from the Theme Designer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Accent6</code>.
	* @param	sBackgroundColor New value for property <code>backgroundColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundColor( sBackgroundColor:sap.m.AvatarColor):sap.m.Avatar;

	/**
	* Sets a new value for property {@link #getCustomDisplaySize customDisplaySize}.

Specifies custom display size of the <code>Avatar</code>.

<b>Note:</b> It takes effect if the <code>displaySize</code> property is set to <code>Custom</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>3rem</code>.
	* @param	sCustomDisplaySize New value for property <code>customDisplaySize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomDisplaySize( sCustomDisplaySize:sap.ui.core.CSSSize):sap.m.Avatar;

	/**
	* Sets a new value for property {@link #getCustomFontSize customFontSize}.

Specifies custom font size of the <code>Avatar</code>.

<b>Note:</b> It takes effect if the <code>displaySize</code> property is set to <code>Custom</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1.125rem</code>.
	* @param	sCustomFontSize New value for property <code>customFontSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomFontSize( sCustomFontSize:sap.ui.core.CSSSize):sap.m.Avatar;
	@:overload( function(oLightBox:sap.m.LightBox):Dynamic{ })

	/**
	* Sets the <code>detailBox</code> aggregation.
	* @param	oLightBox Instance of the <code>LightBox</code> control or undefined
	* @return	<code>this</code> for chaining
	*/
	public function setDetailBox( oLightBox:Dynamic):Dynamic;

	/**
	* Sets a new value for property {@link #getDisplayShape displayShape}.

Defines the shape of the <code>Avatar</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Circle</code>.
	* @param	sDisplayShape New value for property <code>displayShape</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayShape( sDisplayShape:sap.m.AvatarShape):sap.m.Avatar;

	/**
	* Sets a new value for property {@link #getDisplaySize displaySize}.

Sets a predefined display size of the <code>Avatar</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>S</code>.
	* @param	sDisplaySize New value for property <code>displaySize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplaySize( sDisplaySize:sap.m.AvatarSize):sap.m.Avatar;

	/**
	* Sets a new value for property {@link #getFallbackIcon fallbackIcon}.

Defines the fallback icon displayed in case of wrong image src and no initials set.

<b>Notes:</b> <ul> <li>If not set, a default fallback icon is displayed depending on the set <code>displayShape</code> property.</li> <li>Accepted values are only icons from the SAP icon font.</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFallbackIcon New value for property <code>fallbackIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFallbackIcon( sFallbackIcon:String):sap.m.Avatar;

	/**
	* Sets a new value for property {@link #getImageFitType imageFitType}.

Specifies how an image would fit in the <code>Avatar</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Cover</code>.
	* @param	sImageFitType New value for property <code>imageFitType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImageFitType( sImageFitType:sap.m.AvatarImageFitType):sap.m.Avatar;

	/**
	* Sets a new value for property {@link #getInitials initials}.

Defines the displayed initials.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sInitials New value for property <code>initials</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitials( sInitials:String):sap.m.Avatar;

	/**
	* Sets a new value for property {@link #getShowBorder showBorder}.

Determines whether the control is displayed with border.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowBorder New value for property <code>showBorder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowBorder( bShowBorder:Bool):sap.m.Avatar;

	/**
	* Sets a new value for property {@link #getSrc src}.

Determines the path to the desired image or icon.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSrc New value for property <code>src</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSrc( sSrc:sap.ui.core.URI):sap.m.Avatar;

	/**
	* Unbinds aggregation {@link #getDetailBox detailBox} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindDetailBox( ):sap.m.Avatar;
}

typedef AvatarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the path to the desired image or icon.
	*/
	@:optional var src:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the displayed initials.
	*/
	@:optional var initials:String;

	/**
	* Defines the shape of the <code>Avatar</code>.
	*/
	@:optional var displayShape:haxe.extern.EitherType<String,sap.m.AvatarShape>;

	/**
	* Sets a predefined display size of the <code>Avatar</code>.
	*/
	@:optional var displaySize:haxe.extern.EitherType<String,sap.m.AvatarSize>;

	/**
	* Specifies custom display size of the <code>Avatar</code>.

<b>Note:</b> It takes effect if the <code>displaySize</code> property is set to <code>Custom</code>.
	*/
	@:optional var customDisplaySize:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies custom font size of the <code>Avatar</code>.

<b>Note:</b> It takes effect if the <code>displaySize</code> property is set to <code>Custom</code>.
	*/
	@:optional var customFontSize:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies how an image would fit in the <code>Avatar</code>.
	*/
	@:optional var imageFitType:haxe.extern.EitherType<String,sap.m.AvatarImageFitType>;

	/**
	* Defines the fallback icon displayed in case of wrong image src and no initials set.

<b>Notes:</b> <ul> <li>If not set, a default fallback icon is displayed depending on the set <code>displayShape</code> property.</li> <li>Accepted values are only icons from the SAP icon font.</li> </ul>
	*/
	@:optional var fallbackIcon:String;

	/**
	* Determines the background color of the control.

<b>Note:</b> By using background colors from the predefined sets, your colors can later be customized from the Theme Designer.
	*/
	@:optional var backgroundColor:haxe.extern.EitherType<String,sap.m.AvatarColor>;

	/**
	* Determines whether the control is displayed with border.
	*/
	@:optional var showBorder:haxe.extern.EitherType<String,Bool>;

    /**
    * A <code>sap.m.LightBox</code> instance, that will be opened automatically when the user interacts with the <code>Avatar</code> control.

The <code>press</code> event will still be fired.
    */
	@:optional var detailBox:haxe.extern.EitherType<String,sap.m.LightBox>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledBy).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired when the user selects the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
