package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.Padding")
@:enum extern abstract Padding(String)
{
    /**
    * Top and bottom padding of 2px. Padding of 4px towards the beginning of a line, in the current locale's writing direction, but none towards its end.
    */
    var Begin= "Begin";
    /**
    * Top and bottom padding of 2px. Padding of 4px towards both the beginning and end of a line.
    */
    var Both= "Both";
    /**
    * Top and bottom padding of 2px. Padding of 4px towards the end of a line, in the current locale's writing direction, but none towards its beginning.
    */
    var End= "End";
    /**
    * Top and bottom padding of 2px. No padding towards neither the beginning nor end of a line.
    */
    var Neither= "Neither";
    /**
    * No padding at all.
    */
    var None= "None";
}
