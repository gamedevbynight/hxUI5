package sap.uxap;

@:native("sap.uxap.BlockBaseFormAdjustment")
@:enum extern abstract BlockBaseFormAdjustment(String)
{
    /**
    * Any form within the block will be automatically adjusted to have as many columns as the colspan of its parent block.
    */
    var BlockColumns= "BlockColumns";
    /**
    * No automatic adjustment of forms.
    */
    var None= "None";
    /**
    * Any form within the block will be automatically adjusted to have only one column.
    */
    var OneColumn= "OneColumn";
}
