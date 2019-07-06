package sap.m;

@:native("sap.m.BarDesign")
@:enum extern abstract BarDesign(String)
{
    /**
    * The Bar can be inserted into other controls and if the design is "Auto" then it inherits the design from parent control.
    */
    var Auto= "Auto";
    /**
    * The bar will be styled like a footer of the page.
    */
    var Footer= "Footer";
    /**
    * The bar will be styled like a header of the page.
    */
    var Header= "Header";
    /**
    * The bar will be styled like a subheader of the page.
    */
    var SubHeader= "SubHeader";
}
