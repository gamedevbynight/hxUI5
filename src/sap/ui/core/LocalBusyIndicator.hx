package sap.ui.core;

@:native("sap.ui.core.LocalBusyIndicator")

/**
* The LocalBusyIndicator is a special version of the BusyIndicator. This one doesn't block the whole screen - it just blocks the corresponding control and puts a local animation over the control. To use the functionality of this control the corresponding control needs to be enabled via the 'LocalBusyIndicatorSupport' accordingly to the ListBox control (see the init-function of the ListBox).
*/
extern class LocalBusyIndicator extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:LocalBusyIndicatorArgs):Void {})
	public function new(?mSettings:LocalBusyIndicatorArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.LocalBusyIndicator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getHeight height}.

This property is the height of the control that has to be covered. With this height the position of the animation can be properly set.

Default value is <code>100px</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.core.LocalBusyIndicator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getWidth width}.

This property is the width of the control that has to be covered. With this width the position of the animation can be properly set.

Default value is <code>100px</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getHeight height}.

This property is the height of the control that has to be covered. With this height the position of the animation can be properly set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100px</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.core.LocalBusyIndicator;

	/**
	* Sets a new value for property {@link #getWidth width}.

This property is the width of the control that has to be covered. With this width the position of the animation can be properly set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100px</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.core.LocalBusyIndicator;
}

typedef LocalBusyIndicatorArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* This property is the width of the control that has to be covered. With this width the position of the animation can be properly set.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* This property is the height of the control that has to be covered. With this height the position of the animation can be properly set.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;
}
