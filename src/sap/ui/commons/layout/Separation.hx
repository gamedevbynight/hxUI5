package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.Separation")
@:enum extern abstract Separation(String)
{
    /**
    * A large (63px) vertical gutter without a vertical line.
    */
    var Large= "Large";
    /**
    * A large (63px) vertical gutter with a vertical line in its middle.
    */
    var LargeWithLine= "LargeWithLine";
    /**
    * A medium (31px) vertical gutter without a vertical line.
    */
    var Medium= "Medium";
    /**
    * A medium (31px) vertical gutter with a vertical line in its middle.
    */
    var MediumWithLine= "MediumWithLine";
    /**
    * No gutter at all (0px), and without a vertical line, of course.
    */
    var None= "None";
    /**
    * A small (17px) vertical gutter without a vertical line.
    */
    var Small= "Small";
    /**
    * A small (17px) vertical gutter with a vertical line in its middle.
    */
    var SmallWithLine= "SmallWithLine";
}
