package sap.m;

@:native("sap.m.FeedListItem")

/**
* The control provides a set of properties for text, sender information, time stamp. Beginning with release 1.23 the new feature expand / collapse was introduced, which uses the property maxCharacters. Beginning with release 1.44, sap.m.FormattedText was introduced which allows html formatted text to be displayed
*/
extern class FeedListItem extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:FeedListItemArgs):Void {})
	public function new(?mSettings:FeedListItemArgs):Void;

	/**
	* Adds some action to the aggregation {@link #getActions actions}.
	* @param	oAction The action to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAction( oAction:sap.m.FeedListItemAction):sap.m.FeedListItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:iconPress iconPress} event of this <code>sap.m.FeedListItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FeedListItem</code> itself.

Event is fired when the icon is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FeedListItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachIconPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.FeedListItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:senderPress senderPress} event of this <code>sap.m.FeedListItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.FeedListItem</code> itself.

Event is fired when name of the sender is pressed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.FeedListItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSenderPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.FeedListItem;

	/**
	* Destroys all the actions in the aggregation {@link #getActions actions}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyActions( ):sap.m.FeedListItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:iconPress iconPress} event of this <code>sap.m.FeedListItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachIconPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.FeedListItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:senderPress senderPress} event of this <code>sap.m.FeedListItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSenderPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.FeedListItem;

	/**
	* Creates a new subclass of class sap.m.FeedListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getActions actions}.

Contains {@link sap.m.FeedListItemAction elements} that are displayed in the action sheet.
	* @return	null
	*/
	public function getActions( ):Array<sap.m.FeedListItemAction>;

	/**
	* Gets current value of property {@link #getActiveIcon activeIcon}.

Icon displayed when the list item is active.
	* @return	Value of property <code>activeIcon</code>
	*/
	public function getActiveIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getConvertedLinksDefaultTarget convertedLinksDefaultTarget}.

Determines the target attribute of the generated HTML anchor tags. Note: Applicable only if ConvertLinksToAnchorTags property is used with a value other than sap.m.LinkConversion.None. Options are the standard values for the target attribute of the HTML anchor tag: _self, _top, _blank, _parent, _search.

Default value is <code>_blank</code>.
	* @return	Value of property <code>convertedLinksDefaultTarget</code>
	*/
	public function getConvertedLinksDefaultTarget( ):String;

	/**
	* Gets current value of property {@link #getConvertLinksToAnchorTags convertLinksToAnchorTags}.

Determines whether strings that appear to be links will be converted to HTML anchor tags, and what are the criteria for recognizing them.

Default value is <code>None</code>.
	* @return	Value of property <code>convertLinksToAnchorTags</code>
	*/
	public function getConvertLinksToAnchorTags( ):sap.m.LinkConversion;

	/**
	* Gets current value of property {@link #getIcon icon}.

Icon to be displayed as graphical element within the FeedListItem. This can be an image or an icon from the icon font. If no icon is provided, a default person-placeholder icon is displayed. Icon is only shown if showIcon = true.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconActive iconActive}.

If true, icon is a link, which will fire 'iconPress' events. If false, icon is normal image

Default value is <code>true</code>.
	* @return	Value of property <code>iconActive</code>
	*/
	public function getIconActive( ):Bool;

	/**
	* Gets current value of property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is the key for the application, set this value to false.

Default value is <code>true</code>.
	* @return	Value of property <code>iconDensityAware</code>
	*/
	public function getIconDensityAware( ):Bool;

	/**
	* Gets current value of property {@link #getInfo info}.

The Info text.
	* @return	Value of property <code>info</code>
	*/
	public function getInfo( ):String;

	/**
	* Gets current value of property {@link #getLessLabel lessLabel}.

Customizable text for the "LESS" link at the end of the feed list item.<br> Clicking the "LESS" link collapses the item, hiding the text that exceeds the allowed maximum number of characters.
	* @return	Value of property <code>lessLabel</code>
	*/
	public function getLessLabel( ):String;

	/**
	* Gets current value of property {@link #getMaxCharacters maxCharacters}.

The expand and collapse feature is set by default and uses 300 characters on mobile devices and 500 characters on desktops as limits. Based on these values, the text of the FeedListItem is collapsed once text reaches these limits. In this case, only the specified number of characters is displayed. By clicking on the text link More, the entire text can be displayed. The text link Less collapses the text. The application is able to set the value to its needs.
	* @return	Value of property <code>maxCharacters</code>
	*/
	public function getMaxCharacters( ):Int;

	/**
	* Returns a metadata object for class sap.m.FeedListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMoreLabel moreLabel}.

Customizable text for the "MORE" link at the end of the feed list item.<br> When the maximum number of characters defined by the <code>maxCharacters</code> property is exceeded and the text of the feed list item is collapsed, the "MORE" link can be used to expand the feed list item and show the rest of the text.
	* @return	Value of property <code>moreLabel</code>
	*/
	public function getMoreLabel( ):String;

	/**
	* Gets current value of property {@link #getSender sender}.

Sender of the chunk
	* @return	Value of property <code>sender</code>
	*/
	public function getSender( ):String;

	/**
	* Gets current value of property {@link #getSenderActive senderActive}.

If true, sender string is a link, which will fire 'senderPress' events. If false, sender is normal text.

Default value is <code>true</code>.
	* @return	Value of property <code>senderActive</code>
	*/
	public function getSenderActive( ):Bool;

	/**
	* Gets current value of property {@link #getShowIcon showIcon}.

If set to "true" (default), icons will be displayed, if set to false icons are hidden

Default value is <code>true</code>.
	* @return	Value of property <code>showIcon</code>
	*/
	public function getShowIcon( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

The FeedListItem text. It supports html formatted tags as described in the documentation of sap.m.FormattedText
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Gets current value of property {@link #getTimestamp timestamp}.

This chunks timestamp
	* @return	Value of property <code>timestamp</code>
	*/
	public function getTimestamp( ):String;

	/**
	* Checks for the provided <code>sap.m.FeedListItemAction</code> in the aggregation {@link #getActions actions}. and returns its index if found or -1 otherwise.
	* @param	oAction The action whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfAction( oAction:sap.m.FeedListItemAction):Int;

	/**
	* Inserts a action into the aggregation {@link #getActions actions}.
	* @param	oAction The action to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the action should be inserted at; for a negative value of <code>iIndex</code>, the action is inserted at position 0; for a value greater than the current size of the aggregation, the action is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertAction( oAction:sap.m.FeedListItemAction, iIndex:Int):sap.m.FeedListItem;
	@:overload( function(vAction:Int):sap.m.FeedListItemAction{ })
	@:overload( function(vAction:String):sap.m.FeedListItemAction{ })

	/**
	* Removes a action from the aggregation {@link #getActions actions}.
	* @param	vAction The action to remove or its index or id
	* @return	The removed action or <code>null</code>
	*/
	public function removeAction( vAction:sap.m.FeedListItemAction):sap.m.FeedListItemAction;

	/**
	* Removes all the controls from the aggregation {@link #getActions actions}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllActions( ):Array<sap.m.FeedListItemAction>;

	/**
	* Sets a new value for property {@link #getActiveIcon activeIcon}.

Icon displayed when the list item is active.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sActiveIcon New value for property <code>activeIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveIcon( sActiveIcon:sap.ui.core.URI):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getConvertedLinksDefaultTarget convertedLinksDefaultTarget}.

Determines the target attribute of the generated HTML anchor tags. Note: Applicable only if ConvertLinksToAnchorTags property is used with a value other than sap.m.LinkConversion.None. Options are the standard values for the target attribute of the HTML anchor tag: _self, _top, _blank, _parent, _search.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>_blank</code>.
	* @param	sConvertedLinksDefaultTarget New value for property <code>convertedLinksDefaultTarget</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setConvertedLinksDefaultTarget( sConvertedLinksDefaultTarget:String):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getConvertLinksToAnchorTags convertLinksToAnchorTags}.

Determines whether strings that appear to be links will be converted to HTML anchor tags, and what are the criteria for recognizing them.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sConvertLinksToAnchorTags New value for property <code>convertLinksToAnchorTags</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setConvertLinksToAnchorTags( sConvertLinksToAnchorTags:sap.m.LinkConversion):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Icon to be displayed as graphical element within the FeedListItem. This can be an image or an icon from the icon font. If no icon is provided, a default person-placeholder icon is displayed. Icon is only shown if showIcon = true.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getIconActive iconActive}.

If true, icon is a link, which will fire 'iconPress' events. If false, icon is normal image

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconActive New value for property <code>iconActive</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconActive( bIconActive:Bool):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getIconDensityAware iconDensityAware}.

By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is the key for the application, set this value to false.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bIconDensityAware New value for property <code>iconDensityAware</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconDensityAware( bIconDensityAware:Bool):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getInfo info}.

The Info text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sInfo New value for property <code>info</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInfo( sInfo:String):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getLessLabel lessLabel}.

Customizable text for the "LESS" link at the end of the feed list item.<br> Clicking the "LESS" link collapses the item, hiding the text that exceeds the allowed maximum number of characters.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLessLabel New value for property <code>lessLabel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLessLabel( sLessLabel:String):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getMaxCharacters maxCharacters}.

The expand and collapse feature is set by default and uses 300 characters on mobile devices and 500 characters on desktops as limits. Based on these values, the text of the FeedListItem is collapsed once text reaches these limits. In this case, only the specified number of characters is displayed. By clicking on the text link More, the entire text can be displayed. The text link Less collapses the text. The application is able to set the value to its needs.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iMaxCharacters New value for property <code>maxCharacters</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxCharacters( iMaxCharacters:Int):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getMoreLabel moreLabel}.

Customizable text for the "MORE" link at the end of the feed list item.<br> When the maximum number of characters defined by the <code>maxCharacters</code> property is exceeded and the text of the feed list item is collapsed, the "MORE" link can be used to expand the feed list item and show the rest of the text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMoreLabel New value for property <code>moreLabel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMoreLabel( sMoreLabel:String):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getSender sender}.

Sender of the chunk

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSender New value for property <code>sender</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSender( sSender:String):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getSenderActive senderActive}.

If true, sender string is a link, which will fire 'senderPress' events. If false, sender is normal text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSenderActive New value for property <code>senderActive</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSenderActive( bSenderActive:Bool):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getShowIcon showIcon}.

If set to "true" (default), icons will be displayed, if set to false icons are hidden

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowIcon New value for property <code>showIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowIcon( bShowIcon:Bool):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getText text}.

The FeedListItem text. It supports html formatted tags as described in the documentation of sap.m.FormattedText

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.m.FeedListItem;

	/**
	* Sets a new value for property {@link #getTimestamp timestamp}.

This chunks timestamp

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTimestamp New value for property <code>timestamp</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTimestamp( sTimestamp:String):sap.m.FeedListItem;

	/**
	* Redefinition of sap.m.ListItemBase.setType: type = "sap.m.ListType.Navigation" behaves like type = "sap.m.ListType.Active" for a FeedListItem
	* @param	type new value for property type
	* @return	this allows method chaining
	*/
	public function setType( type:sap.m.ListType):sap.m.FeedListItem;
}

typedef FeedListItemArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Icon to be displayed as graphical element within the FeedListItem. This can be an image or an icon from the icon font. If no icon is provided, a default person-placeholder icon is displayed. Icon is only shown if showIcon = true.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Icon displayed when the list item is active.
	*/
	@:optional var activeIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Sender of the chunk
	*/
	@:optional var sender:String;

	/**
	* The FeedListItem text. It supports html formatted tags as described in the documentation of sap.m.FormattedText
	*/
	@:optional var text:String;

	/**
	* Customizable text for the "MORE" link at the end of the feed list item.<br> When the maximum number of characters defined by the <code>maxCharacters</code> property is exceeded and the text of the feed list item is collapsed, the "MORE" link can be used to expand the feed list item and show the rest of the text.
	*/
	@:optional var moreLabel:String;

	/**
	* Customizable text for the "LESS" link at the end of the feed list item.<br> Clicking the "LESS" link collapses the item, hiding the text that exceeds the allowed maximum number of characters.
	*/
	@:optional var lessLabel:String;

	/**
	* The Info text.
	*/
	@:optional var info:String;

	/**
	* This chunks timestamp
	*/
	@:optional var timestamp:String;

	/**
	* If true, sender string is a link, which will fire 'senderPress' events. If false, sender is normal text.
	*/
	@:optional var senderActive:haxe.extern.EitherType<String,Bool>;

	/**
	* If true, icon is a link, which will fire 'iconPress' events. If false, icon is normal image
	*/
	@:optional var iconActive:haxe.extern.EitherType<String,Bool>;

	/**
	* By default, this is set to true but then one or more requests are sent trying to get the density perfect version of image if this version of image doesn't exist on the server.

If bandwidth is the key for the application, set this value to false.
	*/
	@:optional var iconDensityAware:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to "true" (default), icons will be displayed, if set to false icons are hidden
	*/
	@:optional var showIcon:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether strings that appear to be links will be converted to HTML anchor tags, and what are the criteria for recognizing them.
	*/
	@:optional var convertLinksToAnchorTags:haxe.extern.EitherType<String,sap.m.LinkConversion>;

	/**
	* Determines the target attribute of the generated HTML anchor tags. Note: Applicable only if ConvertLinksToAnchorTags property is used with a value other than sap.m.LinkConversion.None. Options are the standard values for the target attribute of the HTML anchor tag: _self, _top, _blank, _parent, _search.
	*/
	@:optional var convertedLinksDefaultTarget:String;

	/**
	* The expand and collapse feature is set by default and uses 300 characters on mobile devices and 500 characters on desktops as limits. Based on these values, the text of the FeedListItem is collapsed once text reaches these limits. In this case, only the specified number of characters is displayed. By clicking on the text link More, the entire text can be displayed. The text link Less collapses the text. The application is able to set the value to its needs.
	*/
	@:optional var maxCharacters:haxe.extern.EitherType<String,Int>;

    /**
    * Contains {@link sap.m.FeedListItemAction elements} that are displayed in the action sheet.
    */
	@:optional var actions:Array<haxe.extern.EitherType<String,sap.m.FeedListItemAction>>;

    /**
    * Hidden aggregation which contains the text value
    */
	@:optional var _text:haxe.extern.EitherType<String,sap.m.FormattedText>;

    /**
    * Hidden aggregation that contains the actions.
    */
	@:optional var _actionSheet:haxe.extern.EitherType<String,sap.m.ActionSheet>;

    /**
    * Hidden aggregation that displays the action button.
    */
	@:optional var _actionButton:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* Event is fired when the icon is pressed.
	*/
	@:optional var iconPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is fired when name of the sender is pressed.
	*/
	@:optional var senderPress:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
