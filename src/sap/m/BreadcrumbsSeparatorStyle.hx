package sap.m;

@:native("sap.m.BreadcrumbsSeparatorStyle")
@:enum extern abstract BreadcrumbsSeparatorStyle(String)
{
    /**
    * The separator will appear as "\"
    */
    var BackSlash= "BackSlash";
    /**
    * The separator will appear as "\\"
    */
    var DoubleBackSlash= "DoubleBackSlash";
    /**
    * The separator will appear as ">>"
    */
    var DoubleGreaterThan= "DoubleGreaterThan";
    /**
    * The separator will appear as "//"
    */
    var DoubleSlash= "DoubleSlash";
    /**
    * The separator will appear as ">"
    */
    var GreaterThan= "GreaterThan";
    /**
    * The separator will appear as "/"
    */
    var Slash= "Slash";
}
