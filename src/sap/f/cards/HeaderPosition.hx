package sap.f.cards;

@:native("sap.f.cards.HeaderPosition")
@:enum extern abstract HeaderPosition(String)
{
    /**
    * The Header is under the content.
    */
    var Bottom= "Bottom";
    /**
    * The Header is over the content.
    */
    var Top= "Top";
}
