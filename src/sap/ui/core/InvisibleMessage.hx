package sap.ui.core;

@:native("sap.ui.core.InvisibleMessage")

/**
* The InvisibleMessage provides a way to programmatically expose dynamic content changes in a way that can be announced by screen readers.

<h3>Overview</h3> This class is a singleton. The class instance can be retrieved via the static method {@link sap.ui.core.InvisibleMessage.getInstance}.

<b>Note:</b> Keep in mind that, according to the ARIA standard, the live regions should be presented and should be empty. Thus, we recommend to instantiate <code>InvisibleMessage</code> via <code>sap.ui.core.InvisibleMessage.getInstance()</code> as early as possible in the application logic, e.g. with the Component initialization, with the main Controller initialization, after Core initialization, etc. Then, you should specify the text that has to be announced by the screen reader and the live region’s mode using the <code>announce</code> method.
*/
extern class InvisibleMessage extends sap.ui.base.ManagedObject
{

	/**
	* Inserts the string into the respective span, depending on the mode provided.
	* @param	sText String to be announced by the screen reader.
	* @param	sMode The mode to be inserted in the aria-live attribute.
	* @return	Void
	*/
	public function announce( sText:String, sMode:sap.ui.core.InvisibleMessageMode):Void;

	/**
	* Creates a new subclass of class sap.ui.core.InvisibleMessage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the instance of the class.
	* @return	oInstance
	*/
	public static function getInstance( ):sap.ui.core.InvisibleMessage;

	/**
	* Returns a metadata object for class sap.ui.core.InvisibleMessage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;
}

