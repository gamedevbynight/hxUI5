package sap.uxap;


/**
* Used by the <code>BlockBase</code> control to define how many columns should it be assigned by the <code>objectPageSubSection</code>. The allowed values can be auto (subsection assigned a number of columns based on the parent objectPageLayout subsectionLayout property), 1, 2, 3 or 4 (This may not be a valid value for some <code>subSectionLayout</code>, for example, asking for 3 columns in a 2 column layout would raise warnings).
*/
abstract BlockBaseColumnLayout(String) from String to String {
    inline function new(i:String) {
        this = i;
    }
}
