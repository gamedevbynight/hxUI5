package sap.uxap;

@:native("sap.uxap.ObjectPageHeader")

/**
* Represents the static part (header title) of the classic header of the {@link sap.uxap.ObjectPageLayout}.

<h3>Overview</h3>

The <code>ObjectPageHeader</code> is used to display the basic information about a business object, such as title/description/picture, as well as a list of common actions.

<b>Note:</b> The <code>ObjectPageHeader</code> is meant to be used inside the <code>ObjectPageLayout</code> control. Any other usage is not supported and can lead to unexpected behavior.
*/
extern class ObjectPageHeader extends sap.ui.core.Control implements sap.uxap.IHeaderTitle
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageHeaderArgs):Void {})
	public function new(?mSettings:ObjectPageHeaderArgs):Void;

	/**
	* Adds some action to the aggregation {@link #getActions actions}.
	* @param	oAction The action to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAction( oAction:sap.ui.core.Control):sap.uxap.ObjectPageHeader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:markChangesPress markChangesPress} event of this <code>sap.uxap.ObjectPageHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.uxap.ObjectPageHeader</code> itself.

The event is fired when the unsaved changes button is pressed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.uxap.ObjectPageHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMarkChangesPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.uxap.ObjectPageHeader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:markLockedPress markLockedPress} event of this <code>sap.uxap.ObjectPageHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.uxap.ObjectPageHeader</code> itself.

The event is fired when the Locked button is pressed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.uxap.ObjectPageHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMarkLockedPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.uxap.ObjectPageHeader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:titleSelectorPress titleSelectorPress} event of this <code>sap.uxap.ObjectPageHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.uxap.ObjectPageHeader</code> itself.

The event is fired when the objectPage header title selector (down-arrow) is pressed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.uxap.ObjectPageHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTitleSelectorPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.uxap.ObjectPageHeader;

	/**
	* Destroys all the actions in the aggregation {@link #getActions actions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyActions( ):sap.uxap.ObjectPageHeader;

	/**
	* Destroys the breadcrumbs in the aggregation {@link #getBreadcrumbs breadcrumbs}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyBreadcrumbs( ):sap.uxap.ObjectPageHeader;

	/**
	* Destroys the navigationBar in the aggregation {@link #getNavigationBar navigationBar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyNavigationBar( ):sap.uxap.ObjectPageHeader;

	/**
	* Destroys the sideContentButton in the aggregation {@link #getSideContentButton sideContentButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySideContentButton( ):sap.uxap.ObjectPageHeader;

	/**
	* Destroys the titleSelectorTooltip in the aggregation {@link #getTitleSelectorTooltip titleSelectorTooltip}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitleSelectorTooltip( ):sap.uxap.ObjectPageHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:markChangesPress markChangesPress} event of this <code>sap.uxap.ObjectPageHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMarkChangesPress( fnFunction:()->Void, ?oListener:Dynamic):sap.uxap.ObjectPageHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:markLockedPress markLockedPress} event of this <code>sap.uxap.ObjectPageHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMarkLockedPress( fnFunction:()->Void, ?oListener:Dynamic):sap.uxap.ObjectPageHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:titleSelectorPress titleSelectorPress} event of this <code>sap.uxap.ObjectPageHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTitleSelectorPress( fnFunction:()->Void, ?oListener:Dynamic):sap.uxap.ObjectPageHeader;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageHeader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getActions actions}.

List of actions that will be displayed in the header. You can use ObjectPageHeaderActionButton controls to achieve a different visual representation of the action buttons in the action bar and the action sheet (overflow menu). You can use ObjectPageHeaderLayoutData to display a visual separator.

<b>Note:</b> If an action is placed inside the overflow area, an additional <code>bInOverflow</code> parameter is passed along with the <code>press</code> event to indicate that a popup shouldn't be opened from that action and a dialog should be used instead.
	* @return	null
	*/
	public function getActions( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getBreadcrumbs breadcrumbs}.

The breadcrumbs displayed in the <code>ObjectPageHeader</code>. If this aggregation is set, the <code>breadCrumbsLinks</code> aggregation is omitted.
	* @return	null
	*/
	public function getBreadcrumbs( ):sap.m.Breadcrumbs;

	/**
	* Gets current value of property {@link #getIsActionAreaAlwaysVisible isActionAreaAlwaysVisible}.

Determines whether the action buttons should always be visible or visible only when the header is snapped.

Default value is <code>true</code>.
	* @return	Value of property <code>isActionAreaAlwaysVisible</code>
	*/
	public function getIsActionAreaAlwaysVisible( ):Bool;

	/**
	* Gets current value of property {@link #getIsObjectIconAlwaysVisible isObjectIconAlwaysVisible}.

Determines whether the icon should always be visible or visible only when the header is snapped.

Default value is <code>false</code>.
	* @return	Value of property <code>isObjectIconAlwaysVisible</code>
	*/
	public function getIsObjectIconAlwaysVisible( ):Bool;

	/**
	* Gets current value of property {@link #getIsObjectSubtitleAlwaysVisible isObjectSubtitleAlwaysVisible}.

Determines whether the subtitle should always be visible or visible only when the header is snapped.

Default value is <code>true</code>.
	* @return	Value of property <code>isObjectSubtitleAlwaysVisible</code>
	*/
	public function getIsObjectSubtitleAlwaysVisible( ):Bool;

	/**
	* Gets current value of property {@link #getIsObjectTitleAlwaysVisible isObjectTitleAlwaysVisible}.

Determines whether the title should always be visible or visible only when the header is snapped.

Default value is <code>true</code>.
	* @return	Value of property <code>isObjectTitleAlwaysVisible</code>
	*/
	public function getIsObjectTitleAlwaysVisible( ):Bool;

	/**
	* Gets current value of property {@link #getMarkChanges markChanges}.

Marks that there are unsaved changes in the objectPageHeader. The markChanges state cannot be used together with the markLocked state. If both are set to true, only the locked state will be displayed.

Default value is <code>false</code>.
	* @return	Value of property <code>markChanges</code>
	*/
	public function getMarkChanges( ):Bool;

	/**
	* Gets current value of property {@link #getMarkFavorite markFavorite}.

Set the favorite state to true or false. The showMarkers property must be true for this property to take effect.

Default value is <code>false</code>.
	* @return	Value of property <code>markFavorite</code>
	*/
	public function getMarkFavorite( ):Bool;

	/**
	* Gets current value of property {@link #getMarkFlagged markFlagged}.

Set the flagged state to true or false. The showMarkers property must be true for this property to take effect.

Default value is <code>false</code>.
	* @return	Value of property <code>markFlagged</code>
	*/
	public function getMarkFlagged( ):Bool;

	/**
	* Gets current value of property {@link #getMarkLocked markLocked}.

Set the locked state of the objectPageHeader.

Default value is <code>false</code>.
	* @return	Value of property <code>markLocked</code>
	*/
	public function getMarkLocked( ):Bool;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageHeader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getNavigationBar navigationBar}.

An instance of sap.m.Bar to be embedded in the header
	* @return	null
	*/
	public function getNavigationBar( ):sap.m.Bar;

	/**
	* Gets current value of property {@link #getObjectImageAlt objectImageAlt}.

The text to be used for the Alt and Tooltip attribute of the image, supplied via the objectImageURI property

Default value is <code>empty string</code>.
	* @return	Value of property <code>objectImageAlt</code>
	*/
	public function getObjectImageAlt( ):String;

	/**
	* Gets current value of property {@link #getObjectImageDensityAware objectImageDensityAware}.

The value of densityAware for the image, supplied via the objectImageURI property. See sap.m.Image for more details on densityAware.

Default value is <code>false</code>.
	* @return	Value of property <code>objectImageDensityAware</code>
	*/
	public function getObjectImageDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getObjectImageShape objectImageShape}.

Determines whether the picture should be displayed in a square or with a circle-shaped mask.

Default value is <code>Square</code>.
	* @return	Value of property <code>objectImageShape</code>
	*/
	public function getObjectImageShape( ):sap.uxap.ObjectPageHeaderPictureShape;

	/**
	* Gets current value of property {@link #getObjectImageURI objectImageURI}.

The URL of the image, representing the business object
	* @return	Value of property <code>objectImageURI</code>
	*/
	public function getObjectImageURI( ):String;

	/**
	* Gets current value of property {@link #getObjectSubtitle objectSubtitle}.

The description of the object
	* @return	Value of property <code>objectSubtitle</code>
	*/
	public function getObjectSubtitle( ):String;

	/**
	* Gets current value of property {@link #getObjectTitle objectTitle}.

The title of the object
	* @return	Value of property <code>objectTitle</code>
	*/
	public function getObjectTitle( ):String;

	/**
	* Gets current value of property {@link #getShowMarkers showMarkers}.

Indicates if object page header title supports showing markers such as flagged and favorite.

Default value is <code>false</code>.
	* @return	Value of property <code>showMarkers</code>
	*/
	public function getShowMarkers( ):Bool;

	/**
	* Gets current value of property {@link #getShowPlaceholder showPlaceholder}.

Enables support of a placeholder image in case no image is specified or the URL of the provided image is invalid.

Default value is <code>false</code>.
	* @return	Value of property <code>showPlaceholder</code>
	*/
	public function getShowPlaceholder( ):Bool;

	/**
	* Gets current value of property {@link #getShowTitleSelector showTitleSelector}.

When set to true, the selector arrow icon/image is shown and can be pressed.

Default value is <code>false</code>.
	* @return	Value of property <code>showTitleSelector</code>
	*/
	public function getShowTitleSelector( ):Bool;

	/**
	* Gets content of aggregation {@link #getSideContentButton sideContentButton}.

A button that is used for opening the side content of the page or some additional content.
	* @return	null
	*/
	public function getSideContentButton( ):sap.m.Button;

	/**
	* Gets content of aggregation {@link #getTitleSelectorTooltip titleSelectorTooltip}.

A custom tooltip for the title selector button.

The custom tooltip will be visible if the <code>showTitleSelector</code> property is set to <code>true</code>.

<b>Note:</b> If the aggregation is destroyed or set to invalid value, the default tooltip will be set. The default tooltip text is "Related options".
	* @return	null
	*/
	public function getTitleSelectorTooltip( ):Dynamic;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getActions actions}. and returns its index if found or -1 otherwise.
	* @param	oAction The action whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAction( oAction:sap.ui.core.Control):Int;

	/**
	* Inserts a action into the aggregation {@link #getActions actions}.
	* @param	oAction The action to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the action should be inserted at; for a negative value of <code>iIndex</code>, the action is inserted at position 0; for a value greater than the current size of the aggregation, the action is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAction( oAction:sap.ui.core.Control, iIndex:Int):sap.uxap.ObjectPageHeader;
	@:overload( function(vAction:Int):sap.ui.core.Control{ })
	@:overload( function(vAction:String):sap.ui.core.Control{ })

	/**
	* Removes a action from the aggregation {@link #getActions actions}.
	* @param	vAction The action to remove or its index or id
	* @return	The removed action or <code>null</code>
	*/
	public function removeAction( vAction:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Removes all the controls from the aggregation {@link #getActions actions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllActions( ):Array<sap.ui.core.Control>;

	/**
	* Sets the aggregated {@link #getBreadcrumbs breadcrumbs}.
	* @param	oBreadcrumbs The breadcrumbs to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBreadcrumbs( oBreadcrumbs:sap.m.Breadcrumbs):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getIsActionAreaAlwaysVisible isActionAreaAlwaysVisible}.

Determines whether the action buttons should always be visible or visible only when the header is snapped.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIsActionAreaAlwaysVisible New value for property <code>isActionAreaAlwaysVisible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIsActionAreaAlwaysVisible( bIsActionAreaAlwaysVisible:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getIsObjectIconAlwaysVisible isObjectIconAlwaysVisible}.

Determines whether the icon should always be visible or visible only when the header is snapped.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIsObjectIconAlwaysVisible New value for property <code>isObjectIconAlwaysVisible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIsObjectIconAlwaysVisible( bIsObjectIconAlwaysVisible:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getIsObjectSubtitleAlwaysVisible isObjectSubtitleAlwaysVisible}.

Determines whether the subtitle should always be visible or visible only when the header is snapped.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIsObjectSubtitleAlwaysVisible New value for property <code>isObjectSubtitleAlwaysVisible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIsObjectSubtitleAlwaysVisible( bIsObjectSubtitleAlwaysVisible:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getIsObjectTitleAlwaysVisible isObjectTitleAlwaysVisible}.

Determines whether the title should always be visible or visible only when the header is snapped.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIsObjectTitleAlwaysVisible New value for property <code>isObjectTitleAlwaysVisible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIsObjectTitleAlwaysVisible( bIsObjectTitleAlwaysVisible:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getMarkChanges markChanges}.

Marks that there are unsaved changes in the objectPageHeader. The markChanges state cannot be used together with the markLocked state. If both are set to true, only the locked state will be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bMarkChanges New value for property <code>markChanges</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMarkChanges( bMarkChanges:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getMarkFavorite markFavorite}.

Set the favorite state to true or false. The showMarkers property must be true for this property to take effect.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bMarkFavorite New value for property <code>markFavorite</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMarkFavorite( bMarkFavorite:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getMarkFlagged markFlagged}.

Set the flagged state to true or false. The showMarkers property must be true for this property to take effect.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bMarkFlagged New value for property <code>markFlagged</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMarkFlagged( bMarkFlagged:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getMarkLocked markLocked}.

Set the locked state of the objectPageHeader.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bMarkLocked New value for property <code>markLocked</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMarkLocked( bMarkLocked:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets the aggregated {@link #getNavigationBar navigationBar}.
	* @param	oNavigationBar The navigationBar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNavigationBar( oNavigationBar:sap.m.Bar):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getObjectImageAlt objectImageAlt}.

The text to be used for the Alt and Tooltip attribute of the image, supplied via the objectImageURI property

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sObjectImageAlt New value for property <code>objectImageAlt</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setObjectImageAlt( sObjectImageAlt:String):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getObjectImageDensityAware objectImageDensityAware}.

The value of densityAware for the image, supplied via the objectImageURI property. See sap.m.Image for more details on densityAware.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bObjectImageDensityAware New value for property <code>objectImageDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setObjectImageDensityAware( bObjectImageDensityAware:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getObjectImageShape objectImageShape}.

Determines whether the picture should be displayed in a square or with a circle-shaped mask.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Square</code>.
	* @param	sObjectImageShape New value for property <code>objectImageShape</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setObjectImageShape( sObjectImageShape:sap.uxap.ObjectPageHeaderPictureShape):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getObjectImageURI objectImageURI}.

The URL of the image, representing the business object

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sObjectImageURI New value for property <code>objectImageURI</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setObjectImageURI( sObjectImageURI:String):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getObjectSubtitle objectSubtitle}.

The description of the object

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sObjectSubtitle New value for property <code>objectSubtitle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setObjectSubtitle( sObjectSubtitle:String):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getObjectTitle objectTitle}.

The title of the object

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sObjectTitle New value for property <code>objectTitle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setObjectTitle( sObjectTitle:String):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getShowMarkers showMarkers}.

Indicates if object page header title supports showing markers such as flagged and favorite.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowMarkers New value for property <code>showMarkers</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowMarkers( bShowMarkers:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getShowPlaceholder showPlaceholder}.

Enables support of a placeholder image in case no image is specified or the URL of the provided image is invalid.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowPlaceholder New value for property <code>showPlaceholder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowPlaceholder( bShowPlaceholder:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets a new value for property {@link #getShowTitleSelector showTitleSelector}.

When set to true, the selector arrow icon/image is shown and can be pressed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowTitleSelector New value for property <code>showTitleSelector</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowTitleSelector( bShowTitleSelector:Bool):sap.uxap.ObjectPageHeader;

	/**
	* Sets the aggregated {@link #getSideContentButton sideContentButton}.
	* @param	oSideContentButton The sideContentButton to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSideContentButton( oSideContentButton:sap.m.Button):sap.uxap.ObjectPageHeader;
	@:overload( function(vTitleSelectorTooltip:sap.ui.core.TooltipBase):sap.uxap.ObjectPageHeader{ })

	/**
	* Sets the aggregated {@link #getTitleSelectorTooltip titleSelectorTooltip}.
	* @param	vTitleSelectorTooltip The titleSelectorTooltip to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleSelectorTooltip( vTitleSelectorTooltip:String):sap.uxap.ObjectPageHeader;
}

typedef ObjectPageHeaderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The URL of the image, representing the business object
	*/
	@:optional var objectImageURI:String;

	/**
	* The text to be used for the Alt and Tooltip attribute of the image, supplied via the objectImageURI property
	*/
	@:optional var objectImageAlt:String;

	/**
	* The value of densityAware for the image, supplied via the objectImageURI property. See sap.m.Image for more details on densityAware.
	*/
	@:optional var objectImageDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* The title of the object
	*/
	@:optional var objectTitle:String;

	/**
	* The description of the object
	*/
	@:optional var objectSubtitle:String;

	/**
	* Determines whether the picture should be displayed in a square or with a circle-shaped mask.
	*/
	@:optional var objectImageShape:haxe.extern.EitherType<String,sap.uxap.ObjectPageHeaderPictureShape>;

	/**
	* Determines whether the icon should always be visible or visible only when the header is snapped.
	*/
	@:optional var isObjectIconAlwaysVisible:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the title should always be visible or visible only when the header is snapped.
	*/
	@:optional var isObjectTitleAlwaysVisible:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the subtitle should always be visible or visible only when the header is snapped.
	*/
	@:optional var isObjectSubtitleAlwaysVisible:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the action buttons should always be visible or visible only when the header is snapped.
	*/
	@:optional var isActionAreaAlwaysVisible:haxe.extern.EitherType<String,Bool>;

	/**
	* When set to true, the selector arrow icon/image is shown and can be pressed.
	*/
	@:optional var showTitleSelector:haxe.extern.EitherType<String,Bool>;

	/**
	* Set the favorite state to true or false. The showMarkers property must be true for this property to take effect.
	*/
	@:optional var markFavorite:haxe.extern.EitherType<String,Bool>;

	/**
	* Set the flagged state to true or false. The showMarkers property must be true for this property to take effect.
	*/
	@:optional var markFlagged:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates if object page header title supports showing markers such as flagged and favorite.
	*/
	@:optional var showMarkers:haxe.extern.EitherType<String,Bool>;

	/**
	* Set the locked state of the objectPageHeader.
	*/
	@:optional var markLocked:haxe.extern.EitherType<String,Bool>;

	/**
	* Enables support of a placeholder image in case no image is specified or the URL of the provided image is invalid.
	*/
	@:optional var showPlaceholder:haxe.extern.EitherType<String,Bool>;

	/**
	* Marks that there are unsaved changes in the objectPageHeader. The markChanges state cannot be used together with the markLocked state. If both are set to true, only the locked state will be displayed.
	*/
	@:optional var markChanges:haxe.extern.EitherType<String,Bool>;

    /**
    * Internal aggregation for the legacy breadCrumbsLinks.
    */
	@:optional var _breadCrumbs:haxe.extern.EitherType<String,sap.m.Breadcrumbs>;

    /**
    * The breadcrumbs displayed in the <code>ObjectPageHeader</code>. If this aggregation is set, the <code>breadCrumbsLinks</code> aggregation is omitted.
    */
	@:optional var breadcrumbs:haxe.extern.EitherType<String,sap.m.Breadcrumbs>;

    /**
    * Internal aggregation for the overflow button in the header.
    */
	@:optional var _overflowButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Internal aggregation for the expand header button.
    */
	@:optional var _expandButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Icon for the identifier line.
    */
	@:optional var _objectImage:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _placeholder:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * null
    */
	@:optional var _lockIconCont:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _lockIcon:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _titleArrowIconCont:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _titleArrowIcon:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _favIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * null
    */
	@:optional var _flagIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * null
    */
	@:optional var _overflowActionSheet:haxe.extern.EitherType<String,sap.m.ActionSheet>;

    /**
    * null
    */
	@:optional var _changesIconCont:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _changesIcon:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _sideContentBtn:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * An instance of sap.m.Bar to be embedded in the header
    */
	@:optional var navigationBar:haxe.extern.EitherType<String,sap.m.Bar>;

    /**
    * List of actions that will be displayed in the header. You can use ObjectPageHeaderActionButton controls to achieve a different visual representation of the action buttons in the action bar and the action sheet (overflow menu). You can use ObjectPageHeaderLayoutData to display a visual separator.

<b>Note:</b> If an action is placed inside the overflow area, an additional <code>bInOverflow</code> parameter is passed along with the <code>press</code> event to indicate that a popup shouldn't be opened from that action and a dialog should be used instead.
    */
	@:optional var actions:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * A button that is used for opening the side content of the page or some additional content.
    */
	@:optional var sideContentButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * A custom tooltip for the title selector button.

The custom tooltip will be visible if the <code>showTitleSelector</code> property is set to <code>true</code>.

<b>Note:</b> If the aggregation is destroyed or set to invalid value, the default tooltip will be set. The default tooltip text is "Related options".
    */
	@:optional var titleSelectorTooltip:haxe.extern.EitherType<String,sap.ui.core.TooltipBase>;

	/**
	* The event is fired when the unsaved changes button is pressed
	*/
	@:optional var markChangesPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is fired when the Locked button is pressed
	*/
	@:optional var markLockedPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is fired when the objectPage header title selector (down-arrow) is pressed
	*/
	@:optional var titleSelectorPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
