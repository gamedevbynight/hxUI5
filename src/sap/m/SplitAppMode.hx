package sap.m;

@:native("sap.m.SplitAppMode")
@:enum extern abstract SplitAppMode(String)
{
    /**
    * Master area is hidden initially both in portrait and landscape.

Master area can be opened by clicking on the top left corner button or swiping right. Swipe is only enabled on mobile devices. Master will keep the open state when changing the orientation of the device.
    */
    var HideMode= "HideMode";
    /**
    * Master will be shown inside a Popover when in portrait mode
    */
    var PopoverMode= "PopoverMode";
    /**
    * Master will automatically be hidden in portrait mode.
    */
    var ShowHideMode= "ShowHideMode";
    /**
    * Master will always be shown but in a compressed version when in portrait mode.
    */
    var StretchCompressMode= "StretchCompressMode";
}
