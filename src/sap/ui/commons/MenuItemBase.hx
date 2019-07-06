package sap.ui.commons;

@:native("sap.ui.commons.MenuItemBase")

/**
* Abstract base class for menu item which provides common properties and events for all concrete item implementations.
*/
extern class MenuItemBase extends sap.ui.unified.MenuItemBase
{
	@:overload(function(?sId:String, ?mSettings:MenuItemBaseArgs):Void {})
	public function new(?mSettings:MenuItemBaseArgs):Void;
}

typedef MenuItemBaseArgs = sap.ui.unified.MenuItemBase.MenuItemBaseArgs & {
}
