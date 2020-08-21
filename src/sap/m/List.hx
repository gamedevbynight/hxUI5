package sap.m;

@:native("sap.m.List")

/**
* The List control provides a container for all types of list items. For mobile devices, the recommended limit of list items is 100 to assure proper performance. To improve initial rendering of large lists, use the "growing" feature. Please refer to the SAPUI5 Developer Guide for more information..

See section "{@link topic:1da158152f644ba1ad408a3e982fd3df Lists}" in the documentation for an introduction to <code>sap.m.List</code> control.
*/
extern class List extends sap.m.ListBase
{
	@:overload(function(?sId:String, ?mSettings:ListArgs):Void {})
	public function new(?mSettings:ListArgs):Void;

	/**
	* Creates a new subclass of class sap.m.List with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Sets the background style of the list. Depending on the theme, you can change the state of the background from <code>Solid</code> to <code>Translucent</code> or to <code>Transparent</code>.

Default value is <code>Solid</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Returns a metadata object for class sap.m.List.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getBackgroundDesign backgroundDesign}.

Sets the background style of the list. Depending on the theme, you can change the state of the background from <code>Solid</code> to <code>Translucent</code> or to <code>Transparent</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Solid</code>.
	* @param	sBackgroundDesign New value for property <code>backgroundDesign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBackgroundDesign( ?sBackgroundDesign:sap.m.BackgroundDesign):sap.m.List;
}

typedef ListArgs = sap.m.ListBase.ListBaseArgs & {

	/**
	* Sets the background style of the list. Depending on the theme, you can change the state of the background from <code>Solid</code> to <code>Translucent</code> or to <code>Transparent</code>.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;
}
