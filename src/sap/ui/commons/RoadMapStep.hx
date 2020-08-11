package sap.ui.commons;

@:native("sap.ui.commons.RoadMapStep")

/**
* Step used within a RoadMap Control.
*/
extern class RoadMapStep extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:RoadMapStepArgs):Void {})
	public function new(?mSettings:RoadMapStepArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.RoadMapStep with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Specifies whether the user shall be allowed to click a step, or not

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getLabel label}.

Label of the step
	* @return	Value of property <code>label</code>
	*/
	public function getLabel( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.RoadMapStep.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Step is visible

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Specifies whether the user shall be allowed to click a step, or not

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.commons.RoadMapStep;

	/**
	* Sets a new value for property {@link #getLabel label}.

Label of the step

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLabel New value for property <code>label</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabel( sLabel:String):sap.ui.commons.RoadMapStep;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Step is visible

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.ui.commons.RoadMapStep;
}

typedef RoadMapStepArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Label of the step
	*/
	@:optional var label:String;

	/**
	* Specifies whether the user shall be allowed to click a step, or not
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Step is visible
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;
}
