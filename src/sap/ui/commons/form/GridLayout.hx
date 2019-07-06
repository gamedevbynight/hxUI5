package sap.ui.commons.form;

@:native("sap.ui.commons.form.GridLayout")

/**
* This Layout implements a guideline 2.0 grid. This can be a 16 column grid or an 8 column grid.

To adjust the content inside the GridLayout GridContainerData and GridElementData could be used.
*/
extern class GridLayout extends sap.ui.layout.form.GridLayout
{
	@:overload(function(?sId:String, ?mSettings:GridLayoutArgs):Void {})
	public function new(?mSettings:GridLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.form.GridLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.GridLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.form.GridLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef GridLayoutArgs = sap.ui.layout.form.GridLayout.GridLayoutArgs & {
}
