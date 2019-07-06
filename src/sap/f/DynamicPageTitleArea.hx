package sap.f;

@:native("sap.f.DynamicPageTitleArea")
@:enum extern abstract DynamicPageTitleArea(String)
{
    /**
    * The area includes the <code>heading</code>, <code>expandedContent</code> and <code>snappedContent</code> aggregations, positioned in the beginning area of the {@link sap.f.DynamicPageTitle}.
    */
    var Begin= "Begin";
    /**
    * The area includes the <code>content</code> aggregation, positioned in the middle part of the {@link sap.f.DynamicPageTitle}.
    */
    var Middle= "Middle";
}
