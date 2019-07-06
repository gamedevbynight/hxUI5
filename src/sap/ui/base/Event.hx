package sap.ui.base;


/**
* An Event object consisting of an ID, a source and a map of parameters. Implements {@link sap.ui.base.Poolable} and therefore an event object in the event handler will be reset by {@link sap.ui.base.ObjectPool} after the event handler is done.
*/
extern class Event extends sap.ui.base.Object implements sap.ui.base.Poolable
{

	/**
	* 
	* @param	sId The id of the event
	* @param	oSource The source of the event
	* @param	mParameters A map of parameters for this event
	* @return	Object
	*/
	public function new( ?sId:String, ?oSource:sap.ui.base.EventProvider, ?mParameters:Dynamic):Void;

	/**
	* Cancel bubbling of the event.

<b>Note:</b> This function only has an effect if the bubbling of the event is supported by the event source.
	* @return	Void
	*/
	public function cancelBubble( ):Void;

	/**
	* Creates a new subclass of class sap.ui.base.Event with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the id of the event.
	* @return	The id of the event
	*/
	public function getId( ):String;

	/**
	* Returns a metadata object for class sap.ui.base.Event.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the value of the parameter with the given sName.
	* @param	sName The name of the parameter to return
	* @return	The value for the named parameter
	*/
	public function getParameter( sName:String):Dynamic;

	/**
	* Returns all parameter values of the event keyed by their names.
	* @return	All parameters of the event keyed by name
	*/
	public function getParameters( ):Dynamic;

	/**
	* Returns the event provider on which the event was fired.
	* @return	The source of the event
	*/
	public function getSource( ):sap.ui.base.EventProvider;

	/**
	* Prevent the default action of this event.

<b>Note:</b> This function only has an effect if preventing the default action of the event is supported by the event source.
	* @return	Void
	*/
	public function preventDefault( ):Void;
}

