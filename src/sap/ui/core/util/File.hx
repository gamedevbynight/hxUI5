package sap.ui.core.util;

@:native("sap.ui.core.util.File")
extern class File
{

	/**
	* <p>Triggers a download / save action of the given file.</p>

<p>There are limitations for this feature in some browsers:<p>

<p><b>macOS Safari < 10.1 / iOS Safari</b><br> A new window or tab is opened. In macOS, the user has to save the file manually (by using key combination "CMD + S", choosing the page source format, and specifying a file name). In iOS, the content can be opened in another app (Mail, Notes, ...) or can be copied to the clipboard. If a pop-up blocker prevents this action, an error will be thrown which can be used to notify the user that the pop-up blocker needs to be disabled.</p>

<p><b>Android Browser</b><br> Not supported</p>

<p><b>Windows Phone 10 Edge</b><br> Not supported</p>
	* @param	sData file content
	* @param	sFileName file name
	* @param	sFileExtension file extension
	* @param	sMimeType file mime-type
	* @param	sCharset file charset
	* @param	bByteOrderMark Whether to prepend a unicode byte order mark (only applies for utf-8 charset). Default is <code>false</code> except when <code>sFileExtension</code> === 'csv' and <code>sCharset</code> === 'utf-8' it is <code>true</code> (compatibility reasons).
	* @return	Void
	*/
	public static function save( sData:String, sFileName:String, sFileExtension:String, sMimeType:String, sCharset:String, ?bByteOrderMark:Bool):Void;
}

