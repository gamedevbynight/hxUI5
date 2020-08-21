package sap.ui.commons;

@:native("sap.ui.commons.TabStrip")

/**
* TabStrip represents a container for tab controls, which contain the content and generally other controls. The user switches between the tabs to display the content.
*/
extern class TabStrip extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TabStripArgs):Void {})
	public function new(?mSettings:TabStripArgs):Void;

	/**
	* Adds some tab to the aggregation {@link #getTabs tabs}.
	* @param	oTab The tab to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTab( oTab:sap.ui.commons.Tab):sap.ui.commons.TabStrip;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:close close} event of this <code>sap.ui.commons.TabStrip</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.TabStrip</code> itself.

Fires when the user closes a tab.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.TabStrip</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClose( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.TabStrip;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.commons.TabStrip</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.TabStrip</code> itself.

Fires when the user selects a tab.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.TabStrip</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.TabStrip;

	/**
	* Closes a tab (if the tab is selected, the next one will be selected; if it's the last tab, the previous one will be selected).

This method should be called if the close event is fired. It can not be called automatically because the consumer might need to run some logic before the tab is closed.
	* @param	iIndex The index of the tab that should be closed
	* @return	Void
	*/
	public function closeTab( iIndex:Int):Void;

	/**
	* Creates a Tab and adds it to the TabStrip.
	* @param	sText Defines the title text of the newly created tab
	* @param	oContent Defines the root control of the content area
	* @return	oTab The created tab control
	*/
	public function createTab( sText:String, oContent:sap.ui.core.Control):sap.ui.commons.Tab;

	/**
	* Destroys all the tabs in the aggregation {@link #getTabs tabs}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTabs( ):sap.ui.commons.TabStrip;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:close close} event of this <code>sap.ui.commons.TabStrip</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClose( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.TabStrip;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.commons.TabStrip</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.commons.TabStrip;

	/**
	* Creates a new subclass of class sap.ui.commons.TabStrip with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getEnableTabReordering enableTabReordering}.

Specifies whether tab reordering is enabled.

Default value is <code>false</code>.
	* @return	Value of property <code>enableTabReordering</code>
	*/
	public function getEnableTabReordering( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

Specifies the height of the tab bar and content area.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.TabStrip.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSelectedIndex selectedIndex}.

Specifies the index of the currently selected tab.

Default value is <code>0</code>.
	* @return	Value of property <code>selectedIndex</code>
	*/
	public function getSelectedIndex( ):Int;

	/**
	* Gets content of aggregation {@link #getTabs tabs}.

The tabs contained in the TabStrip.
	* @return	null
	*/
	public function getTabs( ):Array<sap.ui.commons.Tab>;

	/**
	* Gets current value of property {@link #getWidth width}.

Specifies the width of the bar and content area.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.commons.Tab</code> in the aggregation {@link #getTabs tabs}. and returns its index if found or -1 otherwise.
	* @param	oTab The tab whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfTab( oTab:sap.ui.commons.Tab):Int;

	/**
	* Inserts a tab into the aggregation {@link #getTabs tabs}.
	* @param	oTab The tab to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the tab should be inserted at; for a negative value of <code>iIndex</code>, the tab is inserted at position 0; for a value greater than the current size of the aggregation, the tab is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertTab( oTab:sap.ui.commons.Tab, iIndex:Int):sap.ui.commons.TabStrip;

	/**
	* Called before the rendering of the control is started.
	* @return	Void
	*/
	public function onBeforeRendering( ):Void;

	/**
	* Removes all the controls from the aggregation {@link #getTabs tabs}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTabs( ):Array<sap.ui.commons.Tab>;
	@:overload( function(vTab:Int):sap.ui.commons.Tab{ })
	@:overload( function(vTab:String):sap.ui.commons.Tab{ })

	/**
	* Removes a tab from the aggregation {@link #getTabs tabs}.
	* @param	vTab The tab to remove or its index or id
	* @return	The removed tab or <code>null</code>
	*/
	public function removeTab( vTab:sap.ui.commons.Tab):sap.ui.commons.Tab;

	/**
	* Sets whether tab reordering is enabled.
	* @param	bValue The value.
	* @return	Pointer to the control instance for chaining.
	*/
	public function setEnableTabReordering( bValue:Bool):sap.ui.commons.TabStrip;

	/**
	* Sets a new value for property {@link #getHeight height}.

Specifies the height of the tab bar and content area.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.commons.TabStrip;

	/**
	* Sets a new value for property {@link #getSelectedIndex selectedIndex}.

Specifies the index of the currently selected tab.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iSelectedIndex New value for property <code>selectedIndex</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedIndex( ?iSelectedIndex:Int):sap.ui.commons.TabStrip;

	/**
	* Sets a new value for property {@link #getWidth width}.

Specifies the width of the bar and content area.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.TabStrip;
}

typedef TabStripArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies the height of the tab bar and content area.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies the width of the bar and content area.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Specifies the index of the currently selected tab.
	*/
	@:optional var selectedIndex:haxe.extern.EitherType<String,Int>;

	/**
	* Specifies whether tab reordering is enabled.
	*/
	@:optional var enableTabReordering:haxe.extern.EitherType<String,Bool>;

    /**
    * The tabs contained in the TabStrip.
    */
	@:optional var tabs:Array<haxe.extern.EitherType<String,sap.ui.commons.Tab>>;

    /**
    * The left arrow, used for tab scrolling.
    */
	@:optional var _leftArrowControl:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * The right arrow, used for tab scrolling.
    */
	@:optional var _rightArrowControl:haxe.extern.EitherType<String,sap.ui.core.Icon>;

	/**
	* Fires when the user closes a tab.
	*/
	@:optional var close:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fires when the user selects a tab.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
