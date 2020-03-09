package sap.m;

@:native("sap.m.PDFViewer")

/**
* <p>This control enables you to display PDF documents within your app. It can be embedded in your user interface layout, or you can set it to open in a popup dialog.</p> <p>Please note that the PDF Viewer control can be fully displayed on desktop devices only. On mobile devices, only the toolbar with a download button is visible.</p>
*/
extern class PDFViewer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:PDFViewerArgs):Void {})
	public function new(?mSettings:PDFViewerArgs):Void;

	/**
	* Adds some popupButton to the aggregation {@link #getPopupButtons popupButtons}.
	* @param	oPopupButton The popupButton to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addPopupButton( oPopupButton:sap.m.Button):sap.m.PDFViewer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:error error} event of this <code>sap.m.PDFViewer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PDFViewer</code> itself.

This event is fired when there is an error loading the PDF file.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PDFViewer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachError( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PDFViewer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:loaded loaded} event of this <code>sap.m.PDFViewer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PDFViewer</code> itself.

This event is fired when a PDF file is loaded. If the PDF is loaded in smaller chunks, this event is fired as often as defined by the browser's plugin. This may happen after a couple chunks are processed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PDFViewer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLoaded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PDFViewer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:sourceValidationFailed sourceValidationFailed} event of this <code>sap.m.PDFViewer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.PDFViewer</code> itself.

This event is fired when the PDF viewer control cannot check the loaded content. For example, the default configuration of the Mozilla Firefox browser may not allow checking the loaded content. This may also happen when the source PDF file is stored in a different domain. If you want no error message to be displayed when this event is fired, call the preventDefault() method inside the event handler.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.PDFViewer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSourceValidationFailed( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.PDFViewer;

	/**
	* Destroys the errorPlaceholder in the aggregation {@link #getErrorPlaceholder errorPlaceholder}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyErrorPlaceholder( ):sap.m.PDFViewer;

	/**
	* Destroys all the popupButtons in the aggregation {@link #getPopupButtons popupButtons}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPopupButtons( ):sap.m.PDFViewer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:error error} event of this <code>sap.m.PDFViewer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachError( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PDFViewer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:loaded loaded} event of this <code>sap.m.PDFViewer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLoaded( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PDFViewer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:sourceValidationFailed sourceValidationFailed} event of this <code>sap.m.PDFViewer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSourceValidationFailed( fnFunction:()->Void, ?oListener:Dynamic):sap.m.PDFViewer;

	/**
	* Downloads the PDF file.
	* @return	Void
	*/
	public function downloadPDF( ):Void;

	/**
	* Creates a new subclass of class sap.m.PDFViewer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDisplayType displayType}.

Defines how the PDF viewer should be displayed. <ul> <li>If set to <code>Link</code>, the PDF viewer appears as a toolbar with a download button that can be used to download the PDF file.<br> When the {@link #open} method is called, the user can either open the PDF file in a new tab or download it.</li> <li>If set to <code>Embedded</code>, the PDF viewer appears embedded in the parent container and displays either the PDF document or the message defined by the <code>errorPlaceholderMessage</code> property.</li> <li>If set to <code>Auto</code>, the appearance of the PDF viewer depends on the device being used: <ul> <li>On mobile devices (phones, tablets), the PDF viewer appears as a toolbar with a download button.</li> <li>On desktop devices, the PDF viewer is embedded in its parent container.</li> </ul> </li> </ul>

Default value is <code>Auto</code>.
	* @return	Value of property <code>displayType</code>
	*/
	public function getDisplayType( ):sap.m.PDFViewerDisplayType;

	/**
	* Gets content of aggregation {@link #getErrorPlaceholder errorPlaceholder}.

A custom control that can be used instead of the error message specified by the errorPlaceholderMessage property.
	* @return	null
	*/
	public function getErrorPlaceholder( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getErrorPlaceholderMessage errorPlaceholderMessage}.

A custom text that is displayed instead of the PDF file content when the PDF file cannot be loaded.
	* @return	Value of property <code>errorPlaceholderMessage</code>
	*/
	public function getErrorPlaceholderMessage( ):String;

	/**
	* Gets current value of property {@link #getHeight height}.

Defines the height of the PDF viewer control, respective to the height of the parent container. Can be set to a percent, pixel, or em value.

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.PDFViewer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getPopupButtons popupButtons}.

A multiple aggregation for buttons that can be added to the footer of the popup dialog. Works only if the PDF viewer is set to open in a popup dialog.
	* @return	null
	*/
	public function getPopupButtons( ):Array<sap.m.Button>;

	/**
	* Gets current value of property {@link #getShowDownloadButton showDownloadButton}.

Shows or hides the download button.

Default value is <code>true</code>.
	* @return	Value of property <code>showDownloadButton</code>
	*/
	public function getShowDownloadButton( ):Bool;

	/**
	* Gets current value of property {@link #getSource source}.

Specifies the path to the PDF file to display. Can be set to a relative or an absolute path.<br> Optionally, this property can also be set to a data URI path or a blob URL in all major web browsers except Internet Explorer and Microsoft Edge, provided that this data URI or blob URL is whitelisted in advance. For more information about whitelisting, see {@link topic:91f3768f6f4d1014b6dd926db0e91070 URL Whitelist Filtering}.
	* @return	Value of property <code>source</code>
	*/
	public function getSource( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getTitle title}.

A custom title for the PDF viewer.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the PDF viewer control, respective to the width of the parent container. Can be set to a percent, pixel, or em value.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getPopupButtons popupButtons}. and returns its index if found or -1 otherwise.
	* @param	oPopupButton The popupButton whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPopupButton( oPopupButton:sap.m.Button):Int;

	/**
	* Inserts a popupButton into the aggregation {@link #getPopupButtons popupButtons}.
	* @param	oPopupButton The popupButton to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the popupButton should be inserted at; for a negative value of <code>iIndex</code>, the popupButton is inserted at position 0; for a value greater than the current size of the aggregation, the popupButton is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertPopupButton( oPopupButton:sap.m.Button, iIndex:Int):sap.m.PDFViewer;

	/**
	* Triggers rerendering of this element and its children.
	* @param	oOrigin Child control for which the method was called
	* @return	Void
	*/
	public function invalidate( ?oOrigin:sap.ui.base.ManagedObject):Void;

	/**
	* Opens the PDF viewer in a popup dialog.
	* @return	Void
	*/
	public function open( ):Void;

	/**
	* Removes all the controls from the aggregation {@link #getPopupButtons popupButtons}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllPopupButtons( ):Array<sap.m.Button>;
	@:overload( function(vPopupButton:Int):sap.m.Button{ })
	@:overload( function(vPopupButton:String):sap.m.Button{ })

	/**
	* Removes a popupButton from the aggregation {@link #getPopupButtons popupButtons}.
	* @param	vPopupButton The popupButton to remove or its index or id
	* @return	The removed popupButton or <code>null</code>
	*/
	public function removePopupButton( vPopupButton:sap.m.Button):sap.m.Button;

	/**
	* Sets a new value for property {@link #getDisplayType displayType}.

Defines how the PDF viewer should be displayed. <ul> <li>If set to <code>Link</code>, the PDF viewer appears as a toolbar with a download button that can be used to download the PDF file.<br> When the {@link #open} method is called, the user can either open the PDF file in a new tab or download it.</li> <li>If set to <code>Embedded</code>, the PDF viewer appears embedded in the parent container and displays either the PDF document or the message defined by the <code>errorPlaceholderMessage</code> property.</li> <li>If set to <code>Auto</code>, the appearance of the PDF viewer depends on the device being used: <ul> <li>On mobile devices (phones, tablets), the PDF viewer appears as a toolbar with a download button.</li> <li>On desktop devices, the PDF viewer is embedded in its parent container.</li> </ul> </li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sDisplayType New value for property <code>displayType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayType( sDisplayType:sap.m.PDFViewerDisplayType):sap.m.PDFViewer;

	/**
	* Sets the aggregated {@link #getErrorPlaceholder errorPlaceholder}.
	* @param	oErrorPlaceholder The errorPlaceholder to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setErrorPlaceholder( oErrorPlaceholder:sap.ui.core.Control):sap.m.PDFViewer;

	/**
	* Sets a new value for property {@link #getErrorPlaceholderMessage errorPlaceholderMessage}.

A custom text that is displayed instead of the PDF file content when the PDF file cannot be loaded.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sErrorPlaceholderMessage New value for property <code>errorPlaceholderMessage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setErrorPlaceholderMessage( sErrorPlaceholderMessage:String):sap.m.PDFViewer;

	/**
	* Sets a new value for property {@link #getHeight height}.

Defines the height of the PDF viewer control, respective to the height of the parent container. Can be set to a percent, pixel, or em value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.PDFViewer;

	/**
	* Sets a new value for property {@link #getShowDownloadButton showDownloadButton}.

Shows or hides the download button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowDownloadButton New value for property <code>showDownloadButton</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowDownloadButton( bShowDownloadButton:Bool):sap.m.PDFViewer;

	/**
	* Sets a new value for property {@link #getSource source}.

Specifies the path to the PDF file to display. Can be set to a relative or an absolute path.<br> Optionally, this property can also be set to a data URI path or a blob URL in all major web browsers except Internet Explorer and Microsoft Edge, provided that this data URI or blob URL is whitelisted in advance. For more information about whitelisting, see {@link topic:91f3768f6f4d1014b6dd926db0e91070 URL Whitelist Filtering}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSource New value for property <code>source</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSource( sSource:sap.ui.core.URI):sap.m.PDFViewer;

	/**
	* Sets a new value for property {@link #getTitle title}.

A custom title for the PDF viewer.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.PDFViewer;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the PDF viewer control, respective to the width of the parent container. Can be set to a percent, pixel, or em value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.PDFViewer;
}

typedef PDFViewerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the height of the PDF viewer control, respective to the height of the parent container. Can be set to a percent, pixel, or em value.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the width of the PDF viewer control, respective to the width of the parent container. Can be set to a percent, pixel, or em value.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies the path to the PDF file to display. Can be set to a relative or an absolute path.<br> Optionally, this property can also be set to a data URI path or a blob URL in all major web browsers except Internet Explorer and Microsoft Edge, provided that this data URI or blob URL is whitelisted in advance. For more information about whitelisting, see {@link topic:91f3768f6f4d1014b6dd926db0e91070 URL Whitelist Filtering}.
	*/
	@:optional var source:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* A custom text that is displayed instead of the PDF file content when the PDF file cannot be loaded.
	*/
	@:optional var errorPlaceholderMessage:String;

	/**
	* A custom title for the PDF viewer.
	*/
	@:optional var title:String;

	/**
	* Shows or hides the download button.
	*/
	@:optional var showDownloadButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines how the PDF viewer should be displayed. <ul> <li>If set to <code>Link</code>, the PDF viewer appears as a toolbar with a download button that can be used to download the PDF file.<br> When the {@link #open} method is called, the user can either open the PDF file in a new tab or download it.</li> <li>If set to <code>Embedded</code>, the PDF viewer appears embedded in the parent container and displays either the PDF document or the message defined by the <code>errorPlaceholderMessage</code> property.</li> <li>If set to <code>Auto</code>, the appearance of the PDF viewer depends on the device being used: <ul> <li>On mobile devices (phones, tablets), the PDF viewer appears as a toolbar with a download button.</li> <li>On desktop devices, the PDF viewer is embedded in its parent container.</li> </ul> </li> </ul>
	*/
	@:optional var displayType:haxe.extern.EitherType<String,sap.m.PDFViewerDisplayType>;

    /**
    * A custom control that can be used instead of the error message specified by the errorPlaceholderMessage property.
    */
	@:optional var errorPlaceholder:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * A multiple aggregation for buttons that can be added to the footer of the popup dialog. Works only if the PDF viewer is set to open in a popup dialog.
    */
	@:optional var popupButtons:Array<haxe.extern.EitherType<String,sap.m.Button>>;

	/**
	* This event is fired when there is an error loading the PDF file.
	*/
	@:optional var error:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when a PDF file is loaded. If the PDF is loaded in smaller chunks, this event is fired as often as defined by the browser's plugin. This may happen after a couple chunks are processed.
	*/
	@:optional var loaded:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired when the PDF viewer control cannot check the loaded content. For example, the default configuration of the Mozilla Firefox browser may not allow checking the loaded content. This may also happen when the source PDF file is stored in a different domain. If you want no error message to be displayed when this event is fired, call the preventDefault() method inside the event handler.
	*/
	@:optional var sourceValidationFailed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
