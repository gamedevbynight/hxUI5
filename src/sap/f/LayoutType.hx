package sap.f;

@:native("sap.f.LayoutType")
@:enum extern abstract LayoutType(String)
{
    /**
    * Desktop: -/-/100 only the End column is displayed

Tablet: -/-/100 only the End column is displayed

Phone: -/-/100 only the End column is displayed

Use to display a detail-detail page only, when the user should focus entirely on it.
    */
    var EndColumnFullScreen= "EndColumnFullScreen";
    /**
    * Desktop: -/100/- only the Mid column is displayed

Tablet: -/100/- only the Mid column is displayed

Phone: -/100/- only the Mid column is displayed

Use to display a detail page only, when the user should focus entirely on it.
    */
    var MidColumnFullScreen= "MidColumnFullScreen";
    /**
    * Desktop: 100/-/- only the Begin column is displayed

Tablet: 100/-/- only the Begin column is displayed

Phone: 100/-/- only the Begin column is displayed

Use to start with a master page.
    */
    var OneColumn= "OneColumn";
    /**
    * Desktop: 67/33/0 Begin (expanded) and Mid columns are displayed, End is accessible by layout arrows

Tablet: 67/33/0 Begin (expanded) and Mid columns are displayed, End is accessible by layout arrows

Phone: -/-/100 only the End column is displayed

Use to display the master and detail pages when the user should focus on the master. The detail-detail is still loaded and easily accessible with layout arrows.
    */
    var ThreeColumnsBeginExpandedEndHidden= "ThreeColumnsBeginExpandedEndHidden";
    /**
    * Desktop: 25/25/50 Begin, Mid and End (expanded) columns are displayed

Tablet: 0/33/67 Mid and End (expanded) columns are displayed, Begin is accessible by layout arrows

Phone: -/-/100 (only the End column is displayed)

Use to display all three pages (master, detail, detail-detail) when the user should focus on the detail-detail.
    */
    var ThreeColumnsEndExpanded= "ThreeColumnsEndExpanded";
    /**
    * Desktop: 25/50/25 Begin, Mid (expanded) and End columns are displayed

Tablet: 0/67/33 Mid (expanded) and End columns are displayed, Begin is accessible by a layout arrow

Phone: -/-/100 only the End column is displayed

Use to display all three pages (master, detail, detail-detail) when the user should focus on the detail.
    */
    var ThreeColumnsMidExpanded= "ThreeColumnsMidExpanded";
    /**
    * Desktop: 33/67/0 Begin and Mid (expanded) columns are displayed, End is accessible by a layout arrow

Tablet: 33/67/0 Begin and Mid (expanded) columns are displayed, End is accessible by a layout arrow

Phone: -/-/100 only the End column is displayed

Use to display the master and detail pages when the user should focus on the detail. The detail-detail is still loaded and easily accessible with a layout arrow.
    */
    var ThreeColumnsMidExpandedEndHidden= "ThreeColumnsMidExpandedEndHidden";
    /**
    * Desktop: 67/33/- Begin (expanded) and Mid columns are displayed

Tablet: 67/33/- Begin (expanded) and Mid columns are displayed

Phone: -/100/- only the Mid column is displayed

Use to display both a master and a detail page when the user should focus on the master page.
    */
    var TwoColumnsBeginExpanded= "TwoColumnsBeginExpanded";
    /**
    * Desktop: 33/67/- Begin and Mid (expanded) columns are displayed

Tablet: 33/67/- Begin and Mid (expanded) columns are displayed

Phone: -/100/- only the Mid column is displayed

Use to display both a master and a detail page when the user should focus on the detail page.
    */
    var TwoColumnsMidExpanded= "TwoColumnsMidExpanded";
}
