package sap.ui.core.mvc;

@:native("sap.ui.core.mvc.XMLView")

/**
* A View defined using (P)XML and HTML markup.

<strong>Note:</strong><br> Be aware that modifications of the content aggregation of this control are not supported due to technical reasons. This includes calls to all content modifying methods like <code>addContent></code> etc., but also the implicit removal of controls contained by the content aggregation. For example the destruction of a Control via the <code> destroy</code> method. All functions can be called but may not work properly or lead to unexpected side effects.

<strong>Note:</strong><br> On root level, you can only define content for the default aggregation, e.g. without adding the <code>&lt;content&gt;</code> tag. If you want to specify content for another aggregation of a view like <code>dependents</code>, place it in a child control's dependents aggregation or add it by using {@link sap.ui.core.mvc.XMLView#addDependent}.
*/
extern class XMLView extends sap.ui.core.mvc.View
{
	@:overload(function(?sId:String, ?mSettings:XMLViewArgs):Void {})
	public function new(?mSettings:XMLViewArgs):Void;

	/**
	* Instantiates an XMLView from the given configuration options.

If a <code>viewName</code> is given, it must be a dot-separated name of an XML view resource (without the mandatory suffix ".view.xml"). The resource will be loaded asynchronously via the module system (preload caches might apply) and will be parsed as XML. Alternatively, an already loaded view <code>definition</code> can be provided, either as XML string or as an already parsed XML document. Exactly one of <code>viewName</code> or <code>definition</code> must be given, if none or both are given, an error will be reported.

The <code>controller</code> property is optional and can hold a controller instance. When given, it overrides the controller class defined in the view definition.

<strong>Note</strong>: On root level, you can only define content for the default aggregation, e.g. without adding the <code>&lt;content&gt;</code> tag. If you want to specify content for another aggregation of a view like <code>dependents</code>, place it in a child control's <code>dependents</code> aggregation or add it by using {@link sap.ui.core.mvc.XMLView#addDependent}.

<strong>Note</strong>: If you enable caching, you need to take care of the invalidation via keys. Automatic invalidation takes only place if the UI5 version or the component descriptor (manifest.json) change. This is still an experimental feature and may experience slight changes of the invalidation parameters or the cache key format.
	* @param	oOptions An object containing the view configuration options.
	* @return	A Promise that resolves with the view instance or rejects with any thrown error.
	*/
	public static function create( oOptions:Dynamic):js.lib.Promise<sap.ui.core.mvc.XMLView>;

	/**
	* Creates a new subclass of class sap.ui.core.mvc.XMLView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.mvc.View.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.mvc.XMLView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
	@:overload( function(sType:String, vPreprocessor:String, bSyncSupport:Bool, ?bOnDemand:Bool, ?mSettings:Dynamic):Void{ })
	@:overload( function(sType:String, vPreprocessor:()->Void, bSyncSupport:Bool, ?bOnDemand:Bool, ?mSettings:Dynamic):Void{ })
	@:overload( function(sType:sap.ui.core.mvc.XMLView.PreprocessorType, vPreprocessor:String, bSyncSupport:Bool, ?bOnDemand:Bool, ?mSettings:Dynamic):Void{ })

	/**
	* Register a preprocessor for all views of a specific type.

The preprocessor can be registered for several stages of view initialization, for xml views these are either the plain "xml" or the already initialized "controls" , see {@link sap.ui.core.mvc.XMLView.PreprocessorType}. For each type one preprocessor is executed. If there is a preprocessor passed to or activated at the view instance already, that one is used. When several preprocessors are registered for one hook, it has to be made sure, that they do not conflict when being processed serially.

It can be either a module name as string of an implementation of {@link sap.ui.core.mvc.View.Preprocessor} or a function with a signature according to {@link sap.ui.core.mvc.View.Preprocessor.process}.

<strong>Note</strong>: Preprocessors work only in async views and will be ignored when the view is instantiated in sync mode by default, as this could have unexpected side effects. You may override this behaviour by setting the bSyncSupport flag to true.
	* @param	sType the type of content to be processed
	* @param	vPreprocessor module path of the preprocessor implementation or a preprocessor function
	* @param	bSyncSupport declares if the vPreprocessor ensures safe sync processing. This means the preprocessor will be executed also for sync views. Please be aware that any kind of async processing (like Promises, XHR, etc) may break the view initialization and lead to unexpected results.
	* @param	bOnDemand ondemand preprocessor which enables developers to quickly activate the preprocessor for a view, by setting <code>preprocessors : { xml }</code>, for example.
	* @param	mSettings optional configuration for preprocessor
	* @return	Void
	*/
	public static function registerPreprocessor( sType:sap.ui.core.mvc.XMLView.PreprocessorType, vPreprocessor:()->Void, bSyncSupport:Bool, ?bOnDemand:Bool, ?mSettings:Dynamic):Void;
}

typedef XMLViewArgs = sap.ui.core.mvc.View.ViewArgs & {
}
