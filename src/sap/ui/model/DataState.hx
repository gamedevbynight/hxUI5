package sap.ui.model;

@:native("sap.ui.model.DataState")

/**
* Provides and update the status data of a binding. Depending on the models state and controls state changes, the data state is used to propagated changes to a control. The control can react on these changes by implementing the <code>refreshDataState</code> method for the control. Here the data state object is passed as a parameter.

Using the {@link #getChanges getChanges} method the control can determine the changed properties and their old and new value. <pre>
    //sample implementation to handle message changes
    myControl.prototype.refreshDataState = function(oDataState) {
       var aMessages = oDataState.getChanges().messages;
       if (aMessages) {
           for (var i = 0; i &lt; aMessages.length; i++) {
               console.log(aMessages.message);
           }
       }
    }

    //sample implementation to handle laundering state
    myControl.prototype.refreshDataState = function(oDataState) {
       var bLaundering = oDataState.getChanges().laundering || false;
       this.setBusy(bLaundering);
    }

    //sample implementation to handle dirty state
    myControl.prototype.refreshDataState = function(oDataState) {
       if (oDataState.isDirty()) console.log("Control " + this.getId() + " is now dirty");
    }
</pre>

Using the {@link #getProperty getProperty} method the control can read the properties of the data state. The properties are <ul> <li><code>value</code> The value formatted by the formatter of the binding <li><code>originalValue</code> The original value of the model formatted by the formatter of the binding <li><code>invalidValue</code> The control value that was tried to be applied to the model but was rejected by a type validation <li><code>modelMessages</code> The messages that were applied to the binding by the <code>sap.ui.model.MessageModel</code> <li><code>controlMessages</code> The messages that were applied due to type validation errors <li><code>messages</code> All messages of the data state <li><code>dirty</code> true if the value was not yet confirmed by the server </ul>
*/
extern class DataState extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.model.DataState with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the changes of the data state in a map that the control can use in the <code>refreshDataState</code> method. The changed property's name is the key in the map. Each element in the map contains an object of below structure. <pre>
   {
       oldValue : The old value of the property,
       value    : The new value of the property
   }
</pre> The map only contains the changed properties.
	* @return	the changed of the data state
	*/
	public function getChanges( ):Dynamic;

	/**
	* Returns the array of state messages of the control or undefined.
	* @return	the array of messages of the control or null if no {link:sap.ui.core.messages.ModelManager ModelManager} is used.
	*/
	public function getControlMessages( ):Array<sap.ui.core.Message>;

	/**
	* Returns the dirty value of a binding that was rejected by a type validation. This value was of an incorrect type and could not be applied to the model. If the value was not rejected it will return null. In this case the current model value can be accessed using the <code>getValue</code> method.
	* @return	the value that was rejected or null
	*/
	public function getInvalidValue( ):Dynamic;

	/**
	* Returns the array of all state messages or null. This combines the model and control messages.
	* @return	the array of all messages or null if no {link:sap.ui.core.messages.ModelManager ModelManager} is used.
	*/
	public function getMessages( ):Array<sap.ui.core.Message>;

	/**
	* Returns a metadata object for class sap.ui.model.DataState.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the array of state messages of the model or undefined
	* @return	the array of messages of the model or null if no {link:sap.ui.core.messages.ModelManager ModelManager} is used.
	*/
	public function getModelMessages( ):Array<sap.ui.core.Message>;

	/**
	* Returns the formatted original value of the data. The original value is the last confirmed value.
	* @return	the original confirmed value of the server
	*/
	public function getOriginalValue( ):Dynamic;

	/**
	* Returns the formatted value of the data state.
	* @return	The value of the data.
	*/
	public function getValue( ):Dynamic;

	/**
	* Returns whether the data state is dirty in the UI control. A data state is dirty in the UI control if the entered value did not yet pass the type validation.
	* @return	true if the data state is dirty
	*/
	public function isControlDirty( ):Bool;

	/**
	* Returns whether the data state is dirty. A data state is dirty if the value was changed but is not yet confirmed by a server or the entered value did not yet pass the type validation.
	* @return	true if the data state is dirty
	*/
	public function isDirty( ):Bool;

	/**
	* Returns whether the data state is in laundering. If data is sent to the server, the data state becomes laundering until the data was accepted or rejected.
	* @return	true if the data is laundering
	*/
	public function isLaundering( ):Bool;

	/**
	* Sets an array of model state messages.
	* @param	the model messages for this data state.
	* @return	<code>this</code> to allow method chaining
	*/
	public function setModelMessages( the:Array<Dynamic>):sap.ui.model.DataState;
}

