package sap.m;

@:native("sap.m.LinkConversion")
@:enum extern abstract LinkConversion(String)
{
    /**
    * Valid links with protocols, such as http, https, ftp and those starting with the string "www".
    */
    var All= "All";
    /**
    * Default mode (no conversion).
    */
    var None= "None";
    /**
    * Valid links with protocols, such as http, https, ftp.
    */
    var ProtocolOnly= "ProtocolOnly";
}
