package sap.ui.unified;

@:native("sap.ui.unified.FileUploader")

/**
* The framework generates an input field and a button with text "Browse ...". The API supports features such as on change uploads (the upload starts immediately after a file has been selected), file uploads with explicit calls, adjustable control sizes, text display after uploads, or tooltips containing complete file paths.
*/
extern class FileUploader extends sap.ui.core.Control implements sap.ui.core.IFormContent implements sap.ui.unified.IProcessableBlobs
{
	@:overload(function(?sId:String, ?mSettings:FileUploaderArgs):Void {})
	public function new(?mSettings:FileUploaderArgs):Void;

	/**
	* Aborts the currently running upload.
	* @param	sHeaderParameterName The name of the parameter within the <code>headerParameters</code> aggregation to be checked.

<b>Note:</b> aborts the request, sent with a header parameter with the provided name. The parameter is taken into account if the sHeaderParameterValue parameter is provided too.
	* @param	sHeaderParameterValue The value of the parameter within the <code>headerParameters</code> aggregation to be checked.

<b>Note:</b> aborts the request, sent with a header parameter with the provided value. The parameter is taken into account if the sHeaderParameterName parameter is provided too.
	* @return	Void
	*/
	public function abort( sHeaderParameterName:String, sHeaderParameterValue:String):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.unified.FileUploader{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.unified.FileUploader;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.FileUploader{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.FileUploader;

	/**
	* Adds some headerParameter to the aggregation {@link #getHeaderParameters headerParameters}.
	* @param	oHeaderParameter The headerParameter to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addHeaderParameter( oHeaderParameter:sap.ui.unified.FileUploaderParameter):sap.ui.unified.FileUploader;

	/**
	* Adds some parameter to the aggregation {@link #getParameters parameters}.
	* @param	oParameter The parameter to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addParameter( oParameter:sap.ui.unified.FileUploaderParameter):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired when the value of the file path has been changed.

<b>Note:</b> Keep in mind that because of the HTML input element of type file, the event is also fired in Chrome browser when the Cancel button of the uploads window is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:fileAllowed fileAllowed} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired when the file is allowed for upload on client side.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFileAllowed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:fileEmpty fileEmpty} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired when the size of the file is 0
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFileEmpty( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:filenameLengthExceed filenameLengthExceed} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired, if the filename of a chosen file is longer than the value specified with the <code>maximumFilenameLength</code> property.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFilenameLengthExceed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:fileSizeExceed fileSizeExceed} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired when the size of a file is above the <code>maximumFileSize</code> property. This event is not supported by Internet Explorer 9 (same restriction as for the property <code>maximumFileSize</code>).
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachFileSizeExceed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:typeMissmatch typeMissmatch} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired when the type of a file does not match the <code>mimeType</code> or <code>fileType</code> property.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachTypeMissmatch( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadAborted uploadAborted} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired after the current upload has been aborted.

This event is only supported with property <code>sendXHR</code> set to true, i.e. the event is not supported in Internet Explorer 9.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadAborted( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadComplete uploadComplete} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired as soon as the upload request is completed (either successful or unsuccessful).

To see if the upload request was successful, check the <code>status</code> parameter for a value 2xx. The actual progress of the upload can be monitored by listening to the <code>uploadProgress</code> event. However, this covers only the client side of the upload process and does not give any success status from the server.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadComplete( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadProgress uploadProgress} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired after the upload has started and before the upload is completed.

It contains progress information related to the running upload. Depending on file size, band width and used browser the event is fired once or multiple times.

This event is only supported with property <code>sendXHR</code> set to true, i.e. the event is not supported in Internet Explorer 9.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadProgress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:uploadStart uploadStart} event of this <code>sap.ui.unified.FileUploader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.FileUploader</code> itself.

Event is fired before an upload is started.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.FileUploader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachUploadStart( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Clears the content of the <code>FileUploader</code>.

<b>Note:</b> The attached additional data however is retained.
	* @return	The <code>sap.ui.unified.FileUploader</code> instance
	*/
	public function clear( ):sap.ui.unified.FileUploader;

	/**
	* Destroys all the headerParameters in the aggregation {@link #getHeaderParameters headerParameters}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeaderParameters( ):sap.ui.unified.FileUploader;

	/**
	* Destroys all the parameters in the aggregation {@link #getParameters parameters}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyParameters( ):sap.ui.unified.FileUploader;

	/**
	* Destroys the xhrSettings in the aggregation {@link #getXhrSettings xhrSettings}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyXhrSettings( ):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:fileAllowed fileAllowed} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFileAllowed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:fileEmpty fileEmpty} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFileEmpty( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:filenameLengthExceed filenameLengthExceed} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFilenameLengthExceed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:fileSizeExceed fileSizeExceed} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachFileSizeExceed( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:typeMissmatch typeMissmatch} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachTypeMissmatch( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadAborted uploadAborted} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadAborted( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadComplete uploadComplete} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadComplete( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadProgress uploadProgress} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadProgress( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:uploadStart uploadStart} event of this <code>sap.ui.unified.FileUploader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachUploadStart( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.unified.FileUploader;

	/**
	* Creates a new subclass of class sap.ui.unified.FileUploader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAdditionalData additionalData}.

Additional data that is sent to the back end service.

Data will be transmitted as value of a hidden input where the name is derived from the <code>name</code> property with suffix "-data".
	* @return	Value of property <code>additionalData</code>
	*/
	public function getAdditionalData( ):String;

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
	* Gets current value of property {@link #getButtonOnly buttonOnly}.

If set to "true", the <code>FileUploader</code> will be rendered as Button only, without showing the input field.

Default value is <code>false</code>.
	* @return	Value of property <code>buttonOnly</code>
	*/
	public function getButtonOnly( ):Bool;

	/**
	* Gets current value of property {@link #getButtonText buttonText}.

The button's text can be overwritten using this property.
	* @return	Value of property <code>buttonText</code>
	*/
	public function getButtonText( ):String;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Disabled controls have different colors, depending on customer settings.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getFileType fileType}.

The chosen files will be checked against an array of file types.

If at least one file does not fit the file type restriction, the upload is prevented.

Example: <code>["jpg", "png", "bmp"]</code>.
	* @return	Value of property <code>fileType</code>
	*/
	public function getFileType( ):Array<String>;

	/**
	* Gets content of aggregation {@link #getHeaderParameters headerParameters}.

The header parameters for the <code>FileUploader</code> which are only submitted with XHR requests. Header parameters are not supported by Internet Explorer 9.
	* @return	null
	*/
	public function getHeaderParameters( ):Array<sap.ui.unified.FileUploaderParameter>;

	/**
	* Gets current value of property {@link #getIcon icon}.

Icon to be displayed as graphical element within the button.

This can be a URI to an image or an icon font URI.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconFirst iconFirst}.

If set to true (default), the display sequence is 1. icon 2. control text.

Default value is <code>true</code>.
	* @return	Value of property <code>iconFirst</code>
	*/
	public function getIconFirst( ):Bool;

	/**
	* Gets current value of property {@link #getIconHovered iconHovered}.

Icon to be displayed as graphical element within the button when it is hovered (only if also a base icon was specified).

If not specified, the base icon is used. If an icon font icon is used, this property is ignored.

Default value is <code>empty string</code>.
	* @return	Value of property <code>iconHovered</code>
	*/
	public function getIconHovered( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconOnly iconOnly}.

If set to true, the button is displayed without any text.

Default value is <code>false</code>.
	* @return	Value of property <code>iconOnly</code>
	*/
	public function getIconOnly( ):Bool;

	/**
	* Gets current value of property {@link #getIconSelected iconSelected}.

Icon to be displayed as graphical element within the button when it is selected (only if also a base icon was specified).

If not specified, the base or hovered icon is used. If an icon font icon is used, this property is ignored.

Default value is <code>empty string</code>.
	* @return	Value of property <code>iconSelected</code>
	*/
	public function getIconSelected( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getMaximumFilenameLength maximumFilenameLength}.

The maximum length of a filename which the <code>FileUploader</code> will accept.

If the maximum filename length is exceeded, the corresponding event <code>filenameLengthExceed</code> is fired.
	* @return	Value of property <code>maximumFilenameLength</code>
	*/
	public function getMaximumFilenameLength( ):Int;

	/**
	* Gets current value of property {@link #getMaximumFileSize maximumFileSize}.

A file size limit in megabytes which prevents the upload if at least one file exceeds it.

This property is not supported by Internet Explorer 9.
	* @return	Value of property <code>maximumFileSize</code>
	*/
	public function getMaximumFileSize( ):Float;

	/**
	* Returns a metadata object for class sap.ui.unified.FileUploader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMimeType mimeType}.

The chosen files will be checked against an array of mime types.

If at least one file does not fit the mime type restriction, the upload is prevented. <b>Note:</b> This property is not supported by Internet Explorer & Edge.

Example: <code>["image/png", "image/jpeg"]</code>.
	* @return	Value of property <code>mimeType</code>
	*/
	public function getMimeType( ):Array<String>;

	/**
	* Gets current value of property {@link #getMultiple multiple}.

Allows multiple files to be chosen and uploaded from the same folder.

This property is not supported by Internet Explorer 9.

<b>Note:</b> Keep in mind that the various operating systems for mobile devices can react differently to the property so that fewer upload functions may be available in some cases.

Default value is <code>false</code>.
	* @return	Value of property <code>multiple</code>
	*/
	public function getMultiple( ):Bool;

	/**
	* Gets current value of property {@link #getName name}.

Unique control name for identification on the server side after sending data to the server.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Gets content of aggregation {@link #getParameters parameters}.

The parameters for the <code>FileUploader</code> which are rendered as a hidden input field.
	* @return	null
	*/
	public function getParameters( ):Array<sap.ui.unified.FileUploaderParameter>;

	/**
	* Gets current value of property {@link #getPlaceholder placeholder}.

Placeholder for the text field.
	* @return	Value of property <code>placeholder</code>
	*/
	public function getPlaceholder( ):String;

	/**
	* Allows to process Blobs before they get uploaded. This API can be used to create custom Blobs and upload these custom Blobs instead of the received/initials Blobs in the parameter <code>aBlobs</code>. One use case could be to create and upload zip archives based on the passed Blobs. The default implementation of this API should simply resolve with the received Blobs (parameter <code>aBlobs</code>).

This API is only supported in case <code>sendXHR</code> is <code>true</code>. This means only IE10+ is supported, while IE9 and below is not.

This is a default implementation of the interface <code>sap.ui.unified.IProcessableBlobs</code>.
	* @param	aBlobs The initial Blobs which can be used to determine/calculate a new array of Blobs for further processing.
	* @return	A Promise that resolves with an array of Blobs which is used for the final uploading.
	*/
	public function getProcessedBlobsFromArray( aBlobs:Array<Blob>):js.lib.Promise<FileUploader>;

	/**
	* Gets current value of property {@link #getSameFilenameAllowed sameFilenameAllowed}.

If the FileUploader is configured to upload the file directly after the file is selected, it is not allowed to upload a file with the same name again. If a user should be allowed to upload a file with the same name again this parameter has to be "true".

A typical use case would be if the files have different paths.

Default value is <code>false</code>.
	* @return	Value of property <code>sameFilenameAllowed</code>
	*/
	public function getSameFilenameAllowed( ):Bool;

	/**
	* Gets current value of property {@link #getSendXHR sendXHR}.

If set to "true", the request will be sent as XHR request instead of a form submit.

This property is not supported by Internet Explorer 9.

Default value is <code>false</code>.
	* @return	Value of property <code>sendXHR</code>
	*/
	public function getSendXHR( ):Bool;

	/**
	* Gets current value of property {@link #getStyle style}.

Style of the button.

Values "Transparent, "Accept", "Reject", or "Emphasized" are allowed.
	* @return	Value of property <code>style</code>
	*/
	public function getStyle( ):String;

	/**
	* Gets current value of property {@link #getUploadOnChange uploadOnChange}.

If set to "true", the upload immediately starts after file selection. With the default setting, the upload needs to be explicitly triggered.

Default value is <code>false</code>.
	* @return	Value of property <code>uploadOnChange</code>
	*/
	public function getUploadOnChange( ):Bool;

	/**
	* Gets current value of property {@link #getUploadUrl uploadUrl}.

Used when URL address is on a remote server.

Default value is <code>empty string</code>.
	* @return	Value of property <code>uploadUrl</code>
	*/
	public function getUploadUrl( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getUseMultipart useMultipart}.

If set to "false", the request will be sent as file only request instead of a multipart/form-data request.

Only one file could be uploaded using this type of request. Required for sending such a request is to set the property <code>sendXHR</code> to "true". This property is not supported by Internet Explorer 9.

Default value is <code>true</code>.
	* @return	Value of property <code>useMultipart</code>
	*/
	public function getUseMultipart( ):Bool;

	/**
	* Gets current value of property {@link #getValue value}.

Value of the path for file upload.

Default value is <code>empty string</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueState valueState}.

Visualizes warnings or errors related to the text field.

Possible values: Warning, Error, Success, None.

Default value is <code>None</code>.
	* @return	Value of property <code>valueState</code>
	*/
	public function getValueState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getValueStateText valueStateText}.

Custom text for the value state message pop-up.

<b>Note:</b> If not specified, a default text, based on the value state type, will be used instead.
	* @return	Value of property <code>valueStateText</code>
	*/
	public function getValueStateText( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Specifies the displayed control width.

Default value is <code>empty string</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets content of aggregation {@link #getXhrSettings xhrSettings}.

Settings for the <code>XMLHttpRequest</code> object. <b>Note:</b> This aggregation is only used when the <code>sendXHR</code> property is set to <code>true</code>.
	* @return	null
	*/
	public function getXhrSettings( ):sap.ui.unified.FileUploaderXHRSettings;

	/**
	* Checks for the provided <code>sap.ui.unified.FileUploaderParameter</code> in the aggregation {@link #getHeaderParameters headerParameters}. and returns its index if found or -1 otherwise.
	* @param	oHeaderParameter The headerParameter whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfHeaderParameter( oHeaderParameter:sap.ui.unified.FileUploaderParameter):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.FileUploaderParameter</code> in the aggregation {@link #getParameters parameters}. and returns its index if found or -1 otherwise.
	* @param	oParameter The parameter whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfParameter( oParameter:sap.ui.unified.FileUploaderParameter):Int;

	/**
	* Inserts a headerParameter into the aggregation {@link #getHeaderParameters headerParameters}.
	* @param	oHeaderParameter The headerParameter to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the headerParameter should be inserted at; for a negative value of <code>iIndex</code>, the headerParameter is inserted at position 0; for a value greater than the current size of the aggregation, the headerParameter is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertHeaderParameter( oHeaderParameter:sap.ui.unified.FileUploaderParameter, iIndex:Int):sap.ui.unified.FileUploader;

	/**
	* Inserts a parameter into the aggregation {@link #getParameters parameters}.
	* @param	oParameter The parameter to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the parameter should be inserted at; for a negative value of <code>iIndex</code>, the parameter is inserted at position 0; for a value greater than the current size of the aggregation, the parameter is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertParameter( oParameter:sap.ui.unified.FileUploaderParameter, iIndex:Int):sap.ui.unified.FileUploader;

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
	* Removes all the controls from the aggregation {@link #getHeaderParameters headerParameters}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllHeaderParameters( ):Array<sap.ui.unified.FileUploaderParameter>;

	/**
	* Removes all the controls from the aggregation {@link #getParameters parameters}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllParameters( ):Array<sap.ui.unified.FileUploaderParameter>;
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
	@:overload( function(vHeaderParameter:Int):sap.ui.unified.FileUploaderParameter{ })
	@:overload( function(vHeaderParameter:String):sap.ui.unified.FileUploaderParameter{ })

	/**
	* Removes a headerParameter from the aggregation {@link #getHeaderParameters headerParameters}.
	* @param	vHeaderParameter The headerParameter to remove or its index or id
	* @return	The removed headerParameter or <code>null</code>
	*/
	public function removeHeaderParameter( vHeaderParameter:sap.ui.unified.FileUploaderParameter):sap.ui.unified.FileUploaderParameter;
	@:overload( function(vParameter:Int):sap.ui.unified.FileUploaderParameter{ })
	@:overload( function(vParameter:String):sap.ui.unified.FileUploaderParameter{ })

	/**
	* Removes a parameter from the aggregation {@link #getParameters parameters}.
	* @param	vParameter The parameter to remove or its index or id
	* @return	The removed parameter or <code>null</code>
	*/
	public function removeParameter( vParameter:sap.ui.unified.FileUploaderParameter):sap.ui.unified.FileUploaderParameter;

	/**
	* Sets a new value for property {@link #getAdditionalData additionalData}.

Additional data that is sent to the back end service.

Data will be transmitted as value of a hidden input where the name is derived from the <code>name</code> property with suffix "-data".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAdditionalData New value for property <code>additionalData</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdditionalData( sAdditionalData:String):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getButtonOnly buttonOnly}.

If set to "true", the <code>FileUploader</code> will be rendered as Button only, without showing the input field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bButtonOnly New value for property <code>buttonOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setButtonOnly( bButtonOnly:Bool):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getButtonText buttonText}.

The button's text can be overwritten using this property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sButtonText New value for property <code>buttonText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setButtonText( sButtonText:String):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Disabled controls have different colors, depending on customer settings.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getFileType fileType}.

The chosen files will be checked against an array of file types.

If at least one file does not fit the file type restriction, the upload is prevented.

Example: <code>["jpg", "png", "bmp"]</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFileType New value for property <code>fileType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFileType( sFileType:Array<String>):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Icon to be displayed as graphical element within the button.

This can be a URI to an image or an icon font URI.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getIconFirst iconFirst}.

If set to true (default), the display sequence is 1. icon 2. control text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconFirst New value for property <code>iconFirst</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconFirst( bIconFirst:Bool):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getIconHovered iconHovered}.

Icon to be displayed as graphical element within the button when it is hovered (only if also a base icon was specified).

If not specified, the base icon is used. If an icon font icon is used, this property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIconHovered New value for property <code>iconHovered</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconHovered( sIconHovered:sap.ui.core.URI):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getIconOnly iconOnly}.

If set to true, the button is displayed without any text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIconOnly New value for property <code>iconOnly</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconOnly( bIconOnly:Bool):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getIconSelected iconSelected}.

Icon to be displayed as graphical element within the button when it is selected (only if also a base icon was specified).

If not specified, the base or hovered icon is used. If an icon font icon is used, this property is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIconSelected New value for property <code>iconSelected</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconSelected( sIconSelected:sap.ui.core.URI):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getMaximumFilenameLength maximumFilenameLength}.

The maximum length of a filename which the <code>FileUploader</code> will accept.

If the maximum filename length is exceeded, the corresponding event <code>filenameLengthExceed</code> is fired.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iMaximumFilenameLength New value for property <code>maximumFilenameLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaximumFilenameLength( iMaximumFilenameLength:Int):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getMaximumFileSize maximumFileSize}.

A file size limit in megabytes which prevents the upload if at least one file exceeds it.

This property is not supported by Internet Explorer 9.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	fMaximumFileSize New value for property <code>maximumFileSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaximumFileSize( fMaximumFileSize:Float):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getMimeType mimeType}.

The chosen files will be checked against an array of mime types.

If at least one file does not fit the mime type restriction, the upload is prevented. <b>Note:</b> This property is not supported by Internet Explorer & Edge.

Example: <code>["image/png", "image/jpeg"]</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMimeType New value for property <code>mimeType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMimeType( sMimeType:Array<String>):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getMultiple multiple}.

Allows multiple files to be chosen and uploaded from the same folder.

This property is not supported by Internet Explorer 9.

<b>Note:</b> Keep in mind that the various operating systems for mobile devices can react differently to the property so that fewer upload functions may be available in some cases.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bMultiple New value for property <code>multiple</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMultiple( bMultiple:Bool):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getName name}.

Unique control name for identification on the server side after sending data to the server.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getPlaceholder placeholder}.

Placeholder for the text field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPlaceholder New value for property <code>placeholder</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPlaceholder( sPlaceholder:String):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getSameFilenameAllowed sameFilenameAllowed}.

If the FileUploader is configured to upload the file directly after the file is selected, it is not allowed to upload a file with the same name again. If a user should be allowed to upload a file with the same name again this parameter has to be "true".

A typical use case would be if the files have different paths.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSameFilenameAllowed New value for property <code>sameFilenameAllowed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSameFilenameAllowed( bSameFilenameAllowed:Bool):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getSendXHR sendXHR}.

If set to "true", the request will be sent as XHR request instead of a form submit.

This property is not supported by Internet Explorer 9.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSendXHR New value for property <code>sendXHR</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSendXHR( bSendXHR:Bool):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getStyle style}.

Style of the button.

Values "Transparent, "Accept", "Reject", or "Emphasized" are allowed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sStyle New value for property <code>style</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStyle( sStyle:String):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getUploadOnChange uploadOnChange}.

If set to "true", the upload immediately starts after file selection. With the default setting, the upload needs to be explicitly triggered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bUploadOnChange New value for property <code>uploadOnChange</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploadOnChange( bUploadOnChange:Bool):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getUploadUrl uploadUrl}.

Used when URL address is on a remote server.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sUploadUrl New value for property <code>uploadUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUploadUrl( sUploadUrl:sap.ui.core.URI):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getUseMultipart useMultipart}.

If set to "false", the request will be sent as file only request instead of a multipart/form-data request.

Only one file could be uploaded using this type of request. Required for sending such a request is to set the property <code>sendXHR</code> to "true". This property is not supported by Internet Explorer 9.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bUseMultipart New value for property <code>useMultipart</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUseMultipart( bUseMultipart:Bool):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getValue value}.

Value of the path for file upload.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( sValue:String):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getValueState valueState}.

Visualizes warnings or errors related to the text field.

Possible values: Warning, Error, Success, None.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sValueState New value for property <code>valueState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueState( sValueState:sap.ui.core.ValueState):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getValueStateText valueStateText}.

Custom text for the value state message pop-up.

<b>Note:</b> If not specified, a default text, based on the value state type, will be used instead.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValueStateText New value for property <code>valueStateText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueStateText( sValueStateText:String):sap.ui.unified.FileUploader;

	/**
	* Sets a new value for property {@link #getWidth width}.

Specifies the displayed control width.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.unified.FileUploader;

	/**
	* Sets the aggregated {@link #getXhrSettings xhrSettings}.
	* @param	oXhrSettings The xhrSettings to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setXhrSettings( oXhrSettings:sap.ui.unified.FileUploaderXHRSettings):sap.ui.unified.FileUploader;

	/**
	* Starts the upload (as defined by uploadUrl).
	* @param	bPreProcessFiles Set to <code>true</code> to allow pre-processing of the files before sending the request. As a result, the <code>upload</code> method becomes asynchronous. See {@link sap.ui.unified.IProcessableBlobs} for more information. <b>Note:</b> This parameter is only taken into account when <code>sendXHR</code> is set to <code>true</code>.
	* @return	Void
	*/
	public function upload( ?bPreProcessFiles:Bool):Void;
}

typedef FileUploaderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Value of the path for file upload.
	*/
	@:optional var value:String;

	/**
	* Disabled controls have different colors, depending on customer settings.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Used when URL address is on a remote server.
	*/
	@:optional var uploadUrl:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Unique control name for identification on the server side after sending data to the server.
	*/
	@:optional var name:String;

	/**
	* Specifies the displayed control width.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* If set to "true", the upload immediately starts after file selection. With the default setting, the upload needs to be explicitly triggered.
	*/
	@:optional var uploadOnChange:haxe.extern.EitherType<String,Bool>;

	/**
	* Additional data that is sent to the back end service.

Data will be transmitted as value of a hidden input where the name is derived from the <code>name</code> property with suffix "-data".
	*/
	@:optional var additionalData:String;

	/**
	* If the FileUploader is configured to upload the file directly after the file is selected, it is not allowed to upload a file with the same name again. If a user should be allowed to upload a file with the same name again this parameter has to be "true".

A typical use case would be if the files have different paths.
	*/
	@:optional var sameFilenameAllowed:haxe.extern.EitherType<String,Bool>;

	/**
	* The button's text can be overwritten using this property.
	*/
	@:optional var buttonText:String;

	/**
	* The chosen files will be checked against an array of file types.

If at least one file does not fit the file type restriction, the upload is prevented.

Example: <code>["jpg", "png", "bmp"]</code>.
	*/
	@:optional var fileType:Array<String>;

	/**
	* Allows multiple files to be chosen and uploaded from the same folder.

This property is not supported by Internet Explorer 9.

<b>Note:</b> Keep in mind that the various operating systems for mobile devices can react differently to the property so that fewer upload functions may be available in some cases.
	*/
	@:optional var multiple:haxe.extern.EitherType<String,Bool>;

	/**
	* A file size limit in megabytes which prevents the upload if at least one file exceeds it.

This property is not supported by Internet Explorer 9.
	*/
	@:optional var maximumFileSize:haxe.extern.EitherType<String,Float>;

	/**
	* The chosen files will be checked against an array of mime types.

If at least one file does not fit the mime type restriction, the upload is prevented. <b>Note:</b> This property is not supported by Internet Explorer & Edge.

Example: <code>["image/png", "image/jpeg"]</code>.
	*/
	@:optional var mimeType:Array<String>;

	/**
	* If set to "true", the request will be sent as XHR request instead of a form submit.

This property is not supported by Internet Explorer 9.
	*/
	@:optional var sendXHR:haxe.extern.EitherType<String,Bool>;

	/**
	* Placeholder for the text field.
	*/
	@:optional var placeholder:String;

	/**
	* Style of the button.

Values "Transparent, "Accept", "Reject", or "Emphasized" are allowed.
	*/
	@:optional var style:String;

	/**
	* If set to "true", the <code>FileUploader</code> will be rendered as Button only, without showing the input field.
	*/
	@:optional var buttonOnly:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to "false", the request will be sent as file only request instead of a multipart/form-data request.

Only one file could be uploaded using this type of request. Required for sending such a request is to set the property <code>sendXHR</code> to "true". This property is not supported by Internet Explorer 9.
	*/
	@:optional var useMultipart:haxe.extern.EitherType<String,Bool>;

	/**
	* The maximum length of a filename which the <code>FileUploader</code> will accept.

If the maximum filename length is exceeded, the corresponding event <code>filenameLengthExceed</code> is fired.
	*/
	@:optional var maximumFilenameLength:haxe.extern.EitherType<String,Int>;

	/**
	* Visualizes warnings or errors related to the text field.

Possible values: Warning, Error, Success, None.
	*/
	@:optional var valueState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Custom text for the value state message pop-up.

<b>Note:</b> If not specified, a default text, based on the value state type, will be used instead.
	*/
	@:optional var valueStateText:String;

	/**
	* Icon to be displayed as graphical element within the button.

This can be a URI to an image or an icon font URI.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Icon to be displayed as graphical element within the button when it is hovered (only if also a base icon was specified).

If not specified, the base icon is used. If an icon font icon is used, this property is ignored.
	*/
	@:optional var iconHovered:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Icon to be displayed as graphical element within the button when it is selected (only if also a base icon was specified).

If not specified, the base or hovered icon is used. If an icon font icon is used, this property is ignored.
	*/
	@:optional var iconSelected:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* If set to true (default), the display sequence is 1. icon 2. control text.
	*/
	@:optional var iconFirst:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to true, the button is displayed without any text.
	*/
	@:optional var iconOnly:haxe.extern.EitherType<String,Bool>;

    /**
    * The parameters for the <code>FileUploader</code> which are rendered as a hidden input field.
    */
	@:optional var parameters:Array<haxe.extern.EitherType<String,sap.ui.unified.FileUploaderParameter>>;

    /**
    * The header parameters for the <code>FileUploader</code> which are only submitted with XHR requests. Header parameters are not supported by Internet Explorer 9.
    */
	@:optional var headerParameters:Array<haxe.extern.EitherType<String,sap.ui.unified.FileUploaderParameter>>;

    /**
    * Settings for the <code>XMLHttpRequest</code> object. <b>Note:</b> This aggregation is only used when the <code>sendXHR</code> property is set to <code>true</code>.
    */
	@:optional var xhrSettings:haxe.extern.EitherType<String,sap.ui.unified.FileUploaderXHRSettings>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute <code>aria-describedby</code>).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute <code>aria-labelledby</code>).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the value of the file path has been changed.

<b>Note:</b> Keep in mind that because of the HTML input element of type file, the event is also fired in Chrome browser when the Cancel button of the uploads window is pressed.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the file is allowed for upload on client side.
	*/
	@:optional var fileAllowed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the size of the file is 0
	*/
	@:optional var fileEmpty:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired, if the filename of a chosen file is longer than the value specified with the <code>maximumFilenameLength</code> property.
	*/
	@:optional var filenameLengthExceed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the size of a file is above the <code>maximumFileSize</code> property. This event is not supported by Internet Explorer 9 (same restriction as for the property <code>maximumFileSize</code>).
	*/
	@:optional var fileSizeExceed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the type of a file does not match the <code>mimeType</code> or <code>fileType</code> property.
	*/
	@:optional var typeMissmatch:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired after the current upload has been aborted.

This event is only supported with property <code>sendXHR</code> set to true, i.e. the event is not supported in Internet Explorer 9.
	*/
	@:optional var uploadAborted:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired as soon as the upload request is completed (either successful or unsuccessful).

To see if the upload request was successful, check the <code>status</code> parameter for a value 2xx. The actual progress of the upload can be monitored by listening to the <code>uploadProgress</code> event. However, this covers only the client side of the upload process and does not give any success status from the server.
	*/
	@:optional var uploadComplete:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired after the upload has started and before the upload is completed.

It contains progress information related to the running upload. Depending on file size, band width and used browser the event is fired once or multiple times.

This event is only supported with property <code>sendXHR</code> set to true, i.e. the event is not supported in Internet Explorer 9.
	*/
	@:optional var uploadProgress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired before an upload is started.
	*/
	@:optional var uploadStart:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
