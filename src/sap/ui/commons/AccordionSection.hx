package sap.ui.commons;

@:native("sap.ui.commons.AccordionSection")

/**
* Represents a panel which is a container for other controls. The container does not have any layout function.
*/
extern class AccordionSection extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:AccordionSectionArgs):Void {})
	public function new(?mSettings:AccordionSectionArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.commons.AccordionSection;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:scroll scroll} event of this <code>sap.ui.commons.AccordionSection</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.AccordionSection</code> itself.

Event is fired when the user scrolls the panel
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.AccordionSection</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachScroll( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.AccordionSection;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.commons.AccordionSection;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:scroll scroll} event of this <code>sap.ui.commons.AccordionSection</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachScroll( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.AccordionSection;

	/**
	* Creates a new subclass of class sap.ui.commons.AccordionSection with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Aggregates the controls that are contained in the panel. The control layout is browser-dependent. For a stable content layout, use a layout control as direct single child. When the panel dimensions are set, the child control may have width and height of 100%; when the panel dimensions are not set, the child defines the panel size.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

It is required that the used theme supports the control.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getMaxHeight maxHeight}.

When the section content exceeds maxHeight, a vertical scroll bar appears.
	* @return	Value of property <code>maxHeight</code>
	*/
	public function getMaxHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.AccordionSection.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTitle title}.

Text for the section header
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.commons.AccordionSection;

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
	* Property setter for the "collapsed" state
	* @param	bCollapsed Whether the AccordionSection is collapsed or not
	* @return	'this' to allow method chaining
	*/
	public function setCollapsed( bCollapsed:Bool):sap.ui.commons.AccordionSection;

	/**
	* Property setter for the "enabled" state
	* @param	bEnabled Whether the AccordionSection is enabled or not
	* @return	'this' to allow method chaining
	*/
	public function setEnabled( bEnabled:Bool):sap.ui.commons.AccordionSection;

	/**
	* Sets a new value for property {@link #getMaxHeight maxHeight}.

When the section content exceeds maxHeight, a vertical scroll bar appears.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMaxHeight New value for property <code>maxHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxHeight( ?sMaxHeight:sap.ui.core.CSSSize):sap.ui.commons.AccordionSection;

	/**
	* Sets a new value for property {@link #getTitle title}.

Text for the section header

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.ui.commons.AccordionSection;
}

typedef AccordionSectionArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* When the section content exceeds maxHeight, a vertical scroll bar appears.
	*/
	@:optional var maxHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* It is required that the used theme supports the control.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;

	/**
	* Text for the section header
	*/
	@:optional var title:String;

    /**
    * Aggregates the controls that are contained in the panel. The control layout is browser-dependent. For a stable content layout, use a layout control as direct single child. When the panel dimensions are set, the child control may have width and height of 100%; when the panel dimensions are not set, the child defines the panel size.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the user scrolls the panel
	*/
	@:optional var scroll:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
