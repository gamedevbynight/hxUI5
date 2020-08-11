package sap.m;

@:native("sap.m.GroupHeaderListItem")

/**
* <code>sap.m.GroupHeaderListItem</code> is used to display the title of a group and act as separator between groups in <code>sap.m.List</code> and <code>sap.m.Table</code>. <b>Note:</b> The inherited properties <code>unread</code>, <code>selected</code>, <code>counter</code> and <code>press</code> event from <code>sap.m.ListItemBase</code> are not supported.
*/
extern class GroupHeaderListItem extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:GroupHeaderListItemArgs):Void {})
	public function new(?mSettings:GroupHeaderListItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.GroupHeaderListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCount count}.

Defines the count of items in the group, but it could also be an amount which represents the sum of all amounts in the group. <b>Note:</b> Will not be displayed if not set.
	* @return	Value of property <code>count</code>
	*/
	public function getCount( ):String;

	/**
	* Returns a metadata object for class sap.m.GroupHeaderListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title of the group header.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleTextDirection titleTextDirection}.

Defines the title text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>titleTextDirection</code>
	*/
	public function getTitleTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Sets a new value for property {@link #getCount count}.

Defines the count of items in the group, but it could also be an amount which represents the sum of all amounts in the group. <b>Note:</b> Will not be displayed if not set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sCount New value for property <code>count</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCount( sCount:String):sap.m.GroupHeaderListItem;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the title of the group header.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.GroupHeaderListItem;

	/**
	* Sets a new value for property {@link #getTitleTextDirection titleTextDirection}.

Defines the title text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTitleTextDirection New value for property <code>titleTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleTextDirection( ?sTitleTextDirection:sap.ui.core.TextDirection):sap.m.GroupHeaderListItem;
}

typedef GroupHeaderListItemArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Defines the title of the group header.
	*/
	@:optional var title:String;

	/**
	* Defines the count of items in the group, but it could also be an amount which represents the sum of all amounts in the group. <b>Note:</b> Will not be displayed if not set.
	*/
	@:optional var count:String;

	/**
	* Defines the title text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var titleTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;
}
