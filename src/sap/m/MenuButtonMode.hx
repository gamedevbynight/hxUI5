package sap.m;

@:native("sap.m.MenuButtonMode")
@:enum extern abstract MenuButtonMode(String)
{
    /**
    * Default regular type (Menu button appears as a regular button, pressing opens a menu)
    */
    var Regular= "Regular";
    /**
    * Split type (Menu button appears as a split button, pressing fires the default action a menu, pressing the arrow part opens a menu)
    */
    var Split= "Split";
}
