package sap.ui.table;

@:native("sap.ui.table.RowSettings")

/**
* The <code>RowSettings</code> control allows you to configure a row. You can only use this control in the context of the <code>sap.ui.table.Table</code> control to define row settings.
*/
extern class RowSettings extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:RowSettingsArgs):Void {})
	public function new(?mSettings:RowSettingsArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.table.RowSettings with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getHighlight highlight}.

The highlight state of the rows.

If the highlight is set to {@link sap.ui.core.MessageType sap.ui.core.MessageType.None} (default), no highlights are visible. Valid values for the <code>highlight</code> property are values of the enumerations {@link sap.ui.core.MessageType} or {@link sap.ui.core.IndicationColor}.

Accessibility support is provided through the associated {@link sap.ui.table.RowSettings#setHighlightText highlightText} property. If the <code>highlight</code> property is set to a value of {@link sap.ui.core.MessageType}, the <code>highlightText</code> property does not need to be set because a default text is used. However, the default text can be overridden by setting the <code>highlightText</code> property. In all other cases the <code>highlightText</code> property must be set.

Default value is <code>None</code>.
	* @return	Value of property <code>highlight</code>
	*/
	public function getHighlight( ):String;

	/**
	* Gets current value of property {@link #getHighlightText highlightText}.

Defines the semantics of the {@link sap.ui.table.RowSettings#setHighlight highlight} property for accessibility purposes.

Default value is <code>empty string</code>.
	* @return	Value of property <code>highlightText</code>
	*/
	public function getHighlightText( ):String;

	/**
	* Returns a metadata object for class sap.ui.table.RowSettings.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNavigated navigated}.

The navigated state of a row.

If set to <code>true</code>, a navigation indicator is displayed at the end of the row. <b>Note:</b> The navigation indicator is only visible if row actions are available.

Default value is <code>false</code>.
	* @return	Value of property <code>navigated</code>
	*/
	public function getNavigated( ):Bool;

	/**
	* Sets a new value for property {@link #getHighlight highlight}.

The highlight state of the rows.

If the highlight is set to {@link sap.ui.core.MessageType sap.ui.core.MessageType.None} (default), no highlights are visible. Valid values for the <code>highlight</code> property are values of the enumerations {@link sap.ui.core.MessageType} or {@link sap.ui.core.IndicationColor}.

Accessibility support is provided through the associated {@link sap.ui.table.RowSettings#setHighlightText highlightText} property. If the <code>highlight</code> property is set to a value of {@link sap.ui.core.MessageType}, the <code>highlightText</code> property does not need to be set because a default text is used. However, the default text can be overridden by setting the <code>highlightText</code> property. In all other cases the <code>highlightText</code> property must be set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sHighlight New value for property <code>highlight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHighlight( ?sHighlight:String):sap.ui.table.RowSettings;

	/**
	* Sets a new value for property {@link #getHighlightText highlightText}.

Defines the semantics of the {@link sap.ui.table.RowSettings#setHighlight highlight} property for accessibility purposes.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHighlightText New value for property <code>highlightText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHighlightText( ?sHighlightText:String):sap.ui.table.RowSettings;

	/**
	* Sets a new value for property {@link #getNavigated navigated}.

The navigated state of a row.

If set to <code>true</code>, a navigation indicator is displayed at the end of the row. <b>Note:</b> The navigation indicator is only visible if row actions are available.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bNavigated New value for property <code>navigated</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNavigated( ?bNavigated:Bool):sap.ui.table.RowSettings;
}

typedef RowSettingsArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The highlight state of the rows.

If the highlight is set to {@link sap.ui.core.MessageType sap.ui.core.MessageType.None} (default), no highlights are visible. Valid values for the <code>highlight</code> property are values of the enumerations {@link sap.ui.core.MessageType} or {@link sap.ui.core.IndicationColor}.

Accessibility support is provided through the associated {@link sap.ui.table.RowSettings#setHighlightText highlightText} property. If the <code>highlight</code> property is set to a value of {@link sap.ui.core.MessageType}, the <code>highlightText</code> property does not need to be set because a default text is used. However, the default text can be overridden by setting the <code>highlightText</code> property. In all other cases the <code>highlightText</code> property must be set.
	*/
	@:optional var highlight:String;

	/**
	* Defines the semantics of the {@link sap.ui.table.RowSettings#setHighlight highlight} property for accessibility purposes.
	*/
	@:optional var highlightText:String;

	/**
	* The navigated state of a row.

If set to <code>true</code>, a navigation indicator is displayed at the end of the row. <b>Note:</b> The navigation indicator is only visible if row actions are available.
	*/
	@:optional var navigated:haxe.extern.EitherType<String,Bool>;
}
