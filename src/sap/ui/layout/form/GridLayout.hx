package sap.ui.layout.form;

@:native("sap.ui.layout.form.GridLayout")

/**
* This <code>FormLayout</code> renders a <code>Form</code> using an HTML-table based grid. This can be a 16 column grid or an 8 column grid. The grid is stable, so the alignment of the fields is the same for all screen sizes or widths of the <code>Form</code>. Only the width of the single grid columns depends on the available width.

To adjust the appearance inside the <code>GridLayout</code>, you can use <code>GridContainerData</code> for <code>FormContainers</code> and <code>GridElementData</code> for content fields.

<b>Note:</b> If content fields have a <code>width</code> property this will be ignored, as the width of the controls is set by the grid cells.

This control cannot be used stand-alone, it just renders a <code>Form</code>, so it must be assigned to a <code>Form</code> using the <code>layout</code> aggregation.
*/
extern class GridLayout extends sap.ui.layout.form.FormLayout
{
	@:overload(function(?sId:String, ?mSettings:GridLayoutArgs):Void {})
	public function new(?mSettings:GridLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.form.GridLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.FormLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.layout.form.GridLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getSingleColumn singleColumn}.

If set, the grid renders only one <code>FormContainer</code> per column. That means one <code>FormContainer</code> is below the other. The whole grid has 8 cells per row.

If not set, <code>FormContainer</code> can use the full width of the grid or two <code>FormContainers</code> can be placed beside each other. In this case the whole grid has 16 cells per row.

Default value is <code>false</code>.
	* @return	Value of property <code>singleColumn</code>
	*/
	public function getSingleColumn( ):Bool;

	/**
	* Sets a new value for property {@link #getSingleColumn singleColumn}.

If set, the grid renders only one <code>FormContainer</code> per column. That means one <code>FormContainer</code> is below the other. The whole grid has 8 cells per row.

If not set, <code>FormContainer</code> can use the full width of the grid or two <code>FormContainers</code> can be placed beside each other. In this case the whole grid has 16 cells per row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bSingleColumn New value for property <code>singleColumn</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSingleColumn( bSingleColumn:Bool):sap.ui.layout.form.GridLayout;
}

typedef GridLayoutArgs = sap.ui.layout.form.FormLayout.FormLayoutArgs & {

	/**
	* If set, the grid renders only one <code>FormContainer</code> per column. That means one <code>FormContainer</code> is below the other. The whole grid has 8 cells per row.

If not set, <code>FormContainer</code> can use the full width of the grid or two <code>FormContainers</code> can be placed beside each other. In this case the whole grid has 16 cells per row.
	*/
	@:optional var singleColumn:haxe.extern.EitherType<String,Bool>;
}
