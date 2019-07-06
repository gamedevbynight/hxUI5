package sap.ui.layout;

@:native("sap.ui.layout.SideContentVisibility")
@:enum extern abstract SideContentVisibility(String)
{
    /**
    * Show the side content on any breakpoint
    */
    var AlwaysShow= "AlwaysShow";
    /**
    * Don't show the side content on any breakpoints
    */
    var NeverShow= "NeverShow";
    /**
    * Show the side content on XL breakpoint
    */
    var ShowAboveL= "ShowAboveL";
    /**
    * Show the side content on L and XL breakpoints
    */
    var ShowAboveM= "ShowAboveM";
    /**
    * Show the side content on M, L and XL breakpoints
    */
    var ShowAboveS= "ShowAboveS";
}
