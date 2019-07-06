package sap.ui.test.gherkin.datatableutils;

@:native("sap.ui.test.gherkin.datatableutils.normalization")
extern class Normalization
{

	/**
	* For example: "First Name" -> "firstName"
	* @param	sString the string to normalize
	* @return	the normalized input string with all words after the first capitalized and all spaces removed
	*/
	public static function camelCase( sString:String):String;

	/**
	* For example: "First Name" -> "first-name"
	* @param	sString the string to normalize
	* @return	the normalized input string changed to lower case and with space between words replaced by a hyphen ("-")
	*/
	public static function hyphenated( sString:String):String;

	/**
	* For example: "First Name" -> "First Name"
	* @param	sString the string to normalize
	* @return	the original unchanged input string
	*/
	public static function none( sString:String):String;

	/**
	* For example: "first name" -> "FirstName"
	* @param	sString the string to normalize
	* @return	the normalized input string with all words capitalized and all spaces removed
	*/
	public static function pascalCase( sString:String):String;

	/**
	* For example: "first name" -> "First Name"
	* @param	sString the string to normalize
	* @return	the normalized input string with all words capitalized
	*/
	public static function titleCase( sString:String):String;
}

