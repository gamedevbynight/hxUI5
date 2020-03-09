package sap.ui.core.util;

@:native("sap.ui.core.util.ExportType")

/**
* Base export type. Subclasses can be used for {@link sap.ui.core.util.Export Export}.
*/
extern class ExportType extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:ExportTypeArgs):Void {})
	public function new(?mSettings:ExportTypeArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.util.ExportType with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getByteOrderMark byteOrderMark}.

Whether to prepend an unicode byte order mark when saving as a file (only applies for utf-8 charset).

Default value is <code>undefined</code>.
	* @return	Value of property <code>byteOrderMark</code>
	*/
	public function getByteOrderMark( ):Bool;

	/**
	* Gets current value of property {@link #getCharset charset}.

Charset.
	* @return	Value of property <code>charset</code>
	*/
	public function getCharset( ):String;

	/**
	* Gets current value of property {@link #getFileExtension fileExtension}.

File extension.
	* @return	Value of property <code>fileExtension</code>
	*/
	public function getFileExtension( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.util.ExportType.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Gets current value of property {@link #getMimeType mimeType}.

MIME type.
	* @return	Value of property <code>mimeType</code>
	*/
	public function getMimeType( ):String;

	/**
	* Sets a new value for property {@link #getByteOrderMark byteOrderMark}.

Whether to prepend an unicode byte order mark when saving as a file (only applies for utf-8 charset).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>undefined</code>.
	* @param	bByteOrderMark New value for property <code>byteOrderMark</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setByteOrderMark( bByteOrderMark:Bool):sap.ui.core.util.ExportType;

	/**
	* Sets a new value for property {@link #getCharset charset}.

Charset.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sCharset New value for property <code>charset</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCharset( sCharset:String):sap.ui.core.util.ExportType;

	/**
	* Sets a new value for property {@link #getFileExtension fileExtension}.

File extension.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFileExtension New value for property <code>fileExtension</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFileExtension( sFileExtension:String):sap.ui.core.util.ExportType;

	/**
	* Sets a new value for property {@link #getMimeType mimeType}.

MIME type.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMimeType New value for property <code>mimeType</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMimeType( sMimeType:String):sap.ui.core.util.ExportType;
}

typedef ExportTypeArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* File extension.
	*/
	@:optional var fileExtension:String;

	/**
	* MIME type.
	*/
	@:optional var mimeType:String;

	/**
	* Charset.
	*/
	@:optional var charset:String;

	/**
	* Whether to prepend an unicode byte order mark when saving as a file (only applies for utf-8 charset).
	*/
	@:optional var byteOrderMark:haxe.extern.EitherType<String,Bool>;
}
