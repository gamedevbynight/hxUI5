package sap.m;

@:native("sap.m.Wizard")

/**
* Enables users to accomplish a single goal which consists of multiple dependable sub-tasks. <h3>Overview</h3> The sap.m.Wizard helps users complete a complex and unfamiliar task by dividing it into sections and guiding the user through it. The wizard has two main areas - a navigation area at the top showing the step sequence and a content area below it. <h3>Structure</h3> <h4>Navigation Area</h4> The top most area of the wizard is occupied by the navigation area. It shows the sequence of {@link sap.m.WizardStep wizard steps}. <ul> <li>The minimum number of steps is 3 and the maximum is 8 and are stored in the <code>steps</code> aggregation.</li> <li>Steps can be branching depending on choices the user made in their input - this is set by the <code>enableBranching</code> property. </li> <li>Steps can have different visual representations - numbers or icons. You can add labels for better readability </li> </ul> <h4>Content</h4> The content occupies the main part of the page. It can hold any type of input controls. The content is kept in {@link sap.m.WizardStep wizard steps}. <h4>Next Step Button</h4> The next step button is displayed below the content. It can be hidden by setting <code>showNextButton</code> to <code>false</code> and displayed, for example, only after the user has filled all mandatory fields. <h3>Usage</h3> <h4>When to use:</h4> When the user has to accomplish a long or unfamiliar task. <h4>When not to use:</h4> When the user has to accomplish a routine task that is clear and familiar. When the task has only two steps or less. <h3>Responsive Behavior</h3> On mobile devices the steps in the StepNavigator are grouped together and overlap. Tapping on them will show a popover to select the step to navigate to.

When using the sap.m.Wizard in SAP Quartz theme, the breakpoints and layout paddings could be determined by the container's width. To enable this concept and add responsive paddings to the navigation area and to the content of the Wizard control, you may add the following classes depending on your use case: <code>sapUiResponsivePadding--header</code>, <code>sapUiResponsivePadding--content</code>.

As the <code>sap.m.Wizard</code> is a layout control, when used in the {@link sap.f.DynamicPage}, the {@link sap.f.DynamicPage}'s <code>fitContent</code> property needs to be set to 'true' so that the scroll handling is left to the <code>sap.m.Wizard</code> control. Also, in order to achieve the target Fiori design, the <code>sapUiNoContentPadding</code> class needs to be added to the {@link sap.f.DynamicPage} as well as <code>sapUiResponsivePadding--header</code>, <code>sapUiResponsivePadding--content</code> to the <code>sap.m.Wizard</code>.
*/
extern class Wizard extends sap.ui.core.Control implements sap.f.IDynamicPageStickyContent
{
	@:overload(function(?sId:String, ?mSettings:WizardArgs):Void {})
	public function new(?mSettings:WizardArgs):Void;

	/**
	* Adds a new step to the Wizard.
	* @param	oWizardStep New WizardStep to add to the Wizard.
	* @return	Pointer to the control instance for chaining.
	*/
	public function addStep( oWizardStep:sap.m.WizardStep):sap.m.Wizard;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:complete complete} event of this <code>sap.m.Wizard</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Wizard</code> itself.

The complete event is fired when the user clicks the finish button of the Wizard. The finish button is only available on the last step of the Wizard.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Wizard</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachComplete( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Wizard;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:stepActivate stepActivate} event of this <code>sap.m.Wizard</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Wizard</code> itself.

The StepActivated event is fired every time a new step is activated.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Wizard</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachStepActivate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.Wizard;

	/**
	* Destroys all aggregated steps in the Wizard.
	* @return	Pointer to the control instance for chaining.
	*/
	public function destroySteps( ):sap.m.Wizard;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:complete complete} event of this <code>sap.m.Wizard</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachComplete( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Wizard;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:stepActivate stepActivate} event of this <code>sap.m.Wizard</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachStepActivate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.Wizard;

	/**
	* Discards all progress done from the given step(incl.) to the end of the wizard. The verified state of the steps is returned to the initial provided.
	* @param	oStep The step after which the progress is discarded.
	* @param	bPreserveNextStep Indicating whether we should preserve next step
	* @return	Pointer to the control instance for chaining.
	*/
	public function discardProgress( oStep:sap.m.WizardStep, bPreserveNextStep:Bool):sap.m.Wizard;

	/**
	* Creates a new subclass of class sap.m.Wizard with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

This property is used to set the background color of a Wizard content. The <code>Standard</code> option with the default background color is used, if not specified.

Default value is <code>Standard</code>.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.PageBackgroundDesign;

	/**
	* ID of the element which is the current target of the association {@link #getCurrentStep currentStep}, or <code>null</code>.
	* @return	null
	*/
	public function getCurrentStep( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getEnableBranching enableBranching}.

Enables the branching functionality of the Wizard. Branching gives the developer the ability to define multiple routes a user is able to take based on the input in the current step. It is up to the developer to programmatically check for what is the input in the current step and set a concrete next step amongst the available subsequent steps. Note: If this property is set to false, <code>next</code> and <code>subSequentSteps</code> associations of the WizardStep control are ignored.

Default value is <code>false</code>.
	* @return	Value of property <code>enableBranching</code>
	*/
	public function getEnableBranching( ):Bool;

	/**
	* Returns the finish button text which will be rendered.
	* @return	The text which will be rendered in the finish button.
	*/
	public function getFinishButtonText( ):String;

	/**
	* Gets current value of property {@link #getHeight height}.

Determines the height of the Wizard.

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.m.Wizard.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Returns the number of the last activated step in the Wizard.
	* @return	The last activated step.
	*/
	public function getProgress( ):String;

	/**
	* Returns the last activated step in the Wizard.
	* @return	Pointer to the control instance for chaining.
	*/
	public function getProgressStep( ):sap.m.WizardStep;

	/**
	* Gets current value of property {@link #getShowNextButton showNextButton}.

Controls the visibility of the next button. The developers can choose to control the flow of the steps either through the API (with <code>nextStep</code> and <code>previousStep</code> methods) or let the user click the next button, and control it with <code>validateStep</code> or <code>invalidateStep</code> methods.

Default value is <code>true</code>.
	* @return	Value of property <code>showNextButton</code>
	*/
	public function getShowNextButton( ):Bool;

	/**
	* Gets content of aggregation {@link #getSteps steps}.

The wizard steps to be included in the content of the control.
	* @return	null
	*/
	public function getSteps( ):Array<sap.m.WizardStep>;

	/**
	* Gets current value of property {@link #getWidth width}.

Determines the width of the Wizard.

Default value is <code>auto</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Goes to the given step. The step must already be activated and visible. You can't use this method on steps that haven't been reached yet.
	* @param	oStep The step to go to.
	* @param	bFocusFirstStepElement Defines whether the focus should be changed to the first element.
	* @return	Pointer to the control instance for chaining.
	*/
	public function goToStep( oStep:sap.m.WizardStep, bFocusFirstStepElement:Bool):sap.m.Wizard;

	/**
	* Checks for the provided <code>sap.m.WizardStep</code> in the aggregation {@link #getSteps steps}. and returns its index if found or -1 otherwise.
	* @param	oStep The step whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfStep( oStep:sap.m.WizardStep):Int;

	/**
	* Invalidates the given step.
	* @param	oStep The step to be invalidated.
	* @return	Pointer to the control instance for chaining.
	*/
	public function invalidateStep( oStep:sap.m.WizardStep):sap.m.Wizard;

	/**
	* Validates the current step, and moves one step further.
	* @return	Pointer to the control instance for chaining.
	*/
	public function nextStep( ):sap.m.Wizard;

	/**
	* Discards the current step and goes one step back.
	* @return	Pointer to the control instance for chaining.
	*/
	public function previousStep( ):sap.m.Wizard;

	/**
	* Removes all steps from the Wizard.
	* @return	Pointer to the Steps that were removed.
	*/
	public function removeAllSteps( ):Array<sap.m.WizardStep>;
	@:overload( function(vStepId:sap.m.WizardStep):sap.m.Wizard{ })

	/**
	* Sets association currentStep to the given step.
	* @param	vStepId The step of the wizard that will be currently activated (meaning the last step).
	* @return	Reference to the control instance for chaining.
	*/
	public function setCurrentStep( vStepId:String):sap.m.Wizard;

	/**
	* Sets a new value for property {@link #getEnableBranching enableBranching}.

Enables the branching functionality of the Wizard. Branching gives the developer the ability to define multiple routes a user is able to take based on the input in the current step. It is up to the developer to programmatically check for what is the input in the current step and set a concrete next step amongst the available subsequent steps. Note: If this property is set to false, <code>next</code> and <code>subSequentSteps</code> associations of the WizardStep control are ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableBranching New value for property <code>enableBranching</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableBranching( ?bEnableBranching:Bool):sap.m.Wizard;

	/**
	* Sets a new value for property {@link #getFinishButtonText finishButtonText}.

Changes the text of the finish button for the last step. This property can be used only if <code>showNextButton</code> is set to true. By default the text of the button is "Review".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Review</code>.
	* @param	sFinishButtonText New value for property <code>finishButtonText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFinishButtonText( ?sFinishButtonText:String):sap.m.Wizard;

	/**
	* Sets a new value for property {@link #getHeight height}.

Determines the height of the Wizard.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.m.Wizard;

	/**
	* Sets the visibility of the next button.
	* @param	bValue True to show the button or false to hide it.
	* @return	Reference to the control instance for chaining.
	*/
	public function setShowNextButton( bValue:Bool):sap.m.Wizard;

	/**
	* Sets a new value for property {@link #getWidth width}.

Determines the width of the Wizard.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.m.Wizard;

	/**
	* Validates the given step.
	* @param	oStep The step to be validated.
	* @return	Pointer to the control instance for chaining.
	*/
	public function validateStep( oStep:sap.m.WizardStep):sap.m.Wizard;
}

typedef WizardArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the width of the Wizard.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Determines the height of the Wizard.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Controls the visibility of the next button. The developers can choose to control the flow of the steps either through the API (with <code>nextStep</code> and <code>previousStep</code> methods) or let the user click the next button, and control it with <code>validateStep</code> or <code>invalidateStep</code> methods.
	*/
	@:optional var showNextButton:haxe.extern.EitherType<String,Bool>;

	/**
	* Changes the text of the finish button for the last step. This property can be used only if <code>showNextButton</code> is set to true. By default the text of the button is "Review".
	*/
	@:optional var finishButtonText:String;

	/**
	* Enables the branching functionality of the Wizard. Branching gives the developer the ability to define multiple routes a user is able to take based on the input in the current step. It is up to the developer to programmatically check for what is the input in the current step and set a concrete next step amongst the available subsequent steps. Note: If this property is set to false, <code>next</code> and <code>subSequentSteps</code> associations of the WizardStep control are ignored.
	*/
	@:optional var enableBranching:haxe.extern.EitherType<String,Bool>;

	/**
	* This property is used to set the background color of a Wizard content. The <code>Standard</code> option with the default background color is used, if not specified.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.PageBackgroundDesign>;

    /**
    * The wizard steps to be included in the content of the control.
    */
	@:optional var steps:Array<haxe.extern.EitherType<String,sap.m.WizardStep>>;

    /**
    * The progress navigator for the wizard.
    */
	@:optional var _progressNavigator:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The next button for the wizard.
    */
	@:optional var _nextButton:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* This association controls the current activated step of the wizard (meaning the last step) For example if we have A->B->C->D steps, we are on step A and we setCurrentStep(C) A,B and C are going to be activated. D will still remain unvisited. The parameter needs to be a Wizard step that is part of the current Wizard
	*/
	@:optional var currentStep:haxe.extern.EitherType<String,sap.m.WizardStep>;

	/**
	* The complete event is fired when the user clicks the finish button of the Wizard. The finish button is only available on the last step of the Wizard.
	*/
	@:optional var complete:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* The StepActivated event is fired every time a new step is activated.
	*/
	@:optional var stepActivate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
