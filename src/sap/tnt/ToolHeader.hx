package sap.tnt;

@:native("sap.tnt.ToolHeader")

/**
* The ToolHeader control is a horizontal container that is most commonly used to display buttons, labels, and other various input controls. <h3>Overview</h3> The ToolHeader control is based on {@link sap.m.OverflowToolbar}. It contains clearly structured menus of commands that are available across the various apps within the same tool layout. <h3>Usage</h3> <ul> <li>If an app implements side navigation in addition to the tool header menu, the menu icon must be the first item on the left-hand side of the tool header.</li> <li>The app menu and the side navigation must not have any dependencies and must work independently.</li> </ul> <h4>Fiori 3 theme specifics</h4> In Fiori 3 Default theme the ToolHeader is with dark design unlike most of the other controls. This defines the usage of limited controls inside it, which will result in good design combination.<br/> The ToolHeader stylizes the contained controls with the Shell color parameters, to match the dark design requirement. However, that's not a dark theme.<br/><br/> Only the following controls are supported: <div> <table>

<tr> <th style="text-align: left;">Control name</th> <th style="text-align: left;">Supported</th> <th style="text-align: left;">Not supported</th> </tr> <tr> <td>sap.m.Text</td> <td>Single line text, text truncation</td> <td>Wrapping</td> </tr> <tr> <td>sap.m.Title</td> <td>Single line text, text truncation. Consider using title headings of H4, H5, H6.</td> <td>Wrapping</td> </tr> <tr> <td>sap.m.Label</td> <td>Single line text, text truncation</td> <td>Wrapping</td> </tr> <tr> <td>sap.m.ObjectStatus</td> <td>Labels, semantic colors</td> <td>Indication colors</td> </tr> <tr> <td>sap.ui.core.Icon</td> <td>sap.ui.core.IconColor enumeration for both icons and backgrounds.</td> <td>Interaction state colors</td> </tr> <tr> <td>sap.m.Button</td> <td>Buttons in their Back, Default, Transparent and Up types. All four types are over-styled to look as transparent buttons.</td> <td>-</td> </tr> <tr> <td>sap.m.MenuButton</td> <td>Emphasized button type. Should be used for triggering Mega menu. If there is no Mega menu, use Title (H6) instead. </br> Default (over-styled as Transparent) and Transparent types are used for standard menu representation.</td> <td>-</td> </tr> <tr> <td>sap.m.Select</td> <td>Default and IconOnly types. IconOnly looks like a button while Default looks is like an input.</td> <td>Semantic states</td> </tr> <tr> <td>sap.m.SearchField</td> <td>Support for the regular state of the control.</td> <td>-</td> </tr> <tr> <td>sap.m.IconTabHeader</td> <td>All background design variations (all are transparent). Text tab filters or text and count tab filters in Inline mode only.</td> <td>Semantic colors, icons and separators.</td> </tr> <tr> <td>sap.f.Avatar/sap.m.Avatar</td> <td>Support for default (Accent 6) color. Image avatar.</td> <td>-</td> </tr> <tr> <td>sap.m.Image</td> <td>Primarily used for displaying the company logo.</td> <td>Interaction states</td> </tr> </table> </div>
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
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.tnt.ToolHeader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef ToolHeaderArgs = sap.m.OverflowToolbar.OverflowToolbarArgs & {
}
