package sap.ui.unified;

@:native("sap.ui.unified.ShellLayout")

/**
* The shell layout is the base for the shell control which is meant as root control (full-screen) of an application. It was build as root control of the Fiori Launchpad application and provides the basic capabilities for this purpose. Do not use this control within applications which run inside the Fiori Lauchpad and do not use it for other scenarios than the root control usecase.
*/
extern class ShellLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ShellLayoutArgs):Void {})
	public function new(?mSettings:ShellLayoutArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.unified.ShellLayout;

	/**
	* Adds some paneContent to the aggregation {@link #getPaneContent paneContent}.
	* @param	oPaneContent The paneContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addPaneContent( oPaneContent:sap.ui.core.Control):sap.ui.unified.ShellLayout;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.unified.ShellLayout;

	/**
	* Destroys the header in the aggregation {@link #getHeader header}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeader( ):sap.ui.unified.ShellLayout;

	/**
	* Destroys all the paneContent in the aggregation {@link #getPaneContent paneContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPaneContent( ):sap.ui.unified.ShellLayout;

	/**
	* Creates a new subclass of class sap.ui.unified.ShellLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content to appear in the main canvas.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getHeader header}.

The control to appear in the header area.
	* @return	null
	*/
	public function getHeader( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getHeaderHiding headerHiding}.

Whether the header can be hidden (manually or automatically). This feature is only available when touch events are supported.

Default value is <code>false</code>.
	* @return	Value of property <code>headerHiding</code>
	*/
	public function getHeaderHiding( ):Bool;

	/**
	* Gets current value of property {@link #getHeaderVisible headerVisible}.

If set to false, no header (and no items, search, ...) is shown.

Default value is <code>true</code>.
	* @return	Value of property <code>headerVisible</code>
	*/
	public function getHeaderVisible( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.unified.ShellLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getPaneContent paneContent}.

The content to appear in the pane area.
	* @return	null
	*/
	public function getPaneContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getShowPane showPane}.

Shows / Hides the side pane.

Default value is <code>false</code>.
	* @return	Value of property <code>showPane</code>
	*/
	public function getShowPane( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getPaneContent paneContent}. and returns its index if found or -1 otherwise.
	* @param	oPaneContent The paneContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfPaneContent( oPaneContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.unified.ShellLayout;

	/**
	* Inserts a paneContent into the aggregation {@link #getPaneContent paneContent}.
	* @param	oPaneContent The paneContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the paneContent should be inserted at; for a negative value of <code>iIndex</code>, the paneContent is inserted at position 0; for a value greater than the current size of the aggregation, the paneContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertPaneContent( oPaneContent:sap.ui.core.Control, iIndex:Int):sap.ui.unified.ShellLayout;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getPaneContent paneContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllPaneContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vPaneContent:Int):sap.ui.core.Control{ })
	@:overload( function(vPaneContent:String):sap.ui.core.Control{ })

	/**
	* Removes a paneContent from the aggregation {@link #getPaneContent paneContent}.
	* @param	vPaneContent The paneContent to remove or its index or id
	* @return	The removed paneContent or <code>null</code>
	*/
	public function removePaneContent( vPaneContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets the aggregated {@link #getHeader header}.
	* @param	oHeader The header to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeader( oHeader:sap.ui.core.Control):sap.ui.unified.ShellLayout;

	/**
	* Sets a new value for property {@link #getHeaderHiding headerHiding}.

Whether the header can be hidden (manually or automatically). This feature is only available when touch events are supported.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bHeaderHiding New value for property <code>headerHiding</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderHiding( bHeaderHiding:Bool):sap.ui.unified.ShellLayout;

	/**
	* Sets a new value for property {@link #getHeaderVisible headerVisible}.

If set to false, no header (and no items, search, ...) is shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHeaderVisible New value for property <code>headerVisible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderVisible( bHeaderVisible:Bool):sap.ui.unified.ShellLayout;

	/**
	* Sets a new value for property {@link #getShowPane showPane}.

Shows / Hides the side pane.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowPane New value for property <code>showPane</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowPane( bShowPane:Bool):sap.ui.unified.ShellLayout;
}

typedef ShellLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Shows / Hides the side pane.
	*/
	@:optional var showPane:haxe.extern.EitherType<String,Bool>;

	/**
	* Whether the header can be hidden (manually or automatically). This feature is only available when touch events are supported.
	*/
	@:optional var headerHiding:haxe.extern.EitherType<String,Bool>;

	/**
	* If set to false, no header (and no items, search, ...) is shown.
	*/
	@:optional var headerVisible:haxe.extern.EitherType<String,Bool>;

    /**
    * The content to appear in the main canvas.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The content to appear in the pane area.
    */
	@:optional var paneContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The control to appear in the header area.
    */
	@:optional var header:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * Private storage for the internal split container for the canvas.
    */
	@:optional var canvasSplitContainer:haxe.extern.EitherType<String,sap.ui.unified.SplitContainer>;

    /**
    * Private storage for the internal split container for the curtain.
    */
	@:optional var curtainSplitContainer:haxe.extern.EitherType<String,sap.ui.unified.SplitContainer>;
}
