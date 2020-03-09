package sap.ui.commons;

@:native("sap.ui.commons.ToolbarSeparator")

/**
* A small vertical line that is generally added to the tool bar between the items to visually separate them.
*/
extern class ToolbarSeparator extends sap.ui.core.Element implements sap.ui.commons.ToolbarItem
{
	@:overload(function(?sId:String, ?mSettings:ToolbarSeparatorArgs):Void {})
	public function new(?mSettings:ToolbarSeparatorArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.ToolbarSeparator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDesign design}.

Design of the Separator.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.ui.commons.ToolbarSeparatorDesign;

	/**
	* Gets current value of property {@link #getDisplayVisualSeparator displayVisualSeparator}.

When set to false, there is no visual indication of separation by a vertical line but by a wider space.

Default value is <code>true</code>.
	* @return	Value of property <code>displayVisualSeparator</code>
	*/
	public function getDisplayVisualSeparator( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.commons.ToolbarSeparator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getDesign design}.

Design of the Separator.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( sDesign:sap.ui.commons.ToolbarSeparatorDesign):sap.ui.commons.ToolbarSeparator;

	/**
	* Sets a new value for property {@link #getDisplayVisualSeparator displayVisualSeparator}.

When set to false, there is no visual indication of separation by a vertical line but by a wider space.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bDisplayVisualSeparator New value for property <code>displayVisualSeparator</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayVisualSeparator( bDisplayVisualSeparator:Bool):sap.ui.commons.ToolbarSeparator;
}

typedef ToolbarSeparatorArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* When set to false, there is no visual indication of separation by a vertical line but by a wider space.
	*/
	@:optional var displayVisualSeparator:haxe.extern.EitherType<String,Bool>;

	/**
	* Design of the Separator.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.ui.commons.ToolbarSeparatorDesign>;
}
