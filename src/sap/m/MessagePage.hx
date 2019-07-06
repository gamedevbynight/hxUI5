package sap.m;

@:native("sap.m.MessagePage")

/**
* Displays an empty page with an icon and a header when certain conditions are met. <h3>Overview</h3> MessagePage is displayed when there is no data or matching content. There are different use cases where a MessagePage might be visualized, for example: <ul> <li>The search query returned no results</li> <li>The app contains no items</li> <li>There are too many items</li> <li>The application is loading</li> </ul> The layout is unchanged but the text and icon vary depending on the use case. <h3>Usage</h3> <b>Note:</b> The <code>MessagePage</code> is not intended to be used as a top-level control, but rather used within controls such as <code>NavContainer</code>, <code>App</code>, <code>Shell</code> or other container controls.
*/
extern class MessagePage extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MessagePageArgs):Void {})
	public function new(?mSettings:MessagePageArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.MessagePage{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.MessagePage;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.MessagePage{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.MessagePage;

	/**
	* Adds some button to the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addButton( oButton:sap.m.Button):sap.m.MessagePage;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:navButtonPress navButtonPress} event of this <code>sap.m.MessagePage</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.MessagePage</code> itself.

This event is fired when Nav Button is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.MessagePage</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachNavButtonPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePage;

	/**
	* Destroys all the buttons in the aggregation {@link #getButtons buttons}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyButtons( ):sap.m.MessagePage;

	/**
	* Destroys the customDescription in the aggregation {@link #getCustomDescription customDescription}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomDescription( ):sap.m.MessagePage;

	/**
	* Destroys the customText in the aggregation {@link #getCustomText customText}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomText( ):sap.m.MessagePage;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:navButtonPress navButtonPress} event of this <code>sap.m.MessagePage</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachNavButtonPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.MessagePage;

	/**
	* Creates a new subclass of class sap.m.MessagePage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
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
	* Gets content of aggregation {@link #getButtons buttons}.

The buttons displayed under the description text.

<b>Note:</b> Buttons added to this aggregation are both vertically and horizontally centered. Depending on the available space, they may be rendered on several lines.
	* @return	null
	*/
	public function getButtons( ):Array<sap.m.Button>;

	/**
	* Gets content of aggregation {@link #getCustomDescription customDescription}.

The (optional) custom description control of this page. Use this aggregation when the "description" (sap.m.Text) control needs to be replaced with an sap.m.Link control. "description" and "textDirection" setters can be used for this aggregation.
	* @return	null
	*/
	public function getCustomDescription( ):sap.m.Link;

	/**
	* Gets content of aggregation {@link #getCustomText customText}.

The (optional) custom Text control of this page. Use this aggregation when the "text" (sap.m.Text) control needs to be replaced with an sap.m.Link control. "text" and "textDirection" setters can be used for this aggregation.
	* @return	null
	*/
	public function getCustomText( ):sap.m.Link;

	/**
	* Gets current value of property {@link #getDescription description}.

Determines the detailed description that shows additional information on the MessagePage.

Default value is <code>Check the filter settings.</code>.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getEnableFormattedText enableFormattedText}.

Defines whether the value set in the <code>description</code> property is displayed as formatted text in HTML format.

For details regarding supported HTML tags, see {@link sap.m.FormattedText}

Default value is <code>false</code>.
	* @return	Value of property <code>enableFormattedText</code>
	*/
	public function getEnableFormattedText( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

Determines the icon displayed on the MessagePage.

Default value is <code>sap-icon://documents</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconAlt iconAlt}.

Defines the alt attribute of the icon displayed on the <code>MessagePage</code>.
	* @return	Value of property <code>iconAlt</code>
	*/
	public function getIconAlt( ):String;

	/**
	* Returns a metadata object for class sap.m.MessagePage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getShowHeader showHeader}.

Determines the visibility of the MessagePage header. Can be used to hide the header of the MessagePage when it's embedded in another page.

Default value is <code>true</code>.
	* @return	Value of property <code>showHeader</code>
	*/
	public function getShowHeader( ):Bool;

	/**
	* Gets current value of property {@link #getShowNavButton showNavButton}.

Determines the visibility of the navigation button in MessagePage header.

Default value is <code>false</code>.
	* @return	Value of property <code>showNavButton</code>
	*/
	public function getShowNavButton( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Determines the main text displayed on the MessagePage.

Default value is <code>No matching items found.</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Determines the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getTitle title}.

Determines the title in the header of MessagePage.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getButtons buttons}. and returns its index if found or -1 otherwise.
	* @param	oButton The button whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfButton( oButton:sap.m.Button):Int;

	/**
	* Inserts a button into the aggregation {@link #getButtons buttons}.
	* @param	oButton The button to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the button should be inserted at; for a negative value of <code>iIndex</code>, the button is inserted at position 0; for a value greater than the current size of the aggregation, the button is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertButton( oButton:sap.m.Button, iIndex:Int):sap.m.MessagePage;

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

	/**
	* Removes all the controls from the aggregation {@link #getButtons buttons}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllButtons( ):Array<sap.m.Button>;
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
	@:overload( function(vButton:Int):sap.m.Button{ })
	@:overload( function(vButton:String):sap.m.Button{ })

	/**
	* Removes a button from the aggregation {@link #getButtons buttons}.
	* @param	vButton The button to remove or its index or id
	* @return	The removed button or <code>null</code>
	*/
	public function removeButton( vButton:sap.m.Button):sap.m.Button;

	/**
	* Sets the aggregated {@link #getCustomDescription customDescription}.
	* @param	oCustomDescription The customDescription to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomDescription( oCustomDescription:sap.m.Link):sap.m.MessagePage;

	/**
	* Sets the aggregated {@link #getCustomText customText}.
	* @param	oCustomText The customText to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomText( oCustomText:sap.m.Link):sap.m.MessagePage;

	/**
	* Sets a new value for property {@link #getDescription description}.

Determines the detailed description that shows additional information on the MessagePage.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Check the filter settings.</code>.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( sDescription:String):sap.m.MessagePage;

	/**
	* Sets a new value for property {@link #getEnableFormattedText enableFormattedText}.

Defines whether the value set in the <code>description</code> property is displayed as formatted text in HTML format.

For details regarding supported HTML tags, see {@link sap.m.FormattedText}

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableFormattedText New value for property <code>enableFormattedText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableFormattedText( bEnableFormattedText:Bool):sap.m.MessagePage;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Determines the icon displayed on the MessagePage.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>sap-icon://documents</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.MessagePage;

	/**
	* Sets a new value for property {@link #getIconAlt iconAlt}.

Defines the alt attribute of the icon displayed on the <code>MessagePage</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconAlt New value for property <code>iconAlt</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconAlt( sIconAlt:String):sap.m.MessagePage;

	/**
	* Sets a new value for property {@link #getShowHeader showHeader}.

Determines the visibility of the MessagePage header. Can be used to hide the header of the MessagePage when it's embedded in another page.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeader New value for property <code>showHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeader( bShowHeader:Bool):sap.m.MessagePage;

	/**
	* Sets a new value for property {@link #getShowNavButton showNavButton}.

Determines the visibility of the navigation button in MessagePage header.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowNavButton New value for property <code>showNavButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowNavButton( bShowNavButton:Bool):sap.m.MessagePage;

	/**
	* Sets a new value for property {@link #getText text}.

Determines the main text displayed on the MessagePage.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>No matching items found.</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.MessagePage;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Determines the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.m.MessagePage;

	/**
	* Sets a new value for property {@link #getTitle title}.

Determines the title in the header of MessagePage.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.MessagePage;
}

typedef MessagePageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the main text displayed on the MessagePage.
	*/
	@:optional var text:String;

	/**
	* Determines the detailed description that shows additional information on the MessagePage.
	*/
	@:optional var description:String;

	/**
	* Determines the title in the header of MessagePage.
	*/
	@:optional var title:String;

	/**
	* Determines the visibility of the MessagePage header. Can be used to hide the header of the MessagePage when it's embedded in another page.
	*/
	@:optional var showHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the visibility of the navigation button in MessagePage header.
	*/
	@:optional var showNavButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the icon displayed on the MessagePage.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the alt attribute of the icon displayed on the <code>MessagePage</code>.
	*/
	@:optional var iconAlt:String;

	/**
	* Determines the element's text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Defines whether the value set in the <code>description</code> property is displayed as formatted text in HTML format.

For details regarding supported HTML tags, see {@link sap.m.FormattedText}
	*/
	@:optional var enableFormattedText:haxe.extern.EitherType<String,Bool>;

    /**
    * The (optional) custom Text control of this page. Use this aggregation when the "text" (sap.m.Text) control needs to be replaced with an sap.m.Link control. "text" and "textDirection" setters can be used for this aggregation.
    */
	@:optional var customText:haxe.extern.EitherType<String,sap.m.Link>;

    /**
    * The (optional) custom description control of this page. Use this aggregation when the "description" (sap.m.Text) control needs to be replaced with an sap.m.Link control. "description" and "textDirection" setters can be used for this aggregation.
    */
	@:optional var customDescription:haxe.extern.EitherType<String,sap.m.Link>;

    /**
    * The buttons displayed under the description text.

<b>Note:</b> Buttons added to this aggregation are both vertically and horizontally centered. Depending on the available space, they may be rendered on several lines.
    */
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * A header bar which is managed internally by the MessagePage control.
    */
	@:optional var _internalHeader:haxe.extern.EitherType<String,sap.m.Bar>;

    /**
    * The formatted text which is used when enableFormattedText is true.
    */
	@:optional var _formattedText:haxe.extern.EitherType<String,sap.m.FormattedText>;

    /**
    * The text displayed under the icon.
    */
	@:optional var _text:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * The description displayed under the text when enableFormattedText is false.
    */
	@:optional var _description:haxe.extern.EitherType<String,sap.m.Text>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* This event is fired when Nav Button is pressed.
	*/
	@:optional var navButtonPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
