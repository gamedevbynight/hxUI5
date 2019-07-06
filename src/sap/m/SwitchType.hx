package sap.m;

@:native("sap.m.SwitchType")
@:enum extern abstract SwitchType(String)
{
    /**
    * Switch with accept and reject icons
    */
    var AcceptReject= "AcceptReject";
    /**
    * Will show "ON" and "OFF" translated to the current language or the custom text if provided
    */
    var Default= "Default";
}
