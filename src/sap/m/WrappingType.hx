package sap.m;

@:native("sap.m.WrappingType")
@:enum extern abstract WrappingType(String)
{
    /**
    * Hyphenation will be used to break words on syllables where possible.
    */
    var Hyphenated= "Hyphenated";
    /**
    * Normal text wrapping will be used. Words won't break based on hyphenation.
    */
    var Normal= "Normal";
}
