package sap.ui.model.message;

@:native("sap.ui.model.message.MessageModel")

/**
* Model implementation for Messages
*/
extern class MessageModel extends sap.ui.model.ClientModel
{

	/**
	* 
	* @param	oMessageManager The MessageManager instance
	* @return	Object
	*/
	public function new( ?oMessageManager:sap.ui.core.message.MessageManager):Void;

	/**
	* Creates a new subclass of class sap.ui.model.message.MessageModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.ClientModel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.model.message.MessageModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the value for the property with the given <code>sPropertyName</code>
	* @param	sPath the path to the property
	* @param	oContext the context which will be used to retrieve the property
	* @return	the value of the property
	*/
	public function getProperty( sPath:String, ?oContext:Dynamic):Dynamic;

	/**
	* Sets the message data to the model.
	* @param	oData the data to set on the model
	* @return	Void
	*/
	public function setData( oData:Dynamic):Void;

	/**
	* Unsupported operation.

Other models provide this method to set a new value for a specific property. <code>MessageModel</code> does not support it as it supports the <code>OneWay</code> mode only.
	* @return	Void
	*/
	public function setProperty( ):Void;
}

