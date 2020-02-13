package sap.ui.core;

@:native("sap.ui.core.Title")

/**
* Represents a title element that can be used for aggregation with other controls.
*/
extern class Title extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:TitleArgs):Void {})
	public function new(?mSettings:TitleArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.Title with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEmphasized emphasized}.

If set the title is displayed emphasized. This feature is nor supported by all controls using the Title.control.

Default value is <code>false</code>.
	* @return	Value of property <code>emphasized</code>
	*/
	public function getEmphasized( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the URL for icon display
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getLevel level}.

Defines the level of the title. If set to auto the level of the title is chosen by the control rendering the title.

Currently not all controls using the Title.control supporting this property.

Default value is <code>Auto</code>.
	* @return	Value of property <code>level</code>
	*/
	public function getLevel( ):sap.ui.core.TitleLevel;

	/**
	* Returns a metadata object for class sap.ui.core.Title.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getText text}.

Defines the title text
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Sets a new value for property {@link #getEmphasized emphasized}.

If set the title is displayed emphasized. This feature is nor supported by all controls using the Title.control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEmphasized New value for property <code>emphasized</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmphasized( bEmphasized:Bool):sap.ui.core.Title;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the URL for icon display

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.ui.core.Title;

	/**
	* Sets a new value for property {@link #getLevel level}.

Defines the level of the title. If set to auto the level of the title is chosen by the control rendering the title.

Currently not all controls using the Title.control supporting this property.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sLevel New value for property <code>level</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLevel( sLevel:sap.ui.core.TitleLevel):sap.ui.core.Title;

	/**
	* Sets a new value for property {@link #getText text}.

Defines the title text

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.core.Title;
}

typedef TitleArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Defines the title text
	*/
	@:optional var text:String;

	/**
	* Defines the URL for icon display
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the level of the title. If set to auto the level of the title is chosen by the control rendering the title.

Currently not all controls using the Title.control supporting this property.
	*/
	@:optional var level:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

	/**
	* If set the title is displayed emphasized. This feature is nor supported by all controls using the Title.control.
	*/
	@:optional var emphasized:haxe.extern.EitherType<String,Bool>;
}
