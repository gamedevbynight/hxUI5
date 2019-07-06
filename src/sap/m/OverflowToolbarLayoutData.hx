package sap.m;

@:native("sap.m.OverflowToolbarLayoutData")

/**
* Holds layout data for the {@link sap.m.OverflowToolbar} items.
*/
extern class OverflowToolbarLayoutData extends sap.m.ToolbarLayoutData
{
	@:overload(function(?sId:String, ?mSettings:OverflowToolbarLayoutDataArgs):Void {})
	public function new(?mSettings:OverflowToolbarLayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.m.OverflowToolbarLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ToolbarLayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCloseOverflowOnInteraction closeOverflowOnInteraction}.

Defines whether the overflow area is automatically closed when interacting with a control in it

Default value is <code>true</code>.
	* @return	Value of property <code>closeOverflowOnInteraction</code>
	*/
	public function getCloseOverflowOnInteraction( ):Bool;

	/**
	* Gets current value of property {@link #getGroup group}.

Defines OverflowToolbar items group number. Default value is 0, which means that the control does not belong to any group. Elements that belong to a group overflow together. The overall priority of the group is defined by the element with highest priority. Elements that belong to a group are not allowed to have AlwaysOverflow or NeverOverflow priority.

Default value is <code>0</code>.
	* @return	Value of property <code>group</code>
	*/
	public function getGroup( ):Int;

	/**
	* Returns a metadata object for class sap.m.OverflowToolbarLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getPriority priority}.

Defines OverflowToolbar items priority, Available priorities ate NeverOverflow, High, Low, Disappear and AlwaysOverflow

Default value is <code>High</code>.
	* @return	Value of property <code>priority</code>
	*/
	public function getPriority( ):sap.m.OverflowToolbarPriority;

	/**
	* Sets a new value for property {@link #getCloseOverflowOnInteraction closeOverflowOnInteraction}.

Defines whether the overflow area is automatically closed when interacting with a control in it

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bCloseOverflowOnInteraction New value for property <code>closeOverflowOnInteraction</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCloseOverflowOnInteraction( bCloseOverflowOnInteraction:Bool):sap.m.OverflowToolbarLayoutData;

	/**
	* Sets a new value for property {@link #getGroup group}.

Defines OverflowToolbar items group number. Default value is 0, which means that the control does not belong to any group. Elements that belong to a group overflow together. The overall priority of the group is defined by the element with highest priority. Elements that belong to a group are not allowed to have AlwaysOverflow or NeverOverflow priority.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iGroup New value for property <code>group</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroup( iGroup:Int):sap.m.OverflowToolbarLayoutData;

	/**
	* Sets a new value for property {@link #getPriority priority}.

Defines OverflowToolbar items priority, Available priorities ate NeverOverflow, High, Low, Disappear and AlwaysOverflow

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>High</code>.
	* @param	sPriority New value for property <code>priority</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPriority( sPriority:sap.m.OverflowToolbarPriority):sap.m.OverflowToolbarLayoutData;
}

typedef OverflowToolbarLayoutDataArgs = sap.m.ToolbarLayoutData.ToolbarLayoutDataArgs & {

	/**
	* Defines OverflowToolbar items priority, Available priorities ate NeverOverflow, High, Low, Disappear and AlwaysOverflow
	*/
	@:optional var priority:haxe.extern.EitherType<String,sap.m.OverflowToolbarPriority>;

	/**
	* Defines OverflowToolbar items group number. Default value is 0, which means that the control does not belong to any group. Elements that belong to a group overflow together. The overall priority of the group is defined by the element with highest priority. Elements that belong to a group are not allowed to have AlwaysOverflow or NeverOverflow priority.
	*/
	@:optional var group:haxe.extern.EitherType<String,Int>;

	/**
	* Defines whether the overflow area is automatically closed when interacting with a control in it
	*/
	@:optional var closeOverflowOnInteraction:haxe.extern.EitherType<String,Bool>;
}
