package sap.ui.layout;

@:native("sap.ui.layout.SplitterLayoutData")

/**
* Holds layout data for the splitter contents. Allowed size values are numeric values ending in "px" and "%" and the special case "auto". (The CSS value "auto" is used internally to recalculate the size of the content dynamically and is not directly set as style property.)
*/
extern class SplitterLayoutData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:SplitterLayoutDataArgs):Void {})
	public function new(?mSettings:SplitterLayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.SplitterLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.layout.SplitterLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinSize minSize}.

Sets the minimum size of the splitter content in px.

Default value is <code>0</code>.
	* @return	Value of property <code>minSize</code>
	*/
	public function getMinSize( ):Int;

	/**
	* Gets current value of property {@link #getResizable resizable}.

Determines whether the control in the splitter can be resized or not.

Default value is <code>true</code>.
	* @return	Value of property <code>resizable</code>
	*/
	public function getResizable( ):Bool;

	/**
	* Gets current value of property {@link #getSize size}.

Sets the size of the splitter content.

Default value is <code>auto</code>.
	* @return	Value of property <code>size</code>
	*/
	public function getSize( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getMinSize minSize}.

Sets the minimum size of the splitter content in px.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMinSize New value for property <code>minSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinSize( iMinSize:Int):sap.ui.layout.SplitterLayoutData;

	/**
	* Sets a new value for property {@link #getResizable resizable}.

Determines whether the control in the splitter can be resized or not.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bResizable New value for property <code>resizable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResizable( bResizable:Bool):sap.ui.layout.SplitterLayoutData;

	/**
	* Sets a new value for property {@link #getSize size}.

Sets the size of the splitter content.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sSize New value for property <code>size</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSize( sSize:sap.ui.core.CSSSize):sap.ui.layout.SplitterLayoutData;
}

typedef SplitterLayoutDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Determines whether the control in the splitter can be resized or not.
	*/
	@:optional var resizable:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets the size of the splitter content.
	*/
	@:optional var size:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the minimum size of the splitter content in px.
	*/
	@:optional var minSize:haxe.extern.EitherType<String,Int>;
}
