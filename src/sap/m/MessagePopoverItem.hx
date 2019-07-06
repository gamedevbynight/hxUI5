package sap.m;

@:native("sap.m.MessagePopoverItem")

/**
* Items provide information about Error Messages in the page.
*/
extern class MessagePopoverItem extends sap.m.MessageItem
{
	@:overload(function(?sId:String, ?mSettings:MessagePopoverItemArgs):Void {})
	public function new(?mSettings:MessagePopoverItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.MessagePopoverItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.MessageItem.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.MessagePopoverItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef MessagePopoverItemArgs = sap.m.MessageItem.MessageItemArgs & {
}