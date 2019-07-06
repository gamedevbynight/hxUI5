package sap.m;

@:native("sap.m.ToolbarLayoutData")

/**
* Defines layout data for the {@link sap.m.Toolbar} items.

<b>Note:</b> <code>ToolbarLayoutData</code> should not be used together with {@link sap.m.ToolbarSpacer}.
*/
extern class ToolbarLayoutData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:ToolbarLayoutDataArgs):Void {})
	public function new(?mSettings:ToolbarLayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.m.ToolbarLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getMaxWidth maxWidth}.

Sets the maximum width of the toolbar item.
	* @return	Value of property <code>maxWidth</code>
	*/
	public function getMaxWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.ToolbarLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinWidth minWidth}.

Sets the minimum width of the toolbar item.
	* @return	Value of property <code>minWidth</code>
	*/
	public function getMinWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getShrinkable shrinkable}.

Determines whether the control, when in a toolbar, is shrinkable or not. For controls with fixed width (100px, 5rem, etc...) this property is ignored.

Note: Nested layout controls should not be shrinkable.

Default value is <code>false</code>.
	* @return	Value of property <code>shrinkable</code>
	*/
	public function getShrinkable( ):Bool;

	/**
	* Sets a new value for property {@link #getMaxWidth maxWidth}.

Sets the maximum width of the toolbar item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMaxWidth New value for property <code>maxWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxWidth( sMaxWidth:sap.ui.core.CSSSize):sap.m.ToolbarLayoutData;

	/**
	* Sets a new value for property {@link #getMinWidth minWidth}.

Sets the minimum width of the toolbar item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMinWidth New value for property <code>minWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinWidth( sMinWidth:sap.ui.core.CSSSize):sap.m.ToolbarLayoutData;

	/**
	* Sets a new value for property {@link #getShrinkable shrinkable}.

Determines whether the control, when in a toolbar, is shrinkable or not. For controls with fixed width (100px, 5rem, etc...) this property is ignored.

Note: Nested layout controls should not be shrinkable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShrinkable New value for property <code>shrinkable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShrinkable( bShrinkable:Bool):sap.m.ToolbarLayoutData;
}

typedef ToolbarLayoutDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* Determines whether the control, when in a toolbar, is shrinkable or not. For controls with fixed width (100px, 5rem, etc...) this property is ignored.

Note: Nested layout controls should not be shrinkable.
	*/
	@:optional var shrinkable:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets the minimum width of the toolbar item.
	*/
	@:optional var minWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the maximum width of the toolbar item.
	*/
	@:optional var maxWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;
}
