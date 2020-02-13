package sap.ui.model;

@:native("sap.ui.model.ClientModel")

/**
* Model implementation for Client models
*/
extern class ClientModel extends sap.ui.model.Model
{

	/**
	* 
	* @param	oData URL where to load the data from
	* @return	Object
	*/
	public function new( ?oData:String):Void;

	/**
	* null
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Creates a new subclass of class sap.ui.model.ClientModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Model.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Force no caching.
	* @param	bForceNoCache whether to force not to cache
	* @return	Void
	*/
	public function forceNoCache( ?bForceNoCache:Bool):Void;

	/**
	* Returns the current data of the model. Be aware that the returned object is a reference to the model data so all changes to that data will also change the model data.
	* @return	the data object
	*/
	public function getData( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.model.ClientModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* update all bindings
	* @param	bForceUpdate true/false: Default = false. If set to false an update will only be done when the value of a binding changed.
	* @return	Void
	*/
	public function updateBindings( bForceUpdate:Bool):Void;
}

