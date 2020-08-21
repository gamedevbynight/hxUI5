package sap.ui.core.mvc;

@:native("sap.ui.core.mvc.JSView")

/**
* A View defined/constructed by JavaScript code.
*/
extern class JSView extends sap.ui.core.mvc.View
{
	@:overload(function(?sId:String, ?mSettings:JSViewArgs):Void {})
	public function new(?mSettings:JSViewArgs):Void;

	/**
	* Creates an instance of the view with the given name (and id).
	* @param	oOptions An object containing the view configuration options.
	* @return	A promise that resolves with the view instance
	*/
	public static function create( oOptions:Dynamic):js.lib.Promise<sap.ui.core.mvc.JSView>;

	/**
	* A method to be implemented by JSViews, returning the View UI. While for declarative View types like XMLView or JSONView the user interface definition is declared in a separate file, JSViews programmatically construct the UI. This happens in the createContent method which every JSView needs to implement. The View implementation can construct the complete UI in this method - or only return the root control and create the rest of the UI lazily later on.
	* @return	a control or (typically) tree of controls representing the View user interface
	*/
	public function createContent( ):sap.ui.core.Control;

	/**
	* Creates a new subclass of class sap.ui.core.mvc.JSView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.mvc.View.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.core.mvc.JSView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef JSViewArgs = sap.ui.core.mvc.View.ViewArgs & {
}
