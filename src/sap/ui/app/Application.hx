package sap.ui.app;

@:native("sap.ui.app.Application")

/**
* Abstract application class. Extend this class to create a central application class.
*/
extern class Application extends sap.ui.core.Component
{
	@:overload(function(?sId:String, ?mSettings:ApplicationArgs):Void {})
	public function new(?mSettings:ApplicationArgs):Void;

	/**
	* null
	* @return	Void
	*/
	public function destroy( ):Void;

	/**
	* Destroys the rootComponent in the aggregation {@link #getRootComponent rootComponent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRootComponent( ):sap.ui.app.Application;

	/**
	* Creates a new subclass of class sap.ui.app.Application with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Component.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getConfig config}.
	* @return	Value of property <code>config</code>
	*/
	public function getConfig( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.app.Application.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ComponentMetadata;

	/**
	* Gets current value of property {@link #getRoot root}.
	* @return	Value of property <code>root</code>
	*/
	public function getRoot( ):String;

	/**
	* Gets content of aggregation {@link #getRootComponent rootComponent}.
	* @return	null
	*/
	public function getRootComponent( ):sap.ui.core.UIComponent;

	/**
	* The main method is called when the DOM and UI5 is completely loaded. Override this method in your Application class implementation to execute code which relies on a loaded DOM / UI5.
	* @return	Void
	*/
	public function main( ):Void;

	/**
	* On before exit application hook. Override this method in your Application class implementation, to handle cleanup before the real exit or to prompt a question to the user, if the application should be exited.
	* @return	return a string if a prompt should be displayed to the user confirming closing the application (e.g. when the application is not yet saved).
	*/
	public function onBeforeExit( ):String;

	/**
	* On error hook. Override this method in your Application class implementation to listen to unhandled errors.
	* @param	sMessage The error message.
	* @param	sFile The file where the error occurred
	* @param	iLine The line number of the error
	* @return	Void
	*/
	public function onError( sMessage:String, sFile:String, iLine:String):Void;

	/**
	* On exit application hook. Override this method in your Application class implementation, to handle cleanup of the application.
	* @return	Void
	*/
	public function onExit( ):Void;
	@:overload( function(vConfig:String):Void{ })
	@:overload( function(vConfig:Dynamic):Void{ })

	/**
	* Sets the configuration model.
	* @param	vConfig the configuration model, the configuration object or a URI string to load a JSON configuration file.
	* @return	Void
	*/
	public function setConfig( vConfig:sap.ui.model.Model):Void;

	/**
	* Sets a new value for property {@link #getRoot root}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sRoot New value for property <code>root</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRoot( sRoot:String):sap.ui.app.Application;

	/**
	* Sets the aggregated {@link #getRootComponent rootComponent}.
	* @param	oRootComponent The rootComponent to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRootComponent( oRootComponent:sap.ui.core.UIComponent):sap.ui.app.Application;
}

typedef ApplicationArgs = sap.ui.core.Component.ComponentArgs & {

	/**
	* null
	*/
	@:optional var root:String;

	/**
	* null
	*/
	@:optional var config:Dynamic;

    /**
    * null
    */
	@:optional var rootComponent:haxe.extern.EitherType<String,sap.ui.core.UIComponent>;
}
