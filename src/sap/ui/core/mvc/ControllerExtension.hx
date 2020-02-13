package sap.ui.core.mvc;

@:native("sap.ui.core.mvc.ControllerExtension")

/**
* Base class for controller extensions.

All controller extensions must {@link #.extend extend} from this base class. It provides access to the {@link #getView view} of the extended controller as well as to the view's {@link #byId controls}.

For a more detailed description how to develop controller extensions, see section {@link topic:21515f09c0324218bb705b27407f5d61 Using Controller Extension} in the documentation.
*/
extern class ControllerExtension extends sap.ui.base.Object
{

	/**
	* Returns an Element of the connected view with the given local ID.

Views automatically prepend their own ID as a prefix to created Elements to make the IDs unique even in the case of multiple view instances. For a controller extension, the namespace of the control ID gets also prefixed with the namespace of the extension. This method helps to find an element by its local ID only.

If no view is connected or if the view doesn't contain an element with the given local ID, <code>undefined</code> is returned.
	* @param	sId View-local ID
	* @return	Element by its (view local) ID
	*/
	public function byId( sId:String):sap.ui.core.Element;

	/**
	* Creates a new subclass of class sap.ui.core.mvc.ControllerExtension with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.mvc.ControllerExtension.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the View from the corresponding controller.
	* @return	oView The corresponding view instance
	*/
	public function getView( ):sap.ui.core.mvc.View;

	/**
	* Override the ControllerExtension class with the given custom extension definition.

Only public methods that are not final could be overridden. The lifecycle methods <code>onInit</code>, <code>onExit</code>, <code>onBeforeRendering</code> and <code>onAfterRendering</code> are added before or after the lifecycle functions of the original extension.

Example for <code>oExtension</code>: <pre>
{
    onInit: function() {
        ...
    },
    ...
}
</pre>

<b>Note:</b> This static method is automatically propagated to subclasses of <code>ControllerExtension</code>.
	* @param	oExtension The custom extension definition
	* @return	A controller extension class
	*/
	public static function override( oExtension:Dynamic):()->Void;
}

