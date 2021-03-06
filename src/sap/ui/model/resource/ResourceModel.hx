package sap.ui.model.resource;

@:native("sap.ui.model.resource.ResourceModel")

/**
* Model implementation for resource bundles.

This model allows to bind control properties against translatable texts. Its data is taken from a {@link module:sap/base/i18n/ResourceBundle} and it only supports property bindings.

In contrast to most other models, binding paths for a <code>ResourceModel</code> must not start with a slash; they are absolute by default, and there's no further structure. Each key in the underlying resource bundle is a valid binding path.

In extensibility scenarios, the texts of the resource bundle can be {@link #enhance enhanced} with additional resource bundles. These additional bundles can define new texts for existing keys, texts for new keys, or both. When texts for existing keys are replaced, the latest enhancement wins.

This model supports the binding modes <code>OneWay</code> and <code>OneTime</code>, but not <code>TwoWay</code>. When the recommended asynchronous loading of the bundle is used, binding mode <code>OneTime</code> can't be used.
*/
extern class ResourceModel extends sap.ui.model.Model
{

	/**
	* 
	* @param	oData Parameters used to initialize the <code>ResourceModel</code>; at least one of <code>bundle</code>, <code>bundleName</code> or <code>bundleUrl</code> must be set; if more than one property is set, they are evaluated in the mentioned order
	* @return	Object
	*/
	public function new( ?oData:Dynamic):Void;

	/**
	* Gets a property binding for the given path in the resource model. Only <code>sPath</code> from {@link sap.ui.model.Model#bindProperty} is supported; other parameters are ignored.
	* @param	sPath The path pointing to the property that should be bound; in contrast to most other models, the binding path for a <code>ResourceModel</code> must not start with a slash, it is absolute by default and there's no further structure. Each key in the underlying resource bundle is a valid binding path.
	* @return	The property binding for the given path
	*/
	public function bindProperty( sPath:String):sap.ui.model.PropertyBinding;
	@:overload( function(oData:sap.base.i18n.ResourceBundle):Dynamic{ })

	/**
	* Enhances the resource model with a custom resource bundle.

The custom bundle can define new texts for keys existing in the main bundle, texts for new keys, or both. A resource model can be enhanced with multiple resource bundles by calling this method multiple times. Each call appends to the list of enhancements, but no bundle can be removed from the list.

When looking up a text for a key, the enhancements are processed in reverse order. Texts from the last added resource bundle are preferred over texts from previously added bundles or texts from the main bundle.
	* @param	oData Either an already loaded bundle instance, or a configuration object with parameters to load a new resource bundle. When a configuration object is given, at least one of <code>bundleUrl</code> or <code>bundleName</code> must be set; if both are set, <code>bundleName</code> wins
	* @return	A Promise resolving when the enhancement is finished or <code>null</code> if the <code>ResourceModel</code> is configured to act synchronously
	*/
	public function enhance( oData:Dynamic):Dynamic;

	/**
	* Creates a new subclass of class sap.ui.model.resource.ResourceModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.Model.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.model.resource.ResourceModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the value for the property with the given path.
	* @param	sPath The path to the property
	* @return	The value of the property in the resource bundle or <code>null</code> if resource bundle is not available
	*/
	public function getProperty( sPath:String):String;

	/**
	* Gets the resource bundle of this model.
	* @return	The loaded resource bundle or a Promise resolving with it in asynchronous case
	*/
	public function getResourceBundle( ):Dynamic;
}

