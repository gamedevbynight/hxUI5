package sap.ui.core.message;

@:native("sap.ui.core.message.MessageParser")

/**
* This is an abstract base class for MessageParser objects.
*/
extern class MessageParser extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.core.message.MessageParser with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.message.MessageParser.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Abstract parse method must be implemented in the inheriting class.
	* @return	Void
	*/
	public function parse( ):Void;
}

