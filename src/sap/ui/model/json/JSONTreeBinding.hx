package sap.ui.model.json;

@:native("sap.ui.model.json.JSONTreeBinding")

/**
* Tree binding implementation for JSON format.

The bound data can contain JSON objects and arrays. Both will be used to build the tree structure. You can optionally define a set of arrays to be used for the tree structure in the parameter <code>arrayNames</code>. If this parameter is set, all other objects and arrays will be ignored.
*/
extern class JSONTreeBinding extends sap.ui.model.ClientTreeBinding
{
}

