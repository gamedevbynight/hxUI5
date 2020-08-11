package sap.m;

@:native("sap.m.OverflowToolbar")

/**
* A container control based on {@link sap.m.Toolbar}, that provides overflow when its content does not fit in the visible area.

<h3>Overview</h3>

The content of the <code>OverflowToolbar</code> moves into the overflow area from right to left when the available space is not enough in the visible area of the container. It can be accessed by the user through the overflow button that opens it in a popover.

<b>Note:</b> It is recommended that you use <code>OverflowToolbar</code> over {@link sap.m.Toolbar}, unless you want to avoid overflow in favor of shrinking.

<h3>Usage</h3>

Different behavior and priorities can be set for each control inside the <code>OverflowToolbar</code>, such as certain controls to appear only in the overflow area or to never move there. For more information, see {@link sap.m.OverflowToolbarLayoutData} and {@link sap.m.OverflowToolbarPriority}.

<h3>Overflow Behavior</h3> By default, only the following controls can move to the overflow area:

<ul><li>{@link sap.m.Button}</li> <li>{@link sap.m.CheckBox}</li> <li>{@link sap.m.ComboBox}</li> <li>{@link sap.m.DatePicker}</li> <li>{@link sap.m.DateTimeInput}</li> <li>{@link sap.m.DateTimePicker}</li> <li>{@link sap.m.GenericTag}</li> <li>{@link sap.m.Input}</li> <li>{@link sap.m.Label}</li> <li>{@link sap.m.MenuButton}</li> <li>{@link sap.m.OverflowToolbarButton}</li> <li>{@link sap.m.OverflowToolbarToggleButton}</li> <li>{@link sap.m.SearchField}</li> <li>{@link sap.m.SegmentedButton}</li> <li>{@link sap.m.Select}</li> <li>{@link sap.m.TimePicker}</li> <li>{@link sap.m.ToggleButton}</li> <li>{@link sap.m.ToolbarSeparator}</li> <li>{@link sap.ui.comp.smartfield.SmartField}</li> <li>{@link sap.ui.comp.smartfield.SmartLabel}</li></ul>

Additionally, any control that implements the {@link sap.m.IOverflowToolbarContent} interface may define its behavior (most importantly overflow behavior) when placed inside <code>OverflowToolbar</code>.

<b>Note:</b> The <code>OverflowToolbar</code> is an adaptive container that checks the available width and hides the part of its content that doesn't fit. It is intended that simple controls, such as {@link sap.m.Button} and {@link sap.m.Label} are used as content. Embedding other adaptive container controls, such as {@link sap.m.Breadcrumbs}, results in competition for the available space - both controls calculate the available space based on the other one's size and both change their width at the same time, leading to incorrectly distributed space.

<h3>Responsive behavior</h3>

The height of the toolbar changes on desktop, tablet, and smartphones.
*/
extern class OverflowToolbar extends sap.m.Toolbar implements sap.ui.core.Toolbar implements sap.m.IBar
{
	@:overload(function(?sId:String, ?mSettings:OverflowToolbarArgs):Void {})
	public function new(?mSettings:OverflowToolbarArgs):Void;

	/**
	* Moves each control in the suitable collection - Popover only, movable controls and toolbar only
	* @param	oControl null
	* @param	sPriority null
	* @return	Void
	*/
	public function _moveControlInSuitableCollection( oControl:Dynamic, sPriority:Dynamic):Void;

	/**
	* Removes Control from collections
	* @param	oControl null
	* @return	Void
	*/
	public function _removeContentFromControlsCollections( oControl:Dynamic):Void;

	/**
	* Closes the overflow area. Useful to manually close the overflow after having suppressed automatic closing with "closeOverflowOnInteraction=false".
	* @return	Void
	*/
	public function closeOverflow( ):Void;

	/**
	* Creates a new subclass of class sap.m.OverflowToolbar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Toolbar.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAsyncMode asyncMode}.

Defines whether the <code>OverflowToolbar</code> works in async mode.

<b>Note:</b> When this property is set to <code>true</code>, the <code>OverflowToolbar</code> makes its layout recalculations asynchronously. This way it is not blocking the thread immediately after re-rendering or resizing. However, it may lead to flickering, when there is a change in the width of the content of the <code>OverflowToolbar</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>asyncMode</code>
	*/
	public function getAsyncMode( ):Bool;

	/**
	* Returns a metadata object for class sap.m.OverflowToolbar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets the <code>asyncMode</code> property.
	* @param	bValue null
	* @return	<code>this</code> pointer for chaining
	*/
	public function setAsyncMode( bValue:Bool):sap.m.OverflowToolbar;
}

typedef OverflowToolbarArgs = sap.m.Toolbar.ToolbarArgs & {

	/**
	* Defines whether the <code>OverflowToolbar</code> works in async mode.

<b>Note:</b> When this property is set to <code>true</code>, the <code>OverflowToolbar</code> makes its layout recalculations asynchronously. This way it is not blocking the thread immediately after re-rendering or resizing. However, it may lead to flickering, when there is a change in the width of the content of the <code>OverflowToolbar</code>.
	*/
	@:optional var asyncMode:haxe.extern.EitherType<String,Bool>;

    /**
    * null
    */
	@:optional var _overflowButton:haxe.extern.EitherType<String,sap.m.ToggleButton>;

    /**
    * null
    */
	@:optional var _popover:haxe.extern.EitherType<String,sap.m.Popover>;
}
