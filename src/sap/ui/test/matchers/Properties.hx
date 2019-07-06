package sap.ui.test.matchers;

@:native("sap.ui.test.matchers.Properties")

/**
* Checks if a control's properties have the provided values - all properties have to match their values.
*/
extern class Properties
{

	/**
	* 
	* @param	oProperties the object with the properties to be checked. Example: <pre>
// Would filter for an enabled control with the text "Accept".
new Properties({
    // The property text has the exact value "Accept"
    text: "Accept",
    // The property enabled also has to be true
    enabled: true
})
</pre> If the value is a RegExp, it tests the RegExp with the value. RegExp only works with string properties.
	* @return	Object
	*/
	public function new( ?oProperties:Dynamic):Void;
}

