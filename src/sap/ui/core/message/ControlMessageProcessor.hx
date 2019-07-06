package sap.ui.core.message;

@:native("sap.ui.core.message.ControlMessageProcessor")

/**
* The ControlMessageProcessor implementation. This MessageProcessor is able to handle Messages with the following target syntax: 'ControlID/PropertyName'. Creating an instance of this class using the "new" keyword always results in the same instance (Singleton).
*/
extern class ControlMessageProcessor extends sap.ui.core.message.MessageProcessor
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.core.message.ControlMessageProcessor with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.message.MessageProcessor.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.message.ControlMessageProcessor.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

