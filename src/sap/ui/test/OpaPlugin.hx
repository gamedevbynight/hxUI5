package sap.ui.test;

@:native("sap.ui.test.OpaPlugin")

/**
* A Plugin to search UI5 controls.
*/
extern class OpaPlugin extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.test.OpaPlugin with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets all the controls or elements of a certain type that are currently instantiated. If the type is omitted, all controls and elements are returned.
	* @param	fnConstructorType the control type, e.g: sap.m.CheckBox
	* @param	sControlType optional control type name, e.g: "sap.m.CheckBox"
	* @return	an array of the found controls (can be empty)
	*/
	public function getAllControls( ?fnConstructorType:()->Void, ?sControlType:String):Array<Dynamic>;

	/**
	* Find a control by its global ID
	* @param	oOptions a map of match conditions. Must contain an id property
	* @param	oOptions must contain ID property of type string, regex or array of strings; optionally it can contain a controlType property.
	* @return	all matching controls <ul> <li>if a oOptions.id is a string, will return the single matching control or null if no controls match</li> <li>otherwise, will return an array of matching controls, or an empty array, if no controls match</li> </ul>
	*/
	public function getControlByGlobalId( oOptions:Dynamic, oOptions:Dynamic):Dynamic;

	/**
	* Gets the constructor function of a certain controlType
	* @param	sControlType the name of the type eg: "sap.m.Button"
	* @return	When the type is loaded, the contstructor is returned, if it is a lazy stub or not yet loaded, null will be returned and there will be a log entry.
	*/
	public function getControlConstructor( sControlType:String):Dynamic;

	/**
	* Gets a control inside the view (same as calling oView.byId) Returns all matching controls inside a view (also nested views and their children).<br/> The view can be specified by viewName, viewNamespace, viewId, and any combination of three. eg : { id : "foo" } will search globally for a control with the ID foo<br/> eg : { id : "foo" , viewName : "bar" } will search for a control with the ID foo inside the view with the name bar<br/> eg : { viewName : "bar" } will return all the controls inside the view with the name bar<br/> eg : { viewName : "bar", controlType : sap.m.Button } will return all the Buttons inside a view with the name bar<br/> eg : { viewName : "bar", viewNamespace : "baz." } will return all the Controls in the view with the name baz.bar<br/> eg : { viewId : "viewBar" } will return all the controls inside the view with the ID viewBar<br/>
	* @param	oOptions can contain a viewName, viewNamespace, viewId, fragmentId, id and controlType properties. oOptions.id can be string, array or regular expression
	* @return	If oOptions.id is a string, will return the control with such an ID or null.<br/> If the view is not found or no control matches the given criteria, will return an empty array <br/> Otherwise, will return an array of matching controls
	*/
	public function getControlInView( oOptions:Dynamic):Dynamic;

	/**
	* Find a control matching the provided options autowait and Interactable matcher will be enforced if neccessary
	* @param	oOptions a map of options used to describe the control you are looking for.
	* @return	<ul> <li>if a oOptions.id is a string, will return the single matching control or null if no controls match</li> <li>otherwise, will return an array of matching controls, or an empty array, if no controls match</li> </ul>
	*/
	public function getMatchingControls( ?oOptions:Dynamic):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.test.OpaPlugin.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the view with a specific name. The result should be a unique view. If there are multiple visible views with that name, none will be returned.
	* @param	sViewName the name of the view
	* @return	or undefined
	*/
	public function getView( sViewName:String):sap.ui.core.mvc.View;
}

