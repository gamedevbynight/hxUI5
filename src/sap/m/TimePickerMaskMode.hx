package sap.m;

@:native("sap.m.TimePickerMaskMode")
@:enum extern abstract TimePickerMaskMode(String)
{
    /**
    * <code>MaskInput</code> is disabled for the <code>sap.m.TimePicker</code>.
    */
    var Off= "Off";
    /**
    * <code>MaskInput</code> is enabled for the <code>sap.m.TimePicker</code>.
    */
    var On= "On";
}
