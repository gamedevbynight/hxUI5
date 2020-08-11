package sap.ui.core.message;

@:native("sap.ui.core.message.Message")

/**
* null
*/
extern class Message extends sap.ui.base.Object
{

	/**
	* 
	* @param	mParameters a map which contains the following parameter properties:
	* @return	Object
	*/
	public function new( ?mParameters:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.core.message.Message with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the messages additional text.
	* @return	The additionaltext
	*/
	public function getAdditionalText( ):String;

	/**
	* Returns the message code
	* @return	code
	*/
	public function getCode( ):String;

	/**
	* Returns the control ID if set.

NOTE: The control ID is only set for Controls based on <code>sap.m.InputBase</code> The Control must be bound to a Model so the Message could be propagated to this Control. The propagation happens only if the Control is created and visible on the screen. Is this the case the control ID is set. The ID is not set in all other cases and cannot be set manually.

If a Message is propagated to multiple Controls bound to the same target the last Control wins.
	* @return	sControlId
	*/
	public function getControlId( ):String;

	/**
	* Returns an array of control IDs.

NOTE: The control ID is only set for Controls based on <code>sap.m.InputBase</code>. The Control must be bound to a Model so the Message could be propagated to this Control. The propagation happens only if the Control is created and visible on the screen. The ID is not set in all other cases and cannot be set manually.
	* @return	aControlIds
	*/
	public function getControlIds( ):Array<Dynamic>;

	/**
	* Set the date of the message
	* @return	The message date in number of milliseconds elapsed since 1 January 1970 00:00:00 UTC. As returned by Date.now().
	*/
	public function getDate( ):Int;

	/**
	* Returns the message description
	* @return	description
	*/
	public function getDescription( ):String;

	/**
	* Returns the message description URL which should be used to download the description content
	* @return	The URL pointing to the description long text
	*/
	public function getDescriptionUrl( ):String;

	/**
	* Returns the Message Id
	* @return	id
	*/
	public function getId( ):String;

	/**
	* Returns message text
	* @return	message
	*/
	public function getMessage( ):String;

	/**
	* Returns the message processor
	* @return	processor
	*/
	public function getMessageProcessor( ):sap.ui.core.message.MessageProcessor;

	/**
	* Returns a metadata object for class sap.ui.core.message.Message.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the if Message is persistent
	* @return	bPersistent
	*/
	public function getPersistent( ):Bool;

	/**
	* Returns the targets of this message.
	* @return	The message targets; empty array if the message has no targets
	*/
	public function getTargets( ):Array<String>;

	/**
	* Returns the if Message set as technical message
	* @return	true if message is technical or false if not
	*/
	public function getTechnical( ):Bool;

	/**
	* Returns the technical details of the message
	* @return	The technical details
	*/
	public function getTechnicalDetails( ):Dynamic;

	/**
	* Returns the message type
	* @return	type
	*/
	public function getType( ):sap.ui.core.MessageType;

	/**
	* Sets the additionaltext for the message or merge different additionaltext strings
	* @param	sAdditionalText The additionaltext.
	* @return	Void
	*/
	public function setAdditionalText( sAdditionalText:String):Void;

	/**
	* Set message code
	* @param	sCode The Message code
	* @return	Void
	*/
	public function setCode( sCode:String):Void;

	/**
	* Set the date of the message, this will automatically be set on message creation
	* @param	iDate The message date in number of milliseconds elapsed since 1 January 1970 00:00:00 UTC. As returned by Date.now().
	* @return	Void
	*/
	public function setDate( iDate:Int):Void;

	/**
	* Set message description
	* @param	sDescription The Message description
	* @return	Void
	*/
	public function setDescription( sDescription:String):Void;

	/**
	* Set message description URL which should be used to download the description content
	* @param	sDescriptionUrl The URL pointing to the description long text
	* @return	Void
	*/
	public function setDescriptionUrl( sDescriptionUrl:String):Void;

	/**
	* Set message text
	* @param	sMessage The Message as text
	* @return	Void
	*/
	public function setMessage( sMessage:String):Void;

	/**
	* Set message processor
	* @param	oMessageProcessor The Message processor
	* @return	Void
	*/
	public function setMessageProcessor( oMessageProcessor:sap.ui.core.message.MessageProcessor):Void;

	/**
	* Set message persistent
	* @param	bPersistent Set Message persistent: If persisten is set true the message lifecycle controlled by Application
	* @return	Void
	*/
	public function setPersistent( bPersistent:Bool):Void;

	/**
	* Sets the targets of this message.
	* @param	aNewTargets The new targets of this message; use an empty array if the message shall have no targets
	* @return	Void
	*/
	public function setTargets( aNewTargets:Array<String>):Void;

	/**
	* Set message as technical message
	* @param	bTechnical Set Message as technical message lifecycle controlled by Application
	* @return	Void
	*/
	public function setTechnical( bTechnical:Bool):Void;

	/**
	* Set the technical details for the message
	* @param	oTechnicalDetails The technical details of the message
	* @return	Void
	*/
	public function setTechnicalDetails( oTechnicalDetails:Dynamic):Void;

	/**
	* Set message type
	* @param	sType The Message type
	* @return	Void
	*/
	public function setType( sType:sap.ui.core.MessageType):Void;
}

