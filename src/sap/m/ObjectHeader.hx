package sap.m;

@:native("sap.m.ObjectHeader")

/**
* <code>ObjectHeader</code> is a display control that enables the user to easily identify a specific object. The object header title is the key identifier of the object and additional text and icons can be used to further distinguish it from other objects.

<h3>Responsive behavior</h3>

When using the <code>sap.m.ObjectHeader</code> in SAP Quartz theme, the breakpoints and layout paddings could be automatically determined by the container's width. To enable this concept and implement responsive padding to the <code>ObjectHeader</code> control, add the following class: <code>sapUiResponsivePadding--header</code>.
*/
extern class ObjectHeader extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ObjectHeaderArgs):Void {})
	public function new(?mSettings:ObjectHeaderArgs):Void;

	/**
	* Adds some additionalNumber to the aggregation {@link #getAdditionalNumbers additionalNumbers}.
	* @param	oAdditionalNumber The additionalNumber to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAdditionalNumber( oAdditionalNumber:sap.m.ObjectNumber):sap.m.ObjectHeader;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.ObjectHeader{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.ObjectHeader;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.ObjectHeader{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.ObjectHeader;

	/**
	* Adds some attribute to the aggregation {@link #getAttributes attributes}.
	* @param	oAttribute The attribute to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAttribute( oAttribute:sap.m.ObjectAttribute):sap.m.ObjectHeader;

	/**
	* Adds some marker to the aggregation {@link #getMarkers markers}.
	* @param	oMarker The marker to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMarker( oMarker:sap.m.ObjectMarker):sap.m.ObjectHeader;

	/**
	* Adds some status to the aggregation {@link #getStatuses statuses}.
	* @param	oStatus The status to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addStatus( oStatus:sap.ui.core.Control):sap.m.ObjectHeader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:iconPress iconPress} event of this <code>sap.m.ObjectHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ObjectHeader</code> itself.

Event is fired when the title icon is active and the user taps/clicks on it
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ObjectHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachIconPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectHeader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:introPress introPress} event of this <code>sap.m.ObjectHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ObjectHeader</code> itself.

Event is fired when the intro is active and the user taps/clicks on it
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ObjectHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachIntroPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectHeader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:titlePress titlePress} event of this <code>sap.m.ObjectHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ObjectHeader</code> itself.

Event is fired when the title is active and the user taps/clicks on it
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ObjectHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTitlePress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectHeader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:titleSelectorPress titleSelectorPress} event of this <code>sap.m.ObjectHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ObjectHeader</code> itself.

Event is fired when the object header title selector (down-arrow) is pressed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ObjectHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTitleSelectorPress( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectHeader;

	/**
	* Destroys all the additionalNumbers in the aggregation {@link #getAdditionalNumbers additionalNumbers}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAdditionalNumbers( ):sap.m.ObjectHeader;

	/**
	* Destroys all the attributes in the aggregation {@link #getAttributes attributes}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAttributes( ):sap.m.ObjectHeader;

	/**
	* Destroys the headerContainer in the aggregation {@link #getHeaderContainer headerContainer}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderContainer( ):sap.m.ObjectHeader;

	/**
	* Destroys all the markers in the aggregation {@link #getMarkers markers}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMarkers( ):sap.m.ObjectHeader;

	/**
	* Destroys all the statuses in the aggregation {@link #getStatuses statuses}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyStatuses( ):sap.m.ObjectHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:iconPress iconPress} event of this <code>sap.m.ObjectHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachIconPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:introPress introPress} event of this <code>sap.m.ObjectHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachIntroPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:titlePress titlePress} event of this <code>sap.m.ObjectHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTitlePress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:titleSelectorPress titleSelectorPress} event of this <code>sap.m.ObjectHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTitleSelectorPress( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.ObjectHeader;

	/**
	* Creates a new subclass of class sap.m.ObjectHeader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getAdditionalNumbers additionalNumbers}.

NOTE: Only applied if you set "responsive=false". Additional object numbers and units are managed in this aggregation. The numbers are hidden on tablet and phone size screens. When only one number is provided, it is rendered with additional separator from the main ObjectHeader number.
	* @return	null
	*/
	public function getAdditionalNumbers( ):Array<sap.m.ObjectNumber>;

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
	* Gets content of aggregation {@link #getAttributes attributes}.

The list of Object Attributes
	* @return	null
	*/
	public function getAttributes( ):Array<sap.m.ObjectAttribute>;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Determines the background color of the <code>ObjectHeader</code>.

<b>Note:</b> The different types of <code>ObjectHeader</code> come with different default background: <ul> <li>non responsive - Transparent</li> <li>responsive - Translucent</li> <li>condensed - Solid</li> </ul>
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets current value of property {@link #getCondensed condensed}.

<code>ObjectHeader</code> with title, one attribute, number, and number unit.

<b>Note:</b> Only applied if the <code>responsive</code> property is set to <code>false</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>condensed</code>
	*/
	public function getCondensed( ):Bool;

	/**
	* Gets current value of property {@link #getFullScreenOptimized fullScreenOptimized}.

Optimizes the display of the elements of the <code>ObjectHeader</code>.

Set this property to <code>true</code> if your app uses a fullscreen layout (as opposed to a master-detail or other split-screen layout).

<b>Note</b>: Only applied if the <code>responsive</code> property is also set to <code>true</code>.

If set to <code>true</code>, the following situations apply: <ul> <li>On desktop, 1-3 attributes/statuses - positioned as a third block on the right side of the Title/Number group</li> <li>On desktop, 4+ attributes/statuses - 4 columns below the Title/Number</li> <li>On tablet (portrait mode), always in 2 columns below the Title/Number</li> <li>On tablet (landscape mode), 1-2 attributes/statuses - 2 columns below the Title/Number</li> <li>On tablet (landscape mode), 3+ attributes/statuses - 3 columns below the Title/Number</li> </ul> On phone, the attributes and statuses are always positioned in 1 column below the Title/Number of the <code>ObjectHeader</code>.

If set to <code>false</code>, the attributes and statuses are being positioned below the Title/Number of the <code>ObjectHeader</code> in 2 or 3 columns depending on their number: <ul> <li>On desktop, 1-4 attributes/statuses - 2 columns</li> <li>On desktop, 5+ attributes/statuses - 3 columns</li> <li>On tablet, always in 2 columns</li> </ul>

Default value is <code>false</code>.
	* @return	Value of property <code>fullScreenOptimized</code>
	*/
	public function getFullScreenOptimized( ):Bool;

	/**
	* Gets content of aggregation {@link #getHeaderContainer headerContainer}.

This aggregation takes only effect when you set "responsive" to true. It can either be filled with an sap.m.IconTabBar or an sap.suite.ui.commons.HeaderContainer control. Overflow handling must be taken care of by the inner control. If used with an IconTabBar control, only the header will be displayed inside the object header, the content will be displayed below the ObjectHeader.
	* @return	null
	*/
	public function getHeaderContainer( ):sap.m.ObjectHeaderContainer;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the icon of the <code>ObjectHeader</code>.

<b>Note:</b> Recursive resolution of binding expressions is not supported by the framework. It works only in ObjectHeader, since it is a composite control and creates an Image control internally.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconActive iconActive}.

Determines whether the <code>ObjectHeader</code> icon is clickable.
	* @return	Value of property <code>iconActive</code>
	*/
	public function getIconActive( ):Bool;

	/**
	* Gets current value of property {@link #getIconAlt iconAlt}.

Determines the alternative text of the <code>ObjectHeader</code> icon. The text is displayed if the image for the icon is not available, or cannot be displayed.
	* @return	Value of property <code>iconAlt</code>
	*/
	public function getIconAlt( ):String;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to <code>true</code> but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is the key for the application, set this value to <code>false</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getIconTooltip iconTooltip}.

Determines the tooltip text of the <code>ObjectHeader</code> icon.
	* @return	Value of property <code>iconTooltip</code>
	*/
	public function getIconTooltip( ):String;

	/**
	* Gets current value of property {@link #getImageShape imageShape}.

Determines whether the picture should be displayed in a square or with a circle-shaped mask just like in {@link sap.uxap.ObjectPageHeader}.

<b>Note:</b> This property takes effect only on Images and it is ignored for Icons.

Default value is <code>Square</code>.
	* @return	Value of property <code>imageShape</code>
	*/
	public function getImageShape( ):sap.m.ObjectHeaderPictureShape;

	/**
	* Gets current value of property {@link #getIntro intro}.

Determines the introductory text for the <code>ObjectHeader</code>.
	* @return	Value of property <code>intro</code>
	*/
	public function getIntro( ):String;

	/**
	* Gets current value of property {@link #getIntroActive introActive}.

Determines whether the introductory text of the <code>ObjectHeader</code> is clickable.
	* @return	Value of property <code>introActive</code>
	*/
	public function getIntroActive( ):Bool;

	/**
	* Gets current value of property {@link #getIntroHref introHref}.

Determines the intro link target URI. Supports standard hyperlink behavior. If an action should be triggered, this should not be set, but instead an event handler for the <code>introPress</code> event should be registered.
	* @return	Value of property <code>introHref</code>
	*/
	public function getIntroHref( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIntroTarget introTarget}.

Determines the <code>target</code> attribute for the intro link. Options are <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered.
	* @return	Value of property <code>introTarget</code>
	*/
	public function getIntroTarget( ):String;

	/**
	* Gets current value of property {@link #getIntroTextDirection introTextDirection}.

Specifies the intro text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>introTextDirection</code>
	*/
	public function getIntroTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets content of aggregation {@link #getMarkers markers}.

List of markers (icon and/or text) that can be displayed for the <code>ObjectHeader</code>, such as favorite and flagged.<br><br> <b>Note:</b> You should use either this aggregation or the already deprecated properties - <code>markFlagged</code> and <code>markFavorite</code>. Using both can lead to unexpected results.
	* @return	null
	*/
	public function getMarkers( ):Array<sap.m.ObjectMarker>;

	/**
	* Returns a metadata object for class sap.m.ObjectHeader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNumber number}.

Determines the displayed number of the <code>ObjectHeader</code> number field.
	* @return	Value of property <code>number</code>
	*/
	public function getNumber( ):String;

	/**
	* Gets current value of property {@link #getNumberState numberState}.

Determines the value state of the <code>number</code> and <code>numberUnit</code> properties.

Default value is <code>None</code>.
	* @return	Value of property <code>numberState</code>
	*/
	public function getNumberState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getNumberTextDirection numberTextDirection}.

Specifies the number and unit text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>numberTextDirection</code>
	*/
	public function getNumberTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getNumberUnit numberUnit}.

Determines the units qualifier of the <code>ObjectHeader</code> number.

<b>Note:</b> The value of the <code>numberUnit</code> is not displayed if the number property is set to <code>null</code>.
	* @return	Value of property <code>numberUnit</code>
	*/
	public function getNumberUnit( ):String;

	/**
	* Gets current value of property {@link #getResponsive responsive}.

Determines whether the <code>ObjectHeader</code> is rendered with a different design that reacts responsively to the screen sizes.

When the <code>responsive</code> property is set to <code>true</code>, the following behavior specifics for the control exist: <ul> <li>If an image (or an icon font) is set to the <code>icon</code> property, it is hidden in portrait mode on phone.</li> <li>The title is truncated to 80 characters if longer. For portrait mode on phone, the title is truncated to 50 characters.</li> </ul>

Default value is <code>false</code>.
	* @return	Value of property <code>responsive</code>
	*/
	public function getResponsive( ):Bool;

	/**
	* Gets current value of property {@link #getShowTitleSelector showTitleSelector}.

Determines whether the selector arrow icon/image is displayed and can be pressed.

Default value is <code>false</code>.
	* @return	Value of property <code>showTitleSelector</code>
	*/
	public function getShowTitleSelector( ):Bool;

	/**
	* Gets content of aggregation {@link #getStatuses statuses}.

The list of Object sap.ui.core.Control. It will only allow sap.m.ObjectStatus and sap.m.ProgressIndicator controls.
	* @return	null
	*/
	public function getStatuses( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getTitle title}.

Determines the title of the <code>ObjectHeader</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleActive titleActive}.

Determines whether the title of the <code>ObjectHeader</code> is clickable and is set only if a title is provided.
	* @return	Value of property <code>titleActive</code>
	*/
	public function getTitleActive( ):Bool;

	/**
	* Gets current value of property {@link #getTitleHref titleHref}.

Defines the title link target URI. Supports standard hyperlink behavior.

<b>Note:</b> If an action should be triggered, this property should not be set, but instead an event handler for the <code>titlePress</code> event should be registered.
	* @return	Value of property <code>titleHref</code>
	*/
	public function getTitleHref( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getTitleLevel titleLevel}.

Defines the semantic level of the title.

This information is used by assistive technologies, such as screen readers to create a hierarchical site map for faster navigation. Depending on this setting an HTML h1-h6 element is used.

Default value is <code>H1</code>.
	* @return	Value of property <code>titleLevel</code>
	*/
	public function getTitleLevel( ):sap.ui.core.TitleLevel;

	/**
	* Gets current value of property {@link #getTitleSelectorTooltip titleSelectorTooltip}.

Determines a custom text for the tooltip of the select title arrow. If not set, a default text of the tooltip will be displayed.

Default value is <code>"Options"</code>.
	* @return	Value of property <code>titleSelectorTooltip</code>
	*/
	public function getTitleSelectorTooltip( ):String;

	/**
	* Gets current value of property {@link #getTitleTarget titleTarget}.

Determines the <code>target</code> attribute for the title link. Options are <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered.
	* @return	Value of property <code>titleTarget</code>
	*/
	public function getTitleTarget( ):String;

	/**
	* Gets current value of property {@link #getTitleTextDirection titleTextDirection}.

Specifies the title text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>titleTextDirection</code>
	*/
	public function getTitleTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Checks for the provided <code>sap.m.ObjectNumber</code> in the aggregation {@link #getAdditionalNumbers additionalNumbers}. and returns its index if found or -1 otherwise.
	* @param	oAdditionalNumber The additionalNumber whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAdditionalNumber( oAdditionalNumber:sap.m.ObjectNumber):Int;

	/**
	* Checks for the provided <code>sap.m.ObjectAttribute</code> in the aggregation {@link #getAttributes attributes}. and returns its index if found or -1 otherwise.
	* @param	oAttribute The attribute whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAttribute( oAttribute:sap.m.ObjectAttribute):Int;

	/**
	* Checks for the provided <code>sap.m.ObjectMarker</code> in the aggregation {@link #getMarkers markers}. and returns its index if found or -1 otherwise.
	* @param	oMarker The marker whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfMarker( oMarker:sap.m.ObjectMarker):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getStatuses statuses}. and returns its index if found or -1 otherwise.
	* @param	oStatus The status whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfStatus( oStatus:sap.ui.core.Control):Int;

	/**
	* Inserts a additionalNumber into the aggregation {@link #getAdditionalNumbers additionalNumbers}.
	* @param	oAdditionalNumber The additionalNumber to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the additionalNumber should be inserted at; for a negative value of <code>iIndex</code>, the additionalNumber is inserted at position 0; for a value greater than the current size of the aggregation, the additionalNumber is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAdditionalNumber( oAdditionalNumber:sap.m.ObjectNumber, iIndex:Int):sap.m.ObjectHeader;

	/**
	* Inserts a attribute into the aggregation {@link #getAttributes attributes}.
	* @param	oAttribute The attribute to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the attribute should be inserted at; for a negative value of <code>iIndex</code>, the attribute is inserted at position 0; for a value greater than the current size of the aggregation, the attribute is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAttribute( oAttribute:sap.m.ObjectAttribute, iIndex:Int):sap.m.ObjectHeader;

	/**
	* Inserts a marker into the aggregation {@link #getMarkers markers}.
	* @param	oMarker The marker to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the marker should be inserted at; for a negative value of <code>iIndex</code>, the marker is inserted at position 0; for a value greater than the current size of the aggregation, the marker is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMarker( oMarker:sap.m.ObjectMarker, iIndex:Int):sap.m.ObjectHeader;

	/**
	* Inserts a status into the aggregation {@link #getStatuses statuses}.
	* @param	oStatus The status to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the status should be inserted at; for a negative value of <code>iIndex</code>, the status is inserted at position 0; for a value greater than the current size of the aggregation, the status is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertStatus( oStatus:sap.ui.core.Control, iIndex:Int):sap.m.ObjectHeader;
	@:overload( function(vAdditionalNumber:Int):sap.m.ObjectNumber{ })
	@:overload( function(vAdditionalNumber:String):sap.m.ObjectNumber{ })

	/**
	* Removes a additionalNumber from the aggregation {@link #getAdditionalNumbers additionalNumbers}.
	* @param	vAdditionalNumber The additionalNumber to remove or its index or id
	* @return	The removed additionalNumber or <code>null</code>
	*/
	public function removeAdditionalNumber( vAdditionalNumber:sap.m.ObjectNumber):sap.m.ObjectNumber;

	/**
	* Removes all the controls from the aggregation {@link #getAdditionalNumbers additionalNumbers}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAdditionalNumbers( ):Array<sap.m.ObjectNumber>;

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
	* Removes all the controls from the aggregation {@link #getAttributes attributes}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAttributes( ):Array<sap.m.ObjectAttribute>;

	/**
	* Removes all the controls from the aggregation {@link #getMarkers markers}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllMarkers( ):Array<sap.m.ObjectMarker>;

	/**
	* Removes all the controls from the aggregation {@link #getStatuses statuses}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllStatuses( ):Array<sap.ui.core.Control>;
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
	@:overload( function(vAttribute:Int):sap.m.ObjectAttribute{ })
	@:overload( function(vAttribute:String):sap.m.ObjectAttribute{ })

	/**
	* Removes a attribute from the aggregation {@link #getAttributes attributes}.
	* @param	vAttribute The attribute to remove or its index or id
	* @return	The removed attribute or <code>null</code>
	*/
	public function removeAttribute( vAttribute:sap.m.ObjectAttribute):sap.m.ObjectAttribute;
	@:overload( function(vMarker:Int):sap.m.ObjectMarker{ })
	@:overload( function(vMarker:String):sap.m.ObjectMarker{ })

	/**
	* Removes a marker from the aggregation {@link #getMarkers markers}.
	* @param	vMarker The marker to remove or its index or id
	* @return	The removed marker or <code>null</code>
	*/
	public function removeMarker( vMarker:sap.m.ObjectMarker):sap.m.ObjectMarker;
	@:overload( function(vStatus:Int):sap.ui.core.Control{ })
	@:overload( function(vStatus:String):sap.ui.core.Control{ })

	/**
	* Removes a status from the aggregation {@link #getStatuses statuses}.
	* @param	vStatus The status to remove or its index or id
	* @return	The removed status or <code>null</code>
	*/
	public function removeStatus( vStatus:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Determines the background color of the <code>ObjectHeader</code>.

<b>Note:</b> The different types of <code>ObjectHeader</code> come with different default background: <ul> <li>non responsive - Transparent</li> <li>responsive - Translucent</li> <li>condensed - Solid</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( sBackgroundDesign:sap.m.BackgroundDesign):sap.m.ObjectHeader;

	/**
	* Set the condensed flag
	* @param	bCondensed the new value
	* @return	this pointer for chaining
	*/
	public function setCondensed( bCondensed:Bool):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getFullScreenOptimized fullScreenOptimized}.

Optimizes the display of the elements of the <code>ObjectHeader</code>.

Set this property to <code>true</code> if your app uses a fullscreen layout (as opposed to a master-detail or other split-screen layout).

<b>Note</b>: Only applied if the <code>responsive</code> property is also set to <code>true</code>.

If set to <code>true</code>, the following situations apply: <ul> <li>On desktop, 1-3 attributes/statuses - positioned as a third block on the right side of the Title/Number group</li> <li>On desktop, 4+ attributes/statuses - 4 columns below the Title/Number</li> <li>On tablet (portrait mode), always in 2 columns below the Title/Number</li> <li>On tablet (landscape mode), 1-2 attributes/statuses - 2 columns below the Title/Number</li> <li>On tablet (landscape mode), 3+ attributes/statuses - 3 columns below the Title/Number</li> </ul> On phone, the attributes and statuses are always positioned in 1 column below the Title/Number of the <code>ObjectHeader</code>.

If set to <code>false</code>, the attributes and statuses are being positioned below the Title/Number of the <code>ObjectHeader</code> in 2 or 3 columns depending on their number: <ul> <li>On desktop, 1-4 attributes/statuses - 2 columns</li> <li>On desktop, 5+ attributes/statuses - 3 columns</li> <li>On tablet, always in 2 columns</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bFullScreenOptimized New value for property <code>fullScreenOptimized</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFullScreenOptimized( ?bFullScreenOptimized:Bool):sap.m.ObjectHeader;

	/**
	* Sets the aggregated {@link #getHeaderContainer headerContainer}.
	* @param	oHeaderContainer The headerContainer to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderContainer( oHeaderContainer:sap.m.ObjectHeaderContainer):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the icon of the <code>ObjectHeader</code>.

<b>Note:</b> Recursive resolution of binding expressions is not supported by the framework. It works only in ObjectHeader, since it is a composite control and creates an Image control internally.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIconActive iconActive}.

Determines whether the <code>ObjectHeader</code> icon is clickable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bIconActive New value for property <code>iconActive</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconActive( ?bIconActive:Bool):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIconAlt iconAlt}.

Determines the alternative text of the <code>ObjectHeader</code> icon. The text is displayed if the image for the icon is not available, or cannot be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconAlt New value for property <code>iconAlt</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconAlt( ?sIconAlt:String):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to <code>true</code> but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is the key for the application, set this value to <code>false</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( ?bIconDensityAware:Bool):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIconTooltip iconTooltip}.

Determines the tooltip text of the <code>ObjectHeader</code> icon.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconTooltip New value for property <code>iconTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconTooltip( ?sIconTooltip:String):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getImageShape imageShape}.

Determines whether the picture should be displayed in a square or with a circle-shaped mask just like in {@link sap.uxap.ObjectPageHeader}.

<b>Note:</b> This property takes effect only on Images and it is ignored for Icons.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Square</code>.
	* @param	sImageShape New value for property <code>imageShape</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImageShape( ?sImageShape:sap.m.ObjectHeaderPictureShape):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIntro intro}.

Determines the introductory text for the <code>ObjectHeader</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIntro New value for property <code>intro</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntro( ?sIntro:String):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIntroActive introActive}.

Determines whether the introductory text of the <code>ObjectHeader</code> is clickable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bIntroActive New value for property <code>introActive</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntroActive( ?bIntroActive:Bool):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIntroHref introHref}.

Determines the intro link target URI. Supports standard hyperlink behavior. If an action should be triggered, this should not be set, but instead an event handler for the <code>introPress</code> event should be registered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIntroHref New value for property <code>introHref</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntroHref( ?sIntroHref:sap.ui.core.URI):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIntroTarget introTarget}.

Determines the <code>target</code> attribute for the intro link. Options are <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIntroTarget New value for property <code>introTarget</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntroTarget( ?sIntroTarget:String):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getIntroTextDirection introTextDirection}.

Specifies the intro text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sIntroTextDirection New value for property <code>introTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntroTextDirection( ?sIntroTextDirection:sap.ui.core.TextDirection):sap.m.ObjectHeader;

	/**
	* Sets the visibility value of the Favorite marker.
	* @param	bMarked visibility of the marker
	* @return	this pointer for chaining
	*/
	public function setMarkFavorite( bMarked:Bool):sap.m.ObjectHeader;

	/**
	* Sets the visibility value of the Flagged marker.
	* @param	bMarked visibility of the marker
	* @return	this pointer for chaining
	*/
	public function setMarkFlagged( bMarked:Bool):sap.m.ObjectHeader;

	/**
	* Set the number value to the internal aggregation
	* @param	sNumber the new value
	* @return	this pointer for chaining
	*/
	public function setNumber( sNumber:String):sap.m.ObjectHeader;

	/**
	* Set the number state to the internal aggregation
	* @param	sState the new value
	* @return	this pointer for chaining
	*/
	public function setNumberState( sState:sap.ui.core.ValueState):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getNumberTextDirection numberTextDirection}.

Specifies the number and unit text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sNumberTextDirection New value for property <code>numberTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumberTextDirection( ?sNumberTextDirection:sap.ui.core.TextDirection):sap.m.ObjectHeader;

	/**
	* Set the number unit to the internal aggregation
	* @param	sUnit the new value
	* @return	this pointer for chaining
	*/
	public function setNumberUnit( sUnit:String):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getResponsive responsive}.

Determines whether the <code>ObjectHeader</code> is rendered with a different design that reacts responsively to the screen sizes.

When the <code>responsive</code> property is set to <code>true</code>, the following behavior specifics for the control exist: <ul> <li>If an image (or an icon font) is set to the <code>icon</code> property, it is hidden in portrait mode on phone.</li> <li>The title is truncated to 80 characters if longer. For portrait mode on phone, the title is truncated to 50 characters.</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bResponsive New value for property <code>responsive</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResponsive( ?bResponsive:Bool):sap.m.ObjectHeader;

	/**
	* Sets the visibility value of the Flagged and Favorite markers.
	* @param	bMarked visibility of all markers
	* @return	this pointer for chaining
	*/
	public function setShowMarkers( bMarked:Bool):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getShowTitleSelector showTitleSelector}.

Determines whether the selector arrow icon/image is displayed and can be pressed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowTitleSelector New value for property <code>showTitleSelector</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowTitleSelector( ?bShowTitleSelector:Bool):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getTitle title}.

Determines the title of the <code>ObjectHeader</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getTitleActive titleActive}.

Determines whether the title of the <code>ObjectHeader</code> is clickable and is set only if a title is provided.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bTitleActive New value for property <code>titleActive</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleActive( ?bTitleActive:Bool):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getTitleHref titleHref}.

Defines the title link target URI. Supports standard hyperlink behavior.

<b>Note:</b> If an action should be triggered, this property should not be set, but instead an event handler for the <code>titlePress</code> event should be registered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitleHref New value for property <code>titleHref</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleHref( ?sTitleHref:sap.ui.core.URI):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getTitleLevel titleLevel}.

Defines the semantic level of the title.

This information is used by assistive technologies, such as screen readers to create a hierarchical site map for faster navigation. Depending on this setting an HTML h1-h6 element is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>H1</code>.
	* @param	sTitleLevel New value for property <code>titleLevel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleLevel( ?sTitleLevel:sap.ui.core.TitleLevel):sap.m.ObjectHeader;

	/**
	* Sets the new text for the tooltip of the select title arrow to the internal aggregation
	* @param	sTooltip the tooltip of the title selector
	* @return	this pointer for chaining
	*/
	public function setTitleSelectorTooltip( sTooltip:String):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getTitleTarget titleTarget}.

Determines the <code>target</code> attribute for the title link. Options are <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitleTarget New value for property <code>titleTarget</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleTarget( ?sTitleTarget:String):sap.m.ObjectHeader;

	/**
	* Sets a new value for property {@link #getTitleTextDirection titleTextDirection}.

Specifies the title text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTitleTextDirection New value for property <code>titleTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleTextDirection( ?sTitleTextDirection:sap.ui.core.TextDirection):sap.m.ObjectHeader;
}

typedef ObjectHeaderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the title of the <code>ObjectHeader</code>.
	*/
	@:optional var title:String;

	/**
	* Determines the displayed number of the <code>ObjectHeader</code> number field.
	*/
	@:optional var number:String;

	/**
	* Determines the units qualifier of the <code>ObjectHeader</code> number.

<b>Note:</b> The value of the <code>numberUnit</code> is not displayed if the number property is set to <code>null</code>.
	*/
	@:optional var numberUnit:String;

	/**
	* Determines the introductory text for the <code>ObjectHeader</code>.
	*/
	@:optional var intro:String;

	/**
	* Determines whether the introductory text of the <code>ObjectHeader</code> is clickable.
	*/
	@:optional var introActive:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the title of the <code>ObjectHeader</code> is clickable and is set only if a title is provided.
	*/
	@:optional var titleActive:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the icon of the <code>ObjectHeader</code>.

<b>Note:</b> Recursive resolution of binding expressions is not supported by the framework. It works only in ObjectHeader, since it is a composite control and creates an Image control internally.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines whether the <code>ObjectHeader</code> icon is clickable.
	*/
	@:optional var iconActive:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the alternative text of the <code>ObjectHeader</code> icon. The text is displayed if the image for the icon is not available, or cannot be displayed.
	*/
	@:optional var iconAlt:String;

	/**
	* Determines the tooltip text of the <code>ObjectHeader</code> icon.
	*/
	@:optional var iconTooltip:String;

	/**
	* By default, this is set to <code>true</code> but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is the key for the application, set this value to <code>false</code>.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the picture should be displayed in a square or with a circle-shaped mask just like in {@link sap.uxap.ObjectPageHeader}.

<b>Note:</b> This property takes effect only on Images and it is ignored for Icons.
	*/
	@:optional var imageShape:haxe.extern.EitherType<String,sap.m.ObjectHeaderPictureShape>;

	/**
	* Determines whether the selector arrow icon/image is displayed and can be pressed.
	*/
	@:optional var showTitleSelector:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the value state of the <code>number</code> and <code>numberUnit</code> properties.
	*/
	@:optional var numberState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* <code>ObjectHeader</code> with title, one attribute, number, and number unit.

<b>Note:</b> Only applied if the <code>responsive</code> property is set to <code>false</code>.
	*/
	@:optional var condensed:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the background color of the <code>ObjectHeader</code>.

<b>Note:</b> The different types of <code>ObjectHeader</code> come with different default background: <ul> <li>non responsive - Transparent</li> <li>responsive - Translucent</li> <li>condensed - Solid</li> </ul>
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

	/**
	* Determines whether the <code>ObjectHeader</code> is rendered with a different design that reacts responsively to the screen sizes.

When the <code>responsive</code> property is set to <code>true</code>, the following behavior specifics for the control exist: <ul> <li>If an image (or an icon font) is set to the <code>icon</code> property, it is hidden in portrait mode on phone.</li> <li>The title is truncated to 80 characters if longer. For portrait mode on phone, the title is truncated to 50 characters.</li> </ul>
	*/
	@:optional var responsive:haxe.extern.EitherType<String,Bool>;

	/**
	* Optimizes the display of the elements of the <code>ObjectHeader</code>.

Set this property to <code>true</code> if your app uses a fullscreen layout (as opposed to a master-detail or other split-screen layout).

<b>Note</b>: Only applied if the <code>responsive</code> property is also set to <code>true</code>.

If set to <code>true</code>, the following situations apply: <ul> <li>On desktop, 1-3 attributes/statuses - positioned as a third block on the right side of the Title/Number group</li> <li>On desktop, 4+ attributes/statuses - 4 columns below the Title/Number</li> <li>On tablet (portrait mode), always in 2 columns below the Title/Number</li> <li>On tablet (landscape mode), 1-2 attributes/statuses - 2 columns below the Title/Number</li> <li>On tablet (landscape mode), 3+ attributes/statuses - 3 columns below the Title/Number</li> </ul> On phone, the attributes and statuses are always positioned in 1 column below the Title/Number of the <code>ObjectHeader</code>.

If set to <code>false</code>, the attributes and statuses are being positioned below the Title/Number of the <code>ObjectHeader</code> in 2 or 3 columns depending on their number: <ul> <li>On desktop, 1-4 attributes/statuses - 2 columns</li> <li>On desktop, 5+ attributes/statuses - 3 columns</li> <li>On tablet, always in 2 columns</li> </ul>
	*/
	@:optional var fullScreenOptimized:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the title link target URI. Supports standard hyperlink behavior.

<b>Note:</b> If an action should be triggered, this property should not be set, but instead an event handler for the <code>titlePress</code> event should be registered.
	*/
	@:optional var titleHref:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines the <code>target</code> attribute for the title link. Options are <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered.
	*/
	@:optional var titleTarget:String;

	/**
	* Determines the intro link target URI. Supports standard hyperlink behavior. If an action should be triggered, this should not be set, but instead an event handler for the <code>introPress</code> event should be registered.
	*/
	@:optional var introHref:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines the <code>target</code> attribute for the intro link. Options are <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>. Alternatively, a frame name can be entered.
	*/
	@:optional var introTarget:String;

	/**
	* Specifies the title text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var titleTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Specifies the intro text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var introTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Specifies the number and unit text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var numberTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Determines a custom text for the tooltip of the select title arrow. If not set, a default text of the tooltip will be displayed.
	*/
	@:optional var titleSelectorTooltip:String;

	/**
	* Defines the semantic level of the title.

This information is used by assistive technologies, such as screen readers to create a hierarchical site map for faster navigation. Depending on this setting an HTML h1-h6 element is used.
	*/
	@:optional var titleLevel:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

    /**
    * The list of Object Attributes
    */
	@:optional var attributes:Array<haxe.extern.EitherType<String,sap.m.ObjectAttribute>>;

    /**
    * The list of Object sap.ui.core.Control. It will only allow sap.m.ObjectStatus and sap.m.ProgressIndicator controls.
    */
	@:optional var statuses:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The object number and unit are managed in this aggregation
    */
	@:optional var _objectNumber:haxe.extern.EitherType<String,sap.m.ObjectNumber>;

    /**
    * NOTE: Only applied if you set "responsive=false". Additional object numbers and units are managed in this aggregation. The numbers are hidden on tablet and phone size screens. When only one number is provided, it is rendered with additional separator from the main ObjectHeader number.
    */
	@:optional var additionalNumbers:Array<haxe.extern.EitherType<String,sap.m.ObjectNumber>>;

    /**
    * This aggregation takes only effect when you set "responsive" to true. It can either be filled with an sap.m.IconTabBar or an sap.suite.ui.commons.HeaderContainer control. Overflow handling must be taken care of by the inner control. If used with an IconTabBar control, only the header will be displayed inside the object header, the content will be displayed below the ObjectHeader.
    */
	@:optional var headerContainer:haxe.extern.EitherType<String,sap.m.ObjectHeaderContainer>;

    /**
    * List of markers (icon and/or text) that can be displayed for the <code>ObjectHeader</code>, such as favorite and flagged.<br><br> <b>Note:</b> You should use either this aggregation or the already deprecated properties - <code>markFlagged</code> and <code>markFavorite</code>. Using both can lead to unexpected results.
    */
	@:optional var markers:Array<haxe.extern.EitherType<String,sap.m.ObjectMarker>>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the title icon is active and the user taps/clicks on it
	*/
	@:optional var iconPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the intro is active and the user taps/clicks on it
	*/
	@:optional var introPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the title is active and the user taps/clicks on it
	*/
	@:optional var titlePress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the object header title selector (down-arrow) is pressed
	*/
	@:optional var titleSelectorPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
