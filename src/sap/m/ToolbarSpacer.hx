package sap.m;

@:native("sap.m.ToolbarSpacer")

/**
* Adds horizontal space between the items used within a {@link sap.m.Toolbar}.

<b>Note:</b> <code>ToolbarSpacer</code> should not be used together with {@link sap.m.ToolbarLayoutData}.
*/
extern class ToolbarSpacer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ToolbarSpacerArgs):Void {})
	public function new(?mSettings:ToolbarSpacerArgs):Void;

	/**
	* Creates a new subclass of class sap.m.ToolbarSpacer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.ToolbarSpacer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the horizontal space. Note: Empty("") value makes the space flexible which means it covers the remaining space between toolbar items. This feature can be used to push next item to the edge of the toolbar.

Default value is <code>empty string</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the horizontal space. Note: Empty("") value makes the space flexible which means it covers the remaining space between toolbar items. This feature can be used to push next item to the edge of the toolbar.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.ToolbarSpacer;
}

typedef ToolbarSpacerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the width of the horizontal space. Note: Empty("") value makes the space flexible which means it covers the remaining space between toolbar items. This feature can be used to push next item to the edge of the toolbar.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;
}
