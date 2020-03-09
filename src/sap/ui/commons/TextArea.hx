package sap.ui.commons;

@:native("sap.ui.commons.TextArea")

/**
* Control to enter or display multible row text.
*/
extern class TextArea extends sap.ui.commons.TextField
{
	@:overload(function(?sId:String, ?mSettings:TextAreaArgs):Void {})
	public function new(?mSettings:TextAreaArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.TextArea with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.TextField.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCols cols}.

Number of Columns. Cols means number of characters per row. This proprty is only used if Width is not used.
	* @return	Value of property <code>cols</code>
	*/
	public function getCols( ):Int;

	/**
	* Gets current value of property {@link #getCursorPos cursorPos}.

Position of cursor, e.g., to let the user re-start typing at the same position as before the server roundtrip
	* @return	Value of property <code>cursorPos</code>
	*/
	public function getCursorPos( ):Int;

	/**
	* Gets current value of property {@link #getExplanation explanation}.

text which appears, in case quick-help is switched on
	* @return	Value of property <code>explanation</code>
	*/
	public function getExplanation( ):String;

	/**
	* Gets current value of property {@link #getHeight height}.

Height of text field. When it is set (CSS-size such as % or px), this is the exact size.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.TextArea.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRows rows}.

Number of Rows. This proprty is only used if Height is not used.
	* @return	Value of property <code>rows</code>
	*/
	public function getRows( ):Int;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Text wrapping. Possible values are: Soft, Hard, Off.
	* @return	Value of property <code>wrapping</code>
	*/
	public function getWrapping( ):sap.ui.core.Wrapping;

	/**
	* Sets a new value for property {@link #getCols cols}.

Number of Columns. Cols means number of characters per row. This proprty is only used if Width is not used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iCols New value for property <code>cols</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCols( iCols:Int):sap.ui.commons.TextArea;

	/**
	* Property setter for the cursor position
	* @param	iCursorPos cursor position
	* @return	<code>this</code> to allow method chaining
	*/
	public function setCursorPos( iCursorPos:Int):sap.ui.commons.TextArea;

	/**
	* Sets a new value for property {@link #getExplanation explanation}.

text which appears, in case quick-help is switched on

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sExplanation New value for property <code>explanation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExplanation( sExplanation:String):sap.ui.commons.TextArea;

	/**
	* Sets a new value for property {@link #getHeight height}.

Height of text field. When it is set (CSS-size such as % or px), this is the exact size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.commons.TextArea;

	/**
	* Property setter for MaxLength
	* @param	iMaxLength maximal length of text
	* @return	<code>this</code> to allow method chaining
	*/
	public function setMaxLength( iMaxLength:Int):sap.ui.commons.TextArea;

	/**
	* Sets a new value for property {@link #getRows rows}.

Number of Rows. This proprty is only used if Height is not used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iRows New value for property <code>rows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRows( iRows:Int):sap.ui.commons.TextArea;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Text wrapping. Possible values are: Soft, Hard, Off.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( sWrapping:sap.ui.core.Wrapping):sap.ui.commons.TextArea;
}

typedef TextAreaArgs = sap.ui.commons.TextField.TextFieldArgs & {

	/**
	* Height of text field. When it is set (CSS-size such as % or px), this is the exact size.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Number of Columns. Cols means number of characters per row. This proprty is only used if Width is not used.
	*/
	@:optional var cols:haxe.extern.EitherType<String,Int>;

	/**
	* Number of Rows. This proprty is only used if Height is not used.
	*/
	@:optional var rows:haxe.extern.EitherType<String,Int>;

	/**
	* Text wrapping. Possible values are: Soft, Hard, Off.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,sap.ui.core.Wrapping>;

	/**
	* Position of cursor, e.g., to let the user re-start typing at the same position as before the server roundtrip
	*/
	@:optional var cursorPos:haxe.extern.EitherType<String,Int>;

	/**
	* text which appears, in case quick-help is switched on
	*/
	@:optional var explanation:String;
}
