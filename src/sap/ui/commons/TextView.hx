package sap.ui.commons;

@:native("sap.ui.commons.TextView")

/**
* Is used to display some continous text. The control can inherit the text direction from its parent control.
*/
extern class TextView extends sap.ui.core.Control implements sap.ui.commons.ToolbarItem implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:TextViewArgs):Void {})
	public function new(?mSettings:TextViewArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.TextView{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.TextView;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.TextView{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.TextView;

	/**
	* Binds property {@link #getText text} to model data.

See {@link sap.ui.base.ManagedObject#bindProperty ManagedObject.bindProperty} for a detailed description of the possible properties of <code>oBindingInfo</code>
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindText( oBindingInfo:Dynamic):sap.ui.commons.TextView;

	/**
	* Creates a new subclass of class sap.ui.commons.TextView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAccessibleRole accessibleRole}.

The ARIA role for the control.
	* @return	Value of property <code>accessibleRole</code>
	*/
	public function getAccessibleRole( ):sap.ui.core.AccessibleRole;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getDesign design}.

Defines the visual appearance of the control.

Default value is <code>Standard</code>.
	* @return	Value of property <code>design</code>
	*/
	public function getDesign( ):sap.ui.commons.TextViewDesign;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Switches the enabled state of the control. When the control is disabled, it is greyed out and no longer focusable.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getHelpId helpId}.

Unique identifier used for help services.

Default value is <code>empty string</code>.
	* @return	Value of property <code>helpId</code>
	*/
	public function getHelpId( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.TextView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSemanticColor semanticColor}.

Semantic color of the text View

Default value is <code>Default</code>.
	* @return	Value of property <code>semanticColor</code>
	*/
	public function getSemanticColor( ):sap.ui.commons.TextViewColor;

	/**
	* Gets current value of property {@link #getText text}.

Text to be displayed.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text.

Default value is <code>Begin</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Determines the text directionality. Available options are LTR and RTL. Alternatively, the control can inherit the text direction from its parent control.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getWidth width}.

Width of the TextView
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Disabled automatic wrapping of the text.

Default value is <code>true</code>.
	* @return	Value of property <code>wrapping</code>
	*/
	public function getWrapping( ):Bool;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getAccessibleRole accessibleRole}.

The ARIA role for the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAccessibleRole New value for property <code>accessibleRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAccessibleRole( sAccessibleRole:sap.ui.core.AccessibleRole):sap.ui.commons.TextView;

	/**
	* Sets a new value for property {@link #getDesign design}.

Defines the visual appearance of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Standard</code>.
	* @param	sDesign New value for property <code>design</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDesign( ?sDesign:sap.ui.commons.TextViewDesign):sap.ui.commons.TextView;

	/**
	* Sets a new value for property {@link #getEnabled enabled}.

Switches the enabled state of the control. When the control is disabled, it is greyed out and no longer focusable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnabled New value for property <code>enabled</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnabled( ?bEnabled:Bool):sap.ui.commons.TextView;

	/**
	* Sets a new value for property {@link #getHelpId helpId}.

Unique identifier used for help services.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHelpId New value for property <code>helpId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHelpId( ?sHelpId:String):sap.ui.commons.TextView;

	/**
	* Sets a new value for property {@link #getSemanticColor semanticColor}.

Semantic color of the text View

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Default</code>.
	* @param	sSemanticColor New value for property <code>semanticColor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSemanticColor( ?sSemanticColor:sap.ui.commons.TextViewColor):sap.ui.commons.TextView;

	/**
	* Sets a new value for property {@link #getText text}.

Text to be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.ui.commons.TextView;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( ?sTextAlign:sap.ui.core.TextAlign):sap.ui.commons.TextView;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Determines the text directionality. Available options are LTR and RTL. Alternatively, the control can inherit the text direction from its parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( ?sTextDirection:sap.ui.core.TextDirection):sap.ui.commons.TextView;

	/**
	* Sets a new value for property {@link #getWidth width}.

Width of the TextView

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.TextView;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Disabled automatic wrapping of the text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( ?bWrapping:Bool):sap.ui.commons.TextView;

	/**
	* Unbinds property {@link #getText text} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindText( ):sap.ui.commons.TextView;
}

typedef TextViewArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Text to be displayed.
	*/
	@:optional var text:String;

	/**
	* Determines the text directionality. Available options are LTR and RTL. Alternatively, the control can inherit the text direction from its parent control.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Switches the enabled state of the control. When the control is disabled, it is greyed out and no longer focusable.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Unique identifier used for help services.
	*/
	@:optional var helpId:String;

	/**
	* The ARIA role for the control.
	*/
	@:optional var accessibleRole:haxe.extern.EitherType<String,sap.ui.core.AccessibleRole>;

	/**
	* Defines the visual appearance of the control.
	*/
	@:optional var design:haxe.extern.EitherType<String,sap.ui.commons.TextViewDesign>;

	/**
	* Disabled automatic wrapping of the text.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,Bool>;

	/**
	* Semantic color of the text View
	*/
	@:optional var semanticColor:haxe.extern.EitherType<String,sap.ui.commons.TextViewColor>;

	/**
	* Sets the horizontal alignment of the text.
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Width of the TextView
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Association to controls / IDs which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
