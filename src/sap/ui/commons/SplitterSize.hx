package sap.ui.commons;


/**
* A string type that represents subset of CSS size values. For the Splitter only px and % are allowed.
*/
abstract SplitterSize(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
