package sap.ui.test.actions;

@:native("sap.ui.test.actions.Press")

/**
* The <code>Press</code> action is used to simulate a press interaction with a control. Most controls are supported, for example buttons, links, list items, tables, filters, and form controls.

The <code>Press</code> action targets a special DOM element representing the control. This DOM element can be customized.

For most most controls (even custom ones), the DOM focus reference is an appropriate choice. You can choose a different DOM element by specifying its ID suffix. You can do this by directly passing the ID suffix to the Press constructor, or by defining a control adapter.

There are some basic controls for which OPA5 has defined <code>Press</code> control adapters. For more information, see {@link sap.ui.test.actions.Press.controlAdapters}.
*/
extern class Press extends sap.ui.test.actions.Action
{
public function new():Void;

	/**
	* Sets focus on given control and triggers a 'tap' event on it (which is internally translated into a 'press' event). Logs an error if control is not visible (i.e. has no dom representation)
	* @param	oControl the control on which the 'press' event is triggered
	* @return	Void
	*/
	public function executeOn( oControl:sap.ui.core.Control):Void;

	/**
	* Creates a new subclass of class sap.ui.test.actions.Press with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.actions.Action.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.test.actions.Press.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;
}

