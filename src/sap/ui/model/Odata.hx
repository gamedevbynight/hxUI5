package sap.ui.model;

@:native("sap.ui.model.odata")
extern class Odata
{

	/**
	* Adapter for TreeBindings to add the ListBinding functionality and use the tree structure in list based controls. Only usable with the sap.ui.table.TreeTable control. The functions defined here are only available when you are using a TreeTable and an ODataModel.
	* @return	Void
	*/
	public static function ODataTreeBindingAdapter( ):Void;

	/**
	* Adapter for TreeBindings to add the ListBinding functionality and use the tree structure in list based controls.
	* @return	Void
	*/
	public static function ODataTreeBindingFlat( ):Void;
}

