package sap.ui.core.service;

@:native("sap.ui.core.service.Service")

/**
* A service provides a specific functionality. A service instance can be obtained by a {@link sap.ui.core.service.ServiceFactory ServiceFactory} or at a Component via {@link sap.ui.core.Component#getService getService} function.

This class is the abstract base class for services and needs to be extended: <pre>
sap.ui.define("my/Service", [
  "sap/ui/core/service/Service"
], function(Service) {

  return Service.extend("my.Service", {

    init: function() {
      // handle init lifecycle
    },

    exit: function() {
      // handle exit lifecycle
    },

    doSomething: function() {
      // some functionality
    }

 });

});
</pre>

A service instance will have a service context: <pre>
{
  "scopeObject": oComponent, // the Component instance
  "scopeType": "component"   // the stereotype of the scopeObject
}
</pre>

The service context can be retrieved with the function <code>getContext</code>. This function is private to the service instance and will not be exposed via the service interface.

For consumers of the service it is recommended to provide the service instance only - as e.g. the {@link sap.ui.core.Component#getService getService} function of the Component does. The service interface can be accessed via the <code>getInterface</code> function.

Other private functions of the service instance are the lifecycle functions. Currently there are two lifecycle functions: <code>init</code> and <code>exit</code>. In addition the <code>destroy</code> function will also by hidden to avoid the control of the service lifecycle for service interface consumers.
*/
extern class Service extends sap.ui.base.Object
{

	/**
	* Creates a new subclass of class sap.ui.core.service.Service with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.service.Service.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

