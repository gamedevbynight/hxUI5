package sap.m;

@:native("sap.m.UploadCollectionItem")

/**
* Defines a structure of the element of the 'items' aggregation.
*/
extern class UploadCollectionItem extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:UploadCollectionItemArgs):Void {})
	public function new(?mSettings:UploadCollectionItemArgs):Void;

	/**
	* Adds some attribute to the aggregation {@link #getAttributes attributes}.
	* @param	oAttribute The attribute to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAttribute( oAttribute:sap.m.ObjectAttribute):sap.m.UploadCollectionItem;

	/**
	* Adds some marker to the aggregation {@link #getMarkers markers}.
	* @param	oMarker The marker to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addMarker( oMarker:sap.m.ObjectMarker):sap.m.UploadCollectionItem;

	/**
	* Adds some status to the aggregation {@link #getStatuses statuses}.
	* @param	oStatus The status to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addStatus( oStatus:sap.m.ObjectStatus):sap.m.UploadCollectionItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:deletePress deletePress} event of this <code>sap.m.UploadCollectionItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollectionItem</code> itself.

When a deletePress event handler is attached to the item and the user presses the delete button, this event is triggered. If this event is triggered, it overwrites the default delete behavior of UploadCollection and the fileDeleted event of UploadCollection is not triggered.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollectionItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDeletePress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollectionItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.UploadCollectionItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollectionItem</code> itself.

This event is triggered when the user presses the filename link. If this event is provided, it overwrites the default behavior of opening the file.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollectionItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollectionItem;

	/**
	* Binds aggregation {@link #getAttributes attributes} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindAttributes( oBindingInfo:Dynamic):sap.m.UploadCollectionItem;

	/**
	* Binds aggregation {@link #getMarkers markers} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindMarkers( oBindingInfo:Dynamic):sap.m.UploadCollectionItem;

	/**
	* Binds aggregation {@link #getStatuses statuses} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindStatuses( oBindingInfo:Dynamic):sap.m.UploadCollectionItem;

	/**
	* Destroys all the attributes in the aggregation {@link #getAttributes attributes}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAttributes( ):sap.m.UploadCollectionItem;

	/**
	* Destroys all the markers in the aggregation {@link #getMarkers markers}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMarkers( ):sap.m.UploadCollectionItem;

	/**
	* Destroys all the statuses in the aggregation {@link #getStatuses statuses}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyStatuses( ):sap.m.UploadCollectionItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:deletePress deletePress} event of this <code>sap.m.UploadCollectionItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDeletePress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollectionItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.UploadCollectionItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollectionItem;

	/**
	* Downloads the item. The sap.ui.core.util.File method is used here. For further details on this method, see {sap.ui.core.util.File.save}.
	* @param	askForLocation Decides whether to ask for a location to download or not.
	* @return	<code>true</code> if download is possible, otherwise <code>false</code>
	*/
	public function download( askForLocation:Bool):Bool;

	/**
	* Creates a new subclass of class sap.m.UploadCollectionItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAriaLabelForPicture ariaLabelForPicture}.

Aria label for the icon (or for the image).
	* @return	Value of property <code>ariaLabelForPicture</code>
	*/
	public function getAriaLabelForPicture( ):String;

	/**
	* Gets content of aggregation {@link #getAttributes attributes}.

Attributes of an uploaded item, for example, 'Uploaded By', 'Uploaded On', 'File Size' attributes are displayed after an item has been uploaded. Additionally, the Active property of sap.m.ObjectAttribute is supported.<br> Note that if one of the deprecated properties contributor, fileSize or UploadedDate is filled in addition to this attribute, two attributes with the same title are displayed as these properties get displayed as an attribute. Example: An application passes the property ‘contributor’ with the value ‘A’ and the aggregation attributes ‘contributor’: ‘B’. As a result, the attributes ‘contributor’:’A’ and ‘contributor’:’B’ are displayed. To make sure the title does not appear twice, check if one of the properties is filled.
	* @return	null
	*/
	public function getAttributes( ):Array<sap.m.ObjectAttribute>;

	/**
	* Gets current value of property {@link #getDocumentId documentId}.

Specifies a unique identifier of the file (created by the application).
	* @return	Value of property <code>documentId</code>
	*/
	public function getDocumentId( ):String;

	/**
	* Gets current value of property {@link #getEnableDelete enableDelete}.

Enables/Disables the Delete button. If the value is true, the Delete button is enabled and the delete function can be used. If the value is false, the delete function is not available.

Default value is <code>true</code>.
	* @return	Value of property <code>enableDelete</code>
	*/
	public function getEnableDelete( ):Bool;

	/**
	* Gets current value of property {@link #getEnableEdit enableEdit}.

Enables/Disables the Edit button. If the value is true, the Edit button is enabled and the edit function can be used. If the value is false, the edit function is not available.

Default value is <code>true</code>.
	* @return	Value of property <code>enableEdit</code>
	*/
	public function getEnableEdit( ):Bool;

	/**
	* Gets current value of property {@link #getFileName fileName}.

Specifies the name of the uploaded file.
	* @return	Value of property <code>fileName</code>
	*/
	public function getFileName( ):String;

	/**
	* ID of the element which is the current target of the association {@link #getFileUploader fileUploader}, or <code>null</code>.
	* @return	null
	*/
	public function getFileUploader( ):sap.ui.core.ID;

	/**
	* Gets content of aggregation {@link #getMarkers markers}.

Markers of an uploaded item Markers will be displayed after an item has been uploaded But not in Edit mode
	* @return	null
	*/
	public function getMarkers( ):Array<sap.m.ObjectMarker>;

	/**
	* Returns a metadata object for class sap.m.UploadCollectionItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMimeType mimeType}.

Specifies the MIME type of the file.
	* @return	Value of property <code>mimeType</code>
	*/
	public function getMimeType( ):String;

	/**
	* Gets current value of property {@link #getSelected selected}.

Defines the selected state of the UploadCollectionItem.

Default value is <code>false</code>.
	* @return	Value of property <code>selected</code>
	*/
	public function getSelected( ):Bool;

	/**
	* Gets content of aggregation {@link #getStatuses statuses}.

Statuses of an uploaded item Statuses will be displayed after an item has been uploaded
	* @return	null
	*/
	public function getStatuses( ):Array<sap.m.ObjectStatus>;

	/**
	* Gets current value of property {@link #getThumbnailUrl thumbnailUrl}.

Specifies the URL where the thumbnail of the file is located. This can also be an SAPUI5 icon URL.
	* @return	Value of property <code>thumbnailUrl</code>
	*/
	public function getThumbnailUrl( ):String;

	/**
	* Gets current value of property {@link #getUrl url}.

Specifies the URL where the file is located. If the application doesn't provide a value for this property, the icon and the file name of the UploadCollectionItem are not clickable.
	* @return	Value of property <code>url</code>
	*/
	public function getUrl( ):String;

	/**
	* Gets current value of property {@link #getVisibleDelete visibleDelete}.

Show/Hide the Delete button. If the value is true, the Delete button is visible. If the value is false, the Delete button is not visible.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleDelete</code>
	*/
	public function getVisibleDelete( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleEdit visibleEdit}.

Show/Hide the Edit button. If the value is true, the Edit button is visible. If the value is false, the Edit button is not visible.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleEdit</code>
	*/
	public function getVisibleEdit( ):Bool;

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
	public function insertAttribute( oAttribute:sap.m.ObjectAttribute, iIndex:Int):sap.m.UploadCollectionItem;

	/**
	* Inserts a marker into the aggregation {@link #getMarkers markers}.
	* @param	oMarker The marker to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the marker should be inserted at; for a negative value of <code>iIndex</code>, the marker is inserted at position 0; for a value greater than the current size of the aggregation, the marker is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertMarker( oMarker:sap.m.ObjectMarker, iIndex:Int):sap.m.UploadCollectionItem;

	/**
	* Inserts a status into the aggregation {@link #getStatuses statuses}.
	* @param	oStatus The status to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the status should be inserted at; for a negative value of <code>iIndex</code>, the status is inserted at position 0; for a value greater than the current size of the aggregation, the status is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertStatus( oStatus:sap.m.ObjectStatus, iIndex:Int):sap.m.UploadCollectionItem;

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
	* Sets a new value for property {@link #getAriaLabelForPicture ariaLabelForPicture}.

Aria label for the icon (or for the image).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAriaLabelForPicture New value for property <code>ariaLabelForPicture</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAriaLabelForPicture( sAriaLabelForPicture:String):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getDocumentId documentId}.

Specifies a unique identifier of the file (created by the application).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDocumentId New value for property <code>documentId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDocumentId( sDocumentId:String):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getEnableDelete enableDelete}.

Enables/Disables the Delete button. If the value is true, the Delete button is enabled and the delete function can be used. If the value is false, the delete function is not available.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableDelete New value for property <code>enableDelete</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableDelete( bEnableDelete:Bool):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getEnableEdit enableEdit}.

Enables/Disables the Edit button. If the value is true, the Edit button is enabled and the edit function can be used. If the value is false, the edit function is not available.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableEdit New value for property <code>enableEdit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableEdit( bEnableEdit:Bool):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getFileName fileName}.

Specifies the name of the uploaded file.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFileName New value for property <code>fileName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFileName( sFileName:String):sap.m.UploadCollectionItem;
	@:overload( function(oFileUploader:sap.ui.core.ID):sap.m.UploadCollectionItem{ })

	/**
	* Sets the associated {@link #getFileUploader fileUploader}.
	* @param	oFileUploader ID of an element which becomes the new target of this fileUploader association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFileUploader( oFileUploader:sap.ui.unified.FileUploader):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getMimeType mimeType}.

Specifies the MIME type of the file.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMimeType New value for property <code>mimeType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMimeType( sMimeType:String):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getSelected selected}.

Defines the selected state of the UploadCollectionItem.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSelected New value for property <code>selected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelected( bSelected:Bool):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getThumbnailUrl thumbnailUrl}.

Specifies the URL where the thumbnail of the file is located. This can also be an SAPUI5 icon URL.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sThumbnailUrl New value for property <code>thumbnailUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setThumbnailUrl( sThumbnailUrl:String):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getUrl url}.

Specifies the URL where the file is located. If the application doesn't provide a value for this property, the icon and the file name of the UploadCollectionItem are not clickable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUrl New value for property <code>url</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUrl( sUrl:String):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getVisibleDelete visibleDelete}.

Show/Hide the Delete button. If the value is true, the Delete button is visible. If the value is false, the Delete button is not visible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleDelete New value for property <code>visibleDelete</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleDelete( bVisibleDelete:Bool):sap.m.UploadCollectionItem;

	/**
	* Sets a new value for property {@link #getVisibleEdit visibleEdit}.

Show/Hide the Edit button. If the value is true, the Edit button is visible. If the value is false, the Edit button is not visible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleEdit New value for property <code>visibleEdit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleEdit( bVisibleEdit:Bool):sap.m.UploadCollectionItem;

	/**
	* Unbinds aggregation {@link #getAttributes attributes} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindAttributes( ):sap.m.UploadCollectionItem;

	/**
	* Unbinds aggregation {@link #getMarkers markers} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindMarkers( ):sap.m.UploadCollectionItem;

	/**
	* Unbinds aggregation {@link #getStatuses statuses} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindStatuses( ):sap.m.UploadCollectionItem;
}

typedef UploadCollectionItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Specifies a unique identifier of the file (created by the application).
	*/
	@:optional var documentId:String;

	/**
	* Specifies the name of the uploaded file.
	*/
	@:optional var fileName:String;

	/**
	* Specifies the MIME type of the file.
	*/
	@:optional var mimeType:String;

	/**
	* Specifies the URL where the thumbnail of the file is located. This can also be an SAPUI5 icon URL.
	*/
	@:optional var thumbnailUrl:String;

	/**
	* Specifies the URL where the file is located. If the application doesn't provide a value for this property, the icon and the file name of the UploadCollectionItem are not clickable.
	*/
	@:optional var url:String;

	/**
	* Enables/Disables the Edit button. If the value is true, the Edit button is enabled and the edit function can be used. If the value is false, the edit function is not available.
	*/
	@:optional var enableEdit:haxe.extern.EitherType<String,Bool>;

	/**
	* Enables/Disables the Delete button. If the value is true, the Delete button is enabled and the delete function can be used. If the value is false, the delete function is not available.
	*/
	@:optional var enableDelete:haxe.extern.EitherType<String,Bool>;

	/**
	* Show/Hide the Edit button. If the value is true, the Edit button is visible. If the value is false, the Edit button is not visible.
	*/
	@:optional var visibleEdit:haxe.extern.EitherType<String,Bool>;

	/**
	* Show/Hide the Delete button. If the value is true, the Delete button is visible. If the value is false, the Delete button is not visible.
	*/
	@:optional var visibleDelete:haxe.extern.EitherType<String,Bool>;

	/**
	* Aria label for the icon (or for the image).
	*/
	@:optional var ariaLabelForPicture:String;

	/**
	* Defines the selected state of the UploadCollectionItem.
	*/
	@:optional var selected:haxe.extern.EitherType<String,Bool>;

    /**
    * Attributes of an uploaded item, for example, 'Uploaded By', 'Uploaded On', 'File Size' attributes are displayed after an item has been uploaded. Additionally, the Active property of sap.m.ObjectAttribute is supported.<br> Note that if one of the deprecated properties contributor, fileSize or UploadedDate is filled in addition to this attribute, two attributes with the same title are displayed as these properties get displayed as an attribute. Example: An application passes the property ‘contributor’ with the value ‘A’ and the aggregation attributes ‘contributor’: ‘B’. As a result, the attributes ‘contributor’:’A’ and ‘contributor’:’B’ are displayed. To make sure the title does not appear twice, check if one of the properties is filled.
    */
	@:optional var attributes:Array<haxe.extern.EitherType<String,sap.m.ObjectAttribute>>;

    /**
    * Hidden aggregation for the attributes created from the deprecated properties uploadedDate, contributor and fileSize
    */
	@:optional var _propertyAttributes:Array<haxe.extern.EitherType<String,sap.m.ObjectAttribute>>;

    /**
    * Statuses of an uploaded item Statuses will be displayed after an item has been uploaded
    */
	@:optional var statuses:Array<haxe.extern.EitherType<String,sap.m.ObjectStatus>>;

    /**
    * Markers of an uploaded item Markers will be displayed after an item has been uploaded But not in Edit mode
    */
	@:optional var markers:Array<haxe.extern.EitherType<String,sap.m.ObjectMarker>>;

	/**
	* ID of the FileUploader instance
	*/
	@:optional var fileUploader:haxe.extern.EitherType<String,sap.ui.unified.FileUploader>;

	/**
	* When a deletePress event handler is attached to the item and the user presses the delete button, this event is triggered. If this event is triggered, it overwrites the default delete behavior of UploadCollection and the fileDeleted event of UploadCollection is not triggered.
	*/
	@:optional var deletePress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is triggered when the user presses the filename link. If this event is provided, it overwrites the default behavior of opening the file.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
