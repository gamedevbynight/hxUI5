package sap.m;

@:native("sap.m.InputTextFormatMode")
@:enum extern abstract InputTextFormatMode(String)
{
    /**
    * Key
    */
    var Key= "Key";
    /**
    * A key-value pair formatted like "(key) text"
    */
    var KeyValue= "KeyValue";
    /**
    * Text
    */
    var Value= "Value";
    /**
    * A value-key pair formatted like "text (key)"
    */
    var ValueKey= "ValueKey";
}
