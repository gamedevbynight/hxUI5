package sap.ui.model;

@:native("sap.ui.model.ChangeReason")
@:enum extern abstract ChangeReason(String)
{
    /**
    * A context was added to a binding.
    */
    var Add= "Add";
    /**
    * Binding changes a model property value
    */
    var Binding= "Binding";
    /**
    * The list has changed
    */
    var Change= "Change";
    /**
    * The tree node was collapsed
    */
    var Collapse= "Collapse";
    /**
    * The list context has changed
    */
    var Context= "Context";
    /**
    * The tree node was expanded
    */
    var Expand= "Expand";
    /**
    * The List was filtered
    */
    var Filter= "Filter";
    /**
    * The list was refreshed
    */
    var Refresh= "Refresh";
    /**
    * null
    */
    var Remove= "Remove";
    /**
    * The list was sorted
    */
    var Sort= "Sort";
}
