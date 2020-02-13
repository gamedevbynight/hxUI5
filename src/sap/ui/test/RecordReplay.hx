package sap.ui.test;

@:native("sap.ui.test.RecordReplay")

/**
* Record-and-replay implementation for OPA5.
*/
extern class RecordReplay extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.test.RecordReplay with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Find the best control selector for a DOM element. A selector uniquely represents a single element. The 'best' selector is the one with which it is most likely to uniquely identify a control with the least possible inspection of the control tree.
	* @param	oOptions Options to influence the generation of the selector
	* @return	Promise for control selector or error
	*/
	public static function findControlSelectorByDOMElement( oOptions:Dynamic):Dynamic;

	/**
	* Find DOM element representation of a control specified by a selector object.
	* @param	oOptions Options for the search
	* @return	Promise to be resolved with DOM element or rejected with Error when no suitable representation can be found
	*/
	public static function findDOMElementByControlSelector( oOptions:Dynamic):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.test.RecordReplay.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Interact with specific control.
	* @param	oOptions Options for the interaction
	* @return	Promise to be resolved when the interaction is done or rejected if interaction is not possible
	*/
	public static function interactWithControl( oOptions:Dynamic):Dynamic;

	/**
	* Wait for UI5 to complete processing, poll until all asynchronous work is finished, or timeout.
	* @param	oOptions Override default wait options like polling timeout and interval
	* @return	Promise to be resolved when UI5 is awaited, or rejected if timeout is reached The promise will be rejected with an error containing a stringified list of pending work.
	*/
	public static function waitForUI5( oOptions:Dynamic):Dynamic;
}

