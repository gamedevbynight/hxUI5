package sap.m;

@:native("sap.m.CarouselArrowsPlacement")
@:enum extern abstract CarouselArrowsPlacement(String)
{
    /**
    * Carousel arrows are placed on the sides of the current Carousel page.
    */
    var Content= "Content";
    /**
    * Carousel arrows are placed on the sides of the page indicator of the Carousel.
    */
    var PageIndicator= "PageIndicator";
}
