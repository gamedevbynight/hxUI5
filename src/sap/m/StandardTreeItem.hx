package sap.m;

@:native("sap.m.StandardTreeItem")

/**
* The <code>sap.m.StandardTreeItem</code> is a tree item providing a title, image, etc.
*/
extern class StandardTreeItem extends sap.m.TreeItemBase
{
	@:overload(function(?sId:String, ?mSettings:StandardTreeItemArgs):Void {})
	public function new(?mSettings:StandardTreeItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.StandardTreeItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.TreeItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the tree item icon.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.m.StandardTreeItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title of the item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the tree item icon.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.StandardTreeItem;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the title of the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.m.StandardTreeItem;
}

typedef StandardTreeItemArgs = sap.m.TreeItemBase.TreeItemBaseArgs & {

	/**
	* Defines the title of the item.
	*/
	@:optional var title:String;

	/**
	* Defines the tree item icon.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;
}
