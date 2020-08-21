package sap.m.upload;

@:native("sap.m.upload.UploadSet")

/**
* This control allows you to upload one or more files from your devices (desktop, tablet, or phone) and attach them to your application.<br> This control builds on the {@link sap.m.UploadCollection} control, providing better handling of headers and requests, unified behavior of instant and deferred uploads, as well as improved progress indication.
*/
extern class UploadSet extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:UploadSetArgs):Void {})
	public function new(?mSettings:UploadSetArgs):Void;

	/**
	* Adds some headerField to the aggregation {@link #getHeaderFields headerFields}.
	* @param	oHeaderField The headerField to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addHeaderField( oHeaderField:sap.ui.core.Item):sap.m.upload.UploadSet;

	/**
	* Adds some incompleteItem to the aggregation {@link #getIncompleteItems incompleteItems}.
	* @param	oIncompleteItem The incompleteItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addIncompleteItem( oIncompleteItem:sap.m.upload.UploadSetItem):sap.m.upload.UploadSet;

	/**
	* Adds some item to the aggregation {@link #getItems items}.
	* @param	oItem The item to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addItem( oItem:sap.m.upload.UploadSetItem):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:afterItemAdded afterItemAdded} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired when a new file is added to the set of items to be uploaded.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAfterItemAdded( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeItemAdded beforeItemAdded} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired just before a new file is added to the set of items to be uploaded.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeItemAdded( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeItemEdited beforeItemEdited} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired when the edit button is clicked for an item and no other item is being edited at the same time. <br>If there is another item that has unsaved changes, the editing of the clicked item cannot be started.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeItemEdited( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeItemRemoved beforeItemRemoved} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired just before the confirmation dialog for 'Remove' action is displayed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeItemRemoved( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeUploadStarts beforeUploadStarts} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired right before the upload process begins.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeUploadStarts( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:beforeUploadTermination beforeUploadTermination} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired right before the upload is terminated.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachBeforeUploadTermination( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:fileNameLengthExceeded fileNameLengthExceeded} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired in either of the following cases: <ul> <li>When a file that is selected to be uploaded fails to meet the file name length restriction specified in the <code>maxFileNameLength</code> property.</li> <li>When the file name length restriction changes, and the file to be uploaded fails to meet the new restriction.</li> </ul>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFileNameLengthExceeded( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:fileSizeExceeded fileSizeExceeded} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired in either of the following cases: <ul> <li>When a file that is selected to be uploaded fails to meet the file size restriction specified in the <code>maxFileSize</code> property.</li> <li>When the file size restriction changes, and the file to be uploaded fails to meet the new restriction.</li> </ul>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFileSizeExceeded( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:fileTypeMismatch fileTypeMismatch} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired in either of the following cases: <ul> <li>When a file that is selected to be uploaded fails to meet the file type restriction (<code>fileType</code> property).</li> <li>When the file type restriction changes, and the file to be uploaded fails to meet the new restriction.</li> </ul>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFileTypeMismatch( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:mediaTypeMismatch mediaTypeMismatch} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired in either of the following cases: <ul> <li>When a file that is selected to be uploaded fails to meet the media type restriction specified in the <code>mediaTypes</code> property.</li> <li>When the media type restriction changes, and the file to be uploaded fails to meet the new restriction.</li> </ul>
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachMediaTypeMismatch( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChanged selectionChanged} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired simultaneously with the respective event in the inner {@link sap.m.List} control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChanged( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadCompleted uploadCompleted} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired right after the upload process is finished.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadCompleted( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadTerminated uploadTerminated} event of this <code>sap.m.upload.UploadSet</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.UploadSet</code> itself.

This event is fired right after the upload is terminated.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.UploadSet</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadTerminated( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Destroys all the headerFields in the aggregation {@link #getHeaderFields headerFields}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderFields( ):sap.m.upload.UploadSet;

	/**
	* Destroys all the incompleteItems in the aggregation {@link #getIncompleteItems incompleteItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyIncompleteItems( ):sap.m.upload.UploadSet;

	/**
	* Destroys all the items in the aggregation {@link #getItems items}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyItems( ):sap.m.upload.UploadSet;

	/**
	* Destroys the toolbar in the aggregation {@link #getToolbar toolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyToolbar( ):sap.m.upload.UploadSet;

	/**
	* Destroys the uploader in the aggregation {@link #getUploader uploader}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyUploader( ):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:afterItemAdded afterItemAdded} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAfterItemAdded( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeItemAdded beforeItemAdded} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeItemAdded( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeItemEdited beforeItemEdited} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeItemEdited( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeItemRemoved beforeItemRemoved} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeItemRemoved( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeUploadStarts beforeUploadStarts} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeUploadStarts( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:beforeUploadTermination beforeUploadTermination} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachBeforeUploadTermination( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:fileNameLengthExceeded fileNameLengthExceeded} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFileNameLengthExceeded( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:fileSizeExceeded fileSizeExceeded} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFileSizeExceeded( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:fileTypeMismatch fileTypeMismatch} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFileTypeMismatch( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:mediaTypeMismatch mediaTypeMismatch} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachMediaTypeMismatch( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChanged selectionChanged} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChanged( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadCompleted uploadCompleted} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadCompleted( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadTerminated uploadTerminated} event of this <code>sap.m.upload.UploadSet</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadTerminated( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.UploadSet;

	/**
	* Creates a new subclass of class sap.m.upload.UploadSet with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns an instance of the default <code>sap.ui.unified.FileUploader</code> used for adding files using the operating system's open file dialog, so that it can be customized, for example made invisible or assigned a different icon.
	* @return	Instance of the default <code>sap.ui.unified.FileUploader</code>.
	*/
	public function getDefaultFileUploader( ):sap.ui.unified.FileUploader;

	/**
	* Gets current value of property {@link #getFileTypes fileTypes}.

Allowed file types for files to be uploaded. <br>If this property is not set, any file can be uploaded.
	* @return	Value of property <code>fileTypes</code>
	*/
	public function getFileTypes( ):Array<String>;

	/**
	* Gets content of aggregation {@link #getHeaderFields headerFields}.

Header fields to be included in the header section of an XHR request.
	* @return	null
	*/
	public function getHeaderFields( ):Array<sap.ui.core.Item>;

	/**
	* Gets content of aggregation {@link #getIncompleteItems incompleteItems}.

Items representing files yet to be uploaded.
	* @return	null
	*/
	public function getIncompleteItems( ):Array<sap.m.upload.UploadSetItem>;

	/**
	* Gets current value of property {@link #getInstantUpload instantUpload}.

Defines whether the upload process should be triggered as soon as the file is added.<br> If set to <code>false</code>, no upload is triggered when a file is added.

Default value is <code>true</code>.
	* @return	Value of property <code>instantUpload</code>
	*/
	public function getInstantUpload( ):Bool;

	/**
	* Gets content of aggregation {@link #getItems items}.

Items representing files that have already been uploaded.
	* @return	null
	*/
	public function getItems( ):Array<sap.m.upload.UploadSetItem>;

	/**
	* Provides access to the instance of the inner {@link sap.m.List} control, so that it can be customized.
	* @return	The inner {@link sap.m.List} control.
	*/
	public function getList( ):sap.m.List;

	/**
	* Gets current value of property {@link #getMaxFileNameLength maxFileNameLength}.

Maximum length of names of files to be uploaded. <br>If set to <code>null</code> or <code>0</code>, any files can be uploaded, regardless of their names length.
	* @return	Value of property <code>maxFileNameLength</code>
	*/
	public function getMaxFileNameLength( ):Int;

	/**
	* Gets current value of property {@link #getMaxFileSize maxFileSize}.

Size limit in megabytes for files to be uploaded. <br>If set to <code>null</code> or <code>0</code>, files of any size can be uploaded.
	* @return	Value of property <code>maxFileSize</code>
	*/
	public function getMaxFileSize( ):Float;

	/**
	* Gets current value of property {@link #getMediaTypes mediaTypes}.

Allowed media types for files to be uploaded. <br>If this property is not set, any file can be uploaded.
	* @return	Value of property <code>mediaTypes</code>
	*/
	public function getMediaTypes( ):Array<String>;

	/**
	* Returns a metadata object for class sap.m.upload.UploadSet.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNoDataDescription noDataDescription}.

Defines custom text for the 'No data' description label.
	* @return	Value of property <code>noDataDescription</code>
	*/
	public function getNoDataDescription( ):String;

	/**
	* Gets current value of property {@link #getNoDataText noDataText}.

Defines custom text for the 'No data' text label.
	* @return	Value of property <code>noDataText</code>
	*/
	public function getNoDataText( ):String;

	/**
	* Gets current value of property {@link #getShowIcons showIcons}.

Defines whether file icons should be displayed.

Default value is <code>true</code>.
	* @return	Value of property <code>showIcons</code>
	*/
	public function getShowIcons( ):Bool;

	/**
	* Gets current value of property {@link #getTerminationEnabled terminationEnabled}.

Defines whether it is allowed to terminate the upload process.

Default value is <code>true</code>.
	* @return	Value of property <code>terminationEnabled</code>
	*/
	public function getTerminationEnabled( ):Bool;

	/**
	* Gets content of aggregation {@link #getToolbar toolbar}.

Main toolbar of the <code>UploadSet</code> control.
	* @return	null
	*/
	public function getToolbar( ):sap.m.OverflowToolbar;

	/**
	* Gets current value of property {@link #getUploadEnabled uploadEnabled}.

Defines whether the upload action is allowed.

Default value is <code>true</code>.
	* @return	Value of property <code>uploadEnabled</code>
	*/
	public function getUploadEnabled( ):Bool;

	/**
	* Gets content of aggregation {@link #getUploader uploader}.

Defines the uploader to be used. If not specified, the default implementation is used.
	* @return	null
	*/
	public function getUploader( ):sap.m.upload.Uploader;

	/**
	* Gets current value of property {@link #getUploadUrl uploadUrl}.

URL where the uploaded files will be stored.
	* @return	Value of property <code>uploadUrl</code>
	*/
	public function getUploadUrl( ):String;

	/**
	* Checks for the provided <code>sap.ui.core.Item</code> in the aggregation {@link #getHeaderFields headerFields}. and returns its index if found or -1 otherwise.
	* @param	oHeaderField The headerField whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfHeaderField( oHeaderField:sap.ui.core.Item):Int;

	/**
	* Checks for the provided <code>sap.m.upload.UploadSetItem</code> in the aggregation {@link #getIncompleteItems incompleteItems}. and returns its index if found or -1 otherwise.
	* @param	oIncompleteItem The incompleteItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfIncompleteItem( oIncompleteItem:sap.m.upload.UploadSetItem):Int;

	/**
	* Checks for the provided <code>sap.m.upload.UploadSetItem</code> in the aggregation {@link #getItems items}. and returns its index if found or -1 otherwise.
	* @param	oItem The item whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfItem( oItem:sap.m.upload.UploadSetItem):Int;

	/**
	* Inserts a headerField into the aggregation {@link #getHeaderFields headerFields}.
	* @param	oHeaderField The headerField to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the headerField should be inserted at; for a negative value of <code>iIndex</code>, the headerField is inserted at position 0; for a value greater than the current size of the aggregation, the headerField is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertHeaderField( oHeaderField:sap.ui.core.Item, iIndex:Int):sap.m.upload.UploadSet;

	/**
	* Inserts a incompleteItem into the aggregation {@link #getIncompleteItems incompleteItems}.
	* @param	oIncompleteItem The incompleteItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the incompleteItem should be inserted at; for a negative value of <code>iIndex</code>, the incompleteItem is inserted at position 0; for a value greater than the current size of the aggregation, the incompleteItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertIncompleteItem( oIncompleteItem:sap.m.upload.UploadSetItem, iIndex:Int):sap.m.upload.UploadSet;

	/**
	* Inserts a item into the aggregation {@link #getItems items}.
	* @param	oItem The item to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the item should be inserted at; for a negative value of <code>iIndex</code>, the item is inserted at position 0; for a value greater than the current size of the aggregation, the item is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertItem( oItem:sap.m.upload.UploadSetItem, iIndex:Int):sap.m.upload.UploadSet;

	/**
	* Attaches all necessary handlers to the given uploader instance, so that the progress and status of the upload can be displayed and monitored.
	* @param	oUploader Instance of <code>sap.m.upload.Uploader</code> to which the default request handlers are attached.
	* @return	Void
	*/
	public function registerUploaderEvents( oUploader:sap.m.upload.Uploader):Void;

	/**
	* Removes all the controls from the aggregation {@link #getHeaderFields headerFields}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllHeaderFields( ):Array<sap.ui.core.Item>;

	/**
	* Removes all the controls from the aggregation {@link #getIncompleteItems incompleteItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllIncompleteItems( ):Array<sap.m.upload.UploadSetItem>;

	/**
	* Removes all the controls from the aggregation {@link #getItems items}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllItems( ):Array<sap.m.upload.UploadSetItem>;
	@:overload( function(vHeaderField:Int):sap.ui.core.Item{ })
	@:overload( function(vHeaderField:String):sap.ui.core.Item{ })

	/**
	* Removes a headerField from the aggregation {@link #getHeaderFields headerFields}.
	* @param	vHeaderField The headerField to remove or its index or id
	* @return	The removed headerField or <code>null</code>
	*/
	public function removeHeaderField( vHeaderField:sap.ui.core.Item):sap.ui.core.Item;
	@:overload( function(vIncompleteItem:Int):sap.m.upload.UploadSetItem{ })
	@:overload( function(vIncompleteItem:String):sap.m.upload.UploadSetItem{ })

	/**
	* Removes a incompleteItem from the aggregation {@link #getIncompleteItems incompleteItems}.
	* @param	vIncompleteItem The incompleteItem to remove or its index or id
	* @return	The removed incompleteItem or <code>null</code>
	*/
	public function removeIncompleteItem( vIncompleteItem:sap.m.upload.UploadSetItem):sap.m.upload.UploadSetItem;
	@:overload( function(vItem:Int):sap.m.upload.UploadSetItem{ })
	@:overload( function(vItem:String):sap.m.upload.UploadSetItem{ })

	/**
	* Removes a item from the aggregation {@link #getItems items}.
	* @param	vItem The item to remove or its index or id
	* @return	The removed item or <code>null</code>
	*/
	public function removeItem( vItem:sap.m.upload.UploadSetItem):sap.m.upload.UploadSetItem;

	/**
	* Sets a new value for property {@link #getFileTypes fileTypes}.

Allowed file types for files to be uploaded. <br>If this property is not set, any file can be uploaded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFileTypes New value for property <code>fileTypes</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFileTypes( ?sFileTypes:Array<String>):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getInstantUpload instantUpload}.

Defines whether the upload process should be triggered as soon as the file is added.<br> If set to <code>false</code>, no upload is triggered when a file is added.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bInstantUpload New value for property <code>instantUpload</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInstantUpload( ?bInstantUpload:Bool):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getMaxFileNameLength maxFileNameLength}.

Maximum length of names of files to be uploaded. <br>If set to <code>null</code> or <code>0</code>, any files can be uploaded, regardless of their names length.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iMaxFileNameLength New value for property <code>maxFileNameLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxFileNameLength( ?iMaxFileNameLength:Int):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getMaxFileSize maxFileSize}.

Size limit in megabytes for files to be uploaded. <br>If set to <code>null</code> or <code>0</code>, files of any size can be uploaded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	fMaxFileSize New value for property <code>maxFileSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxFileSize( ?fMaxFileSize:Float):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getMediaTypes mediaTypes}.

Allowed media types for files to be uploaded. <br>If this property is not set, any file can be uploaded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMediaTypes New value for property <code>mediaTypes</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMediaTypes( ?sMediaTypes:Array<String>):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getNoDataDescription noDataDescription}.

Defines custom text for the 'No data' description label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNoDataDescription New value for property <code>noDataDescription</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoDataDescription( ?sNoDataDescription:String):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getNoDataText noDataText}.

Defines custom text for the 'No data' text label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNoDataText New value for property <code>noDataText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNoDataText( ?sNoDataText:String):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getShowIcons showIcons}.

Defines whether file icons should be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowIcons New value for property <code>showIcons</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowIcons( ?bShowIcons:Bool):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getTerminationEnabled terminationEnabled}.

Defines whether it is allowed to terminate the upload process.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bTerminationEnabled New value for property <code>terminationEnabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTerminationEnabled( ?bTerminationEnabled:Bool):sap.m.upload.UploadSet;

	/**
	* Sets the aggregated {@link #getToolbar toolbar}.
	* @param	oToolbar The toolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToolbar( oToolbar:sap.m.OverflowToolbar):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getUploadEnabled uploadEnabled}.

Defines whether the upload action is allowed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bUploadEnabled New value for property <code>uploadEnabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploadEnabled( ?bUploadEnabled:Bool):sap.m.upload.UploadSet;

	/**
	* Sets the aggregated {@link #getUploader uploader}.
	* @param	oUploader The uploader to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploader( oUploader:sap.m.upload.Uploader):sap.m.upload.UploadSet;

	/**
	* Sets a new value for property {@link #getUploadUrl uploadUrl}.

URL where the uploaded files will be stored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUploadUrl New value for property <code>uploadUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploadUrl( ?sUploadUrl:String):sap.m.upload.UploadSet;

	/**
	* Starts uploading all files that comply with the restrictions defined in the <code>fileTypes</code>, <code>maxFileNameLength</code>, <code>maxFileSize</code>, and <code>mediaTypes</code> properties. <br>This method works only when the <code>uploadEnabled</code> property is set to <code>true</code>.
	* @return	Void
	*/
	public function upload( ):Void;

	/**
	* Starts uploading the file if it complies with the restrictions defined in the <code>fileTypes</code>, <code>maxFileNameLength</code>, <code>maxFileSize</code>, and <code>mediaTypes</code> properties. <br>This method works only when the <code>uploadEnabled</code> property is set to <code>true</code>.
	* @param	oItem File to upload.
	* @return	Void
	*/
	public function uploadItem( oItem:Dynamic):Void;
}

typedef UploadSetArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Allowed file types for files to be uploaded. <br>If this property is not set, any file can be uploaded.
	*/
	@:optional var fileTypes:Array<String>;

	/**
	* Maximum length of names of files to be uploaded. <br>If set to <code>null</code> or <code>0</code>, any files can be uploaded, regardless of their names length.
	*/
	@:optional var maxFileNameLength:haxe.extern.EitherType<String,Int>;

	/**
	* Size limit in megabytes for files to be uploaded. <br>If set to <code>null</code> or <code>0</code>, files of any size can be uploaded.
	*/
	@:optional var maxFileSize:haxe.extern.EitherType<String,Float>;

	/**
	* Allowed media types for files to be uploaded. <br>If this property is not set, any file can be uploaded.
	*/
	@:optional var mediaTypes:Array<String>;

	/**
	* Defines custom text for the 'No data' text label.
	*/
	@:optional var noDataText:String;

	/**
	* Defines custom text for the 'No data' description label.
	*/
	@:optional var noDataDescription:String;

	/**
	* Defines whether the upload process should be triggered as soon as the file is added.<br> If set to <code>false</code>, no upload is triggered when a file is added.
	*/
	@:optional var instantUpload:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether file icons should be displayed.
	*/
	@:optional var showIcons:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether it is allowed to terminate the upload process.
	*/
	@:optional var terminationEnabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines whether the upload action is allowed.
	*/
	@:optional var uploadEnabled:haxe.extern.EitherType<String,Bool>;

	/**
	* URL where the uploaded files will be stored.
	*/
	@:optional var uploadUrl:String;

    /**
    * Items representing files that have already been uploaded.
    */
	@:optional var items:Array<haxe.extern.EitherType<String,sap.m.upload.UploadSetItem>>;

    /**
    * Items representing files yet to be uploaded.
    */
	@:optional var incompleteItems:Array<haxe.extern.EitherType<String,sap.m.upload.UploadSetItem>>;

    /**
    * Header fields to be included in the header section of an XHR request.
    */
	@:optional var headerFields:Array<haxe.extern.EitherType<String,sap.ui.core.Item>>;

    /**
    * Main toolbar of the <code>UploadSet</code> control.
    */
	@:optional var toolbar:haxe.extern.EitherType<String,sap.m.OverflowToolbar>;

    /**
    * Defines the uploader to be used. If not specified, the default implementation is used.
    */
	@:optional var uploader:haxe.extern.EitherType<String,sap.m.upload.Uploader>;

	/**
	* This event is fired when a new file is added to the set of items to be uploaded.
	*/
	@:optional var afterItemAdded:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired just before a new file is added to the set of items to be uploaded.
	*/
	@:optional var beforeItemAdded:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the edit button is clicked for an item and no other item is being edited at the same time. <br>If there is another item that has unsaved changes, the editing of the clicked item cannot be started.
	*/
	@:optional var beforeItemEdited:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired just before the confirmation dialog for 'Remove' action is displayed.
	*/
	@:optional var beforeItemRemoved:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired right before the upload process begins.
	*/
	@:optional var beforeUploadStarts:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired right before the upload is terminated.
	*/
	@:optional var beforeUploadTermination:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired in either of the following cases: <ul> <li>When a file that is selected to be uploaded fails to meet the file name length restriction specified in the <code>maxFileNameLength</code> property.</li> <li>When the file name length restriction changes, and the file to be uploaded fails to meet the new restriction.</li> </ul>
	*/
	@:optional var fileNameLengthExceeded:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired in either of the following cases: <ul> <li>When a file that is selected to be uploaded fails to meet the file size restriction specified in the <code>maxFileSize</code> property.</li> <li>When the file size restriction changes, and the file to be uploaded fails to meet the new restriction.</li> </ul>
	*/
	@:optional var fileSizeExceeded:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired in either of the following cases: <ul> <li>When a file that is selected to be uploaded fails to meet the file type restriction (<code>fileType</code> property).</li> <li>When the file type restriction changes, and the file to be uploaded fails to meet the new restriction.</li> </ul>
	*/
	@:optional var fileTypeMismatch:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired in either of the following cases: <ul> <li>When a file that is selected to be uploaded fails to meet the media type restriction specified in the <code>mediaTypes</code> property.</li> <li>When the media type restriction changes, and the file to be uploaded fails to meet the new restriction.</li> </ul>
	*/
	@:optional var mediaTypeMismatch:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired simultaneously with the respective event in the inner {@link sap.m.List} control.
	*/
	@:optional var selectionChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired right after the upload process is finished.
	*/
	@:optional var uploadCompleted:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired right after the upload is terminated.
	*/
	@:optional var uploadTerminated:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
