package jquery;

@:native("jquery.sap")
extern class Sap
{

	/**
	* Returns the names of all declared modules.
	*/
	 public static var getAllDeclaredModules:Dynamic;

	/**
	* Registers a URL prefix for a resource name prefix.

Before a resource is loaded, the longest registered prefix of its unified resource name is searched for and the associated URL prefix is used as a prefix for the request URL. The remainder of the resource name is attached to the request URL 1:1.

The registration and search operates on full name segments only. So when a prefix

'sap/com' -> 'http://www.sap.com/ui5/resources/'

is registered, then it will match the name

'sap/com/Button'

but not

'sap/commons/Button'

Note that the empty prefix ('') will always match and thus serves as a fallback for any search.

The url prefix can either be given as string or as object which contains the url and a final flag. If final is set to true, overwriting a resource name prefix is not possible anymore.
	*/
	 public static var registerResourcePath:Dynamic;


}

