package sap.m;

@:native("sap.m.TokenizerRenderMode")
@:enum extern abstract TokenizerRenderMode(String)
{
    /**
    * In <code>Loose</code> mode, the <code>sap.m.Tokenizer</code> will show all its tokens, even if this means that scrolling needs to be used.
    */
    var Loose= "Loose";
    /**
    * In <code>Narrow</code> mode, the <code>sap.m.Tokenizer</code> will show as many tokens as its width allows, as well as an n-More indicator with the count of the hidden tokens. The rest tokens will be hidden.
    */
    var Narrow= "Narrow";
}
