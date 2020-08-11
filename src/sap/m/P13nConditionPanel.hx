package sap.m;

@:native("sap.m.P13nConditionPanel")

/**
* The ConditionPanel Control will be used to implement the Sorting, Filtering and Grouping panel of the new Personalization dialog.
*/
extern class P13nConditionPanel extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:P13nConditionPanelArgs):Void {})
	public function new(?mSettings:P13nConditionPanelArgs):Void;

	/**
	* add a single condition.
	* @param	oCondition the new condition of type <code>{ "key": "007", "operation": sap.m.P13nConditionOperation.Ascending, "keyField": "keyFieldKey", "value1": "", "value2": ""};</code>
	* @return	Void
	*/
	public function addCondition( oCondition:Dynamic):Void;

	/**
	* add a single KeyField
	* @param	oKeyField {key: "CompanyCode", text: "ID"}
	* @return	Void
	*/
	public function addKeyField( oKeyField:Dynamic):Void;

	/**
	* add a single operation
	* @param	oOperation null
	* @param	sType defines the type for which this operations will be used.
	* @return	Void
	*/
	public function addOperation( oOperation:sap.m.P13nConditionOperation, sType:String):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:dataChange dataChange} event of this <code>sap.m.P13nConditionPanel</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.P13nConditionPanel</code> itself.

Workaround for updating the binding
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.P13nConditionPanel</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachDataChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nConditionPanel;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:dataChange dataChange} event of this <code>sap.m.P13nConditionPanel</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachDataChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.P13nConditionPanel;

	/**
	* Creates a new subclass of class sap.m.P13nConditionPanel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAlwaysShowAddIcon alwaysShowAddIcon}.

makes the Add icon visible on each condition row. If is set to false the Add is only visible at the end and you can only append a new condition.

Default value is <code>true</code>.
	* @return	Value of property <code>alwaysShowAddIcon</code>
	*/
	public function getAlwaysShowAddIcon( ):Bool;

	/**
	* Gets current value of property {@link #getAutoAddNewRow autoAddNewRow}.

adds initial a new empty condition row

Default value is <code>false</code>.
	* @return	Value of property <code>autoAddNewRow</code>
	*/
	public function getAutoAddNewRow( ):Bool;

	/**
	* Gets current value of property {@link #getAutoReduceKeyFieldItems autoReduceKeyFieldItems}.

KeyField value can only be selected once. When you set the property to <code>true</code> the ConditionPanel will automatically offers on the KeyField drop down only the keyFields which are not used. The default behavior is that in each keyField dropdown all keyfields are listed.

Default value is <code>false</code>.
	* @return	Value of property <code>autoReduceKeyFieldItems</code>
	*/
	public function getAutoReduceKeyFieldItems( ):Bool;

	/**
	* returns array of all defined conditions.
	* @return	array of Conditions
	*/
	public function getConditions( ):Array<Dynamic>;

	/**
	* Gets current value of property {@link #getContainerQuery containerQuery}.

defines if the mediaQuery or a ContainerResize will be used for layout update. When the <code>P13nConditionPanel</code> is used on a dialog the property should be set to <code>true</code>!

Default value is <code>false</code>.
	* @return	Value of property <code>containerQuery</code>
	*/
	public function getContainerQuery( ):Bool;

	/**
	* Gets current value of property {@link #getDisableFirstRemoveIcon disableFirstRemoveIcon}.

makes the remove icon on the first condition row disabled when only one condition exist.

Default value is <code>false</code>.
	* @return	Value of property <code>disableFirstRemoveIcon</code>
	*/
	public function getDisableFirstRemoveIcon( ):Bool;

	/**
	* Gets current value of property {@link #getDisplayFormat displayFormat}.

This represents the displayFormat of the condition Values. With the value "UpperCase" the entered value of the condition will be converted to upperCase.
	* @return	Value of property <code>displayFormat</code>
	*/
	public function getDisplayFormat( ):String;

	/**
	* Gets current value of property {@link #getExclude exclude}.

exclude options for filter

Default value is <code>false</code>.
	* @return	Value of property <code>exclude</code>
	*/
	public function getExclude( ):Bool;

	/**
	* creates and returns a formatted text for the specified condition
	* @param	sOperation the operation type sap.m.P13nConditionOperation
	* @param	sValue1 value of the first range field
	* @param	sValue2 value of the second range field
	* @param	bExclude indicates if the range is an Exclude range
	* @return	the range token text. An empty string when no operation matches or the values for the operation are wrong
	*/
	public static function getFormatedConditionText( sOperation:String, sValue1:String, sValue2:String, bExclude:Bool):String;

	/**
	* getter for KeyFields array
	* @return	array of KeyFields <code>[{key: "CompanyCode", text: "ID"}, {key:"CompanyName", text : "Name"}]</code>
	*/
	public function getKeyFields( ):Array<Dynamic>;

	/**
	* Gets current value of property {@link #getLayoutMode layoutMode}.

can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or "Phone" you can set a fixed layout.
	* @return	Value of property <code>layoutMode</code>
	*/
	public function getLayoutMode( ):String;

	/**
	* Gets current value of property {@link #getMaxConditions maxConditions}.

defines the max number of conditions on the ConditionPanel

Default value is <code>-1</code>.
	* @return	Value of property <code>maxConditions</code>
	*/
	public function getMaxConditions( ):String;

	/**
	* Returns a metadata object for class sap.m.P13nConditionPanel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* returns the default array of operations
	* @param	sType defines the type for which the operations should be returned.
	* @return	array of operations
	*/
	public function getOperations( ?sType:String):Array<sap.m.P13nConditionOperation>;

	/**
	* Gets current value of property {@link #getShowLabel showLabel}.

show additional labels in the condition

Default value is <code>false</code>.
	* @return	Value of property <code>showLabel</code>
	*/
	public function getShowLabel( ):Bool;

	/**
	* Gets current value of property {@link #getUsePrevConditionSetting usePrevConditionSetting}.

new added condition use the settings from the previous condition as default.

Default value is <code>true</code>.
	* @return	Value of property <code>usePrevConditionSetting</code>
	*/
	public function getUsePrevConditionSetting( ):Bool;

	/**
	* Gets current value of property {@link #getValidationExecutor validationExecutor}.

Calls the validation listener tbd...
	* @return	Value of property <code>validationExecutor</code>
	*/
	public function getValidationExecutor( ):Dynamic;

	/**
	* insert a single condition.
	* @param	oCondition the new condition of type <code>{ "key": "007", "operation": sap.m.P13nConditionOperation.Ascending, "keyField": "keyFieldKey", "value1": "", "value2": ""};</code>
	* @param	index of the new condition
	* @return	Void
	*/
	public function insertCondition( oCondition:Dynamic, index:Int):Void;

	/**
	* remove all conditions.
	* @return	Void
	*/
	public function removeAllConditions( ):Void;

	/**
	* removes all KeyFields
	* @return	Void
	*/
	public function removeAllKeyFields( ):Void;

	/**
	* remove all operations
	* @param	sType defines the type for which all operations should be removed
	* @return	Void
	*/
	public function removeAllOperations( sType:String):Void;

	/**
	* remove a single condition.
	* @param	vCondition is the condition which should be removed. can be either a string with the key of the condition of the condition object itself.
	* @return	Void
	*/
	public function removeCondition( vCondition:Dynamic):Void;

	/**
	* removes all invalid conditions.
	* @return	Void
	*/
	public function removeInvalidConditions( ):Void;

	/**
	* removes all errors/warning states from the value1/2 fields of all conditions.
	* @return	Void
	*/
	public function removeValidationErrors( ):Void;

	/**
	* Sets a new value for property {@link #getAutoAddNewRow autoAddNewRow}.

adds initial a new empty condition row

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAutoAddNewRow New value for property <code>autoAddNewRow</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoAddNewRow( ?bAutoAddNewRow:Bool):sap.m.P13nConditionPanel;

	/**
	* Sets a new value for property {@link #getAutoReduceKeyFieldItems autoReduceKeyFieldItems}.

KeyField value can only be selected once. When you set the property to <code>true</code> the ConditionPanel will automatically offers on the KeyField drop down only the keyFields which are not used. The default behavior is that in each keyField dropdown all keyfields are listed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAutoReduceKeyFieldItems New value for property <code>autoReduceKeyFieldItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoReduceKeyFieldItems( ?bAutoReduceKeyFieldItems:Bool):sap.m.P13nConditionPanel;

	/**
	* This method must be used to assign a list of conditions.
	* @param	aConditions array of Conditions.
	* @return	Void
	*/
	public function setConditions( aConditions:Array<Dynamic>):Void;

	/**
	* Sets a new value for property {@link #getDisableFirstRemoveIcon disableFirstRemoveIcon}.

makes the remove icon on the first condition row disabled when only one condition exist.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bDisableFirstRemoveIcon New value for property <code>disableFirstRemoveIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisableFirstRemoveIcon( ?bDisableFirstRemoveIcon:Bool):sap.m.P13nConditionPanel;

	/**
	* Sets a new value for property {@link #getDisplayFormat displayFormat}.

This represents the displayFormat of the condition Values. With the value "UpperCase" the entered value of the condition will be converted to upperCase.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDisplayFormat New value for property <code>displayFormat</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayFormat( sDisplayFormat:String):sap.m.P13nConditionPanel;

	/**
	* Sets a new value for property {@link #getExclude exclude}.

exclude options for filter

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bExclude New value for property <code>exclude</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExclude( ?bExclude:Bool):sap.m.P13nConditionPanel;

	/**
	* This method allows you to specify the KeyFields for the conditions. You can set an array of object with Key and Text properties to define the keyfields.
	* @param	aKeyFields array of KeyFields <code>[{key: "CompanyCode", text: "ID"}, {key:"CompanyName", text : "Name"}]</code>
	* @return	Void
	*/
	public function setKeyFields( aKeyFields:Array<Dynamic>):Void;

	/**
	* Sets a new value for property {@link #getMaxConditions maxConditions}.

defines the max number of conditions on the ConditionPanel

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>-1</code>.
	* @param	sMaxConditions New value for property <code>maxConditions</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxConditions( ?sMaxConditions:String):sap.m.P13nConditionPanel;

	/**
	* setter for the supported operations which we show per condition row. This array of "default" operations will only be used when we do not have on the keyfield itself some specific operations and a keyfield is of not of type date or numeric.
	* @param	aOperations array of operations <code>[sap.m.P13nConditionOperation.BT, sap.m.P13nConditionOperation.EQ]</code>
	* @param	sType defines the type for which this operations will be used. is <code>sType</code> is not defined the operations will be used as default operations.
	* @return	Void
	*/
	public function setOperations( aOperations:Array<sap.m.P13nConditionOperation>, sType:String):Void;

	/**
	* Sets a new value for property {@link #getShowLabel showLabel}.

show additional labels in the condition

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowLabel New value for property <code>showLabel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowLabel( ?bShowLabel:Bool):sap.m.P13nConditionPanel;

	/**
	* Sets a new value for property {@link #getUsePrevConditionSetting usePrevConditionSetting}.

new added condition use the settings from the previous condition as default.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bUsePrevConditionSetting New value for property <code>usePrevConditionSetting</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUsePrevConditionSetting( ?bUsePrevConditionSetting:Bool):sap.m.P13nConditionPanel;

	/**
	* Sets a new value for property {@link #getValidationExecutor validationExecutor}.

Calls the validation listener tbd...

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oValidationExecutor New value for property <code>validationExecutor</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValidationExecutor( oValidationExecutor:Dynamic):sap.m.P13nConditionPanel;
}

typedef P13nConditionPanelArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* defines the max number of conditions on the ConditionPanel
	*/
	@:optional var maxConditions:String;

	/**
	* exclude options for filter
	*/
	@:optional var exclude:haxe.extern.EitherType<String,Bool>;

	/**
	* defines if the mediaQuery or a ContainerResize will be used for layout update. When the <code>P13nConditionPanel</code> is used on a dialog the property should be set to <code>true</code>!
	*/
	@:optional var containerQuery:haxe.extern.EitherType<String,Bool>;

	/**
	* adds initial a new empty condition row
	*/
	@:optional var autoAddNewRow:haxe.extern.EitherType<String,Bool>;

	/**
	* makes the remove icon on the first condition row disabled when only one condition exist.
	*/
	@:optional var disableFirstRemoveIcon:haxe.extern.EitherType<String,Bool>;

	/**
	* makes the Add icon visible on each condition row. If is set to false the Add is only visible at the end and you can only append a new condition.
	*/
	@:optional var alwaysShowAddIcon:haxe.extern.EitherType<String,Bool>;

	/**
	* new added condition use the settings from the previous condition as default.
	*/
	@:optional var usePrevConditionSetting:haxe.extern.EitherType<String,Bool>;

	/**
	* KeyField value can only be selected once. When you set the property to <code>true</code> the ConditionPanel will automatically offers on the KeyField drop down only the keyFields which are not used. The default behavior is that in each keyField dropdown all keyfields are listed.
	*/
	@:optional var autoReduceKeyFieldItems:haxe.extern.EitherType<String,Bool>;

	/**
	* can be used to control the layout behavior. Default is "" which will automatically change the layout. With "Desktop", "Table" or "Phone" you can set a fixed layout.
	*/
	@:optional var layoutMode:String;

	/**
	* show additional labels in the condition
	*/
	@:optional var showLabel:haxe.extern.EitherType<String,Bool>;

	/**
	* This represents the displayFormat of the condition Values. With the value "UpperCase" the entered value of the condition will be converted to upperCase.
	*/
	@:optional var displayFormat:String;

	/**
	* Calls the validation listener tbd...
	*/
	@:optional var validationExecutor:haxe.extern.EitherType<String,Dynamic>;

    /**
    * Content for the ConditionPanel. This aggregation is not public!
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Workaround for updating the binding
	*/
	@:optional var dataChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
