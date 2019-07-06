package sap.ui.model.analytics;

@:native("sap.ui.model.analytics.BatchResponseCollector")

/**
* Simple Response Collection Component, collects the responses for each sub-request inside a bigger batch request.

Also handles clean-up after all responses (either success or error) have been collected. Instantiated in AnalyticalBinding.prototype._executeBatchRequest()
*/
extern class BatchResponseCollector
{

	/**
	* 
	* @param	mParams optional Setup-Parameter, @see BatchResponseCollector#setup
	* @return	Object
	*/
	public function new( ?mParams:Dynamic):Void;

	/**
	* Collects responses of type BatchResponseCollector.TYPE_SUCCESS and BatchResponseCollector.TYPE_ERROR.

Keeps track of all collected responses and fires the necessary events after all responses for the requests, given in the constructor, have returned.
	* @param	oResponse the response which should be collected
	* @param	sResponseType the type of the response, either BatchResponseCollector.TYPE_SUCCESS or BatchResponseCollector.TYPE_ERROR
	* @return	Void
	*/
	public function collect( oResponse:Dynamic, ?sResponseType:String):Void;

	/**
	* Convenience function to collect an error response.

Internally BatchResponseCollector#collect is called, the second parameter is set to BatchResponseCollector.TYPE_ERROR
	* @param	oResponse the erroneous response object
	* @return	Void
	*/
	public function error( oResponse:Dynamic):Void;

	/**
	* Setup-Function to initialize/reset the BatchResponseCollector.
	* @param	mParams optional Setup-Parameter
	* @return	Void
	*/
	public function setup( ?mParams:Dynamic):Void;

	/**
	* Convenience function to collect a success response.

Internally BatchResponseCollector#collect is called with second parameter BatchResponseCollector.TYPE_SUCCESS
	* @param	oResponse the successful response, which should be collected
	* @return	Void
	*/
	public function success( oResponse:Dynamic):Void;
}

