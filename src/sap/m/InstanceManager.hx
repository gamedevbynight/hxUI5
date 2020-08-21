package sap.m;

@:native("sap.m.InstanceManager")
extern class InstanceManager
{

	/**
	* Closes all of the open dialogs.
	* @param	fnCallback null
	* @return	Enable method chaining.
	*/
	public static function closeAllDialogs( fnCallback:(Dynamic)->Void):sap.m.InstanceManager;

	/**
	* Closes all open lightboxes.
	* @return	Enable method chaining.
	*/
	public static function closeAllLightBoxes( ):sap.m.InstanceManager;

	/**
	* Closes all open popovers.
	* @return	Enable method chaining.
	*/
	public static function closeAllPopovers( ):sap.m.InstanceManager;

	/**
	* Gets all of the open dialogs. If there's no dialog open, an empty array is returned.
	* @return	The open dialogs.
	*/
	public static function getOpenDialogs( ):Array<sap.ui.core.Control>;

	/**
	* Gets all of the open LightBoxes. If there's no dialog open, an empty array is returned.
	* @return	The opened LightBoxes.
	*/
	public static function getOpenLightBoxes( ):Array<sap.m.LightBox>;

	/**
	* Gets all of the open popovers. If there's no popover open, an empty array is returned.
	* @return	The open popovers.
	*/
	public static function getOpenPopovers( ):Array<sap.ui.core.Control>;

	/**
	* Returns true if there's at least one dialog managed in the predefined dialog category, otherwise it returns false.
	* @return	Whether there's dialog(s) open.
	*/
	public static function hasOpenDialog( ):Bool;

	/**
	* Returns true if there's at least one LightBox managed in the predefined lightbox category, otherwise it returns false.
	* @return	Whether there's LightBox(es) is/are open.
	*/
	public static function hasOpenLightBox( ):Bool;

	/**
	* Returns true if there's at least one popover managed in the predefined popover category, otherwise it returns false.
	* @return	Whether there's popover(s) open.
	*/
	public static function hasOpenPopover( ):Bool;

	/**
	* Checks if the given dialog instance is managed under the dialog category. For dialog instances, managed means the dialog is open.

This function is specially provided for customized controls which doesn't have the possibility to check whether it's open. If the given dialog is an instance of sap.m.Dialog, sap.m.ActionSheet, the isOpen() method on the instance is preferred to be called than this function.
	* @param	oDialog The dialog that is checked for the openness.
	* @return	Whether the given dialog is open.
	*/
	public static function isDialogOpen( oDialog:sap.ui.core.Control):Bool;

	/**
	* Check if the given LightBox instance is managed under the LightBox category. For LightBox instances, 'managed' means the LightBox is open.

This function is specially intended for controls that don't provide a way to check whether they're open. If the given lightbox is an instance of <code>sap.m.LightBox</code>, its <code>isOpen()</code> should be called instead of this function.
	* @param	oLightBox The LightBox that is checked.
	* @return	Whether the given popover is open.
	*/
	public static function isLightBoxOpen( oLightBox:sap.m.LightBox):Bool;

	/**
	* Check if the given popover instance is managed under the popover category. For popover instances, managed means the popover is open.

This function is specially provided for customized controls which doesn't have the possibility to check whether it's open. If the given popover is an instance of sap.m.Popover, sap.m.ActionSheet, the isOpen() method on the instance is preferred to be called than this function.
	* @param	oPopover The popover that is checked for the openness.
	* @return	Whether the given popover is open.
	*/
	public static function isPopoverOpen( oPopover:sap.ui.core.Control):Bool;
}

