package sap.f;


/**
* A string type that represents the shrink ratios of the areas within the <code>sap.f.DynamicPageTitle</code>.
*/
abstract DynamicPageTitleShrinkRatio(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
