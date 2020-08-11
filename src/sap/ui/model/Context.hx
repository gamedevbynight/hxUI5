package sap.ui.model;

@:native("sap.ui.model.Context")

/**
* The Context is a pointer to an object in the model data, which is used to allow definition of relative bindings, which are resolved relative to the defined object. Context elements are created either by the ListBinding for each list entry or by using createBindingContext.
*/
extern class Context extends sap.ui.base.Object
{

	/**
	* 
	* @param	oModel the model
	* @param	sPath the binding path
	* @return	Object
	*/
	public function new( ?oModel:sap.ui.model.Model, ?sPath:String):Void;

	/**
	* Creates a new subclass of class sap.ui.model.Context with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns messages associated with this context, that is messages belonging to the object referred to by this context or a child object of that object. The messages are sorted by their {@link sap.ui.core.message.Message#getType type} according to the type's severity in a way that messages with highest severity come first.
	* @return	The messages associated with this context sorted by severity; empty array in case no messages exist
	*/
	public function getMessages( ):Array<sap.ui.core.message.Message>;

	/**
	* Returns a metadata object for class sap.ui.model.Context.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Getter for model
	* @return	the model
	*/
	public function getModel( ):sap.ui.model.Model;

	/**
	* Gets the (model dependent) object the context points to or the object with the given relative binding path
	* @param	sPath the binding path
	* @param	mParameters additional model specific parameters (optional)
	* @return	the context object
	*/
	public function getObject( ?sPath:String, ?mParameters:Dynamic):Dynamic;

	/**
	* Getter for path of the context itself or a subpath
	* @param	sPath the binding path (optional)
	* @return	the binding path
	*/
	public function getPath( ?sPath:String):String;

	/**
	* Gets the property with the given relative binding path
	* @param	sPath the binding path
	* @return	the property value
	*/
	public function getProperty( sPath:String):Dynamic;
}

