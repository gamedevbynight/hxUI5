package sap.m;

@:native("sap.m.SuggestionItem")

/**
* Display suggestion list items.
*/
extern class SuggestionItem extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:SuggestionItemArgs):Void {})
	public function new(?mSettings:SuggestionItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.SuggestionItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDescription description}.

Additional text of type string, optionally to be displayed along with this item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getIcon icon}.

The icon belonging to this list item instance. This can be a URI to an image or an icon font URI.

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):String;

	/**
	* Returns a metadata object for class sap.m.SuggestionItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets a new value for property {@link #getDescription description}.

Additional text of type string, optionally to be displayed along with this item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( sDescription:String):sap.m.SuggestionItem;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The icon belonging to this list item instance. This can be a URI to an image or an icon font URI.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:String):sap.m.SuggestionItem;
}

typedef SuggestionItemArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* The icon belonging to this list item instance. This can be a URI to an image or an icon font URI.
	*/
	@:optional var icon:String;

	/**
	* Additional text of type string, optionally to be displayed along with this item.
	*/
	@:optional var description:String;
}
