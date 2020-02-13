package sap.ui.layout.cssgrid;

@:native("sap.ui.layout.cssgrid.GridBoxLayout")

/**
* Applies a sap.ui.layout.cssgrid.GridSettings to a provided DOM element or Control.
*/
extern class GridBoxLayout extends sap.ui.layout.cssgrid.GridLayoutBase
{
	@:overload(function(?sId:String, ?mSettings:GridBoxLayoutArgs):Void {})
	public function new(?mSettings:GridBoxLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.cssgrid.GridBoxLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.cssgrid.GridLayoutBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBoxesPerRowConfig boxesPerRowConfig}.

A string type that defines number of Boxes per row for extra large, large, medium and small screens

Default value is <code>XL7 L6 M4 S2</code>.
	* @return	Value of property <code>boxesPerRowConfig</code>
	*/
	public function getBoxesPerRowConfig( ):sap.ui.layout.BoxesPerRowConfig;

	/**
	* Gets current value of property {@link #getBoxMinWidth boxMinWidth}.

Defines the minimum width of the Boxes

Default value is <code>empty string</code>.
	* @return	Value of property <code>boxMinWidth</code>
	*/
	public function getBoxMinWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getBoxWidth boxWidth}.

Defines the width of the Boxes

Default value is <code>empty string</code>.
	* @return	Value of property <code>boxWidth</code>
	*/
	public function getBoxWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.layout.cssgrid.GridBoxLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* null
	* @return	If the Grid Layout is responsive.
	*/
	public function isResponsive( ):Bool;

	/**
	* Sets a new value for property {@link #getBoxesPerRowConfig boxesPerRowConfig}.

A string type that defines number of Boxes per row for extra large, large, medium and small screens

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>XL7 L6 M4 S2</code>.
	* @param	sBoxesPerRowConfig New value for property <code>boxesPerRowConfig</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBoxesPerRowConfig( sBoxesPerRowConfig:sap.ui.layout.BoxesPerRowConfig):sap.ui.layout.cssgrid.GridBoxLayout;

	/**
	* Sets a new value for property {@link #getBoxMinWidth boxMinWidth}.

Defines the minimum width of the Boxes

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sBoxMinWidth New value for property <code>boxMinWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBoxMinWidth( sBoxMinWidth:sap.ui.core.CSSSize):sap.ui.layout.cssgrid.GridBoxLayout;

	/**
	* Sets a new value for property {@link #getBoxWidth boxWidth}.

Defines the width of the Boxes

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sBoxWidth New value for property <code>boxWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBoxWidth( sBoxWidth:sap.ui.core.CSSSize):sap.ui.layout.cssgrid.GridBoxLayout;
}

typedef GridBoxLayoutArgs = sap.ui.layout.cssgrid.GridLayoutBase.GridLayoutBaseArgs & {

	/**
	* Defines the minimum width of the Boxes
	*/
	@:optional var boxMinWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the width of the Boxes
	*/
	@:optional var boxWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* A string type that defines number of Boxes per row for extra large, large, medium and small screens
	*/
	@:optional var boxesPerRowConfig:haxe.extern.EitherType<String,sap.ui.layout.BoxesPerRowConfig>;
}
