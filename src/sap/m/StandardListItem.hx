package sap.m;

@:native("sap.m.StandardListItem")

/**
* <code>sap.m.StandardListItem</code> is a list item providing the most common use cases, e.g. image, title and description.
*/
extern class StandardListItem extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:StandardListItemArgs):Void {})
	public function new(?mSettings:StandardListItemArgs):Void;

	/**
	* Creates a new subclass of class sap.m.StandardListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getActiveIcon activeIcon}.

Defines the icon that is shown while the list item is pressed.
	* @return	Value of property <code>activeIcon</code>
	*/
	public function getActiveIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getAdaptTitleSize adaptTitleSize}.

By default, the title size adapts to the available space and gets bigger if the description is empty. If you have list items with and without descriptions, this results in titles with different sizes. In this case, it can be better to switch the size adaption off by setting this property to <code>false</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>adaptTitleSize</code>
	*/
	public function getAdaptTitleSize( ):Bool;

	/**
	* Gets current value of property {@link #getDescription description}.

Defines the additional information for the title. <b>Note:</b> This is only visible when the <code>title</code> property is not empty.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the list item icon.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

By default, one or more requests are sent to get the density perfect version of the icon if the given version of the icon doesn't exist on the server. <b>Note:</b> If bandwidth is a key factor for the application, set this value to <code>false</code>.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getIconInset iconInset}.

Defines the indentation of the icon. If set to <code>false</code>, the icon will not be shown as embedded. Instead it will take the full height of the list item.

Default value is <code>true</code>.
	* @return	Value of property <code>iconInset</code>
	*/
	public function getIconInset( ):Bool;

	/**
	* Gets current value of property {@link #getInfo info}.

Defines an additional information text.
	* @return	Value of property <code>info</code>
	*/
	public function getInfo( ):String;

	/**
	* Gets current value of property {@link #getInfoState infoState}.

Defines the state of the information text, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>.

Default value is <code>None</code>.
	* @return	Value of property <code>infoState</code>
	*/
	public function getInfoState( ):sap.ui.core.ValueState;

	/**
	* Gets current value of property {@link #getInfoStateInverted infoStateInverted}.

Determines the inverted rendering behavior of the info text and the info state. The color defined by the <code>infoState</code> property is rendered as the background color for the info text, if this property is set to <code>true</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>infoStateInverted</code>
	*/
	public function getInfoStateInverted( ):Bool;

	/**
	* Gets current value of property {@link #getInfoTextDirection infoTextDirection}.

Defines the <code>info</code> directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>infoTextDirection</code>
	*/
	public function getInfoTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Returns a metadata object for class sap.m.StandardListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title of the list item.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleTextDirection titleTextDirection}.

Defines the <code>title</code> text directionality with enumerated options. By default, the control inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>titleTextDirection</code>
	*/
	public function getTitleTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Defines the wrapping behavior of title and description texts.

<b>Note:</b>

In the desktop mode, initial rendering of the control contains 300 characters along with a button to expand and collapse the text whereas in the phone mode, the character limit is set to 100 characters.

Default value is <code>false</code>.
	* @return	Value of property <code>wrapping</code>
	*/
	public function getWrapping( ):Bool;

	/**
	* Sets a new value for property {@link #getActiveIcon activeIcon}.

Defines the icon that is shown while the list item is pressed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActiveIcon New value for property <code>activeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveIcon( ?sActiveIcon:sap.ui.core.URI):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getAdaptTitleSize adaptTitleSize}.

By default, the title size adapts to the available space and gets bigger if the description is empty. If you have list items with and without descriptions, this results in titles with different sizes. In this case, it can be better to switch the size adaption off by setting this property to <code>false</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAdaptTitleSize New value for property <code>adaptTitleSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdaptTitleSize( ?bAdaptTitleSize:Bool):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getDescription description}.

Defines the additional information for the title. <b>Note:</b> This is only visible when the <code>title</code> property is not empty.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( ?sDescription:String):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Defines the list item icon.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:sap.ui.core.URI):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

By default, one or more requests are sent to get the density perfect version of the icon if the given version of the icon doesn't exist on the server. <b>Note:</b> If bandwidth is a key factor for the application, set this value to <code>false</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( ?bIconDensityAware:Bool):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getIconInset iconInset}.

Defines the indentation of the icon. If set to <code>false</code>, the icon will not be shown as embedded. Instead it will take the full height of the list item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconInset New value for property <code>iconInset</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconInset( ?bIconInset:Bool):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getInfo info}.

Defines an additional information text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sInfo New value for property <code>info</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfo( ?sInfo:String):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getInfoState infoState}.

Defines the state of the information text, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sInfoState New value for property <code>infoState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfoState( ?sInfoState:sap.ui.core.ValueState):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getInfoStateInverted infoStateInverted}.

Determines the inverted rendering behavior of the info text and the info state. The color defined by the <code>infoState</code> property is rendered as the background color for the info text, if this property is set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bInfoStateInverted New value for property <code>infoStateInverted</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfoStateInverted( ?bInfoStateInverted:Bool):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getInfoTextDirection infoTextDirection}.

Defines the <code>info</code> directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sInfoTextDirection New value for property <code>infoTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfoTextDirection( ?sInfoTextDirection:sap.ui.core.TextDirection):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the title of the list item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getTitleTextDirection titleTextDirection}.

Defines the <code>title</code> text directionality with enumerated options. By default, the control inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sTitleTextDirection New value for property <code>titleTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleTextDirection( ?sTitleTextDirection:sap.ui.core.TextDirection):sap.m.StandardListItem;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Defines the wrapping behavior of title and description texts.

<b>Note:</b>

In the desktop mode, initial rendering of the control contains 300 characters along with a button to expand and collapse the text whereas in the phone mode, the character limit is set to 100 characters.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( ?bWrapping:Bool):sap.m.StandardListItem;
}

typedef StandardListItemArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Defines the title of the list item.
	*/
	@:optional var title:String;

	/**
	* Defines the additional information for the title. <b>Note:</b> This is only visible when the <code>title</code> property is not empty.
	*/
	@:optional var description:String;

	/**
	* Defines the list item icon.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the indentation of the icon. If set to <code>false</code>, the icon will not be shown as embedded. Instead it will take the full height of the list item.
	*/
	@:optional var iconInset:haxe.extern.EitherType<String,Bool>;

	/**
	* By default, one or more requests are sent to get the density perfect version of the icon if the given version of the icon doesn't exist on the server. <b>Note:</b> If bandwidth is a key factor for the application, set this value to <code>false</code>.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the icon that is shown while the list item is pressed.
	*/
	@:optional var activeIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines an additional information text.
	*/
	@:optional var info:String;

	/**
	* Defines the state of the information text, e.g. <code>Error</code>, <code>Warning</code>, <code>Success</code>.
	*/
	@:optional var infoState:haxe.extern.EitherType<String,sap.ui.core.ValueState>;

	/**
	* By default, the title size adapts to the available space and gets bigger if the description is empty. If you have list items with and without descriptions, this results in titles with different sizes. In this case, it can be better to switch the size adaption off by setting this property to <code>false</code>.
	*/
	@:optional var adaptTitleSize:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the <code>title</code> text directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var titleTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Defines the <code>info</code> directionality with enumerated options. By default, the control inherits text direction from the DOM.
	*/
	@:optional var infoTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

	/**
	* Defines the wrapping behavior of title and description texts.

<b>Note:</b>

In the desktop mode, initial rendering of the control contains 300 characters along with a button to expand and collapse the text whereas in the phone mode, the character limit is set to 100 characters.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the inverted rendering behavior of the info text and the info state. The color defined by the <code>infoState</code> property is rendered as the background color for the info text, if this property is set to <code>true</code>.
	*/
	@:optional var infoStateInverted:haxe.extern.EitherType<String,Bool>;
}
