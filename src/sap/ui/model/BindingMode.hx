package sap.ui.model;

@:native("sap.ui.model.BindingMode")
@:enum extern abstract BindingMode(String)
{
    /**
    * BindingMode default means that the binding mode of the model is used
    */
    var Default= "Default";
    /**
    * BindingMode one time means value is only read from the model once
    */
    var OneTime= "OneTime";
    /**
    * BindingMode one way means from model to view
    */
    var OneWay= "OneWay";
    /**
    * BindingMode two way means from model to view and vice versa
    */
    var TwoWay= "TwoWay";
}
