package sap.ui.core.tmpl;

@:native("sap.ui.core.tmpl.HandlebarsTemplate")

/**
* The class for Handlebars Templates.
*/
extern class HandlebarsTemplate extends sap.ui.core.tmpl.Template
{
	@:overload(function(?sId:String, ?mSettings:HandlebarsTemplateArgs):Void {})
	public function new(?mSettings:HandlebarsTemplateArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.tmpl.HandlebarsTemplate with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.tmpl.Template.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.tmpl.HandlebarsTemplate.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;
}

typedef HandlebarsTemplateArgs = sap.ui.core.tmpl.Template.TemplateArgs & {
}
