package sap.ui.layout;

@:native("sap.ui.layout.SideContentPosition")
@:enum extern abstract SideContentPosition(String)
{
    /**
    * The side content is on the left side of the main container in left-to-right mode and on the right side in right-to-left mode.
    */
    var Begin= "Begin";
    /**
    * The side content is on the right side of the main container in left-to-right mode and on the left side in right-to-left mode.
    */
    var End= "End";
}
