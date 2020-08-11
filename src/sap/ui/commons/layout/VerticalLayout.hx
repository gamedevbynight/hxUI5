package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.VerticalLayout")

/**
* In this layout the elements are ordered one below the other
*/
extern class VerticalLayout extends sap.ui.layout.VerticalLayout
{
	@:overload(function(?sId:String, ?mSettings:VerticalLayoutArgs):Void {})
	public function new(?mSettings:VerticalLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.VerticalLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.VerticalLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.VerticalLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef VerticalLayoutArgs = sap.ui.layout.VerticalLayout.VerticalLayoutArgs & {
}
