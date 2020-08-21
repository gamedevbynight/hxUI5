package sap.m.upload;

@:native("sap.m.upload.Uploader")

/**
* A basic implementation for uploading and downloading one or multiple files.
*/
extern class Uploader extends sap.ui.core.Element
{
public function new():Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadAborted uploadAborted} event of this <code>sap.m.upload.Uploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.Uploader</code> itself.

The event is fired when an XHR request reports its abortion.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.Uploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadAborted( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.Uploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadCompleted uploadCompleted} event of this <code>sap.m.upload.Uploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.Uploader</code> itself.

The event is fired when an XHR request reports successful completion of upload process.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.Uploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadCompleted( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.Uploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadProgressed uploadProgressed} event of this <code>sap.m.upload.Uploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.Uploader</code> itself.

The event is fired every time an XHR request reports progress in uploading.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.Uploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadProgressed( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.Uploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadStarted uploadStarted} event of this <code>sap.m.upload.Uploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.upload.Uploader</code> itself.

The event is fired just after the POST request was sent.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.upload.Uploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadStarted( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.Uploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadAborted uploadAborted} event of this <code>sap.m.upload.Uploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadAborted( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.Uploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadCompleted uploadCompleted} event of this <code>sap.m.upload.Uploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadCompleted( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.Uploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadProgressed uploadProgressed} event of this <code>sap.m.upload.Uploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadProgressed( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.Uploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadStarted uploadStarted} event of this <code>sap.m.upload.Uploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadStarted( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.upload.Uploader;

	/**
	* Starts the process of downloading a file.
	* @param	oItem Item representing the file to be downloaded.
	* @param	aHeaderFields List of header fields to be added to the GET request.
	* @param	bAskForLocation True if the location to where download the file should be first queried by a browser dialog.
	* @return	True if the download process successfully
	*/
	public function downloadItem( oItem:sap.m.upload.UploadSetItem, aHeaderFields:Array<sap.ui.core.Item>, bAskForLocation:Bool):Bool;

	/**
	* Creates a new subclass of class sap.m.upload.Uploader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getDownloadUrl downloadUrl}.

URL where the next file is going to be download from.
	* @return	Value of property <code>downloadUrl</code>
	*/
	public function getDownloadUrl( ):String;

	/**
	* Returns a metadata object for class sap.m.upload.Uploader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getUploadUrl uploadUrl}.

URL where the next file is going to be uploaded to.
	* @return	Value of property <code>uploadUrl</code>
	*/
	public function getUploadUrl( ):String;

	/**
	* Sets a new value for property {@link #getDownloadUrl downloadUrl}.

URL where the next file is going to be download from.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDownloadUrl New value for property <code>downloadUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDownloadUrl( ?sDownloadUrl:String):sap.m.upload.Uploader;

	/**
	* Sets a new value for property {@link #getUploadUrl uploadUrl}.

URL where the next file is going to be uploaded to.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUploadUrl New value for property <code>uploadUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploadUrl( ?sUploadUrl:String):sap.m.upload.Uploader;

	/**
	* Attempts to terminate the process of uploading the specified file.
	* @param	oItem Item representing the file whose ongoing upload process is to be terminated.
	* @return	Void
	*/
	public function terminateItem( oItem:sap.m.upload.UploadSetItem):Void;
	@:overload( function(oFile:File, sUrl:String, ?aHeaderFields:Array<sap.ui.core.Item>):js.lib.Promise<Uploader>{ })

	/**
	* Starts function for uploading one file object to given url. Returns promise that resolves when the upload is finished or rejects when the upload fails.
	* @param	oFile File or Blob object to be uploaded.
	* @param	sUrl Upload Url.
	* @param	aHeaderFields Collection of request header fields to be send along.
	* @return	Promise that resolves when the upload is finished or rejects when the upload fails.
	*/
	public static function uploadFile( oFile:Blob, sUrl:String, ?aHeaderFields:Array<sap.ui.core.Item>):js.lib.Promise<Uploader>;

	/**
	* Starts the process of uploading the specified file.
	* @param	oItem Item representing the file to be uploaded.
	* @param	aHeaderFields Collection of request header fields to be send along.
	* @return	Void
	*/
	public function uploadItem( oItem:sap.m.upload.UploadSetItem, ?aHeaderFields:Array<sap.ui.core.Item>):Void;
}

