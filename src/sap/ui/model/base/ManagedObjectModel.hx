package sap.ui.model.base;

@:native("sap.ui.model.base.ManagedObjectModel")

/**
* The ManagedObjectModel class can be used for data binding of properties and aggregations for managed objects.

Provides model access to a given {@link sap.ui.base.ManagedObject}. Such access allows to bind to properties and aggregations of this object.
*/
extern class ManagedObjectModel extends sap.ui.model.json.JSONModel
{

	/**
	* 
	* @param	oObject the managed object models root object
	* @param	oData an object for custom data
	* @return	Object
	*/
	public function new( ?oObject:sap.ui.base.ManagedObject, ?oData:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.base.ManagedObjectModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.json.JSONModel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.model.base.ManagedObjectModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Inserts the user-defined custom data into the model.
	* @param	oData The data as JSON object to be set on the model
	* @param	bMerge If set to <code>true</code>, the data is merged instead of replaced
	* @return	Void
	*/
	public function setData( oData:Dynamic, ?bMerge:Bool):Void;
}

