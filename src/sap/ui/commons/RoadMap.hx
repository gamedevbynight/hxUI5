package sap.ui.commons;

@:native("sap.ui.commons.RoadMap")

/**
* RoadMap is used to display step-by-step work flows of a clearly defined work process.
*/
extern class RoadMap extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:RoadMapArgs):Void {})
	public function new(?mSettings:RoadMapArgs):Void;

	/**
	* Adds some step to the aggregation {@link #getSteps steps}.
	* @param	oStep The step to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addStep( oStep:sap.ui.commons.RoadMapStep):sap.ui.commons.RoadMap;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:stepExpanded stepExpanded} event of this <code>sap.ui.commons.RoadMap</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.RoadMap</code> itself.

Event is fired when a given step is expanded or collapsed by user.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.RoadMap</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStepExpanded( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RoadMap;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:stepSelected stepSelected} event of this <code>sap.ui.commons.RoadMap</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.RoadMap</code> itself.

Event is fired when the user selects a step.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.RoadMap</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStepSelected( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RoadMap;

	/**
	* Destroys all the steps in the aggregation {@link #getSteps steps}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySteps( ):sap.ui.commons.RoadMap;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:stepExpanded stepExpanded} event of this <code>sap.ui.commons.RoadMap</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStepExpanded( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RoadMap;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:stepSelected stepSelected} event of this <code>sap.ui.commons.RoadMap</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStepSelected( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.RoadMap;

	/**
	* Creates a new subclass of class sap.ui.commons.RoadMap with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getFirstVisibleStep firstVisibleStep}.

ID of the first step to be displayed
	* @return	Value of property <code>firstVisibleStep</code>
	*/
	public function getFirstVisibleStep( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.RoadMap.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNumberOfVisibleSteps numberOfVisibleSteps}.

Total number of steps to be displayed at once
	* @return	Value of property <code>numberOfVisibleSteps</code>
	*/
	public function getNumberOfVisibleSteps( ):Int;

	/**
	* Gets current value of property {@link #getSelectedStep selectedStep}.

ID of the step which is currently selected
	* @return	Value of property <code>selectedStep</code>
	*/
	public function getSelectedStep( ):String;

	/**
	* Gets content of aggregation {@link #getSteps steps}.

Steps that are composing the RoadMap
	* @return	null
	*/
	public function getSteps( ):Array<sap.ui.commons.RoadMapStep>;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the control width in CSS size

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.commons.RoadMapStep</code> in the aggregation {@link #getSteps steps}. and returns its index if found or -1 otherwise.
	* @param	oStep The step whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfStep( oStep:sap.ui.commons.RoadMapStep):Int;

	/**
	* Inserts a step into the aggregation {@link #getSteps steps}.
	* @param	oStep The step to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the step should be inserted at; for a negative value of <code>iIndex</code>, the step is inserted at position 0; for a value greater than the current size of the aggregation, the step is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertStep( oStep:sap.ui.commons.RoadMapStep, iIndex:Int):sap.ui.commons.RoadMap;

	/**
	* Removes all the controls from the aggregation {@link #getSteps steps}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSteps( ):Array<sap.ui.commons.RoadMapStep>;
	@:overload( function(vStep:Int):sap.ui.commons.RoadMapStep{ })
	@:overload( function(vStep:String):sap.ui.commons.RoadMapStep{ })

	/**
	* Removes a step from the aggregation {@link #getSteps steps}.
	* @param	vStep The step to remove or its index or id
	* @return	The removed step or <code>null</code>
	*/
	public function removeStep( vStep:sap.ui.commons.RoadMapStep):sap.ui.commons.RoadMapStep;

	/**
	* Sets a new value for property {@link #getFirstVisibleStep firstVisibleStep}.

ID of the first step to be displayed

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFirstVisibleStep New value for property <code>firstVisibleStep</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFirstVisibleStep( sFirstVisibleStep:String):sap.ui.commons.RoadMap;

	/**
	* Sets a new value for property {@link #getNumberOfVisibleSteps numberOfVisibleSteps}.

Total number of steps to be displayed at once

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iNumberOfVisibleSteps New value for property <code>numberOfVisibleSteps</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumberOfVisibleSteps( iNumberOfVisibleSteps:Int):sap.ui.commons.RoadMap;

	/**
	* Sets a new value for property {@link #getSelectedStep selectedStep}.

ID of the step which is currently selected

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSelectedStep New value for property <code>selectedStep</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedStep( sSelectedStep:String):sap.ui.commons.RoadMap;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the control width in CSS size

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.RoadMap;
}

typedef RoadMapArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Total number of steps to be displayed at once
	*/
	@:optional var numberOfVisibleSteps:haxe.extern.EitherType<String,Int>;

	/**
	* ID of the first step to be displayed
	*/
	@:optional var firstVisibleStep:String;

	/**
	* ID of the step which is currently selected
	*/
	@:optional var selectedStep:String;

	/**
	* Determines the control width in CSS size
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * Steps that are composing the RoadMap
    */
	@:optional var steps:Array<haxe.extern.EitherType<String,sap.ui.commons.RoadMapStep>>;

	/**
	* Event is fired when a given step is expanded or collapsed by user.
	*/
	@:optional var stepExpanded:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when the user selects a step.
	*/
	@:optional var stepSelected:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
