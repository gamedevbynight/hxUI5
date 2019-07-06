package sap.ui.model.analytics.odata4analytics;

@:native("sap.ui.model.analytics.odata4analytics.Model")

/**
* Representation of an OData model with analytical annotations defined by OData4SAP.
*/
extern class Model
{

	/**
	* 
	* @param	oModelReference An instance of ReferenceByURI, ReferenceByModel or ReferenceWithWorkaround for locating the OData service.
	* @param	mParameter Additional parameters for controlling the model construction. Currently supported are: <li> sAnnotationJSONDoc - A JSON document providing extra annotations to the elements of the structure of the given service </li> <li> modelVersion - Parameter to define which ODataModel version should be used, in you use 'odata4analytics.Model.ReferenceByURI': 1 (default), 2 see also: AnalyticalVersionInfo constants </li>
	* @return	Object
	*/
	public function new( ?oModelReference:Dynamic, ?mParameter:Dynamic):Void;

	/**
	* Find analytic query result by name
	* @param	sName Fully qualified name of query result entity set
	* @return	The query result object with this name or null if it does not exist
	*/
	public function findQueryResultByName( sName:String):sap.ui.model.analytics.odata4analytics.QueryResult;

	/**
	* Get the names of all query results (entity sets) offered by the model
	* @return	List of all query result names
	*/
	public function getAllQueryResultNames( ):Array<String>;

	/**
	* Get all query results offered by the model
	* @return	An object with individual JS properties for each query result included in the model. The JS object properties all are objects of type odata4analytics.QueryResult. The names of the JS object properties are given by the entity set names representing the query results.
	*/
	public function getAllQueryResults( ):Dynamic;

	/**
	* Get underlying OData model provided by SAPUI5
	* @return	The SAPUI5 representation of the model.
	*/
	public function getODataModel( ):Dynamic;
}

