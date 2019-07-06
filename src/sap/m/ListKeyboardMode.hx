package sap.m;

@:native("sap.m.ListKeyboardMode")
@:enum extern abstract ListKeyboardMode(String)
{
    /**
    * This mode is suitable if the number of items is limited and if there are editable fields within the item.

While the last/first interactive element within an item has the focus, pressing tab/shift+tab moves the focus to the next/previous element in the tab chain after/before the item </code>.
    */
    var Edit= "Edit";
    /**
    * This default mode is suitable if the number of items is unlimited or if there is no editable field within the item.

While the last/first interactive element within an item has the focus, pressing tab/shift+tab moves the focus to the next/previous element in the tab chain after/before the <code>sap.m.List</code> or <code>sap.m.Table</code>.
    */
    var Navigation= "Navigation";
}
