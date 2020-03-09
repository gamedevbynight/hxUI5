package sap.base.util;

@:native("module:sap/base/util/UriParameters")

/**
* Provides access to the individual parameters of a URL query string.

This class parses the query string from a URL and provides access to the values of individual parameters. There are methods to check whether the query string {@link #has contains a parameter (<code>has()</code>)}, to {@link #get get a single value (<code>get()</code>)} for a parameter and to {@link #getAll get a list of all values (<code>getAll()</code>)} for a parameter. Another method allows to {@link #keys iterate over all parameter names (<code>keys()</code>)}.

The signature and behavior of those methods is aligned with the corresponding methods of the upcoming Web API <code>URLSearchParams</code>.

<h3>Decoding</h3>

The constructor and the factory methods expect percentage encoded input whereas all other APIs expect and return decoded strings. After parsing the query string, any plus sign (0x2b) in names or values is replaced by a blank (0x20) and the resulting strings are percentage decoded (<code>decodeURIComponent</code>).

<h3>Future Migration</h3>

<b>Note:</b> To simplify a future migration from this class to the standard <code>URLSearchParams</code> API, consuming code should follow some recommendations: <ul> <li>do not use the constructor, either use {@link #.fromURL UriParameters.fromURL} when the input is a full URL, or use {@link #.fromQuery UriParameters.fromQuery} when the input only contains the query part of an URL (e.g. <code>location.search</code>).</li> <li>do not use the <code>get</code> method with the second parameter <code>bAll</code>; use the <code>getAll</code> method instead</li> <li>do not access the internal property <code>mParams</code> (you never should access internal properties of UI5 classes or objects). With the predecessor of this API, access to <code>mParams</code> was often used to check whether a parameter is defined at all. Using the new <code>has</code> method or checking the result of <code>get</code> against <code>null</code> serves the same purpose.</li> </ul> Callers using <code>UriParameters.fromQuery(input)</code> can be migrated to <code>new URLSearchParams(input)</code> once the new API is available in all supported browsers. Callers using <code>UriParameters.fromURL(input)</code> can be migrated to <code>new URL(input).searchParams</code> then.
*/
extern class UriParameters
{

	/**
	* 
	* @param	sURL URL with parameters
	* @return	Object
	*/
	public function new( ?sURL:String):Void;

	/**
	* Parses the given query string and returns an interface to access the individual parameters.

Callers using <code>UriParameters.fromQuery(input)</code> can be migrated to <code>new URLSearchParams(input)</code> once that API is available (or polyfilled) in all supported browsers.
	* @param	sQuery Query string to parse, a leading question mark (?) will be ignored
	* @return	Object providing read access to the query parameters
	*/
	public static function fromQuery( ?sQuery:String):sap.base.util.UriParameters;

	/**
	* Parses the query portion of the given URL and returns an object to access the individual parameters.

Callers using <code>UriParameters.fromURL(input)</code> can be migrated to <code>new URL(input).searchParams</code> once that API is available (or polyfilled) in all supported browsers.
	* @param	sURL to parse the query portion of.
	* @return	Object providing read access to the query parameters
	*/
	public static function fromURL( sURL:String):sap.base.util.UriParameters;

	/**
	* Returns the first value of the named query parameter.

The value of the first occurrence of the parameter with name <code>sName</code> in the query string is returned. If that first occurrence does not contain a value (it does not contain an equal sign), then an empty string is returned.

If (and only if) the parameter does not occur in the query string, <code>null</code> is returned.
	* @param	sName Name of the query parameter to get the value for
	* @param	bAll Whether all values for the parameter should be returned; the use of this parameter is deprecated and highly discouraged; use the {@link #getAll} method instead
	* @return	First value of the query parameter with the given name or <code>null</code>
	*/
	public function get( sName:String, ?bAll:Bool):Dynamic;

	/**
	* Returns all values of the query parameter with the given name.

An array of string values of all occurrences of the parameter with the given name is returned. This array is empty if (and only if) the parameter does not occur in the query string.
	* @param	sName Name of the query parameter
	* @return	Array with all values of the query parameter with the given name
	*/
	public function getAll( sName:String):Array<String>;

	/**
	* Checks whether a parameter occurs at least once in the query string.
	* @param	sName Name of the query parameter to check
	* @return	Whether the parameter has been defined
	*/
	public function has( sName:String):Bool;

	/**
	* Returns an iterator for all contained parameter names.
	* @return	Iterator for all parameter names.
	*/
	public function keys( ):Iterator;
}

