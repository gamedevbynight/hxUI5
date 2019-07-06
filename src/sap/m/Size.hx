package sap.m;

@:native("sap.m.Size")
@:enum extern abstract Size(String)
{
    /**
    * The size depends on the device it is running on. It is medium size for desktop and tablet and small size for phone.
    */
    var Auto= "Auto";
    /**
    * Large size.
    */
    var L= "L";
    /**
    * Medium size.
    */
    var M= "M";
    /**
    * The width and height of the control are determined by the width and height of the container the control is placed in. Please note: it is decided by the control whether or not sap.m.Size.Responsive is supported.
    */
    var Responsive= "Responsive";
    /**
    * Small size.
    */
    var S= "S";
    /**
    * Extra small size.
    */
    var XS= "XS";
}
