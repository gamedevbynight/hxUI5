package sap.f.routing;

@:native("sap.f.routing.Targets")

/**
* Provides a convenient way for placing views into the correct containers of your app.

The <code>sap.f</code> extension of <code>Targets</code> also handles the triggering of page navigation when the target control is an <code>{@link sap.f.FlexibleColumnLayout}</code>. Other controls are also allowed, but the extra parameters <code>viewLevel</code>, <code>transition</code>, and <code>transitionParameters</code> are ignored and it behaves as <code>{@link sap.ui.core.routing.Targets}</code>.

When a target is displayed, dialogs are being closed. To change this, use <code>{@link #getTargetHandler}</code> and {@link sap.f.routing.TargetHandler#setCloseDialogs}.
*/
extern class Targets extends sap.ui.core.routing.Targets
{

	/**
	* 
	* @param	oOptions null
	* @return	Object
	*/
	public function new( ?oOptions:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.f.routing.Targets with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.routing.Targets.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.f.routing.Targets.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the <code>TargetHandler</code> instance.
	* @return	The <code>TargetHandler</code> instance
	*/
	public function getTargetHandler( ):sap.f.routing.TargetHandler;
}

