package sap.m;

@:native("sap.m.UploadCollection")

/**
* This control allows you to upload single or multiple files from your devices (desktop, tablet or phone) and attach them to the application.

The consuming application needs to take into account that the consistency checks of the model during the upload of the file need to be performed, for example, if the user is editing or deleting a file. <br> As of version 1.62, there is an {@link sap.m.upload.UploadSet} control available that is based on this control. {@link sap.m.upload.UploadSet} provides enhanced handling of headers and requests, unified behavior of instant and deferred uploads, as well as improved progress indication.
*/
extern class UploadCollection extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:UploadCollectionArgs):Void {})
	public function new(?mSettings:UploadCollectionArgs):Void;

	/**
	* Adds some headerParameter to the aggregation {@link #getHeaderParameters headerParameters}.
	* @param	oHeaderParameter The headerParameter to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addHeaderParameter( oHeaderParameter:sap.m.UploadCollectionParameter):sap.m.UploadCollection;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.UploadCollectionItem):sap.m.UploadCollection;

	/**
	* Adds some parameter to the aggregation {@link #getParameters parameters}.
	* @param	oParameter The parameter to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addParameter( oParameter:sap.m.UploadCollectionParameter):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeUploadStarts beforeUploadStarts} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

The event is triggered before the actual upload starts. An event is fired per file. All the necessary header parameters should be set here.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeUploadStarts( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

The event is triggered when files are selected in the FileUploader dialog. Applications can set parameters and headerParameters which will be dispatched to the embedded FileUploader control. Limitation: parameters and headerParameters are not supported by Internet Explorer 9.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:fileDeleted fileDeleted} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

The event is triggered when an uploaded attachment is selected and the Delete button is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFileDeleted( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:filenameLengthExceed filenameLengthExceed} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

The event is triggered when the name of a chosen file is longer than the value specified with the maximumFilenameLength property (only if provided by the application).
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFilenameLengthExceed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:fileRenamed fileRenamed} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

The event is triggered when the file name is changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFileRenamed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:fileSizeExceed fileSizeExceed} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

The event is triggered when the file size of an uploaded file is exceeded (only if the maxFileSize property was provided by the application). This event is not supported by Internet Explorer 9.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFileSizeExceed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChange selectionChange} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

Fires when selection is changed via user interaction inside the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:typeMissmatch typeMissmatch} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

The event is triggered when the file type or the MIME type don't match the permitted types (only if the fileType property or the mimeType property are provided by the application).
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTypeMissmatch( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadComplete uploadComplete} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

The event is triggered as soon as the upload request is completed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadComplete( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadTerminated uploadTerminated} event of this <code>sap.m.UploadCollection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.UploadCollection</code> itself.

The event is triggered as soon as the upload request was terminated by the user.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.UploadCollection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadTerminated( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Binds aggregation {@link #getItems items} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindItems( oBindingInfo:Dynamic):sap.m.UploadCollection;

	/**
	* Destroys all the headerParameters in the aggregation {@link #getHeaderParameters headerParameters}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderParameters( ):sap.m.UploadCollection;

	/**
	* Destroys the infoToolbar in the aggregation {@link #getInfoToolbar infoToolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyInfoToolbar( ):sap.m.UploadCollection;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.UploadCollection;

	/**
	* Destroys all the parameters in the aggregation {@link #getParameters parameters}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyParameters( ):sap.m.UploadCollection;

	/**
	* Destroys the toolbar in the aggregation {@link #getToolbar toolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyToolbar( ):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeUploadStarts beforeUploadStarts} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeUploadStarts( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:fileDeleted fileDeleted} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFileDeleted( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:filenameLengthExceed filenameLengthExceed} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFilenameLengthExceed( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:fileRenamed fileRenamed} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFileRenamed( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:fileSizeExceed fileSizeExceed} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFileSizeExceed( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChange selectionChange} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:typeMissmatch typeMissmatch} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTypeMissmatch( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadComplete uploadComplete} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadComplete( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadTerminated uploadTerminated} event of this <code>sap.m.UploadCollection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadTerminated( fnFunction:()->Void, ?oListener:Dynamic):sap.m.UploadCollection;

	/**
	* Downloads the given item. This function delegates to {@link sap.m.UploadCollectionItem#download uploadCollectionItem.download}.
	* @param	uploadCollectionItem The item to download. This parameter is mandatory.
	* @param	askForLocation Decides whether to ask for a location to download or not.
	* @return	True if the download has started successfully. False if the download couldn't be started.
	*/
	public function downloadItem( uploadCollectionItem:sap.m.UploadCollectionItem, askForLocation:Bool):Bool;

	/**
	* Creates a new subclass of class sap.m.UploadCollection with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getFileType fileType}.

Defines the allowed file types for the upload. The chosen files will be checked against an array of file types. If at least one file does not fit the file type requirements, the upload is prevented. Example: ["jpg", "png", "bmp"].
	* @return	Value of property <code>fileType</code>
	*/
	public function getFileType( ):Array<String>;

	/**
	* Gets content of aggregation {@link #getHeaderParameters headerParameters}.

Specifies the header parameters for the FileUploader that are submitted only with XHR requests. Header parameters are not supported by Internet Explorer 8 and 9.
	* @return	null
	*/
	public function getHeaderParameters( ):Array<sap.m.UploadCollectionParameter>;

	/**
	* Gets content of aggregation {@link #getInfoToolbar infoToolbar}.

Specifies the info toolbar for filtering information. Sorting information will not displayed.
	* @return	null
	*/
	public function getInfoToolbar( ):sap.m.Toolbar;

	/**
	* Gets current value of property {@link #getInstantUpload instantUpload}.

If false, no upload is triggered when a file is selected. In addition, if a file was selected, a new FileUploader instance is created to ensure that multiple files from multiple folders can be chosen.

Default value is <code>true</code>.
	* @return	Value of property <code>instantUpload</code>
	*/
	public function getInstantUpload( ):Bool;

	/**
	* Provides access to the internally used request headers to allow adding them to the "Access-Control-Allow-Headers" header parameter if needed.
	* @return	An array of request header strings
	*/
	public function getInternalRequestHeaderNames( ):Array<String>;

	/**
	* Gets content of aggregation {@link #getItems items}.

Uploaded items.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.UploadCollectionItem>;

	/**
	* Gets current value of property {@link #getMaximumFilenameLength maximumFilenameLength}.

Specifies the maximum length of a file name. If the maximum file name length is exceeded, the corresponding event 'filenameLengthExceed' is triggered.
	* @return	Value of property <code>maximumFilenameLength</code>
	*/
	public function getMaximumFilenameLength( ):Int;

	/**
	* Gets current value of property {@link #getMaximumFileSize maximumFileSize}.

Specifies a file size limit in megabytes that prevents the upload if at least one file exceeds the limit. This property is not supported by Internet Explorer 8 and 9.
	* @return	Value of property <code>maximumFileSize</code>
	*/
	public function getMaximumFileSize( ):Float;

	/**
	* Returns a metadata object for class sap.m.UploadCollection.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMimeType mimeType}.

Defines the allowed MIME types of files to be uploaded. The chosen files will be checked against an array of MIME types. If at least one file does not fit the MIME type requirements, the upload is prevented. This property is not supported by Internet Explorer 8 and 9. Example: mimeType ["image/png", "image/jpeg"].
	* @return	Value of property <code>mimeType</code>
	*/
	public function getMimeType( ):Array<String>;

	/**
	* Gets current value of property {@link #getMode mode}.

Defines the selection mode of the control (e.g. None, SingleSelect, MultiSelect, SingleSelectLeft, SingleSelectMaster). Since the UploadCollection reacts like a list for attachments, the API is close to the ListBase Interface. sap.m.ListMode.Delete mode is not supported and will be automatically set to sap.m.ListMode.None. In addition, if instant upload is set to false the mode sap.m.ListMode.MultiSelect is not supported and will be automatically set to sap.m.ListMode.None.

Default value is <code>None</code>.
	* @return	Value of property <code>mode</code>
	*/
	public function getMode( ):sap.m.ListMode;

	/**
	* Gets current value of property {@link #getMultiple multiple}.

Lets the user select multiple files from the same folder and then upload them. Internet Explorer 8 and 9 do not support this property. Please note that the various operating systems for mobile devices can react differently to the property so that fewer upload functions may be available in some cases.

If multiple property is set to false, the control shows an error message if more than one file is chosen for drag & drop.

Default value is <code>false</code>.
	* @return	Value of property <code>multiple</code>
	*/
	public function getMultiple( ):Bool;

	/**
	* Gets current value of property {@link #getNoDataDescription noDataDescription}.

Allows you to set your own text for the 'No data' description label.
	* @return	Value of property <code>noDataDescription</code>
	*/
	public function getNoDataDescription( ):String;

	/**
	* Gets current value of property {@link #getNoDataText noDataText}.

Allows you to set your own text for the 'No data' text label.
	* @return	Value of property <code>noDataText</code>
	*/
	public function getNoDataText( ):String;

	/**
	* Gets current value of property {@link #getNumberOfAttachmentsText numberOfAttachmentsText}.

Sets the title text in the toolbar of the list of attachments. To show as well the number of attachments in brackets like the default text does. The number of attachments could be retrieved via "getItems().length". If a new title is set, the default is deactivated. The default value is set to language-dependent "Attachments (n)".
	* @return	Value of property <code>numberOfAttachmentsText</code>
	*/
	public function getNumberOfAttachmentsText( ):String;

	/**
	* Gets content of aggregation {@link #getParameters parameters}.

Specifies the parameters for the FileUploader that are rendered as a hidden input field.
	* @return	null
	*/
	public function getParameters( ):Array<sap.m.UploadCollectionParameter>;

	/**
	* Gets current value of property {@link #getSameFilenameAllowed sameFilenameAllowed}.

Allows the user to use the same name for a file when editing the file name. 'Same name' refers to an already existing file name in the list.

Default value is <code>false</code>.
	* @return	Value of property <code>sameFilenameAllowed</code>
	*/
	public function getSameFilenameAllowed( ):Bool;

	/**
	* Retrieves the currently selected UploadCollectionItem.
	* @return	The currently selected item or null
	*/
	public function getSelectedItem( ):Dynamic;

	/**
	* Returns an array containing the selected UploadCollectionItems.
	* @return	Array of all selected items
	*/
	public function getSelectedItems( ):Array<sap.m.UploadCollectionItem>;

	/**
	* Gets current value of property {@link #getShowSeparators showSeparators}.

Defines whether separators are shown between list items.

Default value is <code>All</code>.
	* @return	Value of property <code>showSeparators</code>
	*/
	public function getShowSeparators( ):sap.m.ListSeparators;

	/**
	* Gets current value of property {@link #getTerminationEnabled terminationEnabled}.

If true, the button that is used to terminate the instant file upload gets visible. The button normally appears when a file is being uploaded.

Default value is <code>true</code>.
	* @return	Value of property <code>terminationEnabled</code>
	*/
	public function getTerminationEnabled( ):Bool;

	/**
	* Gets content of aggregation {@link #getToolbar toolbar}.

Specifies the toolbar.
	* @return	null
	*/
	public function getToolbar( ):sap.m.OverflowToolbar;

	/**
	* Gets current value of property {@link #getUploadButtonInvisible uploadButtonInvisible}.

If true, the button used for uploading files is invisible.

Default value is <code>false</code>.
	* @return	Value of property <code>uploadButtonInvisible</code>
	*/
	public function getUploadButtonInvisible( ):Bool;

	/**
	* Gets current value of property {@link #getUploadEnabled uploadEnabled}.

Enables the upload of a file.

Default value is <code>true</code>.
	* @return	Value of property <code>uploadEnabled</code>
	*/
	public function getUploadEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getUploadUrl uploadUrl}.

Specifies the URL where the uploaded files have to be stored.

Default value is <code>../../../upload</code>.
	* @return	Value of property <code>uploadUrl</code>
	*/
	public function getUploadUrl( ):String;

	/**
	* Checks for the provided <code>sap.m.UploadCollectionParameter</code> in the aggregation {@link #getHeaderParameters headerParameters}. and returns its index if found or -1 otherwise.
	* @param	oHeaderParameter The headerParameter whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfHeaderParameter( oHeaderParameter:sap.m.UploadCollectionParameter):Int;

	/**
	* Checks for the provided <code>sap.m.UploadCollectionItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.UploadCollectionItem):Int;

	/**
	* Checks for the provided <code>sap.m.UploadCollectionParameter</code> in the aggregation {@link #getParameters parameters}. and returns its index if found or -1 otherwise.
	* @param	oParameter The parameter whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfParameter( oParameter:sap.m.UploadCollectionParameter):Int;

	/**
	* Inserts a headerParameter into the aggregation {@link #getHeaderParameters headerParameters}.
	* @param	oHeaderParameter The headerParameter to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the headerParameter should be inserted at; for a negative value of <code>iIndex</code>, the headerParameter is inserted at position 0; for a value greater than the current size of the aggregation, the headerParameter is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertHeaderParameter( oHeaderParameter:sap.m.UploadCollectionParameter, iIndex:Int):sap.m.UploadCollection;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.UploadCollectionItem, iIndex:Int):sap.m.UploadCollection;

	/**
	* Inserts a parameter into the aggregation {@link #getParameters parameters}.
	* @param	oParameter The parameter to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the parameter should be inserted at; for a negative value of <code>iIndex</code>, the parameter is inserted at position 0; for a value greater than the current size of the aggregation, the parameter is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertParameter( oParameter:sap.m.UploadCollectionParameter, iIndex:Int):sap.m.UploadCollection;

	/**
	* Opens the FileUploader dialog. When an UploadCollectionItem is provided, this method can be used to update a file with a new version. In this case, the upload progress can be sequenced using the events: beforeUploadStarts, uploadComplete and uploadTerminated. For this use, multiple properties from the UploadCollection have to be set to false. If no UploadCollectionItem is provided, only the dialog opens and no further configuration of the UploadCollection is needed.
	* @param	item The item to update with a new version. This parameter is mandatory.
	* @return	this to allow method chaining
	*/
	public function openFileDialog( item:sap.m.UploadCollectionItem):sap.m.UploadCollection;

	/**
	* Removes all the controls from the aggregation {@link #getHeaderParameters headerParameters}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllHeaderParameters( ):Array<sap.m.UploadCollectionParameter>;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.UploadCollectionItem>;

	/**
	* Removes all the controls from the aggregation {@link #getParameters parameters}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllParameters( ):Array<sap.m.UploadCollectionParameter>;
	@:overload( function(vHeaderParameter:Int):sap.m.UploadCollectionParameter{ })
	@:overload( function(vHeaderParameter:String):sap.m.UploadCollectionParameter{ })

	/**
	* Removes a headerParameter from the aggregation {@link #getHeaderParameters headerParameters}.
	* @param	vHeaderParameter The headerParameter to remove or its index or id
	* @return	The removed headerParameter or <code>null</code>
	*/
	public function removeHeaderParameter( vHeaderParameter:sap.m.UploadCollectionParameter):sap.m.UploadCollectionParameter;
	@:overload( function(vItem:Int):sap.m.UploadCollectionItem{ })
	@:overload( function(vItem:String):sap.m.UploadCollectionItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.UploadCollectionItem):sap.m.UploadCollectionItem;
	@:overload( function(vParameter:Int):sap.m.UploadCollectionParameter{ })
	@:overload( function(vParameter:String):sap.m.UploadCollectionParameter{ })

	/**
	* Removes a parameter from the aggregation {@link #getParameters parameters}.
	* @param	vParameter The parameter to remove or its index or id
	* @return	The removed parameter or <code>null</code>
	*/
	public function removeParameter( vParameter:sap.m.UploadCollectionParameter):sap.m.UploadCollectionParameter;

	/**
	* Select all items in "MultiSelection" mode.
	* @return	this to allow method changing
	*/
	public function selectAll( ):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getFileType fileType}.

Defines the allowed file types for the upload. The chosen files will be checked against an array of file types. If at least one file does not fit the file type requirements, the upload is prevented. Example: ["jpg", "png", "bmp"].

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFileType New value for property <code>fileType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFileType( sFileType:Array<String>):sap.m.UploadCollection;

	/**
	* Sets the aggregated {@link #getInfoToolbar infoToolbar}.
	* @param	oInfoToolbar The infoToolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfoToolbar( oInfoToolbar:sap.m.Toolbar):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getInstantUpload instantUpload}.

If false, no upload is triggered when a file is selected. In addition, if a file was selected, a new FileUploader instance is created to ensure that multiple files from multiple folders can be chosen.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bInstantUpload New value for property <code>instantUpload</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInstantUpload( bInstantUpload:Bool):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getMaximumFilenameLength maximumFilenameLength}.

Specifies the maximum length of a file name. If the maximum file name length is exceeded, the corresponding event 'filenameLengthExceed' is triggered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iMaximumFilenameLength New value for property <code>maximumFilenameLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaximumFilenameLength( iMaximumFilenameLength:Int):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getMaximumFileSize maximumFileSize}.

Specifies a file size limit in megabytes that prevents the upload if at least one file exceeds the limit. This property is not supported by Internet Explorer 8 and 9.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	fMaximumFileSize New value for property <code>maximumFileSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaximumFileSize( fMaximumFileSize:Float):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getMimeType mimeType}.

Defines the allowed MIME types of files to be uploaded. The chosen files will be checked against an array of MIME types. If at least one file does not fit the MIME type requirements, the upload is prevented. This property is not supported by Internet Explorer 8 and 9. Example: mimeType ["image/png", "image/jpeg"].

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMimeType New value for property <code>mimeType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMimeType( sMimeType:Array<String>):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getMode mode}.

Defines the selection mode of the control (e.g. None, SingleSelect, MultiSelect, SingleSelectLeft, SingleSelectMaster). Since the UploadCollection reacts like a list for attachments, the API is close to the ListBase Interface. sap.m.ListMode.Delete mode is not supported and will be automatically set to sap.m.ListMode.None. In addition, if instant upload is set to false the mode sap.m.ListMode.MultiSelect is not supported and will be automatically set to sap.m.ListMode.None.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sMode New value for property <code>mode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMode( sMode:sap.m.ListMode):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getMultiple multiple}.

Lets the user select multiple files from the same folder and then upload them. Internet Explorer 8 and 9 do not support this property. Please note that the various operating systems for mobile devices can react differently to the property so that fewer upload functions may be available in some cases.

If multiple property is set to false, the control shows an error message if more than one file is chosen for drag & drop.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bMultiple New value for property <code>multiple</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMultiple( bMultiple:Bool):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getNoDataDescription noDataDescription}.

Allows you to set your own text for the 'No data' description label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNoDataDescription New value for property <code>noDataDescription</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoDataDescription( sNoDataDescription:String):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getNoDataText noDataText}.

Allows you to set your own text for the 'No data' text label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNoDataText New value for property <code>noDataText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoDataText( sNoDataText:String):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getNumberOfAttachmentsText numberOfAttachmentsText}.

Sets the title text in the toolbar of the list of attachments. To show as well the number of attachments in brackets like the default text does. The number of attachments could be retrieved via "getItems().length". If a new title is set, the default is deactivated. The default value is set to language-dependent "Attachments (n)".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNumberOfAttachmentsText New value for property <code>numberOfAttachmentsText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumberOfAttachmentsText( sNumberOfAttachmentsText:String):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getSameFilenameAllowed sameFilenameAllowed}.

Allows the user to use the same name for a file when editing the file name. 'Same name' refers to an already existing file name in the list.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSameFilenameAllowed New value for property <code>sameFilenameAllowed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSameFilenameAllowed( bSameFilenameAllowed:Bool):sap.m.UploadCollection;

	/**
	* Selects or deselects the given list item.
	* @param	uploadCollectionItem The item whose selection is to be changed. This parameter is mandatory.
	* @param	select The selection state of the item. Default value is true.
	* @return	this to allow method chaining
	*/
	public function setSelectedItem( uploadCollectionItem:sap.m.UploadCollectionItem, select:Bool):sap.m.UploadCollection;

	/**
	* Sets an UploadCollectionItem to be selected by ID. In single selection mode, the method removes the previous selection.
	* @param	id The ID of the item whose selection is to be changed.
	* @param	select The selection state of the item. Default value is true.
	* @return	this to allow method chaining
	*/
	public function setSelectedItemById( id:String, select:Bool):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getShowSeparators showSeparators}.

Defines whether separators are shown between list items.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>All</code>.
	* @param	sShowSeparators New value for property <code>showSeparators</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSeparators( sShowSeparators:sap.m.ListSeparators):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getTerminationEnabled terminationEnabled}.

If true, the button that is used to terminate the instant file upload gets visible. The button normally appears when a file is being uploaded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bTerminationEnabled New value for property <code>terminationEnabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTerminationEnabled( bTerminationEnabled:Bool):sap.m.UploadCollection;

	/**
	* Sets the aggregated {@link #getToolbar toolbar}.
	* @param	oToolbar The toolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToolbar( oToolbar:sap.m.OverflowToolbar):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getUploadButtonInvisible uploadButtonInvisible}.

If true, the button used for uploading files is invisible.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUploadButtonInvisible New value for property <code>uploadButtonInvisible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploadButtonInvisible( bUploadButtonInvisible:Bool):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getUploadEnabled uploadEnabled}.

Enables the upload of a file.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bUploadEnabled New value for property <code>uploadEnabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploadEnabled( bUploadEnabled:Bool):sap.m.UploadCollection;

	/**
	* Sets a new value for property {@link #getUploadUrl uploadUrl}.

Specifies the URL where the uploaded files have to be stored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>../../../upload</code>.
	* @param	sUploadUrl New value for property <code>uploadUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploadUrl( sUploadUrl:String):sap.m.UploadCollection;

	/**
	* Unbinds aggregation {@link #getItems items} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindItems( ):sap.m.UploadCollection;

	/**
	* Starts the upload for all selected files.
	* @return	Void
	*/
	public function upload( ):Void;
}

typedef UploadCollectionArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the allowed file types for the upload. The chosen files will be checked against an array of file types. If at least one file does not fit the file type requirements, the upload is prevented. Example: ["jpg", "png", "bmp"].
	*/
	@:optional var fileType:Array<String>;

	/**
	* Specifies the maximum length of a file name. If the maximum file name length is exceeded, the corresponding event 'filenameLengthExceed' is triggered.
	*/
	@:optional var maximumFilenameLength:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies a file size limit in megabytes that prevents the upload if at least one file exceeds the limit. This property is not supported by Internet Explorer 8 and 9.
	*/
	@:optional var maximumFileSize:haxe.extern.EitherType<String,Float>;

	/**
	* Defines the allowed MIME types of files to be uploaded. The chosen files will be checked against an array of MIME types. If at least one file does not fit the MIME type requirements, the upload is prevented. This property is not supported by Internet Explorer 8 and 9. Example: mimeType ["image/png", "image/jpeg"].
	*/
	@:optional var mimeType:Array<String>;

	/**
	* Lets the user select multiple files from the same folder and then upload them. Internet Explorer 8 and 9 do not support this property. Please note that the various operating systems for mobile devices can react differently to the property so that fewer upload functions may be available in some cases.

If multiple property is set to false, the control shows an error message if more than one file is chosen for drag & drop.
	*/
	@:optional var multiple:haxe.extern.EitherType<String,Bool>;

	/**
	* Allows you to set your own text for the 'No data' text label.
	*/
	@:optional var noDataText:String;

	/**
	* Allows you to set your own text for the 'No data' description label.
	*/
	@:optional var noDataDescription:String;

	/**
	* Allows the user to use the same name for a file when editing the file name. 'Same name' refers to an already existing file name in the list.
	*/
	@:optional var sameFilenameAllowed:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether separators are shown between list items.
	*/
	@:optional var showSeparators:haxe.extern.EitherType<String,sap.m.ListSeparators>;

	/**
	* Enables the upload of a file.
	*/
	@:optional var uploadEnabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Specifies the URL where the uploaded files have to be stored.
	*/
	@:optional var uploadUrl:String;

	/**
	* If false, no upload is triggered when a file is selected. In addition, if a file was selected, a new FileUploader instance is created to ensure that multiple files from multiple folders can be chosen.
	*/
	@:optional var instantUpload:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets the title text in the toolbar of the list of attachments. To show as well the number of attachments in brackets like the default text does. The number of attachments could be retrieved via "getItems().length". If a new title is set, the default is deactivated. The default value is set to language-dependent "Attachments (n)".
	*/
	@:optional var numberOfAttachmentsText:String;

	/**
	* Defines the selection mode of the control (e.g. None, SingleSelect, MultiSelect, SingleSelectLeft, SingleSelectMaster). Since the UploadCollection reacts like a list for attachments, the API is close to the ListBase Interface. sap.m.ListMode.Delete mode is not supported and will be automatically set to sap.m.ListMode.None. In addition, if instant upload is set to false the mode sap.m.ListMode.MultiSelect is not supported and will be automatically set to sap.m.ListMode.None.
	*/
	@:optional var mode:haxe.extern.EitherType<String,sap.m.ListMode>;

	/**
	* If true, the button used for uploading files is invisible.
	*/
	@:optional var uploadButtonInvisible:haxe.extern.EitherType<String,Bool>;

	/**
	* If true, the button that is used to terminate the instant file upload gets visible. The button normally appears when a file is being uploaded.
	*/
	@:optional var terminationEnabled:haxe.extern.EitherType<String,Bool>;

    /**
    * Uploaded items.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.UploadCollectionItem>>;

    /**
    * Specifies the header parameters for the FileUploader that are submitted only with XHR requests. Header parameters are not supported by Internet Explorer 8 and 9.
    */
	@:optional var headerParameters:Array<haxe.extern.EitherType<String,sap.m.UploadCollectionParameter>>;

    /**
    * Specifies the parameters for the FileUploader that are rendered as a hidden input field.
    */
	@:optional var parameters:Array<haxe.extern.EitherType<String,sap.m.UploadCollectionParameter>>;

    /**
    * Specifies the toolbar.
    */
	@:optional var toolbar:haxe.extern.EitherType<String,sap.m.OverflowToolbar>;

    /**
    * Specifies the info toolbar for filtering information. Sorting information will not displayed.
    */
	@:optional var infoToolbar:haxe.extern.EitherType<String,sap.m.Toolbar>;

    /**
    * Internal aggregation to hold the list in controls tree.
    */
	@:optional var _list:haxe.extern.EitherType<String,sap.m.List>;

    /**
    * The icon is displayed in no data page
    */
	@:optional var _noDataIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * Internal aggregation to hold the drag and drop icon of indicator.
    */
	@:optional var _dragDropIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * Internal aggregation to hold the drag and drop text of indicator.
    */
	@:optional var _dragDropText:haxe.extern.EitherType<String,sap.m.Text>;

	/**
	* The event is triggered before the actual upload starts. An event is fired per file. All the necessary header parameters should be set here.
	*/
	@:optional var beforeUploadStarts:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is triggered when files are selected in the FileUploader dialog. Applications can set parameters and headerParameters which will be dispatched to the embedded FileUploader control. Limitation: parameters and headerParameters are not supported by Internet Explorer 9.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is triggered when an uploaded attachment is selected and the Delete button is pressed.
	*/
	@:optional var fileDeleted:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is triggered when the name of a chosen file is longer than the value specified with the maximumFilenameLength property (only if provided by the application).
	*/
	@:optional var filenameLengthExceed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is triggered when the file name is changed.
	*/
	@:optional var fileRenamed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is triggered when the file size of an uploaded file is exceeded (only if the maxFileSize property was provided by the application). This event is not supported by Internet Explorer 9.
	*/
	@:optional var fileSizeExceed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when selection is changed via user interaction inside the control.
	*/
	@:optional var selectionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is triggered when the file type or the MIME type don't match the permitted types (only if the fileType property or the mimeType property are provided by the application).
	*/
	@:optional var typeMissmatch:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is triggered as soon as the upload request is completed.
	*/
	@:optional var uploadComplete:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The event is triggered as soon as the upload request was terminated by the user.
	*/
	@:optional var uploadTerminated:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
