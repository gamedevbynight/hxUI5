package sap.m;

@:native("sap.m.P13nItem")

/**
* Base type for <code>items</code> aggregation in <code>P13nPanel</code> control.
*/
extern class P13nItem extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:P13nItemArgs):Void {})
	public function new(?mSettings:P13nItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.P13nItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAggregationRole aggregationRole}.

Defines aggregation role
	* @return	Value of property <code>aggregationRole</code>
	*/
	public function getAggregationRole( ):String;

	/**
	* Gets current value of property {@link #getColumnKey columnKey}.

Can be used as input for subsequent actions.
	* @return	Value of property <code>columnKey</code>
	*/
	public function getColumnKey( ):String;

	/**
	* Gets current value of property {@link #getDescription description}.

Defines additional information of the link.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getFormatSettings formatSettings}.

A JSON object containing the formatSettings which will be used to pass additional type/format settings for the entered value. if type==time or date or datetime the object will be used for the DateFormatter, TimeFormatter or DateTimeFormatter

<i>Below you can find a brief example</i>

<pre><code>
{
		UTC: false,
		style: "medium" //"short" or "long"
}
</code></pre>
	* @return	Value of property <code>formatSettings</code>
	*/
	public function getFormatSettings( ):Dynamic;

	/**
	* Gets current value of property {@link #getHref href}.

Defines href of a link.
	* @return	Value of property <code>href</code>
	*/
	public function getHref( ):String;

	/**
	* Gets current value of property {@link #getIsDefault isDefault}.

the column with isDefault==true will be used as the selected column item on the conditionPanel

Default value is <code>false</code>.
	* @return	Value of property <code>isDefault</code>
	*/
	public function getIsDefault( ):Bool;

	/**
	* Gets current value of property {@link #getMaxLength maxLength}.

specifies the number of characters which can be entered in the value fields of the condition panel
	* @return	Value of property <code>maxLength</code>
	*/
	public function getMaxLength( ):String;

	/**
	* Returns a metadata object for class sap.m.P13nItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNullable nullable}.

Defines if the item is nullable

Default value is <code>false</code>.
	* @return	Value of property <code>nullable</code>
	*/
	public function getNullable( ):Bool;

	/**
	* Gets current value of property {@link #getPrecision precision}.

if type==numeric the precision will be used to format the entered value (maxIntegerDigits of the used Formatter)
	* @return	Value of property <code>precision</code>
	*/
	public function getPrecision( ):String;

	/**
	* Gets current value of property {@link #getPress press}.

Defines press handler of a link.
	* @return	Value of property <code>press</code>
	*/
	public function getPress( ):Dynamic;

	/**
	* Gets current value of property {@link #getRole role}.

Defines role. The role is reflected in the manner how the dimension will influence the chart layout.
	* @return	Value of property <code>role</code>
	*/
	public function getRole( ):String;

	/**
	* Gets current value of property {@link #getScale scale}.

if type==numeric the scale will be used to format the entered value (maxFractionDigits of the used Formatter)
	* @return	Value of property <code>scale</code>
	*/
	public function getScale( ):String;

	/**
	* Gets current value of property {@link #getTarget target}.

Defines target of a link.
	* @return	Value of property <code>target</code>
	*/
	public function getTarget( ):String;

	/**
	* Gets current value of property {@link #getText text}.

The text to be displayed for the item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getType type}.

data type of the column (text, numeric or date is supported)

Default value is <code>text</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):String;

	/**
	* Gets current value of property {@link #getTypeInstance typeInstance}.

data type instance of the column. Can be used instead of the type, precision, scale and formatSettings properties
	* @return	Value of property <code>typeInstance</code>
	*/
	public function getTypeInstance( ):Dynamic;

	/**
	* Gets current value of property {@link #getValues values}.

the array of values for type bool. e.g. ["", "Off", "On"]. The first entry can be empty (used to blank the value field). Next value represent the false value, last entry the true value.
	* @return	Value of property <code>values</code>
	*/
	public function getValues( ):Array<String>;

	/**
	* Gets current value of property {@link #getVisible visible}.

Defines visibility of column
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines column width
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):String;

	/**
	* Sets a new value for property {@link #getAggregationRole aggregationRole}.

Defines aggregation role

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAggregationRole New value for property <code>aggregationRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAggregationRole( sAggregationRole:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getColumnKey columnKey}.

Can be used as input for subsequent actions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sColumnKey New value for property <code>columnKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnKey( sColumnKey:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getDescription description}.

Defines additional information of the link.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( sDescription:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getFormatSettings formatSettings}.

A JSON object containing the formatSettings which will be used to pass additional type/format settings for the entered value. if type==time or date or datetime the object will be used for the DateFormatter, TimeFormatter or DateTimeFormatter

<i>Below you can find a brief example</i>

<pre><code>
{
		UTC: false,
		style: "medium" //"short" or "long"
}
</code></pre>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oFormatSettings New value for property <code>formatSettings</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFormatSettings( oFormatSettings:Dynamic):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getHref href}.

Defines href of a link.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHref New value for property <code>href</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHref( sHref:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getIsDefault isDefault}.

the column with isDefault==true will be used as the selected column item on the conditionPanel

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bIsDefault New value for property <code>isDefault</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIsDefault( ?bIsDefault:Bool):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getMaxLength maxLength}.

specifies the number of characters which can be entered in the value fields of the condition panel

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMaxLength New value for property <code>maxLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLength( sMaxLength:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getNullable nullable}.

Defines if the item is nullable

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bNullable New value for property <code>nullable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNullable( ?bNullable:Bool):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getPrecision precision}.

if type==numeric the precision will be used to format the entered value (maxIntegerDigits of the used Formatter)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sPrecision New value for property <code>precision</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPrecision( sPrecision:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getPress press}.

Defines press handler of a link.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oPress New value for property <code>press</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPress( oPress:Dynamic):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getRole role}.

Defines role. The role is reflected in the manner how the dimension will influence the chart layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sRole New value for property <code>role</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRole( sRole:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getScale scale}.

if type==numeric the scale will be used to format the entered value (maxFractionDigits of the used Formatter)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sScale New value for property <code>scale</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScale( sScale:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getTarget target}.

Defines target of a link.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTarget New value for property <code>target</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTarget( sTarget:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getText text}.

The text to be displayed for the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( ?sText:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getType type}.

data type of the column (text, numeric or date is supported)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>text</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:String):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getTypeInstance typeInstance}.

data type instance of the column. Can be used instead of the type, precision, scale and formatSettings properties

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oTypeInstance New value for property <code>typeInstance</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTypeInstance( oTypeInstance:Dynamic):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getValues values}.

the array of values for type bool. e.g. ["", "Off", "On"]. The first entry can be empty (used to blank the value field). Next value represent the false value, last entry the true value.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sValues New value for property <code>values</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValues( sValues:Array<String>):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Defines visibility of column

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.m.P13nItem;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines column width

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:String):sap.m.P13nItem;
}

typedef P13nItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Can be used as input for subsequent actions.
	*/
	@:optional var columnKey:String;

	/**
	* The text to be displayed for the item.
	*/
	@:optional var text:String;

	/**
	* Defines visibility of column
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* data type of the column (text, numeric or date is supported)
	*/
	@:optional var type:String;

	/**
	* data type instance of the column. Can be used instead of the type, precision, scale and formatSettings properties
	*/
	@:optional var typeInstance:haxe.extern.EitherType<String,Dynamic>;

	/**
	* if type==numeric the precision will be used to format the entered value (maxIntegerDigits of the used Formatter)
	*/
	@:optional var precision:String;

	/**
	* A JSON object containing the formatSettings which will be used to pass additional type/format settings for the entered value. if type==time or date or datetime the object will be used for the DateFormatter, TimeFormatter or DateTimeFormatter

<i>Below you can find a brief example</i>

<pre><code>
{
		UTC: false,
		style: "medium" //"short" or "long"
}
</code></pre>
	*/
	@:optional var formatSettings:haxe.extern.EitherType<String,Dynamic>;

	/**
	* if type==numeric the scale will be used to format the entered value (maxFractionDigits of the used Formatter)
	*/
	@:optional var scale:String;

	/**
	* specifies the number of characters which can be entered in the value fields of the condition panel
	*/
	@:optional var maxLength:String;

	/**
	* Defines column width
	*/
	@:optional var width:String;

	/**
	* the column with isDefault==true will be used as the selected column item on the conditionPanel
	*/
	@:optional var isDefault:haxe.extern.EitherType<String,Bool>;

	/**
	* the array of values for type bool. e.g. ["", "Off", "On"]. The first entry can be empty (used to blank the value field). Next value represent the false value, last entry the true value.
	*/
	@:optional var values:Array<String>;

	/**
	* Defines role. The role is reflected in the manner how the dimension will influence the chart layout.
	*/
	@:optional var role:String;

	/**
	* Defines aggregation role
	*/
	@:optional var aggregationRole:String;

	/**
	* Defines href of a link.
	*/
	@:optional var href:String;

	/**
	* Defines target of a link.
	*/
	@:optional var target:String;

	/**
	* Defines press handler of a link.
	*/
	@:optional var press:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Defines additional information of the link.
	*/
	@:optional var description:String;

	/**
	* Defines if the item is nullable
	*/
	@:optional var nullable:haxe.extern.EitherType<String,Bool>;
}
