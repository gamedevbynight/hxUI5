package sap.tnt;

@:native("sap.tnt.ToolHeader")

/**
* The ToolHeader control is a horizontal container that is most commonly used to display buttons, labels, and other various input controls. <h3>Overview</h3> The ToolHeader control is based on {@link sap.m.OverflowToolbar}. It contains clearly structured menus of commands that are available across the various apps within the same tool layout. <h3>Usage</h3> <ul> <li>If an app implements side navigation in addition to the tool header menu, the menu icon must be the first item on the left-hand side of the tool header.</li> <li>The app menu and the side navigation must not have any dependencies and must work independently.</li> </ul> <h4>Fiori 3 theme specifics</h4> In Fiori 3 Default theme the ToolHeader is with dark design unlike most of the other controls. This defines the usage of limited controls inside it, which will result in good design combination.<br/> The ToolHeader stylizes the contained controls with the Shell color parameters, to match the dark design requirement. However, that's not a dark theme.<br/><br/> Only the following controls are supported: <ul> <li>sap.m.Text</li> <li>sap.m.Title</li> <li>sap.m.ObjectStatus</li> <li>sap.ui.core.Icon</li> <li>sap.m.Button</li> <li>sap.m.MenuButton</li> <li>sap.m.Select</li> <li>sap.m.SearchField</li> <li>sap.m.IconTabHeader</li> </ul>
*/
extern class ToolHeader extends sap.m.OverflowToolbar implements sap.tnt.IToolHeader
{
	@:overload(function(?sId:String, ?mSettings:ToolHeaderArgs):Void {})
	public function new(?mSettings:ToolHeaderArgs):Void;

	/**
	* Creates a new subclass of class sap.tnt.ToolHeader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.OverflowToolbar.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.tnt.ToolHeader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef ToolHeaderArgs = sap.m.OverflowToolbar.OverflowToolbarArgs & {
}
