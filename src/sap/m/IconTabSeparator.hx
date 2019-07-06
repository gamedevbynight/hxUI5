package sap.m;

@:native("sap.m.IconTabSeparator")

/**
* Represents an Icon used to separate 2 tab filters.
*/
extern class IconTabSeparator extends sap.ui.core.Element implements sap.m.IconTab
{
	@:overload(function(?sId:String, ?mSettings:IconTabSeparatorArgs):Void {})
	public function new(?mSettings:IconTabSeparatorArgs):Void;

	/**
	* Creates a new subclass of class sap.m.IconTabSeparator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getIcon icon}.

The icon to display for this separator. If no icon is given, a separator line is used instead.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

If set to true, it sends one or more requests, trying to get the density perfect version of the image if this version of the image doesn't exist on the server. Default value is set to true.

If bandwidth is key for the application, set this value to false.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Returns a metadata object for class sap.m.IconTabSeparator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Specifies whether the separator is rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The icon to display for this separator. If no icon is given, a separator line is used instead.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.IconTabSeparator;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

If set to true, it sends one or more requests, trying to get the density perfect version of the image if this version of the image doesn't exist on the server. Default value is set to true.

If bandwidth is key for the application, set this value to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( bIconDensityAware:Bool):sap.m.IconTabSeparator;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Specifies whether the separator is rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.m.IconTabSeparator;
}

typedef IconTabSeparatorArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The icon to display for this separator. If no icon is given, a separator line is used instead.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Specifies whether the separator is rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to true, it sends one or more requests, trying to get the density perfect version of the image if this version of the image doesn't exist on the server. Default value is set to true.

If bandwidth is key for the application, set this value to false.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;
}
