package sap.ui.core;

@:native("sap.ui.core.DeclarativeSupport")

/**
* Static class for enabling declarative UI support.
*/
extern class DeclarativeSupport
{
public function new():Void;

	/**
	* Enhances the given DOM element by parsing the Control and Elements info and creating the SAPUI5 controls for them.
	* @param	oElement the DOM element to compile
	* @param	oView The view instance to use
	* @param	isRecursive Whether the call of the function is recursive.
	* @return	Void
	*/
	public static function compile( oElement:js.html.Element, ?oView:sap.ui.core.mvc.HTMLView, ?isRecursive:Bool):Void;
}

