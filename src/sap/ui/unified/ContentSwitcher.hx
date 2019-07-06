package sap.ui.unified;

@:native("sap.ui.unified.ContentSwitcher")

/**
* Switches between two control areas and animates it via CSS transitions
*/
extern class ContentSwitcher extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ContentSwitcherArgs):Void {})
	public function new(?mSettings:ContentSwitcherArgs):Void;

	/**
	* Adds some content1 to the aggregation {@link #getContent1 content1}.
	* @param	oContent1 The content1 to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent1( oContent1:sap.ui.core.Control):sap.ui.unified.ContentSwitcher;

	/**
	* Adds some content2 to the aggregation {@link #getContent2 content2}.
	* @param	oContent2 The content2 to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent2( oContent2:sap.ui.core.Control):sap.ui.unified.ContentSwitcher;

	/**
	* Destroys all the content1 in the aggregation {@link #getContent1 content1}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent1( ):sap.ui.unified.ContentSwitcher;

	/**
	* Destroys all the content2 in the aggregation {@link #getContent2 content2}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent2( ):sap.ui.unified.ContentSwitcher;

	/**
	* Creates a new subclass of class sap.ui.unified.ContentSwitcher with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getActiveContent activeContent}.

The number of the currently active content (1 or 2).

Default value is <code>1</code>.
	* @return	Value of property <code>activeContent</code>
	*/
	public function getActiveContent( ):Int;

	/**
	* Gets current value of property {@link #getAnimation animation}.

Set the used animation when changing content. This just sets a CSS-class named "sapUiUnifiedACSwitcherAnimation" + this value on the root element of the control. The animation has to be implemented in CSS. This also enables applications to implement their own animations via CSS by reacting to the parent class. See the types sap.ui.unified.ContentSwitcherAnimation for default implementations.

Default value is <code>None</code>.
	* @return	Value of property <code>animation</code>
	*/
	public function getAnimation( ):String;

	/**
	* Gets content of aggregation {@link #getContent1 content1}.

The controls that should be shown in the first content
	* @return	null
	*/
	public function getContent1( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getContent2 content2}.

The controls that should be shown in the second content
	* @return	null
	*/
	public function getContent2( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.ui.unified.ContentSwitcher.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent1 content1}. and returns its index if found or -1 otherwise.
	* @param	oContent1 The content1 whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent1( oContent1:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent2 content2}. and returns its index if found or -1 otherwise.
	* @param	oContent2 The content2 whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent2( oContent2:sap.ui.core.Control):Int;

	/**
	* Inserts a content1 into the aggregation {@link #getContent1 content1}.
	* @param	oContent1 The content1 to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content1 should be inserted at; for a negative value of <code>iIndex</code>, the content1 is inserted at position 0; for a value greater than the current size of the aggregation, the content1 is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent1( oContent1:sap.ui.core.Control, iIndex:Int):sap.ui.unified.ContentSwitcher;

	/**
	* Inserts a content2 into the aggregation {@link #getContent2 content2}.
	* @param	oContent2 The content2 to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content2 should be inserted at; for a negative value of <code>iIndex</code>, the content2 is inserted at position 0; for a value greater than the current size of the aggregation, the content2 is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent2( oContent2:sap.ui.core.Control, iIndex:Int):sap.ui.unified.ContentSwitcher;

	/**
	* Removes all the controls from the aggregation {@link #getContent1 content1}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent1( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getContent2 content2}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent2( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent1:Int):sap.ui.core.Control{ })
	@:overload( function(vContent1:String):sap.ui.core.Control{ })

	/**
	* Removes a content1 from the aggregation {@link #getContent1 content1}.
	* @param	vContent1 The content1 to remove or its index or id
	* @return	The removed content1 or <code>null</code>
	*/
	public function removeContent1( vContent1:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vContent2:Int):sap.ui.core.Control{ })
	@:overload( function(vContent2:String):sap.ui.core.Control{ })

	/**
	* Removes a content2 from the aggregation {@link #getContent2 content2}.
	* @param	vContent2 The content2 to remove or its index or id
	* @return	The removed content2 or <code>null</code>
	*/
	public function removeContent2( vContent2:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getActiveContent activeContent}.

The number of the currently active content (1 or 2).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iActiveContent New value for property <code>activeContent</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setActiveContent( iActiveContent:Int):sap.ui.unified.ContentSwitcher;

	/**
	* Sets a new value for property {@link #getAnimation animation}.

Set the used animation when changing content. This just sets a CSS-class named "sapUiUnifiedACSwitcherAnimation" + this value on the root element of the control. The animation has to be implemented in CSS. This also enables applications to implement their own animations via CSS by reacting to the parent class. See the types sap.ui.unified.ContentSwitcherAnimation for default implementations.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sAnimation New value for property <code>animation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAnimation( sAnimation:String):sap.ui.unified.ContentSwitcher;

	/**
	* Changes the currently active content to the other one. If content 1 is active, content 2 will be activated and the other way around.
	* @return	Void
	*/
	public function switchContent( ):Void;
}

typedef ContentSwitcherArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Set the used animation when changing content. This just sets a CSS-class named "sapUiUnifiedACSwitcherAnimation" + this value on the root element of the control. The animation has to be implemented in CSS. This also enables applications to implement their own animations via CSS by reacting to the parent class. See the types sap.ui.unified.ContentSwitcherAnimation for default implementations.
	*/
	@:optional var animation:String;

	/**
	* The number of the currently active content (1 or 2).
	*/
	@:optional var activeContent:haxe.extern.EitherType<String,Int>;

    /**
    * The controls that should be shown in the first content
    */
	@:optional var content1:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The controls that should be shown in the second content
    */
	@:optional var content2:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
