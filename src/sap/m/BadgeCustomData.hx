package sap.m;

@:native("sap.m.BadgeCustomData")

/**
* Contains a single key/value pair of custom data attached to an <code>Element</code>.

For more information, see {@link sap.ui.core.Element#data Element.prototype.data} and {@link topic:91f0c3ee6f4d1014b6dd926db0e91070 Custom Data - Attaching Data Objects to Controls}.
*/
extern class BadgeCustomData extends sap.ui.core.CustomData
{
	@:overload(function(?sId:String, ?mSettings:BadgeCustomDataArgs):Void {})
	public function new(?mSettings:BadgeCustomDataArgs):Void;

	/**
	* Creates a new subclass of class sap.m.BadgeCustomData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.CustomData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getKey key}.

Default value is <code>badge</code>.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.m.BadgeCustomData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef BadgeCustomDataArgs = sap.ui.core.CustomData.CustomDataArgs & {

	/**
	* null
	*/
	@:optional var key:String;
}
