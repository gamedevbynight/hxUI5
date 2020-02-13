package sap.m;

@:native("sap.m.ActionSelect")

/**
* The ActionSelect control provides a list of predefined items that allows end users to choose options and additionally trigger some actions.
*/
extern class ActionSelect extends sap.m.Select
{
	@:overload(function(?sId:String, ?mSettings:ActionSelectArgs):Void {})
	public function new(?mSettings:ActionSelectArgs):Void;
	@:overload( function(vButton:sap.ui.core.ID):sap.m.ActionSelect{ })

	/**
	* Adds some button into the association {@link #getButtons buttons}.
	* @param	vButton The buttons to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addButton( vButton:sap.m.Button):sap.m.ActionSelect;

	/**
	* Creates a new subclass of class sap.m.ActionSelect with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Select.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getButtons buttons}.
	* @return	null
	*/
	public function getButtons( ):Array<sap.ui.core.ID>;

	/**
	* Returns a metadata object for class sap.m.ActionSelect.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Remove all buttons from the ActionSelect.
	* @return	An array with the ids of the removed elements (might be empty).
	*/
	public function removeAllButtons( ):Array<String>;
	@:overload( function(vButton:Int):String{ })
	@:overload( function(vButton:String):String{ })

	/**
	* Button to be removed from the ActionSelect content.
	* @param	vButton The button to remove or its index or id.
	* @return	The id of the removed button or null.
	*/
	public function removeButton( vButton:sap.m.Button):String;
}

typedef ActionSelectArgs = sap.m.Select.SelectArgs & {

	/**
	* Buttons to be added to the ActionSelect content.
	*/
	@:optional var buttons:Array<haxe.extern.EitherType<String,sap.m.Button>>;
}
