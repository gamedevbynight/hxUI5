package sap.m;

@:native("sap.m.ViewSettingsCustomItem")

/**
* The ViewSettingsCustomItem control is used for modelling custom filters in the ViewSettingsDialog.
*/
extern class ViewSettingsCustomItem extends sap.m.ViewSettingsItem
{
	@:overload(function(?sId:String, ?mSettings:ViewSettingsCustomItemArgs):Void {})
	public function new(?mSettings:ViewSettingsCustomItemArgs):Void;

	/**
	* Creates a clone of the ViewSettingsCustomItem instance.
	* @param	sIdSuffix a suffix to be appended to the cloned object id
	* @param	aLocalIds an array of local IDs within the cloned hierarchy (internally used)
	* @param	oOptions configuration object
	* @return	reference to the newly created clone
	*/
	public function clone( ?sIdSuffix:String, ?aLocalIds:Array<String>, ?oOptions:Dynamic):sap.ui.base.ManagedObject;

	/**
	* Destroys the customControl in the aggregation {@link #getCustomControl customControl}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomControl( ):sap.m.ViewSettingsCustomItem;

	/**
	* Creates a new subclass of class sap.m.ViewSettingsCustomItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ViewSettingsItem.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Internally the control is handled as a managed object instead of an aggregation because this control is sometimes aggregated in other controls like a popover or a dialog.
	* @return	oControl a control used for filtering purposes
	*/
	public function getCustomControl( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getFilterCount filterCount}.

The number of currently active filters for this custom filter item. It will be displayed in the filter list of the ViewSettingsDialog to represent the filter state of the custom control.

Default value is <code>0</code>.
	* @return	Value of property <code>filterCount</code>
	*/
	public function getFilterCount( ):Int;

	/**
	* Returns a metadata object for class sap.m.ViewSettingsCustomItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Internally the control is handled as a managed object instead of an aggregation as this control is sometimes aggregated in other controls like a popover or a dialog.
	* @param	oControl A control used for filtering purposes
	* @return	this pointer for chaining
	*/
	public function setCustomControl( oControl:sap.ui.core.Control):sap.m.ViewSettingsCustomItem;

	/**
	* Sets the filterCount without invalidating the control as it is never rendered directly.
	* @param	iValue The new value for property filterCount
	* @return	this pointer for chaining
	*/
	public function setFilterCount( iValue:Int):sap.m.ViewSettingsItem;
}

typedef ViewSettingsCustomItemArgs = sap.m.ViewSettingsItem.ViewSettingsItemArgs & {

	/**
	* The number of currently active filters for this custom filter item. It will be displayed in the filter list of the ViewSettingsDialog to represent the filter state of the custom control.
	*/
	@:optional var filterCount:haxe.extern.EitherType<String,Int>;

    /**
    * A custom control for the filter field. It can be used for complex filtering mechanisms.
    */
	@:optional var customControl:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
