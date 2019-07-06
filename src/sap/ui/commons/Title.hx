package sap.ui.commons;

@:native("sap.ui.commons.Title")

/**
* Represents a title element that can be used for aggregation with other controls
*/
extern class Title extends sap.ui.core.Title
{
	@:overload(function(?sId:String, ?mSettings:TitleArgs):Void {})
	public function new(?mSettings:TitleArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.Title with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Title.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Getter for property <code>level</code>. Defines the level of the title. If set to auto the level of the title is chosen by the control rendering the title.

Currently not all controls using the Title.control supporting this property.

Default value is <code>Auto</code>
	* @return	the value of property <code>level</code>
	*/
	public function getLevel( ):sap.ui.core.TitleLevel;

	/**
	* Returns a metadata object for class sap.ui.commons.Title.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Setter for property <code>level</code>.

Default value is <code>Auto</code>
	* @param	oLevel new value for property <code>level</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setLevel( oLevel:sap.ui.core.TitleLevel):sap.ui.commons.Title;
}

typedef TitleArgs = sap.ui.core.Title.TitleArgs & {
}
