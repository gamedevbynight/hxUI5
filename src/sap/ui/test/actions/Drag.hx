package sap.ui.test.actions;

@:native("sap.ui.test.actions.Drag")

/**
* The <code>Drag</code> action is used to simulate a drag interaction with a control. The control should be draggable, as defined by its dnd aggregation configuration. The drop location will be defined by a consequtive {@link sap.ui.test.actions.Drop} action.

The <code>Drag</code> action targets the DOM focus reference of the control.

The <code>Drag</code> action is not supported in IE11!
*/
extern class Drag extends sap.ui.test.actions.Action
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.test.actions.Drag with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.actions.Action.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.test.actions.Drag.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;
}

