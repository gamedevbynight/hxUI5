package sap.ui.integration.widgets;

@:native("sap.ui.integration.widgets.CardFacade")

/**
* null
*/
extern class CardFacade
{

	/**
	* Gets values of manifest parameters combined with the parameters from <code>parameters</code> property.

<b>Notes</b>

- Use this method when the manifest is ready. Check <code>manifestReady</code> event.

- Use when developing a Component card.
	* @return	Object containing parameters in format <code>{parameterKey: parameterValue}</code>.
	*/
	public static function getCombinedParameters( ):Map<String,Dynamic>;

	/**
	* Returns a value from the Manifest based on the specified path.

<b>Note</b> Use this method when the manifest is ready. Check <code>manifestReady</code> event.
	* @param	sPath The path to return a value for.
	* @return	The value at the specified path.
	*/
	public static function getManifestEntry( sPath:String):Dynamic;

	/**
	* Gets current value of property {@link #getParameters parameters}.

Overrides the default values of the parameters, which are defined in the manifest. The value is an object containing parameters in format <code>{parameterKey: parameterValue}</code>.
	* @return	Value of property <code>parameters</code>
	*/
	public static function getParameters( ):Dynamic;

	/**
	* Performs an HTTP request using the given configuration.
	* @param	oConfiguration The configuration of the request.
	* @return	Resolves when the request is successful, rejects otherwise.
	*/
	public static function request( oConfiguration:Dynamic):js.lib.Promise<CardFacade>;
}

