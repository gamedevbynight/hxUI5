package sap.m;

@:native("sap.m.TabContainerItem")

/**
* An item to be used in a TabContainer.
*/
extern class TabContainerItem extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:TabContainerItemArgs):Void {})
	public function new(?mSettings:TabContainerItemArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.TabContainerItem;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:itemPropertyChanged itemPropertyChanged} event of this <code>sap.m.TabContainerItem</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TabContainerItem</code> itself.

Sends information that some of the properties have changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TabContainerItem</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachItemPropertyChanged( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TabContainerItem;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.TabContainerItem;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:itemPropertyChanged itemPropertyChanged} event of this <code>sap.m.TabContainerItem</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachItemPropertyChanged( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TabContainerItem;

	/**
	* Creates a new subclass of class sap.m.TabContainerItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAdditionalText additionalText}.

Determines additional text to be displayed for the item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>additionalText</code>
	*/
	public function getAdditionalText( ):String;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content displayed for this item.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getIcon icon}.

Defines the icon to be displayed as graphical element within the <code>TabContainerItem</code>. It can be an image or an icon from the icon font.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIconTooltip iconTooltip}.

Determines the tooltip text of the <code>TabContainerItem</code>'s icon.
	* @return	Value of property <code>iconTooltip</code>
	*/
	public function getIconTooltip( ):String;

	/**
	* Gets current value of property {@link #getKey key}.

Determines the name of the item. Can be used as input for subsequent actions.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.m.TabContainerItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getModified modified}.

Shows if a control is edited (default is false). Items that are marked as modified have a * symbol to indicate that they haven't been saved.

Default value is <code>false</code>.
	* @return	Value of property <code>modified</code>
	*/
	public function getModified( ):Bool;

	/**
	* Gets current value of property {@link #getName name}.

Determines the text to be displayed for the item.

Default value is <code>empty string</code>.
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.TabContainerItem;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getAdditionalText additionalText}.

Determines additional text to be displayed for the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sAdditionalText New value for property <code>additionalText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdditionalText( sAdditionalText:String):sap.m.TabContainerItem;

	/**
	* Property setter for the icon
	* @param	sIcon new value of the Icon property
	* @return	<code>this</code> to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.TabContainerItem;

	/**
	* Sets a new value for property {@link #getIconTooltip iconTooltip}.

Determines the tooltip text of the <code>TabContainerItem</code>'s icon.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIconTooltip New value for property <code>iconTooltip</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIconTooltip( sIconTooltip:String):sap.m.TabContainerItem;

	/**
	* Sets a new value for property {@link #getKey key}.

Determines the name of the item. Can be used as input for subsequent actions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.m.TabContainerItem;

	/**
	* Sets a new value for property {@link #getModified modified}.

Shows if a control is edited (default is false). Items that are marked as modified have a * symbol to indicate that they haven't been saved.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bModified New value for property <code>modified</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setModified( bModified:Bool):sap.m.TabContainerItem;

	/**
	* Sets a new value for property {@link #getName name}.

Determines the text to be displayed for the item.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.m.TabContainerItem;
	@:overload( function(sName:String, vValue:Bool, bSuppressInvalidation:Bool):sap.m.TabContainerItem{ })
	@:overload( function(sName:String, vValue:String, bSuppressInvalidation:Bool):sap.m.TabContainerItem{ })

	/**
	* Overwrites the method in order to suppress invalidation for some properties.
	* @param	sName Property name to be set
	* @param	vValue Property value to be set
	* @param	bSuppressInvalidation Whether invalidation to be suppressed
	* @return	This instance for chaining
	*/
	public function setProperty( sName:String, vValue:Dynamic, bSuppressInvalidation:Bool):sap.m.TabContainerItem;
}

typedef TabContainerItemArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Determines the text to be displayed for the item.
	*/
	@:optional var name:String;

	/**
	* Determines additional text to be displayed for the item.
	*/
	@:optional var additionalText:String;

	/**
	* Defines the icon to be displayed as graphical element within the <code>TabContainerItem</code>. It can be an image or an icon from the icon font.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Determines the tooltip text of the <code>TabContainerItem</code>'s icon.
	*/
	@:optional var iconTooltip:String;

	/**
	* Determines the name of the item. Can be used as input for subsequent actions.
	*/
	@:optional var key:String;

	/**
	* Shows if a control is edited (default is false). Items that are marked as modified have a * symbol to indicate that they haven't been saved.
	*/
	@:optional var modified:haxe.extern.EitherType<String,Bool>;

    /**
    * The content displayed for this item.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Icon / Image for the <code>TabContainerItem</code> are managed in this aggregation.
    */
	@:optional var _image:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Sends information that some of the properties have changed.
	*/
	@:optional var itemPropertyChanged:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
