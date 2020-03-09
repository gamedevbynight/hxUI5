package sap.m.routing;

@:native("sap.m.routing.Targets")

/**
* Provides a convenient way for placing views into the correct containers of your app.

The mobile extension of <code>Targets</code> also handles the triggering of page navigation when the target control is an <code>{@link sap.m.SplitContainer}</code>, an <code>{@link sap.m.NavContainer}</code> or a control which extends one of these. Other controls are also allowed, but the extra parameters <code>viewLevel</code>, <code>transition</code> and <code>transitionParameters</code> are ignored and it behaves as <code>{@link sap.ui.core.routing.Targets}</code>.

When a target is displayed, dialogs will be closed. To change this use <code>{@link #getTargetHandler}</code> and <code>{@link sap.m.routing.TargetHandler#setCloseDialogs}</code>.
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
	* Creates a new subclass of class sap.m.routing.Targets with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.routing.Targets.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.routing.Targets.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the TargetHandler instance.
	* @return	the TargetHandler instance
	*/
	public function getTargetHandler( ):sap.m.routing.TargetHandler;
}

