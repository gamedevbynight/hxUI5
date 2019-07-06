package sap.m;

@:native("sap.m.PDFViewerDisplayType")
@:enum extern abstract PDFViewerDisplayType(String)
{
    /**
    * The PDF viewer switches between the <code>Link</code> display type and the <code>Embedded</code> display type, depending on the device being used.
    */
    var Auto= "Auto";
    /**
    * The PDF viewer appears embedded in the parent container and displays the PDF file.
    */
    var Embedded= "Embedded";
    /**
    * The PDF viewer appears as a toolbar with a download button that can be used to download the PDF file or open it in a new tab.
    */
    var Link= "Link";
}
