package sap.m;

@:native("sap.m.PopinDisplay")
@:enum extern abstract PopinDisplay(String)
{
    /**
    * Inside the table popin, header is displayed at the first line and cell content is displayed at the next line.
    */
    var Block= "Block";
    /**
    * Inside the table popin, cell content is displayed next to the header in the same line. <b>Note:</b> If there is not enough space for the cell content then it jumps to the next line.
    */
    var Inline= "Inline";
    /**
    * Inside the table popin, only the cell content will be visible.
    */
    var WithoutHeader= "WithoutHeader";
}
