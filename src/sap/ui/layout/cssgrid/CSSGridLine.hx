package sap.ui.layout.cssgrid;


/**
* A string type that represents one or two grid lines. Used to define the position and size of a single grid item.

Valid values: <ul> <li>auto</li> <li>inherit</li> <li>1</li> <li>span 2</li> <li>span 2 / 5</li> <li>span 2 / -5</li> <li>5 / 7</li> <li>7 / span 5</li> <li>span 7 / span 5</li> </ul>
*/
abstract CSSGridLine(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
