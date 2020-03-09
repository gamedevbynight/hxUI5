package sap.ui.commons;

@:native("sap.ui.commons.AutoComplete")

/**
* Textfield with list based text completion.
*/
extern class AutoComplete extends sap.ui.commons.ComboBox implements sap.ui.commons.ToolbarItem
{
	@:overload(function(?sId:String, ?mSettings:AutoCompleteArgs):Void {})
	public function new(?mSettings:AutoCompleteArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:suggest suggest} event of this <code>sap.ui.commons.AutoComplete</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.AutoComplete</code> itself.

Fired when the user has changed the value and a suggestion list update should occur.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.AutoComplete</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSuggest( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.AutoComplete;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:suggest suggest} event of this <code>sap.ui.commons.AutoComplete</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSuggest( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.AutoComplete;

	/**
	* Creates a new subclass of class sap.ui.commons.AutoComplete with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.commons.ComboBox.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEnableScrolling enableScrolling}.

Determines whether scrolling should be enabled when the number of items is higher than maxPopupItems. If set to false only the first n items (n=maxPopupItems) are shown.

Default value is <code>true</code>.
	* @return	Value of property <code>enableScrolling</code>
	*/
	public function getEnableScrolling( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.commons.AutoComplete.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getEnableScrolling enableScrolling}.

Determines whether scrolling should be enabled when the number of items is higher than maxPopupItems. If set to false only the first n items (n=maxPopupItems) are shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEnableScrolling New value for property <code>enableScrolling</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnableScrolling( bEnableScrolling:Bool):sap.ui.commons.AutoComplete;

	/**
	* Sets a custom filter function for items. Default is to check whether the item text begins with the typed value.

Example: <code> function(sValue, oItem){ return jQuery.sap.startsWithIgnoreCase(oItem.getText(), sValue); } </code>
	* @param	fFilter The filter function. If not set the default filter function will be used.
	* @return	Void
	*/
	public function setFilterFunction( ?fFilter:()->Void):Void;
}

typedef AutoCompleteArgs = sap.ui.commons.ComboBox.ComboBoxArgs & {

	/**
	* Determines whether scrolling should be enabled when the number of items is higher than maxPopupItems. If set to false only the first n items (n=maxPopupItems) are shown.
	*/
	@:optional var enableScrolling:haxe.extern.EitherType<String,Bool>;

	/**
	* Fired when the user has changed the value and a suggestion list update should occur.
	*/
	@:optional var suggest:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
