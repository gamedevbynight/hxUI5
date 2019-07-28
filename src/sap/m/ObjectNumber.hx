package sap.m;

@:native("sap.m.ObjectNumber")

/**
* The ObjectNumber control displays number and number unit properties for an object. The number can be displayed using semantic colors to provide additional meaning about the object to the user.

With 1.63, large design of the control is supported by setting <code>sapMObjectNumberLarge</code> CSS class to the <code>ObjectNumber</code>.

<b>Note:</b> To fulfill the design guidelines when you are using <code>sapMObjectNumberLarge</code> CSS class set the <code>emphasized</code> property to <code>false</code>.
*/
extern class ObjectNumber extends sap.ui.core.Control implements sap.ui.core.IFormContent
{
	@:overload(function(?sId:String, ?mSettings:ObjectNumberArgs):Void {})
	public function new(?mSettings:ObjectNumberArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.ObjectNumber{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.ObjectNumber;

	/**
	* Creates a new subclass of class sap.m.ObjectNumber with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets current value of property {@link #getEmphasized emphasized}.

Indicates if the object number should appear emphasized.

Default value is <code>true</code>.
	* @return	Value of property <code>emphasized</code>
	*/
	public function getEmphasized( ):Bool;

	/**
	* Returns a metadata object for class sap.m.ObjectNumber.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getNumber number}.

Defines the number field.
	* @return	Value of property <code>number</code>
	*/
	public function getNumber( ):String;

	/**
	* Gets current value of property {@link #getState state}.

Determines the object number's value state. Setting this state will cause the number to be rendered in state-specific colors.

Default value is <code>None</code>.
	* @return	Value of property <code>state</code>
	*/
	public function getState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the number and unit.

Default value is <code>Begin</code>.
	* @return	Value of property <code>textAlign</code>
	*/
	public function getTextAlign( ):sap.ui.core.TextAlign;

	/**
	* Gets current value of property {@link #getTextDirection textDirection}.

Available options for the number and unit text direction are LTR(left-to-right) and RTL(right-to-left). By default, the control inherits the text direction from its parent control.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>textDirection</code>
	*/
	public function getTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getUnit unit}.

Defines the number units qualifier. If numberUnit and unit are both set, the unit value is used.
	* @return	Value of property <code>unit</code>
	*/
	public function getUnit( ):String;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getEmphasized emphasized}.

Indicates if the object number should appear emphasized.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEmphasized New value for property <code>emphasized</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEmphasized( bEmphasized:Bool):sap.m.ObjectNumber;

	/**
	* Sets a new value for property {@link #getNumber number}.

Defines the number field.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNumber New value for property <code>number</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumber( sNumber:String):sap.m.ObjectNumber;

	/**
	* Sets a new value for property {@link #getState state}.

Determines the object number's value state. Setting this state will cause the number to be rendered in state-specific colors.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sState New value for property <code>state</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setState( sState:sap.ui.core.ValueState):sap.m.ObjectNumber;

	/**
	* Sets a new value for property {@link #getTextAlign textAlign}.

Sets the horizontal alignment of the number and unit.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Begin</code>.
	* @param	sTextAlign New value for property <code>textAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextAlign( sTextAlign:sap.ui.core.TextAlign):sap.m.ObjectNumber;

	/**
	* Sets a new value for property {@link #getTextDirection textDirection}.

Available options for the number and unit text direction are LTR(left-to-right) and RTL(right-to-left). By default, the control inherits the text direction from its parent control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTextDirection New value for property <code>textDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTextDirection( sTextDirection:sap.ui.core.TextDirection):sap.m.ObjectNumber;

	/**
	* Sets a new value for property {@link #getUnit unit}.

Defines the number units qualifier. If numberUnit and unit are both set, the unit value is used.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sUnit New value for property <code>unit</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUnit( sUnit:String):sap.m.ObjectNumber;
}

typedef ObjectNumberArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the number field.
	*/
	@:optional var number:String;

	/**
	* Indicates if the object number should appear emphasized.
	*/
	@:optional var emphasized:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the object number's value state. Setting this state will cause the number to be rendered in state-specific colors.
	*/
	@:optional var state:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* Defines the number units qualifier. If numberUnit and unit are both set, the unit value is used.
	*/
	@:optional var unit:String;

	/**
	* Available options for the number and unit text direction are LTR(left-to-right) and RTL(right-to-left). By default, the control inherits the text direction from its parent control.
	*/
	@:optional var textDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Sets the horizontal alignment of the number and unit.
	*/
	@:optional var textAlign:haxe.extern.EitherType<String,sap.ui.core.TextAlign>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
