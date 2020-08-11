package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.BorderLayoutArea")

/**
* The BorderLayoutArea represents one area of a BorderLayout
*/
extern class BorderLayoutArea extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:BorderLayoutAreaArgs):Void {})
	public function new(?mSettings:BorderLayoutAreaArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.BorderLayoutArea with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Controls within the area
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getContentAlign contentAlign}.

The content alignment as CSS value

Default value is <code>left</code>.
	* @return	Value of property <code>contentAlign</code>
	*/
	public function getContentAlign( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.BorderLayoutArea.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getOverflowX overflowX}.

The overflow mode of the area in horizontal direction as CSS value

Default value is <code>auto</code>.
	* @return	Value of property <code>overflowX</code>
	*/
	public function getOverflowX( ):String;

	/**
	* Gets current value of property {@link #getOverflowY overflowY}.

The overflow mode of the area in vertical direction as CSS value

Default value is <code>auto</code>.
	* @return	Value of property <code>overflowY</code>
	*/
	public function getOverflowY( ):String;

	/**
	* Gets current value of property {@link #getSize size}.

Defines the height or the width. Is not used when the area element is in Center.

Default value is <code>100px</code>.
	* @return	Value of property <code>size</code>
	*/
	public function getSize( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getVisible visible}.

Invisible controls are not rendered

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.commons.layout.BorderLayoutArea;

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
	* Sets a new value for property {@link #getContentAlign contentAlign}.

The content alignment as CSS value

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>left</code>.
	* @param	sContentAlign New value for property <code>contentAlign</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentAlign( ?sContentAlign:String):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Sets a new value for property {@link #getOverflowX overflowX}.

The overflow mode of the area in horizontal direction as CSS value

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sOverflowX New value for property <code>overflowX</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOverflowX( ?sOverflowX:String):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Sets a new value for property {@link #getOverflowY overflowY}.

The overflow mode of the area in vertical direction as CSS value

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sOverflowY New value for property <code>overflowY</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOverflowY( ?sOverflowY:String):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Sets a new value for property {@link #getSize size}.

Defines the height or the width. Is not used when the area element is in Center.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100px</code>.
	* @param	sSize New value for property <code>size</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSize( ?sSize:sap.ui.core.CSSSize):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Invisible controls are not rendered

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.ui.commons.layout.BorderLayoutArea;
}

typedef BorderLayoutAreaArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The overflow mode of the area in horizontal direction as CSS value
	*/
	@:optional var overflowX:String;

	/**
	* The overflow mode of the area in vertical direction as CSS value
	*/
	@:optional var overflowY:String;

	/**
	* The content alignment as CSS value
	*/
	@:optional var contentAlign:String;

	/**
	* Defines the height or the width. Is not used when the area element is in Center.
	*/
	@:optional var size:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Invisible controls are not rendered
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

    /**
    * Controls within the area
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
