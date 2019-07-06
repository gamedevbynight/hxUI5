package sap.m.semantic;

@:native("sap.m.semantic.SemanticRuleSetType")
@:enum extern abstract SemanticRuleSetType(String)
{
    /**
    * The default ruleset type, for which the Share Menu is always in the footer of the page.
    */
    var Classic= "Classic";
    /**
    * Offers an optimized user experience, with displaying the Share Menu in the header, rather than the footer, for Fullscreen mode.
    */
    var Optimized= "Optimized";
}
