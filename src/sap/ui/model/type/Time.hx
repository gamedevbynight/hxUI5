package sap.ui.model.type;

@:native("sap.ui.model.type.Time")

/**
* This class represents time simple types.
*/
extern class Time extends sap.ui.model.type.Date
{

	/**
	* 
	* @param	oFormatOptions Formatting options. For a list of all available options, see {@link sap.ui.core.format.DateFormat.getTimeInstance DateFormat}.
	* @param	oConstraints Value constraints. Supports the same kind of constraints as its base type Date, but note the different format options (Date vs. Time).
	* @return	Object
	*/
	public function new( ?oFormatOptions:Dynamic, ?oConstraints:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.type.Time with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.type.Date.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.type.Time.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

