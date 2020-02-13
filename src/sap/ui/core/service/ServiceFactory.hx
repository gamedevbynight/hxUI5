package sap.ui.core.service;

@:native("sap.ui.core.service.ServiceFactory")

/**
* A service factory is used to create service instances for a specific context. The service factory needs to be registered in a central {@link sap.ui.core.service.ServiceFactoryRegistry service factory registry}. Consumers of services require the service factory to create service instances.

The service factory base class can be used in a generic way to act as a factory for any service: <pre>
sap.ui.require([
  "sap/ui/core/service/ServiceFactoryRegistry",
  "sap/ui/core/service/ServiceFactory",
  "my/Service"
], function(ServiceFactoryRegistry, ServiceFactory, MyService) {

  ServiceFactoryRegistry.register(new ServiceFactory(MService));

});
</pre>

Additionally a concrete service factory can be implemented by extending the service factory base class if additional functionality is needed when creating new instances for a specific context: <pre>
sap.ui.define("my/ServiceFactory", [
  "sap/ui/core/service/ServiceFactoryRegistry",
  "sap/ui/core/service/ServiceFactory",
  "my/Service"
], function(ServiceFactoryRegistry, ServiceFactory, MyService) {

  return ServiceFactory.extend("my.ServiceFactory", {
    createInstance: function(oServiceContext) {
      return Promise.resolve(new MyService(oServiceContext));
    }
  });

});
</pre>

Another option for the usage of the service factory is to provide a structured object with information about the service which will create an anonymous service internally: <pre>
sap.ui.define("my/ServiceFactory", [
  "sap/ui/core/service/ServiceFactoryRegistry",
  "sap/ui/core/service/ServiceFactory",
  "my/Service"
], function(ServiceFactoryRegistry, ServiceFactory, MyService) {

  return new ServiceFactory({

    init: function() { ... },
    exit: function() { ... },

    doSomething: function() { ... }

  });

});
</pre>

As <code>createInstance</code> returns a <code>Promise</code> e.g. the service module can also be loaded asynchronously and resolve once the module has been loaded and instantiated.
*/
extern class ServiceFactory extends sap.ui.base.Object
{

	/**
	* Creates a new subclass of class sap.ui.core.service.ServiceFactory with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.service.ServiceFactory.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

