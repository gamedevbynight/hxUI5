package sap.f.routing;

@:native("sap.f.routing.TargetHandler")

/**
* Used for closing dialogs and showing transitions in <code>NavContainers</code> when targets are displayed.

<b>Note:</b> You should not create an own instance of this class. It is created when using <code>{@link sap.f.routing.Router}</code> or <code>{@link sap.f.routing.Targets}</code>. You may use the <code>{@link #setCloseDialogs}</code> function to specify if dialogs should be closed on displaying other views.
*/
extern class TargetHandler extends sap.ui.base.Object
{

	/**
	* 
	* @param	bCloseDialogs Closes all open dialogs before navigating, if set to <code>true</code> (default). If set to <code>false</code>, it just navigates without closing dialogs.
	* @return	Object
	*/
	public function new( ?bCloseDialogs:Bool):Void;

	/**
	* Creates a new subclass of class sap.f.routing.TargetHandler with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets if a navigation should close dialogs.
	* @return	A flag indication if dialogs will be closed
	*/
	public function getCloseDialogs( ):Bool;

	/**
	* Returns a metadata object for class sap.f.routing.TargetHandler.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets if a navigation should close dialogs.
	* @param	bCloseDialogs Close dialogs if <code>true</code>
	* @return	For chaining
	*/
	public function setCloseDialogs( bCloseDialogs:Bool):sap.f.routing.TargetHandler;
}

