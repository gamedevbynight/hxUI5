package sap.ui.layout.cssgrid;

@:native("sap.ui.layout.cssgrid.GridLayoutBase")

/**
* Applies a sap.ui.layout.cssgrid.GridSettings to a provided DOM element or Control.
*/
extern class GridLayoutBase extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:GridLayoutBaseArgs):Void {})
	public function new(?mSettings:GridLayoutBaseArgs):Void;
	@:overload( function(aElements:Array<sap.ui.core.Control>):Void{ })

	/**
	* Apply display:grid styles to the provided array of HTML elements or controls based on the currently active GridSettings
	* @param	aElements The elements or controls on which to apply the display:grid styles
	* @return	Void
	*/
	public function applyGridLayout( aElements:Array<js.html.HtmlElement>):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.cssgrid.GridLayoutBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Should return sap.ui.layout.cssgrid.GridSettings - The active GridSettings Must be implemented by child classes
	* @return	Void
	*/
	public function getActiveGridSettings( ):Void;

	/**
	* Returns a metadata object for class sap.ui.layout.cssgrid.GridLayoutBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* null
	* @return	If native grid is supported by the browser
	*/
	public function isGridSupportedByBrowser( ):Bool;

	/**
	* null
	* @return	If the Grid Layout is responsive.
	*/
	public function isResponsive( ):Bool;
}

typedef GridLayoutBaseArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {
}
