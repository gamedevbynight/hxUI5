package sap.ui.unified;

@:native("sap.ui.unified.SplitContainer")

/**
* Provides a main content and a secondary content area
*/
extern class SplitContainer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:SplitContainerArgs):Void {})
	public function new(?mSettings:SplitContainerArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.unified.SplitContainer;

	/**
	* Adds some secondaryContent to the aggregation {@link #getSecondaryContent secondaryContent}.
	* @param	oSecondaryContent The secondaryContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSecondaryContent( oSecondaryContent:sap.ui.core.Control):sap.ui.unified.SplitContainer;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.unified.SplitContainer;

	/**
	* Destroys all the secondaryContent in the aggregation {@link #getSecondaryContent secondaryContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySecondaryContent( ):sap.ui.unified.SplitContainer;

	/**
	* Creates a new subclass of class sap.ui.unified.SplitContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content to appear in the main area.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.ui.unified.SplitContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getOrientation orientation}.

Whether to show the secondary content on the left ("Horizontal", default) or on the top ("Vertical").

Default value is <code>Horizontal</code>.
	* @return	Value of property <code>orientation</code>
	*/
	public function getOrientation( ):sap.ui.core.Orientation;

	/**
	* Gets content of aggregation {@link #getSecondaryContent secondaryContent}.

The content to appear in the secondary area.
	* @return	null
	*/
	public function getSecondaryContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getSecondaryContentSize secondaryContentSize}.

The width if the secondary content. The height is always 100%.

Default value is <code>250px</code>.
	* @return	Value of property <code>secondaryContentSize</code>
	*/
	public function getSecondaryContentSize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getShowSecondaryContent showSecondaryContent}.

Shows / Hides the secondary area.
	* @return	Value of property <code>showSecondaryContent</code>
	*/
	public function getShowSecondaryContent( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getSecondaryContent secondaryContent}. and returns its index if found or -1 otherwise.
	* @param	oSecondaryContent The secondaryContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSecondaryContent( oSecondaryContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.unified.SplitContainer;

	/**
	* Inserts a secondaryContent into the aggregation {@link #getSecondaryContent secondaryContent}.
	* @param	oSecondaryContent The secondaryContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the secondaryContent should be inserted at; for a negative value of <code>iIndex</code>, the secondaryContent is inserted at position 0; for a value greater than the current size of the aggregation, the secondaryContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSecondaryContent( oSecondaryContent:sap.ui.core.Control, iIndex:Int):sap.ui.unified.SplitContainer;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getSecondaryContent secondaryContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSecondaryContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vSecondaryContent:Int):sap.ui.core.Control{ })
	@:overload( function(vSecondaryContent:String):sap.ui.core.Control{ })

	/**
	* Removes a secondaryContent from the aggregation {@link #getSecondaryContent secondaryContent}.
	* @param	vSecondaryContent The secondaryContent to remove or its index or id
	* @return	The removed secondaryContent or <code>null</code>
	*/
	public function removeSecondaryContent( vSecondaryContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getOrientation orientation}.

Whether to show the secondary content on the left ("Horizontal", default) or on the top ("Vertical").

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Horizontal</code>.
	* @param	sOrientation New value for property <code>orientation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOrientation( ?sOrientation:sap.ui.core.Orientation):sap.ui.unified.SplitContainer;

	/**
	* Sets a new value for property {@link #getSecondaryContentSize secondaryContentSize}.

The width if the secondary content. The height is always 100%.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>250px</code>.
	* @param	sSecondaryContentSize New value for property <code>secondaryContentSize</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSecondaryContentSize( ?sSecondaryContentSize:sap.ui.core.CSSSize):sap.ui.unified.SplitContainer;

	/**
	* Sets a new value for property {@link #getShowSecondaryContent showSecondaryContent}.

Shows / Hides the secondary area.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bShowSecondaryContent New value for property <code>showSecondaryContent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSecondaryContent( bShowSecondaryContent:Bool):sap.ui.unified.SplitContainer;
}

typedef SplitContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Shows / Hides the secondary area.
	*/
	@:optional var showSecondaryContent:haxe.extern.EitherType<String,Bool>;

	/**
	* The width if the secondary content. The height is always 100%.
	*/
	@:optional var secondaryContentSize:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Whether to show the secondary content on the left ("Horizontal", default) or on the top ("Vertical").
	*/
	@:optional var orientation:haxe.extern.EitherType<String,sap.ui.core.Orientation>;

    /**
    * The content to appear in the main area.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The content to appear in the secondary area.
    */
	@:optional var secondaryContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
