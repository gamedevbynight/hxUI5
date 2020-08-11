package sap;

@:native("sap.m")
extern class M
{



	/**
	* Hide the soft keyboard.
	* @return	Void
	*/
	public static function closeKeyboard( ):Void;

	/**
	* Search given control's parents and try to find iScroll.
	* @param	oControl Control to start the search at
	* @return	iScroll reference or undefined if cannot find
	*/
	public static function getIScroll( oControl:sap.ui.core.Control):Dynamic;

	/**
	* Finds default locale settings once and returns always the same.

We should not need to create new instance to get same locale settings This method keeps the locale instance in the scope and returns the same after first run
	* @return	Locale instance
	*/
	public static function getLocale( ):sap.ui.core.Locale;

	/**
	* Finds default locale data once and returns always the same.
	* @return	LocaleData instance
	*/
	public static function getLocaleData( ):sap.ui.core.LocaleData;

	/**
	* Search given control's parents and try to find a ScrollDelegate.
	* @param	oControl Starting point for the search
	* @param	bGlobal Whether the search should stop on component level (<code>false</code>) or not
	* @return	ScrollDelegate or undefined if it cannot be found
	*/
	public static function getScrollDelegate( oControl:sap.ui.core.Control, bGlobal:Bool):Dynamic;

	/**
	* Checks if the given parameter is a valid JsDate Object.
	* @param	value Any variable to test.
	* @return	Whether the given parameter is a valid JsDate Object.
	*/
	public static function isDate( value:Dynamic):Bool;
}

