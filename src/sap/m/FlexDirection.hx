package sap.m;

@:native("sap.m.FlexDirection")
@:enum extern abstract FlexDirection(String)
{
    /**
    * Flex items are laid out along the direction of the block axis (usually top to bottom).
    */
    var Column= "Column";
    /**
    * Flex items are laid out along the reverse direction of the block axis (usually bottom to top).
    */
    var ColumnReverse= "ColumnReverse";
    /**
    * Inherits the value from its parent.
    */
    var Inherit= "Inherit";
    /**
    * Flex items are laid out along the direction of the inline axis (text direction).
    */
    var Row= "Row";
    /**
    * Flex items are laid out along the reverse direction of the inline axis (against the text direction).
    */
    var RowReverse= "RowReverse";
}
