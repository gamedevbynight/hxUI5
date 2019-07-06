package sap.ui.layout;

@:native("sap.ui.layout.SideContentFallDown")
@:enum extern abstract SideContentFallDown(String)
{
    /**
    * Side content falls down on breakpoints below L
    */
    var BelowL= "BelowL";
    /**
    * Side content falls down on breakpoints below M
    */
    var BelowM= "BelowM";
    /**
    * Side content falls down on breakpoints below XL
    */
    var BelowXL= "BelowXL";
    /**
    * Side content falls down on breakpoint M and the minimum width for the side content
    */
    var OnMinimumWidth= "OnMinimumWidth";
}
