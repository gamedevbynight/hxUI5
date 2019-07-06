package sap.ui.layout.form;

@:native("sap.ui.layout.form.SimpleFormLayout")
@:enum extern abstract SimpleFormLayout(String)
{
    /**
    * Uses the <code>ColumnLayout</code> layout to render the <code>SimpleForm</code> control
    */
    var ColumnLayout= "ColumnLayout";
    /**
    * Uses the <code>GridLayout</code> layout to render the <code>SimpleForm</code> control
    */
    var GridLayout= "GridLayout";
    /**
    * Uses the <code>ResponsiveGridLayout</code> layout to render the <code>SimpleForm</code> control
    */
    var ResponsiveGridLayout= "ResponsiveGridLayout";
    /**
    * Uses the <code>ResponsiveLayout</code> layout to render the <code>SimpleForm</code> control
    */
    var ResponsiveLayout= "ResponsiveLayout";
}
