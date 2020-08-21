package sap.m;

@:native("sap.m.TreeItemBase")

/**
* The <code>sap.m.TreeItemBase</code> contains the basic features of all specific tree items.
*/
extern class TreeItemBase extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:TreeItemBaseArgs):Void {})
	public function new(?mSettings:TreeItemBaseArgs):Void;

	/**
	* Creates a new subclass of class sap.m.TreeItemBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets the expanding information of the node.
	* @return	null
	*/
	public function getExpanded( ):Bool;

	/**
	* Gets the context of the node.
	* @return	null
	*/
	public function getItemNodeContext( ):Dynamic;

	/**
	* Gets the node level in the hierarchy.
	* @return	null
	*/
	public function getLevel( ):Int;

	/**
	* Returns a metadata object for class sap.m.TreeItemBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets the parent node control.
	* @return	null
	*/
	public function getParentNode( ):Dynamic;

	/**
	* Gets the context of the parent node control.
	* @return	null
	*/
	public function getParentNodeContext( ):Dynamic;

	/**
	* Determines if the node is a leaf.
	* @return	null
	*/
	public function isLeaf( ):Bool;

	/**
	* Checks if the node is the top level node.
	* @return	null
	*/
	public function isTopLevel( ):Bool;
}

typedef TreeItemBaseArgs = sap.m.ListItemBase.ListItemBaseArgs & {
}
