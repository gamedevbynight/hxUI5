package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.HorizontalLayout")

/**
* A layout that provides support for horizontal alignment of controls
*/
extern class HorizontalLayout extends sap.ui.layout.HorizontalLayout
{
	@:overload(function(?sId:String, ?mSettings:HorizontalLayoutArgs):Void {})
	public function new(?mSettings:HorizontalLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.HorizontalLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.HorizontalLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.HorizontalLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef HorizontalLayoutArgs = sap.ui.layout.HorizontalLayout.HorizontalLayoutArgs & {
}
