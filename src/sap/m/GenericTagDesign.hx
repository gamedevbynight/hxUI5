package sap.m;

@:native("sap.m.GenericTagDesign")
@:enum extern abstract GenericTagDesign(String)
{
    /**
    * Everything from the control is rendered.
    */
    var Full= "Full";
    /**
    * Everything from the control is rendered except the status icon.
    */
    var StatusIconHidden= "StatusIconHidden";
}
