package sap.ui.commons.layout;

@:native("sap.ui.commons.layout.BorderLayout")

/**
* Based upon the border layout as it comes with the Java standard. Using this layout, you are able to divide your available UI space into five areas whose sizes can be defined. These areas are: Top: Header; Bottom: Footer; Begin: Left/right-hand side panel; Center: Content area in the middle; End: Right/left-hand side panel.
*/
extern class BorderLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:BorderLayoutArgs):Void {})
	public function new(?mSettings:BorderLayoutArgs):Void;

	/**
	* Adds controls to the specified area.
	* @param	sAreaId Specifies the area where controls will be added
	* @return	<code>this</code> to allow method chaining
	*/
	public function addContent( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes):sap.ui.commons.layout.BorderLayout;

	/**
	* Creates the specified area and adds the given controls to it. Returns the created area.
	* @param	sAreaId Specifies which area will be created. If the area is already available, the method call is ignored.
	* @param	oContent Any number of controls can be submitted to be added to the newly created area; where each control is submitted as one argument.
	* @return	The created aria
	*/
	public function createArea( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes, oContent:sap.ui.core.Control):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Destroys the begin in the aggregation {@link #getBegin begin}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyBegin( ):sap.ui.commons.layout.BorderLayout;

	/**
	* Destroys the bottom in the aggregation {@link #getBottom bottom}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyBottom( ):sap.ui.commons.layout.BorderLayout;

	/**
	* Destroys the center in the aggregation {@link #getCenter center}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCenter( ):sap.ui.commons.layout.BorderLayout;

	/**
	* Destroys the content of the specified area.
	* @param	sAreaId Specifies the area whose content will be destroyed
	* @return	<code>this</code> to allow method chaining
	*/
	public function destroyContent( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes):sap.ui.commons.layout.BorderLayout;

	/**
	* Destroys the end in the aggregation {@link #getEnd end}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyEnd( ):sap.ui.commons.layout.BorderLayout;

	/**
	* Destroys the top in the aggregation {@link #getTop top}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyTop( ):sap.ui.commons.layout.BorderLayout;

	/**
	* Creates a new subclass of class sap.ui.commons.layout.BorderLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns the area of the given type. If the area does not exist, it will be created when create is set to true.
	* @param	sAreaId The aria ID
	* @param	bCreate Whether the aria must be created
	* @return	The aria
	*/
	public function getArea( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes, bCreate:Bool):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Returns the object of the specified area. If the area does not exist, the area will be created and returned.
	* @param	sAreaId Specifies the area whose object will be returned.
	* @return	The aria
	*/
	public function getAreaById( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Returns a JSON-like object that contains all property values of the requested area.
	* @param	sAreaId Specifies the area whose data will be returned
	* @return	The aria data
	*/
	public function getAreaData( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes):Dynamic;

	/**
	* Gets content of aggregation {@link #getBegin begin}.

Represents the Begin area
	* @return	null
	*/
	public function getBegin( ):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Gets content of aggregation {@link #getBottom bottom}.

Represents the Bottom area
	* @return	null
	*/
	public function getBottom( ):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Gets content of aggregation {@link #getCenter center}.

Represents the Center area
	* @return	null
	*/
	public function getCenter( ):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Returns all controls inside the specified area inside an array.
	* @param	sAreaId Specifies the area whose content controls shall be returned.
	* @return	The array with the content
	*/
	public function getContent( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getEnd end}.

Represents the End area
	* @return	null
	*/
	public function getEnd( ):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Gets current value of property {@link #getHeight height}.

Defines the overall height of the layout

Default value is <code>'100%'</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.layout.BorderLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getTop top}.

Represents the Top area
	* @return	null
	*/
	public function getTop( ):sap.ui.commons.layout.BorderLayoutArea;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the overall width of the layout

Default value is <code>'100%'</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Determines the index of a given content control.
	* @param	sAreaId Specifies the area that will be searched
	* @param	oContent Specifies the control whose index will be searched
	* @return	The index of the content
	*/
	public function indexOfContent( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes, oContent:sap.ui.core.Control):Int;

	/**
	* Inserts controls to an area at a given index.
	* @param	sAreaId Specifies the area where the controls shall be inserted.
	* @param	iIndex Specifies the index where the controls shall be added. For a negative value of iIndex, the content is inserted at position '0'; for a value greater than the current size of the aggregation, the content is inserted at the last position.
	* @return	<code>this</code> to allow method chaining
	*/
	public function insertContent( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes, iIndex:Int):sap.ui.commons.layout.BorderLayout;

	/**
	* Removes all content from an area.
	* @param	sAreaId Specifies the area whose content shall be removed
	* @return	<code>this</code> to allow method chaining
	*/
	public function removeAllContent( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes):sap.ui.commons.layout.BorderLayout;

	/**
	* Removes the content with the given index from an area.
	* @param	oAreaId Specifies the area whose content shall be removed
	* @param	vElement The content to be removed Specifies the control that shall be removed
	* @return	<code>this</code> to allow method chaining
	*/
	public function removeContent( oAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes, vElement:Dynamic):sap.ui.commons.layout.BorderLayout;

	/**
	* Sets the properties of the specified area with the given values.
	* @param	sAreaId Specifies the area whose properties will be set
	* @param	oData JSON-like object that contains the values to be set
	* @return	<code>this</code> to allow method chaining
	*/
	public function setAreaData( sAreaId:sap.ui.commons.layout.BorderLayoutAreaTypes, oData:Dynamic):sap.ui.commons.layout.BorderLayout;

	/**
	* Sets the aggregated {@link #getBegin begin}.
	* @param	oBegin The begin to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBegin( oBegin:sap.ui.commons.layout.BorderLayoutArea):sap.ui.commons.layout.BorderLayout;

	/**
	* Sets the aggregated {@link #getBottom bottom}.
	* @param	oBottom The bottom to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBottom( oBottom:sap.ui.commons.layout.BorderLayoutArea):sap.ui.commons.layout.BorderLayout;

	/**
	* Sets the aggregated {@link #getCenter center}.
	* @param	oCenter The center to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCenter( oCenter:sap.ui.commons.layout.BorderLayoutArea):sap.ui.commons.layout.BorderLayout;

	/**
	* Sets the aggregated {@link #getEnd end}.
	* @param	oEnd The end to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEnd( oEnd:sap.ui.commons.layout.BorderLayoutArea):sap.ui.commons.layout.BorderLayout;

	/**
	* Sets a new value for property {@link #getHeight height}.

Defines the overall height of the layout

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'100%'</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.commons.layout.BorderLayout;

	/**
	* Sets the aggregated {@link #getTop top}.
	* @param	oTop The top to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTop( oTop:sap.ui.commons.layout.BorderLayoutArea):sap.ui.commons.layout.BorderLayout;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the overall width of the layout

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>'100%'</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.layout.BorderLayout;
}

typedef BorderLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the overall width of the layout
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the overall height of the layout
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * Represents the Top area
    */
	@:optional var top:haxe.extern.EitherType<String,sap.ui.commons.layout.BorderLayoutArea>;

    /**
    * Represents the Begin area
    */
	@:optional var begin:haxe.extern.EitherType<String,sap.ui.commons.layout.BorderLayoutArea>;

    /**
    * Represents the Center area
    */
	@:optional var center:haxe.extern.EitherType<String,sap.ui.commons.layout.BorderLayoutArea>;

    /**
    * Represents the End area
    */
	@:optional var end:haxe.extern.EitherType<String,sap.ui.commons.layout.BorderLayoutArea>;

    /**
    * Represents the Bottom area
    */
	@:optional var bottom:haxe.extern.EitherType<String,sap.ui.commons.layout.BorderLayoutArea>;
}
