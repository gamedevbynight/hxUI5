package sap.ui.commons;

@:native("sap.ui.commons.Area")

/**
* Used for defining areas in an image map. At runtime, the user can trigger an action, or start a URL, from the single image areas.
*/
extern class Area extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:AreaArgs):Void {})
	public function new(?mSettings:AreaArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.Area with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAlt alt}.

Alternative text that is displayed in the case the image is not available
	* @return	Value of property <code>alt</code>
	*/
	public function getAlt( ):String;

	/**
	* Gets current value of property {@link #getCoords coords}.

Coordinates of the area
	* @return	Value of property <code>coords</code>
	*/
	public function getCoords( ):String;

	/**
	* Gets current value of property {@link #getHref href}.

Hyper link that is executed when the area is clicked
	* @return	Value of property <code>href</code>
	*/
	public function getHref( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.ui.commons.Area.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getShape shape}.

The value is a string and can be 'rect' for rectangle, 'poly' for poligon, 'circle', or default.
	* @return	Value of property <code>shape</code>
	*/
	public function getShape( ):String;

	/**
	* Sets a new value for property {@link #getAlt alt}.

Alternative text that is displayed in the case the image is not available

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAlt New value for property <code>alt</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAlt( sAlt:String):sap.ui.commons.Area;

	/**
	* Sets a new value for property {@link #getCoords coords}.

Coordinates of the area

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sCoords New value for property <code>coords</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCoords( sCoords:String):sap.ui.commons.Area;

	/**
	* Sets a new value for property {@link #getHref href}.

Hyper link that is executed when the area is clicked

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHref New value for property <code>href</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHref( sHref:sap.ui.core.URI):sap.ui.commons.Area;

	/**
	* Sets a new value for property {@link #getShape shape}.

The value is a string and can be 'rect' for rectangle, 'poly' for poligon, 'circle', or default.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sShape New value for property <code>shape</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShape( sShape:String):sap.ui.commons.Area;
}

typedef AreaArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The value is a string and can be 'rect' for rectangle, 'poly' for poligon, 'circle', or default.
	*/
	@:optional var shape:String;

	/**
	* Coordinates of the area
	*/
	@:optional var coords:String;

	/**
	* Hyper link that is executed when the area is clicked
	*/
	@:optional var href:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Alternative text that is displayed in the case the image is not available
	*/
	@:optional var alt:String;
}
