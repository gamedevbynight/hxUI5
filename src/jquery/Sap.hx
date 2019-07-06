package jquery;

@:native("jquery.sap")
extern class Sap
{

	/**
	* Creates and returns a new instance of {@link jQuery.sap.util.UriParameters}.

Example for reading a single URI parameter (or the value of the first occurrence of the URI parameter): <pre>
	var sValue = jQuery.sap.getUriParameters().get("myUriParam");
</pre>

Example for reading the values of the first of the URI parameter (with multiple occurrences): <pre>
	var aValues = jQuery.sap.getUriParameters().get("myUriParam", true);
	for(i in aValues){
	var sValue = aValues[i];
	}
</pre>
	* @param	sUri Uri to determine the parameters for
	* @return	A new URI parameters instance
	*/
	public static function getUriParameters( sUri:String):jquery.sap.util.UriParameters;
}

