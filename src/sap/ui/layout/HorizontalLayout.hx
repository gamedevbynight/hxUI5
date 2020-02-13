package sap.ui.layout;

@:native("sap.ui.layout.HorizontalLayout")

/**
* A layout that provides support for horizontal alignment of controls
*/
extern class HorizontalLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:HorizontalLayoutArgs):Void {})
	public function new(?mSettings:HorizontalLayoutArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.layout.HorizontalLayout;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.layout.HorizontalLayout;

	/**
	* Creates a new subclass of class sap.ui.layout.HorizontalLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAllowWrapping allowWrapping}.

Specifies whether the content inside the Layout shall be line-wrapped in the case that there is less horizontal space available than required.

Default value is <code>false</code>.
	* @return	Value of property <code>allowWrapping</code>
	*/
	public function getAllowWrapping( ):Bool;

	/**
	* Gets content of aggregation {@link #getContent content}.

The controls inside this layout
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.ui.layout.HorizontalLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.layout.HorizontalLayout;

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
	* Sets a new value for property {@link #getAllowWrapping allowWrapping}.

Specifies whether the content inside the Layout shall be line-wrapped in the case that there is less horizontal space available than required.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bAllowWrapping New value for property <code>allowWrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAllowWrapping( bAllowWrapping:Bool):sap.ui.layout.HorizontalLayout;
}

typedef HorizontalLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Specifies whether the content inside the Layout shall be line-wrapped in the case that there is less horizontal space available than required.
	*/
	@:optional var allowWrapping:haxe.extern.EitherType<String,Bool>;

    /**
    * The controls inside this layout
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
