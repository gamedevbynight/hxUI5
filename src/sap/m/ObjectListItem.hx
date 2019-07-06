package sap.m;

@:native("sap.m.ObjectListItem")

/**
* ObjectListItem is a display control that provides summary information about an object as a list item. The ObjectListItem title is the key identifier of the object. Additional text and icons can be used to further distinguish it from other objects. Attributes and statuses can be used to provide additional meaning about the object to the user.

<b>Note:</b> The control must only be used in the context of a list.
*/
extern class ObjectListItem extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:ObjectListItemArgs):Void {})
	public function new(?mSettings:ObjectListItemArgs):Void;

	/**
	* Adds some attribute to the aggregation {@link #getAttributes attributes}.
	* @param	oAttribute The attribute to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAttribute( oAttribute:sap.m.ObjectAttribute):sap.m.ObjectListItem;

	/**
	* Adds some marker to the aggregation {@link #getMarkers markers}.
	* @param	oMarker The marker to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMarker( oMarker:sap.m.ObjectMarker):sap.m.ObjectListItem;

	/**
	* Destroys all the attributes in the aggregation {@link #getAttributes attributes}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAttributes( ):sap.m.ObjectListItem;

	/**
	* Destroys the firstStatus in the aggregation {@link #getFirstStatus firstStatus}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFirstStatus( ):sap.m.ObjectListItem;

	/**
	* Destroys all the markers in the aggregation {@link #getMarkers markers}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMarkers( ):sap.m.ObjectListItem;

	/**
	* Destroys the secondStatus in the aggregation {@link #getSecondStatus secondStatus}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySecondStatus( ):sap.m.ObjectListItem;

	/**
	* Creates a new subclass of class sap.m.ObjectListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActiveIcon activeIcon}.

Icon displayed when the ObjectListItem is active.
	* @return	Value of property <code>activeIcon</code>
	*/
	public function getActiveIcon( ):sap.ui.core.URI;

	/**
	* Gets content of aggregation {@link #getAttributes attributes}.

List of attributes displayed below the title to the left of the status fields.
	* @return	null
	*/
	public function getAttributes( ):Array<sap.m.ObjectAttribute>;

	/**
	* Gets content of aggregation {@link #getFirstStatus firstStatus}.

First status text field displayed on the right side of the attributes.
	* @return	null
	*/
	public function getFirstStatus( ):sap.m.ObjectStatus;

	/**
	* Gets current value of property {@link #getIcon icon}.

ObjectListItem icon displayed to the left of the title.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image (in case this version of image doesn't exist on the server).

If bandwidth is key for the application, set this value to false.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getIntro intro}.

Defines the introductory text for the ObjectListItem.
	* @return	Value of property <code>intro</code>
	*/
	public function getIntro( ):String;

	/**
	* Gets current value of property {@link #getIntroTextDirection introTextDirection}.

Determines the text direction of the item intro. Available options for the intro direction are LTR (left-to-right) and RTL (right-to-left). By default the item intro inherits the text direction from its parent.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>introTextDirection</code>
	*/
	public function getIntroTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets content of aggregation {@link #getMarkers markers}.

List of markers (icon and/or text) that can be displayed for the <code>ObjectListItems</code>, such as favorite and flagged.<br><br> <b>Note:</b> You should use either this aggregation or the already deprecated properties - <code>markFlagged</code>, <code>markFavorite</code>, and <code>markLocked</code>. Using both can lead to unexpected results.
	* @return	null
	*/
	public function getMarkers( ):Array<sap.m.ObjectMarker>;

	/**
	* Returns a metadata object for class sap.m.ObjectListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getNumber number}.

Defines the ObjectListItem number.
	* @return	Value of property <code>number</code>
	*/
	public function getNumber( ):String;

	/**
	* Gets current value of property {@link #getNumberState numberState}.

Defines the ObjectListItem number and numberUnit value state.

Default value is <code>None</code>.
	* @return	Value of property <code>numberState</code>
	*/
	public function getNumberState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getNumberTextDirection numberTextDirection}.

Determines the text direction of the item number. Available options for the number direction are LTR (left-to-right) and RTL (right-to-left). By default the item number inherits the text direction from its parent.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>numberTextDirection</code>
	*/
	public function getNumberTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getNumberUnit numberUnit}.

Defines the number units qualifier of the ObjectListItem.
	* @return	Value of property <code>numberUnit</code>
	*/
	public function getNumberUnit( ):String;

	/**
	* Gets content of aggregation {@link #getSecondStatus secondStatus}.

Second status text field displayed on the right side of the attributes.
	* @return	null
	*/
	public function getSecondStatus( ):sap.m.ObjectStatus;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the ObjectListItem title.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleTextDirection titleTextDirection}.

Determines the text direction of the item title. Available options for the title direction are LTR (left-to-right) and RTL (right-to-left). By default the item title inherits the text direction from its parent.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>titleTextDirection</code>
	*/
	public function getTitleTextDirection( ):sap.ui.core.TextDirection;

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
	* Inserts a attribute into the aggregation {@link #getAttributes attributes}.
	* @param	oAttribute The attribute to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the attribute should be inserted at; for a negative value of <code>iIndex</code>, the attribute is inserted at position 0; for a value greater than the current size of the aggregation, the attribute is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAttribute( oAttribute:sap.m.ObjectAttribute, iIndex:Int):sap.m.ObjectListItem;

	/**
	* Inserts a marker into the aggregation {@link #getMarkers markers}.
	* @param	oMarker The marker to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the marker should be inserted at; for a negative value of <code>iIndex</code>, the marker is inserted at position 0; for a value greater than the current size of the aggregation, the marker is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMarker( oMarker:sap.m.ObjectMarker, iIndex:Int):sap.m.ObjectListItem;

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

	/**
	* Sets a new value for property {@link #getActiveIcon activeIcon}.

Icon displayed when the ObjectListItem is active.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActiveIcon New value for property <code>activeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveIcon( sActiveIcon:sap.ui.core.URI):sap.m.ObjectListItem;

	/**
	* Sets the aggregated {@link #getFirstStatus firstStatus}.
	* @param	oFirstStatus The firstStatus to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFirstStatus( oFirstStatus:sap.m.ObjectStatus):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getIcon icon}.

ObjectListItem icon displayed to the left of the title.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image (in case this version of image doesn't exist on the server).

If bandwidth is key for the application, set this value to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( bIconDensityAware:Bool):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getIntro intro}.

Defines the introductory text for the ObjectListItem.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIntro New value for property <code>intro</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntro( sIntro:String):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getIntroTextDirection introTextDirection}.

Determines the text direction of the item intro. Available options for the intro direction are LTR (left-to-right) and RTL (right-to-left). By default the item intro inherits the text direction from its parent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sIntroTextDirection New value for property <code>introTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIntroTextDirection( sIntroTextDirection:sap.ui.core.TextDirection):sap.m.ObjectListItem;

	/**
	* Sets the visibility value of the Favorite marker.
	* @param	bMarked the new value
	* @return	this pointer for chaining
	*/
	public function setMarkFavorite( bMarked:Bool):sap.m.ObjectListItem;

	/**
	* Sets the visibility value of the Flagged marker.
	* @param	bMarked the new value
	* @return	this pointer for chaining
	*/
	public function setMarkFlagged( bMarked:Bool):sap.m.ObjectListItem;

	/**
	* Sets the visibility value of the Favorite marker.
	* @param	bMarked the new value
	* @return	this pointer for chaining
	*/
	public function setMarkLocked( bMarked:Bool):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getNumber number}.

Defines the ObjectListItem number.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNumber New value for property <code>number</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumber( sNumber:String):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getNumberState numberState}.

Defines the ObjectListItem number and numberUnit value state.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sNumberState New value for property <code>numberState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumberState( sNumberState:sap.ui.core.ValueState):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getNumberTextDirection numberTextDirection}.

Determines the text direction of the item number. Available options for the number direction are LTR (left-to-right) and RTL (right-to-left). By default the item number inherits the text direction from its parent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sNumberTextDirection New value for property <code>numberTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumberTextDirection( sNumberTextDirection:sap.ui.core.TextDirection):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getNumberUnit numberUnit}.

Defines the number units qualifier of the ObjectListItem.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNumberUnit New value for property <code>numberUnit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumberUnit( sNumberUnit:String):sap.m.ObjectListItem;

	/**
	* Sets the aggregated {@link #getSecondStatus secondStatus}.
	* @param	oSecondStatus The secondStatus to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSecondStatus( oSecondStatus:sap.m.ObjectStatus):sap.m.ObjectListItem;

	/**
	* Sets the visibility value of the Flagged and Favorite markers.
	* @param	bMarked the new value
	* @return	this pointer for chaining
	*/
	public function setShowMarkers( bMarked:Bool):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the ObjectListItem title.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.ObjectListItem;

	/**
	* Sets a new value for property {@link #getTitleTextDirection titleTextDirection}.

Determines the text direction of the item title. Available options for the title direction are LTR (left-to-right) and RTL (right-to-left). By default the item title inherits the text direction from its parent.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTitleTextDirection New value for property <code>titleTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleTextDirection( sTitleTextDirection:sap.ui.core.TextDirection):sap.m.ObjectListItem;
}

typedef ObjectListItemArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Defines the ObjectListItem title.
	*/
	@:optional var title:String;

	/**
	* Defines the ObjectListItem number.
	*/
	@:optional var number:String;

	/**
	* Defines the number units qualifier of the ObjectListItem.
	*/
	@:optional var numberUnit:String;

	/**
	* Defines the introductory text for the ObjectListItem.
	*/
	@:optional var intro:String;

	/**
	* ObjectListItem icon displayed to the left of the title.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Icon displayed when the ObjectListItem is active.
	*/
	@:optional var activeIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image (in case this version of image doesn't exist on the server).

If bandwidth is key for the application, set this value to false.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the ObjectListItem number and numberUnit value state.
	*/
	@:optional var numberState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Determines the text direction of the item title. Available options for the title direction are LTR (left-to-right) and RTL (right-to-left). By default the item title inherits the text direction from its parent.
	*/
	@:optional var titleTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Determines the text direction of the item intro. Available options for the intro direction are LTR (left-to-right) and RTL (right-to-left). By default the item intro inherits the text direction from its parent.
	*/
	@:optional var introTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Determines the text direction of the item number. Available options for the number direction are LTR (left-to-right) and RTL (right-to-left). By default the item number inherits the text direction from its parent.
	*/
	@:optional var numberTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

    /**
    * List of attributes displayed below the title to the left of the status fields.
    */
	@:optional var attributes:Array<haxe.extern.EitherType<String,sap.m.ObjectAttribute>>;

    /**
    * First status text field displayed on the right side of the attributes.
    */
	@:optional var firstStatus:haxe.extern.EitherType<String,sap.m.ObjectStatus>;

    /**
    * Second status text field displayed on the right side of the attributes.
    */
	@:optional var secondStatus:haxe.extern.EitherType<String,sap.m.ObjectStatus>;

    /**
    * List of markers (icon and/or text) that can be displayed for the <code>ObjectListItems</code>, such as favorite and flagged.<br><br> <b>Note:</b> You should use either this aggregation or the already deprecated properties - <code>markFlagged</code>, <code>markFavorite</code>, and <code>markLocked</code>. Using both can lead to unexpected results.
    */
	@:optional var markers:Array<haxe.extern.EitherType<String,sap.m.ObjectMarker>>;

    /**
    * Internal <code>sap.m.ObjectNumber</code> control which is created based on the <code>number</code>, <code>numberUnit</code>, <code>numberState</code>, <code>numberTextDirection</code>
    */
	@:optional var _objectNumber:haxe.extern.EitherType<String,sap.m.ObjectNumber>;
}
