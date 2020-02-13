package sap.m;

@:native("sap.m.WizardStep")

/**
* A container control used to aggregate user input controls as part of an sap.m.Wizard. <h3>Overview</h3> WizardStep gives the developer the ability to validate, invalidate the step and define subsequent steps. The WizardStep control control is supposed to be used only as an aggregation of the {@link sap.m.Wizard Wizard} control, and should not be used as a standalone one. <h3>Structure</h3> <ul> <li>Each wizard step has a title. Additionally it can have an icon.</li> <li>Each wizard step can be validated by setting the <code>validated</code> property. This action will trigger the rendering of the Next step button.</li> <li>If the execution needs to branch after a given step, you should set all possible next steps in the <code>subsequentSteps</code> aggregation.
*/
extern class WizardStep extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:WizardStepArgs):Void {})
	public function new(?mSettings:WizardStepArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.WizardStep;
	@:overload( function(vSubsequentStep:sap.ui.core.ID):sap.m.WizardStep{ })

	/**
	* Adds some subsequentStep into the association {@link #getSubsequentSteps subsequentSteps}.
	* @param	vSubsequentStep The subsequentSteps to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSubsequentStep( vSubsequentStep:sap.m.WizardStep):sap.m.WizardStep;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:activate activate} event of this <code>sap.m.WizardStep</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.WizardStep</code> itself.

This event is fired on next step activation from the Wizard.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.WizardStep</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachActivate( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.WizardStep;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:complete complete} event of this <code>sap.m.WizardStep</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.WizardStep</code> itself.

This event is fired after the user presses the Next button in the Wizard, or on <code>nextStep</code> method call from the app developer.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.WizardStep</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachComplete( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.WizardStep;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.WizardStep;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:activate activate} event of this <code>sap.m.WizardStep</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachActivate( fnFunction:()->Void, ?oListener:Dynamic):sap.m.WizardStep;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:complete complete} event of this <code>sap.m.WizardStep</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachComplete( fnFunction:()->Void, ?oListener:Dynamic):sap.m.WizardStep;

	/**
	* Creates a new subclass of class sap.m.WizardStep with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content of the Wizard Step.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getIcon icon}.

Determines the icon that is displayed for this step. The icon is visualized in the progress navigation part of the Wizard control. <b>Note:</b> In order for the icon to be displayed, each step in the Wizard should have this property defined, otherwise the default numbering will be displayed.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.m.WizardStep.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* ID of the element which is the current target of the association {@link #getNextStep nextStep}, or <code>null</code>.
	* @return	null
	*/
	public function getNextStep( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getOptional optional}.

Indicates whether or not the step is optional. When a step is optional an "(Optional)" label is displayed under the step's title.

Default value is <code>false</code>.
	* @return	Value of property <code>optional</code>
	*/
	public function getOptional( ):Bool;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getSubsequentSteps subsequentSteps}.
	* @return	null
	*/
	public function getSubsequentSteps( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getTitle title}.

Determines the title of the step. The title is visualized in the Wizard control.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getValidated validated}.

Indicates whether or not the step is validated. When a step is validated a Next button is visualized in the Wizard control.

Default value is <code>true</code>.
	* @return	Value of property <code>validated</code>
	*/
	public function getValidated( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.WizardStep;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls in the association named {@link #getSubsequentSteps subsequentSteps}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSubsequentSteps( ):Array<sap.ui.core.ID>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vSubsequentStep:Int):sap.ui.core.ID{ })
	@:overload( function(vSubsequentStep:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an subsequentStep from the association named {@link #getSubsequentSteps subsequentSteps}.
	* @param	vSubsequentStep The subsequentStep to be removed or its index or ID
	* @return	The removed subsequentStep or <code>null</code>
	*/
	public function removeSubsequentStep( vSubsequentStep:sap.m.WizardStep):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Determines the icon that is displayed for this step. The icon is visualized in the progress navigation part of the Wizard control. <b>Note:</b> In order for the icon to be displayed, each step in the Wizard should have this property defined, otherwise the default numbering will be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.WizardStep;
	@:overload( function(oNextStep:sap.ui.core.ID):sap.m.WizardStep{ })

	/**
	* Sets the associated {@link #getNextStep nextStep}.
	* @param	oNextStep ID of an element which becomes the new target of this nextStep association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNextStep( oNextStep:sap.m.WizardStep):sap.m.WizardStep;

	/**
	* Sets a new value for property {@link #getOptional optional}.

Indicates whether or not the step is optional. When a step is optional an "(Optional)" label is displayed under the step's title.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bOptional New value for property <code>optional</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOptional( bOptional:Bool):sap.m.WizardStep;

	/**
	* Sets a new value for property {@link #getTitle title}.

Determines the title of the step. The title is visualized in the Wizard control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.WizardStep;

	/**
	* Sets a new value for property {@link #getValidated validated}.

Indicates whether or not the step is validated. When a step is validated a Next button is visualized in the Wizard control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bValidated New value for property <code>validated</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValidated( bValidated:Bool):sap.m.WizardStep;
}

typedef WizardStepArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the title of the step. The title is visualized in the Wizard control.
	*/
	@:optional var title:String;

	/**
	* Determines the icon that is displayed for this step. The icon is visualized in the progress navigation part of the Wizard control. <b>Note:</b> In order for the icon to be displayed, each step in the Wizard should have this property defined, otherwise the default numbering will be displayed.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Indicates whether or not the step is validated. When a step is validated a Next button is visualized in the Wizard control.
	*/
	@:optional var validated:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates whether or not the step is optional. When a step is optional an "(Optional)" label is displayed under the step's title.
	*/
	@:optional var optional:haxe.extern.EitherType<String,Bool>;

    /**
    * The content of the Wizard Step.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The next button of the Wizard Step.
    */
	@:optional var _nextButton:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* This association is used only when the <code>enableBranching</code> property of the Wizard is set to true. Use the association to store the next steps that are about to come after the current. If this is going to be a final step - leave this association empty.
	*/
	@:optional var subsequentSteps:Array<haxe.extern.EitherType<String,sap.m.WizardStep>>;

	/**
	* The next step to be taken after the step is completed. Set this association value in the complete event of the current WizardStep.
	*/
	@:optional var nextStep:haxe.extern.EitherType<String,sap.m.WizardStep>;

	/**
	* This event is fired on next step activation from the Wizard.
	*/
	@:optional var activate:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* This event is fired after the user presses the Next button in the Wizard, or on <code>nextStep</code> method call from the app developer.
	*/
	@:optional var complete:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
