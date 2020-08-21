package sap.m;

@:native("sap.m.FormattedText")

/**
* The FormattedText control allows the usage of a limited set of tags for inline display of formatted text in HTML format.
*/
extern class FormattedText extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:FormattedTextArgs):Void {})
	public function new(?mSettings:FormattedTextArgs):Void;

	/**
	* Adds some control to the aggregation {@link #getControls controls}.
	* @param	oControl The control to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addControl( oControl:sap.m.Link):sap.m.FormattedText;

	/**
	* Destroys all the controls in the aggregation {@link #getControls controls}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyControls( ):sap.m.FormattedText;

	/**
	* Creates a new subclass of class sap.m.FormattedText with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getControls controls}.

List of <code>sap.m.Link</code> controls that will be used to replace the placeholders in the text. Placeholders are replaced according to their indexes. The placeholder with index %%0 will be replaced by the first link in the aggregation, etc.
	* @return	null
	*/
	public function getControls( ):Array<sap.m.Link>;

	/**
	* Gets current value of property {@link #getConvertedLinksDefaultTarget convertedLinksDefaultTarget}.

Determines the <code>target</code> attribute of the generated HTML anchor tags.

<b>Note:</b> Applicable only if <code>ConvertLinksToAnchorTags</code> property is used with a value other than <code>sap.m.LinkConversion.None</code>. Options are the standard values for the <code>target</code> attribute of the HTML anchor tag: <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>.

Default value is <code>"_blank"</code>.
	* @return	Value of property <code>convertedLinksDefaultTarget</code>
	*/
	public function getConvertedLinksDefaultTarget( ):String;

	/**
	* Gets current value of property {@link #getConvertLinksToAnchorTags convertLinksToAnchorTags}.

Determines whether strings that appear to be links will be converted to HTML anchor tags, and what are the criteria for recognizing them.

Default value is <code>None</code>.
	* @return	Value of property <code>convertLinksToAnchorTags</code>
	*/
	public function getConvertLinksToAnchorTags( ):sap.m.LinkConversion;

	/**
	* Gets current value of property {@link #getHeight height}.

Optional height of the control in CSS units.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getHtmlText htmlText}.

Text in HTML format. The following tags are supported: <ul> <li><code>a</code></li> <li><code>abbr</code></li> <li><code>blockquote</code></li> <li><code>br</code></li> <li><code>cite</code></li> <li><code>code</code></li> <li><code>em</code></li> <li><code>h1</code></li> <li><code>h2</code></li> <li><code>h3</code></li> <li><code>h4</code></li> <li><code>h5</code></li> <li><code>h6</code></li> <li><code>p</code></li> <li><code>pre</code></li> <li><code>strong</code></li> <li><code>span</code></li> <li><code>u</code></li> <li><code>dl</code></li> <li><code>dt</code></li> <li><code>dd</code></li> <li><code>ul</code></li> <li><code>ol</code></li> <li><code>li</code></li> </ul> <p><code>class, style,</code> and <code>target</code> attributes are allowed. If <code>target</code> is not set, links open in a new window by default. <p>Only safe <code>href</code> attributes can be used. See {@link module:sap/base/security/URLWhitelist URLWhitelist}.

<b>Note:</b> Keep in mind that not supported HTML tags and the content nested inside them are both not rendered by the control.

Default value is <code>empty string</code>.
	* @return	Value of property <code>htmlText</code>
	*/
	public function getHtmlText( ):String;

	/**
	* Returns a metadata object for class sap.m.FormattedText.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getWidth width}.

Optional width of the control in CSS units.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.Link</code> in the aggregation {@link #getControls controls}. and returns its index if found or -1 otherwise.
	* @param	oControl The control whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfControl( oControl:sap.m.Link):Int;

	/**
	* Inserts a control into the aggregation {@link #getControls controls}.
	* @param	oControl The control to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the control should be inserted at; for a negative value of <code>iIndex</code>, the control is inserted at position 0; for a value greater than the current size of the aggregation, the control is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertControl( oControl:sap.m.Link, iIndex:Int):sap.m.FormattedText;

	/**
	* Removes all the controls from the aggregation {@link #getControls controls}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllControls( ):Array<sap.m.Link>;
	@:overload( function(vControl:Int):sap.m.Link{ })
	@:overload( function(vControl:String):sap.m.Link{ })

	/**
	* Removes a control from the aggregation {@link #getControls controls}.
	* @param	vControl The control to remove or its index or id
	* @return	The removed control or <code>null</code>
	*/
	public function removeControl( vControl:sap.m.Link):sap.m.Link;

	/**
	* Sets a new value for property {@link #getConvertedLinksDefaultTarget convertedLinksDefaultTarget}.

Determines the <code>target</code> attribute of the generated HTML anchor tags.

<b>Note:</b> Applicable only if <code>ConvertLinksToAnchorTags</code> property is used with a value other than <code>sap.m.LinkConversion.None</code>. Options are the standard values for the <code>target</code> attribute of the HTML anchor tag: <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"_blank"</code>.
	* @param	sConvertedLinksDefaultTarget New value for property <code>convertedLinksDefaultTarget</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setConvertedLinksDefaultTarget( ?sConvertedLinksDefaultTarget:String):sap.m.FormattedText;

	/**
	* Sets a new value for property {@link #getConvertLinksToAnchorTags convertLinksToAnchorTags}.

Determines whether strings that appear to be links will be converted to HTML anchor tags, and what are the criteria for recognizing them.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sConvertLinksToAnchorTags New value for property <code>convertLinksToAnchorTags</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setConvertLinksToAnchorTags( ?sConvertLinksToAnchorTags:sap.m.LinkConversion):sap.m.FormattedText;

	/**
	* Sets a new value for property {@link #getHeight height}.

Optional height of the control in CSS units.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.m.FormattedText;

	/**
	* Defines the HTML text to be displayed.
	* @param	sText HTML text as a string
	* @return	this for chaining
	*/
	public function setHtmlText( sText:String):sap.m.FormattedText;

	/**
	* Sets a new value for property {@link #getWidth width}.

Optional width of the control in CSS units.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.FormattedText;
}

typedef FormattedTextArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Text in HTML format. The following tags are supported: <ul> <li><code>a</code></li> <li><code>abbr</code></li> <li><code>blockquote</code></li> <li><code>br</code></li> <li><code>cite</code></li> <li><code>code</code></li> <li><code>em</code></li> <li><code>h1</code></li> <li><code>h2</code></li> <li><code>h3</code></li> <li><code>h4</code></li> <li><code>h5</code></li> <li><code>h6</code></li> <li><code>p</code></li> <li><code>pre</code></li> <li><code>strong</code></li> <li><code>span</code></li> <li><code>u</code></li> <li><code>dl</code></li> <li><code>dt</code></li> <li><code>dd</code></li> <li><code>ul</code></li> <li><code>ol</code></li> <li><code>li</code></li> </ul> <p><code>class, style,</code> and <code>target</code> attributes are allowed. If <code>target</code> is not set, links open in a new window by default. <p>Only safe <code>href</code> attributes can be used. See {@link module:sap/base/security/URLWhitelist URLWhitelist}.

<b>Note:</b> Keep in mind that not supported HTML tags and the content nested inside them are both not rendered by the control.
	*/
	@:optional var htmlText:String;

	/**
	* Optional width of the control in CSS units.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines whether strings that appear to be links will be converted to HTML anchor tags, and what are the criteria for recognizing them.
	*/
	@:optional var convertLinksToAnchorTags:haxe.extern.EitherType<String,sap.m.LinkConversion>;

	/**
	* Determines the <code>target</code> attribute of the generated HTML anchor tags.

<b>Note:</b> Applicable only if <code>ConvertLinksToAnchorTags</code> property is used with a value other than <code>sap.m.LinkConversion.None</code>. Options are the standard values for the <code>target</code> attribute of the HTML anchor tag: <code>_self</code>, <code>_top</code>, <code>_blank</code>, <code>_parent</code>, <code>_search</code>.
	*/
	@:optional var convertedLinksDefaultTarget:String;

	/**
	* Optional height of the control in CSS units.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * List of <code>sap.m.Link</code> controls that will be used to replace the placeholders in the text. Placeholders are replaced according to their indexes. The placeholder with index %%0 will be replaced by the first link in the aggregation, etc.
    */
	@:optional var controls:Array<haxe.extern.EitherType<String,sap.m.Link>>;
}
