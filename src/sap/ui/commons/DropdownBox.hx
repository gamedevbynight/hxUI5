package sap.ui.commons;

@:native("sap.ui.commons.DropdownBox")

/**
* The control provides a field that allows end users to an entry out of a list of pre-defined items. The choosable items can be provided in the form of a complete <code>ListBox</code>, single <code>ListItems</code>.
*/
extern class DropdownBox extends sap.ui.commons.ComboBox
{
	@:overload(function(?sId:String, ?mSettings:DropdownBoxArgs):Void {})
	public function new(?mSettings:DropdownBoxArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:searchHelp searchHelp} event of this <code>sap.ui.commons.DropdownBox</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.DropdownBox</code> itself.

Event fired whenever the configured searchHelpItem is clicked or the searchHelpItem is configured and F4 key is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.DropdownBox</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSearchHelp( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.DropdownBox;

	/**
	* Using this method the history of the DropdownBox can be cleared. This might be necessary if the items of the DropdownBox have changed. Otherwise invalid items may appear in the history.
	* @return	Void
	*/
	public function clearHistory( ):Void;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:searchHelp searchHelp} event of this <code>sap.ui.commons.DropdownBox</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSearchHelp( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.DropdownBox;

	/**
	* Creates a new subclass of class sap.ui.commons.DropdownBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.ComboBox.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getMaxHistoryItems maxHistoryItems}.

Maximum number of history items in the list.

If 0 no history is displayed or stored. The history is locally stored on the client. Therefore do not activate this feature when this control handles confidential data.

Default value is <code>0</code>.
	* @return	Value of property <code>maxHistoryItems</code>
	*/
	public function getMaxHistoryItems( ):Int;

	/**
	* Returns a metadata object for class sap.ui.commons.DropdownBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSearchHelpAdditionalText searchHelpAdditionalText}.

(optional) The additional Text to use for the search help entry.
	* @return	Value of property <code>searchHelpAdditionalText</code>
	*/
	public function getSearchHelpAdditionalText( ):String;

	/**
	* Gets current value of property {@link #getSearchHelpEnabled searchHelpEnabled}.

Whether the DropdownBox's search help should be enabled.

Default value is <code>false</code>.
	* @return	Value of property <code>searchHelpEnabled</code>
	*/
	public function getSearchHelpEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getSearchHelpIcon searchHelpIcon}.

(optional) The URI of the icon to use for the search help entry.
	* @return	Value of property <code>searchHelpIcon</code>
	*/
	public function getSearchHelpIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getSearchHelpText searchHelpText}.

(optional) The text to use for the search help entry.
	* @return	Value of property <code>searchHelpText</code>
	*/
	public function getSearchHelpText( ):String;

	/**
	* Extends the method inherited from sap.ui.core.Element by providing information on Search Help access (if needed)
	* @return	string tooltip or undefined
	*/
	public function getTooltip_AsString( ):String;

	/**
	* Sets a new value for property {@link #getMaxHistoryItems maxHistoryItems}.

Maximum number of history items in the list.

If 0 no history is displayed or stored. The history is locally stored on the client. Therefore do not activate this feature when this control handles confidential data.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxHistoryItems New value for property <code>maxHistoryItems</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxHistoryItems( ?iMaxHistoryItems:Int):sap.ui.commons.DropdownBox;

	/**
	* Overwrite of Setter for property <code>searchHelpAdditionalText</code>.

Default value is empty/<code>undefined</code>
	* @param	sSearchHelpAdditionalText new value for property <code>searchHelpAdditionalText</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSearchHelpAdditionalText( sSearchHelpAdditionalText:String):sap.ui.commons.DropdownBox;

	/**
	* Overwrite of Setter for property <code>searchHelpEnabled</code>. This method accepts additional parameter to be compatiple with the previous functionality

Default value is <code>false</code>
	* @param	bEnabled new value for property <code>searchHelpEnabled</code>
	* @param	sText new value for property <code>searchHelpText</code>
	* @param	sAdditionalText new value for property <code>searchHelpAdditionalText</code>
	* @param	sIcon new value for property <code>searchHelpIcon</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSearchHelpEnabled( bEnabled:Bool, sText:String, sAdditionalText:String, sIcon:String):sap.ui.commons.DropdownBox;

	/**
	* Overwrite of Setter for property <code>searchHelpIcon</code>.

Default value is empty/<code>undefined</code>
	* @param	sSearchHelpIcon new value for property <code>searchHelpIcon</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSearchHelpIcon( sSearchHelpIcon:sap.ui.core.URI):sap.ui.commons.DropdownBox;

	/**
	* Overwrite of Setter for property <code>searchHelpText</code>.

Default value is empty/<code>undefined</code>
	* @param	sSearchHelpText new value for property <code>searchHelpText</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSearchHelpText( sSearchHelpText:String):sap.ui.commons.DropdownBox;
}

typedef DropdownBoxArgs = sap.ui.commons.ComboBox.ComboBoxArgs & {

	/**
	* Whether the DropdownBox's search help should be enabled.
	*/
	@:optional var searchHelpEnabled:haxe.extern.EitherType<String,Bool>;

	/**
	* (optional) The text to use for the search help entry.
	*/
	@:optional var searchHelpText:String;

	/**
	* (optional) The additional Text to use for the search help entry.
	*/
	@:optional var searchHelpAdditionalText:String;

	/**
	* (optional) The URI of the icon to use for the search help entry.
	*/
	@:optional var searchHelpIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Maximum number of history items in the list.

If 0 no history is displayed or stored. The history is locally stored on the client. Therefore do not activate this feature when this control handles confidential data.
	*/
	@:optional var maxHistoryItems:haxe.extern.EitherType<String,Int>;

	/**
	* Event fired whenever the configured searchHelpItem is clicked or the searchHelpItem is configured and F4 key is pressed.
	*/
	@:optional var searchHelp:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
