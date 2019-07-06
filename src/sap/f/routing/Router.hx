package sap.f.routing;

@:native("sap.f.routing.Router")

/**
* The <code>sap.f.routing.Router</code> class is intended to be used with <code>{@link sap.f.FlexibleColumnLayout}</code> as a root control.

The difference to the <code>{@link sap.ui.core.routing.Router}</code> are the <code>viewLevel</code>, <code>transition</code>, and <code>transitionParameters</code> properties that you can specify in every Route or Target created by this router.

Additionally, the <code>layout</code> property can be specified in every Route, in which case it is applied to the root control.

See <code>{@link sap.ui.core.routing.Router}</code> for the constructor arguments.
*/
extern class Router extends sap.ui.core.routing.Router
{
	@:overload( function(?oRoutes:Dynamic, ?oOwner:sap.ui.core.UIComponent, ?oTargetsConfig:Dynamic):Void{ })

	/**
	* 
	* @param	oRoutes may contain many Route configurations as {@link sap.ui.core.routing.Route#constructor}.
	* @param	oOwner the Component of all the views that will be created by this Router, will get forwarded to the {@link sap.ui.core.routing.Views#constructor}. If you are using the componentMetadata to define your routes you should skip this parameter.
	* @param	oTargetsConfig the target configuration, see {@link sap.f.routing.Targets#constructor} documentation (the options object).
	* @return	Object
	*/
	public function new( ?oRoutes:Array<Dynamic>, ?oOwner:sap.ui.core.UIComponent, ?oTargetsConfig:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.f.routing.Router with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.routing.Router.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.routing.Router.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the <code>TargetHandler</code> instance.
	* @return	The <code>TargetHandler</code> instance
	*/
	public function getTargetHandler( ):sap.f.routing.TargetHandler;
}

