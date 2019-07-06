package sap.m;

@:native("sap.m.PopinLayout")
@:enum extern abstract PopinLayout(String)
{
    /**
    * Sets block layout for rendering the table popins. The elements inside the popin container are rendered one below the other. <b>Note:</b> This option enables the former rendering behavior of the table popins.
    */
    var Block= "Block";
    /**
    * Sets grid layout for rendering the table popins. The grid width for each table popin is comparatively larger than <code>GridSmall</code>, hence this allows less content to be rendered in a single popin row.

<b>Note:</b> This feature is currently not supported with Internet Explorer and Edge (version lower than 16) browsers.
    */
    var GridLarge= "GridLarge";
    /**
    * Sets grid layout for rendering the table popins. The grid width for each table popin is small, hence this allows more content to be rendered in a single popin row. This value defines small grid width for the table popins.

<b>Note:</b> This feature is currently not supported with Internet Explorer and Edge (version lower than 16) browsers.
    */
    var GridSmall= "GridSmall";
}
