package sap.ui.unified;

@:native("sap.ui.unified.ContentSwitcherAnimation")
@:enum extern abstract ContentSwitcherAnimation(String)
{
    /**
    * Content is faded (opacity change).
    */
    var Fade= "Fade";
    /**
    * No animation. Content is switched instantly.
    */
    var None= "None";
    /**
    * The new content rotates in. (Just like one of those old newspaper-animations.)
    */
    var Rotate= "Rotate";
    /**
    * The new content slides in from the left while the old content slides out to the left at the same time.
    */
    var SlideOver= "SlideOver";
    /**
    * The new slides in from the left (to the right).
    */
    var SlideRight= "SlideRight";
    /**
    * The new content is "zoomed in" from the center and grows to fill the full content area.
    */
    var ZoomIn= "ZoomIn";
    /**
    * The old content is "zoomed out", i.e. shrinks to a point at the center of the content area.
    */
    var ZoomOut= "ZoomOut";
}
