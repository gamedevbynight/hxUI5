package sap.ui.commons;

@:native("sap.ui.commons.Tab")

/**
* Represents a single tab in a TabStrip control.
*/
extern class Tab extends sap.ui.commons.Panel
{
	@:overload(function(?sId:String, ?mSettings:TabArgs):Void {})
	public function new(?mSettings:TabArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.Tab with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.Panel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getClosable closable}.

Specifies whether the tab contains a close button.

Default value is <code>false</code>.
	* @return	Value of property <code>closable</code>
	*/
	public function getClosable( ):Bool;

	/**
	* Gets current value of property {@link #getHorizontalScrolling horizontalScrolling}.

Specifies the horizontal scrolling.

Default value is <code>None</code>.
	* @return	Value of property <code>horizontalScrolling</code>
	*/
	public function getHorizontalScrolling( ):sap.ui.core.Scrolling;

	/**
	* Returns a metadata object for class sap.ui.commons.Tab.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getVerticalScrolling verticalScrolling}.

Specifies the vertical scrolling.

Default value is <code>None</code>.
	* @return	Value of property <code>verticalScrolling</code>
	*/
	public function getVerticalScrolling( ):sap.ui.core.Scrolling;

	/**
	* Sets a new value for property {@link #getClosable closable}.

Specifies whether the tab contains a close button.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bClosable New value for property <code>closable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setClosable( ?bClosable:Bool):sap.ui.commons.Tab;

	/**
	* Sets a new value for property {@link #getHorizontalScrolling horizontalScrolling}.

Specifies the horizontal scrolling.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sHorizontalScrolling New value for property <code>horizontalScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHorizontalScrolling( ?sHorizontalScrolling:sap.ui.core.Scrolling):sap.ui.commons.Tab;

	/**
	* Sets a new value for property {@link #getVerticalScrolling verticalScrolling}.

Specifies the vertical scrolling.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sVerticalScrolling New value for property <code>verticalScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVerticalScrolling( ?sVerticalScrolling:sap.ui.core.Scrolling):sap.ui.commons.Tab;
}

typedef TabArgs = sap.ui.commons.Panel.PanelArgs & {

	/**
	* Specifies the vertical scrolling.
	*/
	@:optional var verticalScrolling:haxe.extern.EitherType<String,sap.ui.core.Scrolling>;

	/**
	* Specifies the horizontal scrolling.
	*/
	@:optional var horizontalScrolling:haxe.extern.EitherType<String,sap.ui.core.Scrolling>;

	/**
	* Specifies whether the tab contains a close button.
	*/
	@:optional var closable:haxe.extern.EitherType<String,Bool>;
}
