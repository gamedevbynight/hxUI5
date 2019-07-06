package sap.ui.layout.form;

@:native("sap.ui.layout.form.FormContainer")

/**
* A <code>FormContainer</code> represents a group inside a <code>Form</code>. It consists of <code>FormElements</code>. The rendering of the <code>FormContainer</code> is done by the <code>FormLayout</code> assigned to the <code>Form</code>.
*/
extern class FormContainer extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:FormContainerArgs):Void {})
	public function new(?mSettings:FormContainerArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.layout.form.FormContainer{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.layout.form.FormContainer;

	/**
	* Adds some formElement to the aggregation {@link #getFormElements formElements}.
	* @param	oFormElement The formElement to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addFormElement( oFormElement:sap.ui.layout.form.FormElement):sap.ui.layout.form.FormContainer;

	/**
	* Destroys all the formElements in the aggregation {@link #getFormElements formElements}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFormElements( ):sap.ui.layout.form.FormContainer;

	/**
	* Destroys the title in the aggregation {@link #getTitle title}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTitle( ):sap.ui.layout.form.FormContainer;

	/**
	* Destroys the toolbar in the aggregation {@link #getToolbar toolbar}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyToolbar( ):sap.ui.layout.form.FormContainer;

	/**
	* Creates a new subclass of class sap.ui.layout.form.FormContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getExpandable expandable}.

Defines if the <code>FormContainer</code> is expandable.

<b>Note:</b> The expander icon will only be shown if a <code>title</code> is set for the <code>FormContainer</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>expandable</code>
	*/
	public function getExpandable( ):Bool;

	/**
	* Gets current value of property {@link #getExpanded expanded}.

Container is expanded.

<b>Note:</b> This property only works if <code>expandable</code> is set to <code>true</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>expanded</code>
	*/
	public function getExpanded( ):Bool;

	/**
	* Gets content of aggregation {@link #getFormElements formElements}.

The <code>FormElements</code> contain the content (labels and fields) of the <code>FormContainers</code>.
	* @return	null
	*/
	public function getFormElements( ):Array<sap.ui.layout.form.FormElement>;

	/**
	* Returns a metadata object for class sap.ui.layout.form.FormContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets content of aggregation {@link #getTitle title}.

Title of the <code>FormContainer</code>. Can either be a <code>Title</code> element or a string. If a <code>Title</code> element is used, the style of the title can be set.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored.
	* @return	null
	*/
	public function getTitle( ):Dynamic;

	/**
	* Gets content of aggregation {@link #getToolbar toolbar}.

Toolbar of the <code>FormContainer</code>.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored. If a title is needed inside the <code>Toolbar</code> it must be added at content to the <code>Toolbar</code>. In this case add the <code>Title</code> to the <code>ariaLabelledBy</code> association.
	* @return	null
	*/
	public function getToolbar( ):sap.ui.core.Toolbar;

	/**
	* Gets current value of property {@link #getVisible visible}.

If set to <code>false</code>, the <code>FormContainer</code> is not rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.layout.form.FormElement</code> in the aggregation {@link #getFormElements formElements}. and returns its index if found or -1 otherwise.
	* @param	oFormElement The formElement whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfFormElement( oFormElement:sap.ui.layout.form.FormElement):Int;

	/**
	* Inserts a formElement into the aggregation {@link #getFormElements formElements}.
	* @param	oFormElement The formElement to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the formElement should be inserted at; for a negative value of <code>iIndex</code>, the formElement is inserted at position 0; for a value greater than the current size of the aggregation, the formElement is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertFormElement( oFormElement:sap.ui.layout.form.FormElement, iIndex:Int):sap.ui.layout.form.FormContainer;

	/**
	* Determines if the <code>FormContainer</code> is visible or not. Per default it just returns the value of the <code>visible</code> property. But this might be overwritten by inherited elements.

For rendering by <code>FormLayouts</code> this function has to be used instead of <code>getVisible</code>.
	* @return	If true, the <code>FormContainer</code> is visible, otherwise not
	*/
	public function isVisible( ):Bool;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getFormElements formElements}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllFormElements( ):Array<sap.ui.layout.form.FormElement>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vFormElement:Int):sap.ui.layout.form.FormElement{ })
	@:overload( function(vFormElement:String):sap.ui.layout.form.FormElement{ })

	/**
	* Removes a formElement from the aggregation {@link #getFormElements formElements}.
	* @param	vFormElement The formElement to remove or its index or id
	* @return	The removed formElement or <code>null</code>
	*/
	public function removeFormElement( vFormElement:sap.ui.layout.form.FormElement):sap.ui.layout.form.FormElement;

	/**
	* Sets a new value for property {@link #getExpandable expandable}.

Defines if the <code>FormContainer</code> is expandable.

<b>Note:</b> The expander icon will only be shown if a <code>title</code> is set for the <code>FormContainer</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bExpandable New value for property <code>expandable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExpandable( bExpandable:Bool):sap.ui.layout.form.FormContainer;

	/**
	* Sets a new value for property {@link #getExpanded expanded}.

Container is expanded.

<b>Note:</b> This property only works if <code>expandable</code> is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bExpanded New value for property <code>expanded</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExpanded( bExpanded:Bool):sap.ui.layout.form.FormContainer;
	@:overload( function(vTitle:sap.ui.core.Title):sap.ui.layout.form.FormContainer{ })

	/**
	* Sets the aggregated {@link #getTitle title}.
	* @param	vTitle The title to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( vTitle:String):sap.ui.layout.form.FormContainer;

	/**
	* Sets the aggregated {@link #getToolbar toolbar}.
	* @param	oToolbar The toolbar to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setToolbar( oToolbar:sap.ui.core.Toolbar):sap.ui.layout.form.FormContainer;

	/**
	* Sets a new value for property {@link #getVisible visible}.

If set to <code>false</code>, the <code>FormContainer</code> is not rendered.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.ui.layout.form.FormContainer;
}

typedef FormContainerArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Container is expanded.

<b>Note:</b> This property only works if <code>expandable</code> is set to <code>true</code>.
	*/
	@:optional var expanded:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines if the <code>FormContainer</code> is expandable.

<b>Note:</b> The expander icon will only be shown if a <code>title</code> is set for the <code>FormContainer</code>.
	*/
	@:optional var expandable:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to <code>false</code>, the <code>FormContainer</code> is not rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

    /**
    * The <code>FormElements</code> contain the content (labels and fields) of the <code>FormContainers</code>.
    */
	@:optional var formElements:Array<haxe.extern.EitherType<String,sap.ui.layout.form.FormElement>>;

    /**
    * Title of the <code>FormContainer</code>. Can either be a <code>Title</code> element or a string. If a <code>Title</code> element is used, the style of the title can be set.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored.
    */
	@:optional var title:haxe.extern.EitherType<String,sap.ui.core.Title>;

    /**
    * Toolbar of the <code>FormContainer</code>.

<b>Note:</b> If a <code>Toolbar</code> is used, the <code>Title</code> is ignored. If a title is needed inside the <code>Toolbar</code> it must be added at content to the <code>Toolbar</code>. In this case add the <code>Title</code> to the <code>ariaLabelledBy</code> association.
    */
	@:optional var toolbar:haxe.extern.EitherType<String,sap.ui.core.Toolbar>;

    /**
    * null
    */
	@:optional var _expandButton:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association to controls / IDs that label this control (see WAI-ARIA attribute <code>aria-labelledby</code>).

<b>Note:</b> This attribute is only rendered if the <code>FormContainer</code> has it's own DOM representation in the used <code>FormLayout</code>.
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
