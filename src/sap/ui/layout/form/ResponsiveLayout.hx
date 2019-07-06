package sap.ui.layout.form;

@:native("sap.ui.layout.form.ResponsiveLayout")

/**
* The <code>ResponsiveLayout</code> renders a <code>Form</code> with a responsive layout. Internally the <code>ResponsiveFlowLayout</code> is used. The responsiveness of this layout tries to best use the available space. This means that the order of the <code>FormContainers</code>, labels and fields depends on the available space.

On the <code>FormContainers</code>, <code>FormElements</code>, labels and content fields, <code>ResponsiveFlowLayoutData</code> can be used to change the default rendering.

We suggest using the <code>ResponsiveGridLayout</code> instead of this layout because this is easier to consume and brings more stable responsive output.

<b>Note:</b> If <code>ResponsiveFlowLayoutData</code> are used this may result in a much more complex layout than the default one. This means that in some cases, the calculation for the other content may not bring the expected result. In such cases, <code>ResponsiveFlowLayoutData</code> should be used for all content controls to disable the default behavior.

This control cannot be used stand-alone, it just renders a <code>Form</code>, so it must be assigned to a <code>Form</code> using the <code>layout</code> aggregation.
*/
extern class ResponsiveLayout extends sap.ui.layout.form.FormLayout
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveLayoutArgs):Void {})
	public function new(?mSettings:ResponsiveLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.layout.form.ResponsiveLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.form.FormLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.layout.form.ResponsiveLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef ResponsiveLayoutArgs = sap.ui.layout.form.FormLayout.FormLayoutArgs & {
}
