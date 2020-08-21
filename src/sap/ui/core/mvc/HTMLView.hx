package sap.ui.core.mvc;

@:native("sap.ui.core.mvc.HTMLView")

/**
* A view defined/constructed by declarative HTML.
*/
extern class HTMLView extends sap.ui.core.mvc.View
{
	@:overload(function(?sId:String, ?mSettings:HTMLViewArgs):Void {})
	public function new(?mSettings:HTMLViewArgs):Void;

	/**
	* Creates an instance of a declarative HTML view.
	* @param	oOptions An object containing the view configuration options.
	* @return	A promise which resolves with the created <code>HTMLView</code> instance
	*/
	public static function create( oOptions:Dynamic):js.lib.Promise<sap.ui.core.mvc.HTMLView>;

	/**
	* Creates a new subclass of class sap.ui.core.mvc.HTMLView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.mvc.View.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.core.mvc.HTMLView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef HTMLViewArgs = sap.ui.core.mvc.View.ViewArgs & {
}
