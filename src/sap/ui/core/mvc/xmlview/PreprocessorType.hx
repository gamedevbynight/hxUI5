package sap.ui.core.mvc.xmlview;

@:enum extern abstract PreprocessorType(String)
{
    /**
    * This preprocessor receives the control tree produced through the view source
    */
    var CONTROLS= "CONTROLS";
    /**
    * This preprocessor receives a valid xml source for View creation without any template tags but with control declarations. These include their full IDs by which they can also be queried during runtime.
    */
    var VIEWXML= "VIEWXML";
    /**
    * This preprocessor receives the plain xml source of the view and should also return a valid xml ready for view creation
    */
    var XML= "XML";
}
