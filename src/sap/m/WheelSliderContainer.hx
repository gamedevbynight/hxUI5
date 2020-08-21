package sap.m;

@:native("sap.m.WheelSliderContainer")

/**
* A picker list container control used to hold sliders of type {@link sap.m.WheelSlider}.
*/
extern class WheelSliderContainer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:WheelSliderContainerArgs):Void {})
	public function new(?mSettings:WheelSliderContainerArgs):Void;

	/**
	* Adds some slider to the aggregation {@link #getSliders sliders}.
	* @param	oSlider The slider to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSlider( oSlider:sap.m.WheelSlider):sap.m.WheelSliderContainer;

	/**
	* Destroys all the sliders in the aggregation {@link #getSliders sliders}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySliders( ):sap.m.WheelSliderContainer;

	/**
	* Creates a new subclass of class sap.m.WheelSliderContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getHeight height}.

Sets the height of the container. If percentage value is used, the parent container must have specified height.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getLabelText labelText}.

Defines the text of the picker label.
	* @return	Value of property <code>labelText</code>
	*/
	public function getLabelText( ):String;

	/**
	* Returns a metadata object for class sap.m.WheelSliderContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getSliders sliders}.

The sliders in the container.
	* @return	null
	*/
	public function getSliders( ):Array<sap.m.WheelSlider>;

	/**
	* Gets current value of property {@link #getWidth width}.

Sets the width of the container. The minimum width is 320px.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.m.WheelSlider</code> in the aggregation {@link #getSliders sliders}. and returns its index if found or -1 otherwise.
	* @param	oSlider The slider whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSlider( oSlider:sap.m.WheelSlider):Int;

	/**
	* Inserts a slider into the aggregation {@link #getSliders sliders}.
	* @param	oSlider The slider to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the slider should be inserted at; for a negative value of <code>iIndex</code>, the slider is inserted at position 0; for a value greater than the current size of the aggregation, the slider is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSlider( oSlider:sap.m.WheelSlider, iIndex:Int):sap.m.WheelSliderContainer;

	/**
	* Removes all the controls from the aggregation {@link #getSliders sliders}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSliders( ):Array<sap.m.WheelSlider>;
	@:overload( function(vSlider:Int):sap.m.WheelSlider{ })
	@:overload( function(vSlider:String):sap.m.WheelSlider{ })

	/**
	* Removes a slider from the aggregation {@link #getSliders sliders}.
	* @param	vSlider The slider to remove or its index or id
	* @return	The removed slider or <code>null</code>
	*/
	public function removeSlider( vSlider:sap.m.WheelSlider):sap.m.WheelSlider;

	/**
	* Sets a new value for property {@link #getHeight height}.

Sets the height of the container. If percentage value is used, the parent container must have specified height.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.WheelSliderContainer;

	/**
	* Sets a new value for property {@link #getLabelText labelText}.

Defines the text of the picker label.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLabelText New value for property <code>labelText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelText( sLabelText:String):sap.m.WheelSliderContainer;

	/**
	* Sets a new value for property {@link #getWidth width}.

Sets the width of the container. The minimum width is 320px.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.m.WheelSliderContainer;
}

typedef WheelSliderContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the text of the picker label.
	*/
	@:optional var labelText:String;

	/**
	* Sets the width of the container. The minimum width is 320px.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets the height of the container. If percentage value is used, the parent container must have specified height.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * The sliders in the container.
    */
	@:optional var sliders:Array<haxe.extern.EitherType<String,sap.m.WheelSlider>>;
}
