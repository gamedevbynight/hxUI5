package sap.ui.core.mvc;

@:native("sap.ui.core.mvc.JSONView")

/**
* A View defined using JSON.
*/
extern class JSONView extends sap.ui.core.mvc.View
{
	@:overload(function(?sId:String, ?mSettings:JSONViewArgs):Void {})
	public function new(?mSettings:JSONViewArgs):Void;

	/**
	* Creates a JSON view of the given configuration.
	* @param	oOptions An object containing the view configuration options.
	* @return	A promise which resolves with the created <code>JSONView</code> instance.
	*/
	public static function create( oOptions:Dynamic):js.lib.Promise<sap.ui.core.mvc.JSONView>;

	/**
	* Creates a new subclass of class sap.ui.core.mvc.JSONView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.mvc.View.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.mvc.JSONView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef JSONViewArgs = sap.ui.core.mvc.View.ViewArgs & {
}
