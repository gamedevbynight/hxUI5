package sap.m.upload;

@:native("sap.m.upload.UploadSetItem")

/**
* Item that represents one file to be uploaded using the {@link sap.m.upload.UploadSet} control.
*/
extern class UploadSetItem extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:UploadSetItemArgs):Void {})
	public function new(?mSettings:UploadSetItemArgs):Void;

	/**
	* Adds some attribute to the aggregation {@link #getAttributes attributes}.
	* @param	oAttribute The attribute to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAttribute( oAttribute:sap.m.ObjectAttribute):sap.m.upload.UploadSetItem;

	/**
	* Adds some marker to the aggregation {@link #getMarkers markers}.
	* @param	oMarker The marker to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMarker( oMarker:sap.m.ObjectMarker):sap.m.upload.UploadSetItem;

	/**
	* Adds some status to the aggregation {@link #getStatuses statuses}.
	* @param	oStatus The status to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addStatus( oStatus:sap.m.ObjectStatus):sap.m.upload.UploadSetItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:openPressed openPressed} event of this <code>sap.m.upload.UploadSetItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSetItem</code> itself.

This event is fired when an open action is invoked on an item.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSetItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachOpenPressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.upload.UploadSetItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:removePressed removePressed} event of this <code>sap.m.upload.UploadSetItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSetItem</code> itself.

This event is fired when a remove action is invoked on an item.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSetItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRemovePressed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.upload.UploadSetItem;

	/**
	* Destroys all the attributes in the aggregation {@link #getAttributes attributes}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAttributes( ):sap.m.upload.UploadSetItem;

	/**
	* Destroys all the markers in the aggregation {@link #getMarkers markers}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMarkers( ):sap.m.upload.UploadSetItem;

	/**
	* Destroys all the statuses in the aggregation {@link #getStatuses statuses}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyStatuses( ):sap.m.upload.UploadSetItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:openPressed openPressed} event of this <code>sap.m.upload.UploadSetItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachOpenPressed( fnFunction:()->Void, ?oListener:Dynamic):sap.m.upload.UploadSetItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:removePressed removePressed} event of this <code>sap.m.upload.UploadSetItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRemovePressed( fnFunction:()->Void, ?oListener:Dynamic):sap.m.upload.UploadSetItem;

	/**
	* Downloads the item. Only possible when the item has a valid URL specified in the <code>url</code> property.
	* @param	bAskForLocation Whether to ask for a location where to download the file or not.
	* @return	<code>true</code> if download is possible, <code>false</code> otherwise.
	*/
	public function download( bAskForLocation:Bool):Bool;

	/**
	* Creates a new subclass of class sap.m.upload.UploadSetItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getAttributes attributes}.

Attributes of the item.
	* @return	null
	*/
	public function getAttributes( ):Array<sap.m.ObjectAttribute>;

	/**
	* Gets current value of property {@link #getEnabledEdit enabledEdit}.

Enables or disables the edit button.

Default value is <code>true</code>.
	* @return	Value of property <code>enabledEdit</code>
	*/
	public function getEnabledEdit( ):Bool;

	/**
	* Gets current value of property {@link #getEnabledRemove enabledRemove}.

Enables or disables the remove button.

Default value is <code>true</code>.
	* @return	Value of property <code>enabledRemove</code>
	*/
	public function getEnabledRemove( ):Bool;

	/**
	* Gets current value of property {@link #getFileName fileName}.

Specifies the name of the uploaded file.
	* @return	Value of property <code>fileName</code>
	*/
	public function getFileName( ):String;

	/**
	* Gets content of aggregation {@link #getMarkers markers}.

Markers of the item.
	* @return	null
	*/
	public function getMarkers( ):Array<sap.m.ObjectMarker>;

	/**
	* Gets current value of property {@link #getMediaType mediaType}.

Specifies the MIME type of the file.
	* @return	Value of property <code>mediaType</code>
	*/
	public function getMediaType( ):String;

	/**
	* Returns a metadata object for class sap.m.upload.UploadSetItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getStatuses statuses}.

Statuses of the item.
	* @return	null
	*/
	public function getStatuses( ):Array<sap.m.ObjectStatus>;

	/**
	* Gets current value of property {@link #getThumbnailUrl thumbnailUrl}.

Specifies the URL where the thumbnail of the file is located. Can also be set to an SAPUI5 icon URL.
	* @return	Value of property <code>thumbnailUrl</code>
	*/
	public function getThumbnailUrl( ):String;

	/**
	* Gets current value of property {@link #getUploadState uploadState}.

State of the item relevant to its upload process.
	* @return	Value of property <code>uploadState</code>
	*/
	public function getUploadState( ):sap.m.UploadState;

	/**
	* Gets current value of property {@link #getUrl url}.

Specifies the URL where the file is located. <br>If the application doesn't provide a value for this property, the icon and the file name are not clickable in {@link sap.m.upload.UploadSet}.
	* @return	Value of property <code>url</code>
	*/
	public function getUrl( ):String;

	/**
	* Gets current value of property {@link #getVisibleEdit visibleEdit}.

Shows or hides the edit button.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleEdit</code>
	*/
	public function getVisibleEdit( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleRemove visibleRemove}.

Shows or hides the remove button.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleRemove</code>
	*/
	public function getVisibleRemove( ):Bool;

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
	* Checks for the provided <code>sap.m.ObjectStatus</code> in the aggregation {@link #getStatuses statuses}. and returns its index if found or -1 otherwise.
	* @param	oStatus The status whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfStatus( oStatus:sap.m.ObjectStatus):Int;

	/**
	* Inserts a attribute into the aggregation {@link #getAttributes attributes}.
	* @param	oAttribute The attribute to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the attribute should be inserted at; for a negative value of <code>iIndex</code>, the attribute is inserted at position 0; for a value greater than the current size of the aggregation, the attribute is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAttribute( oAttribute:sap.m.ObjectAttribute, iIndex:Int):sap.m.upload.UploadSetItem;

	/**
	* Inserts a marker into the aggregation {@link #getMarkers markers}.
	* @param	oMarker The marker to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the marker should be inserted at; for a negative value of <code>iIndex</code>, the marker is inserted at position 0; for a value greater than the current size of the aggregation, the marker is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMarker( oMarker:sap.m.ObjectMarker, iIndex:Int):sap.m.upload.UploadSetItem;

	/**
	* Inserts a status into the aggregation {@link #getStatuses statuses}.
	* @param	oStatus The status to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the status should be inserted at; for a negative value of <code>iIndex</code>, the status is inserted at position 0; for a value greater than the current size of the aggregation, the status is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertStatus( oStatus:sap.m.ObjectStatus, iIndex:Int):sap.m.upload.UploadSetItem;

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
	public function removeAllStatuses( ):Array<sap.m.ObjectStatus>;
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
	@:overload( function(vStatus:Int):sap.m.ObjectStatus{ })
	@:overload( function(vStatus:String):sap.m.ObjectStatus{ })

	/**
	* Removes a status from the aggregation {@link #getStatuses statuses}.
	* @param	vStatus The status to remove or its index or id
	* @return	The removed status or <code>null</code>
	*/
	public function removeStatus( vStatus:sap.m.ObjectStatus):sap.m.ObjectStatus;

	/**
	* Sets a new value for property {@link #getEnabledEdit enabledEdit}.

Enables or disables the edit button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabledEdit New value for property <code>enabledEdit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabledEdit( bEnabledEdit:Bool):sap.m.upload.UploadSetItem;

	/**
	* Sets a new value for property {@link #getEnabledRemove enabledRemove}.

Enables or disables the remove button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabledRemove New value for property <code>enabledRemove</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabledRemove( bEnabledRemove:Bool):sap.m.upload.UploadSetItem;

	/**
	* Sets a new value for property {@link #getFileName fileName}.

Specifies the name of the uploaded file.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFileName New value for property <code>fileName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFileName( sFileName:String):sap.m.upload.UploadSetItem;

	/**
	* Sets a new value for property {@link #getMediaType mediaType}.

Specifies the MIME type of the file.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMediaType New value for property <code>mediaType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMediaType( sMediaType:String):sap.m.upload.UploadSetItem;

	/**
	* Sets a new value for property {@link #getThumbnailUrl thumbnailUrl}.

Specifies the URL where the thumbnail of the file is located. Can also be set to an SAPUI5 icon URL.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sThumbnailUrl New value for property <code>thumbnailUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setThumbnailUrl( sThumbnailUrl:String):sap.m.upload.UploadSetItem;

	/**
	* Sets a new value for property {@link #getUploadState uploadState}.

State of the item relevant to its upload process.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUploadState New value for property <code>uploadState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploadState( sUploadState:sap.m.UploadState):sap.m.upload.UploadSetItem;

	/**
	* Sets a new value for property {@link #getUrl url}.

Specifies the URL where the file is located. <br>If the application doesn't provide a value for this property, the icon and the file name are not clickable in {@link sap.m.upload.UploadSet}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUrl New value for property <code>url</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUrl( sUrl:String):sap.m.upload.UploadSetItem;

	/**
	* Sets a new value for property {@link #getVisibleEdit visibleEdit}.

Shows or hides the edit button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleEdit New value for property <code>visibleEdit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleEdit( bVisibleEdit:Bool):sap.m.upload.UploadSetItem;

	/**
	* Sets a new value for property {@link #getVisibleRemove visibleRemove}.

Shows or hides the remove button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleRemove New value for property <code>visibleRemove</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleRemove( bVisibleRemove:Bool):sap.m.upload.UploadSetItem;
}

typedef UploadSetItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Enables or disables the remove button.
	*/
	@:optional var enabledRemove:haxe.extern.EitherType<String,Bool>;

	/**
	* Enables or disables the edit button.
	*/
	@:optional var enabledEdit:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the name of the uploaded file.
	*/
	@:optional var fileName:String;

	/**
	* Specifies the MIME type of the file.
	*/
	@:optional var mediaType:String;

	/**
	* Specifies the URL where the thumbnail of the file is located. Can also be set to an SAPUI5 icon URL.
	*/
	@:optional var thumbnailUrl:String;

	/**
	* State of the item relevant to its upload process.
	*/
	@:optional var uploadState:haxe.extern.EitherType<String,sap.m.UploadState>;

	/**
	* Specifies the URL where the file is located. <br>If the application doesn't provide a value for this property, the icon and the file name are not clickable in {@link sap.m.upload.UploadSet}.
	*/
	@:optional var url:String;

	/**
	* Shows or hides the remove button.
	*/
	@:optional var visibleRemove:haxe.extern.EitherType<String,Bool>;

	/**
	* Shows or hides the edit button.
	*/
	@:optional var visibleEdit:haxe.extern.EitherType<String,Bool>;

    /**
    * Attributes of the item.
    */
	@:optional var attributes:Array<haxe.extern.EitherType<String,sap.m.ObjectAttribute>>;

    /**
    * Markers of the item.
    */
	@:optional var markers:Array<haxe.extern.EitherType<String,sap.m.ObjectMarker>>;

    /**
    * Statuses of the item.
    */
	@:optional var statuses:Array<haxe.extern.EitherType<String,sap.m.ObjectStatus>>;

	/**
	* This event is fired when an open action is invoked on an item.
	*/
	@:optional var openPressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when a remove action is invoked on an item.
	*/
	@:optional var removePressed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
