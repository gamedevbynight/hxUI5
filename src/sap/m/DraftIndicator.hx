package sap.m;

@:native("sap.m.DraftIndicator")

/**
* A draft indicator is {@link sap.m.Label}.
*/
extern class DraftIndicator extends sap.ui.core.Control
{

	/**
	* 
	* @param	sId ID for the new control, generated automatically if no ID is given
	* @return	Object
	*/
	public function new( ?sId:String):Void;

	/**
	* Clears the indicator state
	* @return	Void
	*/
	public function clearDraftState( ):Void;

	/**
	* Creates a new subclass of class sap.m.DraftIndicator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.DraftIndicator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getMinDisplayTime minDisplayTime}.

Minimum time in milliseconds for showing the draft indicator

Default value is <code>1500</code>.
	* @return	Value of property <code>minDisplayTime</code>
	*/
	public function getMinDisplayTime( ):Int;

	/**
	* Gets current value of property {@link #getState state}.

State of the indicator. Could be "Saving", "Saved" and "Clear".

Default value is <code>Clear</code>.
	* @return	Value of property <code>state</code>
	*/
	public function getState( ):sap.m.DraftIndicatorState;

	/**
	* Sets a new value for property {@link #getMinDisplayTime minDisplayTime}.

Minimum time in milliseconds for showing the draft indicator

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1500</code>.
	* @param	iMinDisplayTime New value for property <code>minDisplayTime</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinDisplayTime( iMinDisplayTime:Int):sap.m.DraftIndicator;

	/**
	* Sets a new value for property {@link #getState state}.

State of the indicator. Could be "Saving", "Saved" and "Clear".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Clear</code>.
	* @param	sState New value for property <code>state</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setState( sState:sap.m.DraftIndicatorState):sap.m.DraftIndicator;

	/**
	* Sets the indicator in "Saved" state
	* @return	Void
	*/
	public function showDraftSaved( ):Void;

	/**
	* Sets the indicator in "Saving..." state
	* @return	Void
	*/
	public function showDraftSaving( ):Void;
}

