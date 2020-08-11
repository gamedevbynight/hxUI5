package sap.m;

@:native("sap.m.SelectionDetailsItemFacade")

/**
* The public facade of the {@link sap.m.SelectionDetailsItem} element.
*/
extern class SelectionDetailsItemFacade
{
public function new():Void;

	/**
	* Adds some action to the aggregation {@link #getActions actions}.
	* @param	oAction The action to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function addAction( oAction:sap.ui.core.Item):sap.m.SelectionDetailsItem;

	/**
	* Gets current value of property {@link #getEnableNav enableNav}.

Determines whether or not the item is active and a navigation event is triggered on press.

Default value is <code>false</code>.
	* @return	Value of property <code>enableNav</code>
	*/
	public static function getEnableNav( ):Bool;
	@:overload( function(vAction:Int):sap.ui.core.Item{ })
	@:overload( function(vAction:String):sap.ui.core.Item{ })

	/**
	* Removes a action from the aggregation {@link #getActions actions}.
	* @param	vAction The action to remove or its index or id
	* @return	The removed action or <code>null</code>
	*/
	public static function removeAction( vAction:sap.ui.core.Item):sap.ui.core.Item;

	/**
	* Sets a new value for property {@link #getEnableNav enableNav}.

Determines whether or not the item is active and a navigation event is triggered on press.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bEnableNav New value for property <code>enableNav</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public static function setEnableNav( ?bEnableNav:Bool):sap.m.SelectionDetailsItem;
}

