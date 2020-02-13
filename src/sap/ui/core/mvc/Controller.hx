package sap.ui.core.mvc;

@:native("sap.ui.core.mvc.Controller")

/**
* A generic controller implementation for the UI5 Model-View-Controller concept.

Can either be used as a generic controller which is enriched on the fly with methods and properties (see {@link sap.ui.controller}) or as a base class for typed controllers.
*/
extern class Controller extends sap.ui.base.EventProvider
{
	@:overload( function(?sName:String):Void{ })

	/**
	* 
	* @param	sName The name of the controller to instantiate. If a controller is defined as real sub-class, the "arguments" of the sub-class constructor should be given instead.
	* @return	Object
	*/
	public function new( ?sName:Array<Dynamic>):Void;

	/**
	* Returns an Element of the connected view with the given local ID.

Views automatically prepend their own ID as a prefix to created Elements to make the IDs unique even in the case of multiple view instances. This method helps to find an element by its local ID only.

If no view is connected or if the view doesn't contain an element with the given local ID, undefined is returned.
	* @param	sId View-local ID
	* @return	Element by its (view local) ID
	*/
	public function byId( sId:String):sap.ui.core.Element;

	/**
	* Creates an instance of controller class.
	* @param	mOptions A map containing the controller configuration options.
	* @return	the Promise resolves with a new instance of the controller
	*/
	public static function create( mOptions:Dynamic):js.lib.Promise<Controller>;

	/**
	* Converts a view local ID to a globally unique one by prepending the view ID.

If no view is connected, undefined is returned.
	* @param	sId View-local ID
	* @return	Prefixed ID
	*/
	public function createId( sId:String):String;

	/**
	* Creates a new subclass of class sap.ui.core.mvc.Controller with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.EventProvider.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.mvc.Controller.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets the component of the controller's view

If there is no Component connected to the view or the view is not connected to the controller, undefined is returned.
	* @return	Component instance
	*/
	public function getOwnerComponent( ):sap.ui.core.Component;

	/**
	* Returns the view associated with this controller or undefined.
	* @return	View connected to this controller.
	*/
	public function getView( ):sap.ui.core.mvc.View;

	/**
	* Registers a callback module, which provides code enhancements for the lifecycle and event handler functions of a specific controller. The code enhancements are returned either in sync or async mode.

The extension provider module provides the <code>getControllerExtensions</code> function which returns either directly an array of objects or a Promise that returns an array of objects when it resolves. These objects are object literals defining the methods and properties of the controller in a similar way as {@link sap.ui.controller}.

<b>Example for a callback module definition (sync):</b> <pre>
sap.ui.define("my/custom/sync/ExtensionProvider", ['jquery.sap.global'], function(jQuery) {
  var ExtensionProvider = function() {};
  ExtensionProvider.prototype.getControllerExtensions = function(sControllerName, sComponentId, bAsync) {
    if (!bAsync && sControllerName == "my.own.Controller") {
      // IMPORTANT: only return extensions for a specific controller
      return [{
        onInit: function() {
          // Do something here...
        },
        onAfterRendering: function() {
          // Do something here...
        },
        onButtonClick: function(oEvent) {
          // Handle the button click event
        }
      }
    }];
  };
  return ExtensionProvider;
}, true);
</pre>

<b>Example for a callback module definition (async):</b> <pre>
sap.ui.define("my/custom/async/ExtensionProvider", ['jquery.sap.global'], function(jQuery) {
  var ExtensionProvider = function() {};
  ExtensionProvider.prototype.getControllerExtensions = function(sControllerName, sComponentId, bAsync) {
    if (bAsync && sControllerName == "my.own.Controller") {
      // IMPORTANT:
      // only return a Promise for a specific controller since it
      // requires the View/Controller and its parents to run in async
      // mode!
      return new Promise(function(fnResolve, fnReject) {
        fnResolve([{
          onInit: function() {
            // Do something here...
          },
          onAfterRendering: function() {
            // Do something here...
          },
          onButtonClick: function(oEvent) {
            // Handle the button click event
          }
        }]);
      }
    };
  };
  return ExtensionProvider;
}, true);
</pre>

The lifecycle functions <code>onInit</code>, <code>onExit</code>, <code>onBeforeRendering</code> and <code>onAfterRendering</code> are added before or after the lifecycle functions of the original controller. The event handler functions, such as <code>onButtonClick</code>, are replacing the original controller's function.

When using an async extension provider you need to ensure that the view is loaded in async mode.

In both cases, return <code>undefined</code> if no controller extension shall be applied.
	* @param	sExtensionProvider the module name of the extension provider

See {@link sap.ui.controller} for an overview of the available functions for controllers.
	* @return	Void
	*/
	public static function registerExtensionProvider( sExtensionProvider:String):Void;
}

