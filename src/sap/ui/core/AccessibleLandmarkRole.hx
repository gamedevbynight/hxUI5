package sap.ui.core;

@:native("sap.ui.core.AccessibleLandmarkRole")
@:enum extern abstract AccessibleLandmarkRole(String)
{
    /**
    * Represents the ARIA role <code>banner</code>.

A banner usually appears at the top of the page and typically spans the full width.
    */
    var Banner= "Banner";
    /**
    * Represents the ARIA role <code>complementary</code>.

A section of the page, designed to be complementary to the main content at a similar level in the DOM hierarchy.
    */
    var Complementary= "Complementary";
    /**
    * Represents the ARIA role <code>contentinfo</code>.

A region that contains information about the content on the page.
    */
    var ContentInfo= "ContentInfo";
    /**
    * Represents the ARIA role <code>form</code>.

A region that contains a collection of items and objects that, as a whole, combine to create a form.
    */
    var Form= "Form";
    /**
    * Represents the ARIA role <code>main</code>.

The main content of a page.
    */
    var Main= "Main";
    /**
    * Represents the ARIA role <code>navigation</code>.

A region that contains a collection of items and objects that, as a whole, combine to create a navigation facility.
    */
    var Navigation= "Navigation";
    /**
    * No explicit role is applicable.

The interpretation of this value depends on the control / element which defines a property with this type. Normally this value means that no accessible landmark should be written.
    */
    var None= "None";
    /**
    * Represents the ARIA role <code>region</code>.

A section of a page, that is important enough to be included in a page summary or table of contents.
    */
    var Region= "Region";
    /**
    * Represents the ARIA role <code>search</code>.

A region that contains a collection of items and objects that, as a whole, combine to create a search facility.
    */
    var Search= "Search";
}
