package sap.m;

@:native("sap.m.TextArea")

/**
* A control that is used for multi-line input of text. <h3>Overview</h3> The text area is used to enter multiple lines of text. When empty, it can hold a placeholder similar to an {@link sap.m.Input input}. You can define the height and width of the text area and also determine specific behavior when handling long texts. <h3>Structure</h3> Parameters that determine the size: <ul> <li><code>rows</code> - Number of visible text lines (overruled by <code>height</code>, if both are set)</li> <li><code>cols</code> - Number of visible characters per line line (overruled by <code>width</code>, if both are set)</li> <li><code>height</code> - Height of the control</li> <li><code>width</code> - Width of the control</li> </ul> Parameters that determine the behavior: <ul> <li><code>growing</code> - The text area adjusts its size based on the content</li> <li><code>growingMaxLines</code> - Threshold for the <code>growing</code> property (shouldn't exceed the screen size)</li> <li><code>maxLength</code> - Maximum number of characters that can be entered in a text area</li> <li><code>wrapping</code> - The way the entered text is wrapped by the control</li> <li><code>showExceededText</code> - Determines how text beyond the <code>maxLength</code> length is handled</li> </ul> <h3>Usage</h3> <h4>When to use</h4> <ul> <li>You want to enter multiple lines of text.</li> <li>Always provide labels for a text area.</li> <li>A placeholder does not substitute a label.</li> </ul> <h3>Responsive Behavior</h3> <ul> <li>On smaller screens, you can scroll down the text area to see the entire text. To indicate that the text continues, the control shows only half of the last line.</li> <li>If you have a growing text area, have in mind that its maximum height should not exceed the height of the screen. If that is the case, the screen height is used instead.</li> <li>If <code>showExceededText</code> is set to TRUE and you paste a longer text, all characters beyond the <code>maxLength</code> limit are automatically selected.</li> <li>If <code>showExceededText</code> is set to TRUE, the control will display a counter for the remaining characters.
*/
extern class TextArea extends sap.m.InputBase
{
	@:overload(function(?sId:String, ?mSettings:TextAreaArgs):Void {})
	public function new(?mSettings:TextAreaArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.m.TextArea</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TextArea</code> itself.

Is fired whenever the user has modified the text shown on the text area.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TextArea</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TextArea;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.m.TextArea</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TextArea;

	/**
	* Creates a new subclass of class sap.m.TextArea with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.InputBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCols cols}.

Defines the visible width of the control, in average character widths. <b>Note:</b> The <code>width</code> property wins over the <code>cols</code> property, if both are set.

Default value is <code>20</code>.
	* @return	Value of property <code>cols</code>
	*/
	public function getCols( ):Int;

	/**
	* Gets current value of property {@link #getGrowing growing}.

Indicates the ability of the control to automatically grow and shrink dynamically with its content. <b>Note:</b> The <code>height</code> property is ignored, if this property set to <code>true</code>.

Default value is <code>false</code>.
	* @return	Value of property <code>growing</code>
	*/
	public function getGrowing( ):Bool;

	/**
	* Gets current value of property {@link #getGrowingMaxLines growingMaxLines}.

Defines the maximum number of lines that the control can grow.

Default value is <code>0</code>.
	* @return	Value of property <code>growingMaxLines</code>
	*/
	public function getGrowingMaxLines( ):Int;

	/**
	* Gets current value of property {@link #getHeight height}.

Defines the height of the control.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getMaxLength maxLength}.

Defines the maximum number of characters that the <code>value</code> can be.

Default value is <code>0</code>.
	* @return	Value of property <code>maxLength</code>
	*/
	public function getMaxLength( ):Int;

	/**
	* Returns a metadata object for class sap.m.TextArea.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getRows rows}.

Defines the number of visible text lines for the control. <b>Note:</b> The <code>height</code> property wins over the <code>rows</code> property, if both are set.

Default value is <code>2</code>.
	* @return	Value of property <code>rows</code>
	*/
	public function getRows( ):Int;

	/**
	* Gets current value of property {@link #getShowExceededText showExceededText}.

Determines whether the characters, exceeding the maximum allowed character count, are visible in the input field.

If set to <code>false</code> the user is not allowed to enter more characters than what is set in the <code>maxLength</code> property. If set to <code>true</code> the characters exceeding the <code>maxLength</code> value are selected on paste and the counter below the input field displays their number.

Default value is <code>false</code>.
	* @return	Value of property <code>showExceededText</code>
	*/
	public function getShowExceededText( ):Bool;

	/**
	* Gets current value of property {@link #getValueLiveUpdate valueLiveUpdate}.

Indicates when the <code>value</code> property gets updated with the user changes. Setting it to <code>true</code> updates the <code>value</code> property whenever the user has modified the text shown on the text area.

Default value is <code>false</code>.
	* @return	Value of property <code>valueLiveUpdate</code>
	*/
	public function getValueLiveUpdate( ):Bool;

	/**
	* Gets current value of property {@link #getWrapping wrapping}.

Indicates how the control wraps the text, e.g. <code>Soft</code>, <code>Hard</code>, <code>Off</code>.

Default value is <code>None</code>.
	* @return	Value of property <code>wrapping</code>
	*/
	public function getWrapping( ):sap.ui.core.Wrapping;

	/**
	* Sets a new value for property {@link #getCols cols}.

Defines the visible width of the control, in average character widths. <b>Note:</b> The <code>width</code> property wins over the <code>cols</code> property, if both are set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>20</code>.
	* @param	iCols New value for property <code>cols</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCols( iCols:Int):sap.m.TextArea;

	/**
	* Sets a new value for property {@link #getGrowing growing}.

Indicates the ability of the control to automatically grow and shrink dynamically with its content. <b>Note:</b> The <code>height</code> property is ignored, if this property set to <code>true</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bGrowing New value for property <code>growing</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrowing( bGrowing:Bool):sap.m.TextArea;

	/**
	* Sets a new value for property {@link #getGrowingMaxLines growingMaxLines}.

Defines the maximum number of lines that the control can grow.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iGrowingMaxLines New value for property <code>growingMaxLines</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGrowingMaxLines( iGrowingMaxLines:Int):sap.m.TextArea;

	/**
	* Sets a new value for property {@link #getHeight height}.

Defines the height of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.m.TextArea;

	/**
	* Sets a new value for property {@link #getMaxLength maxLength}.

Defines the maximum number of characters that the <code>value</code> can be.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxLength New value for property <code>maxLength</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLength( iMaxLength:Int):sap.m.TextArea;

	/**
	* Sets a new value for property {@link #getRows rows}.

Defines the number of visible text lines for the control. <b>Note:</b> The <code>height</code> property wins over the <code>rows</code> property, if both are set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>2</code>.
	* @param	iRows New value for property <code>rows</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRows( iRows:Int):sap.m.TextArea;

	/**
	* Sets a new value for property {@link #getShowExceededText showExceededText}.

Determines whether the characters, exceeding the maximum allowed character count, are visible in the input field.

If set to <code>false</code> the user is not allowed to enter more characters than what is set in the <code>maxLength</code> property. If set to <code>true</code> the characters exceeding the <code>maxLength</code> value are selected on paste and the counter below the input field displays their number.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowExceededText New value for property <code>showExceededText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowExceededText( bShowExceededText:Bool):sap.m.TextArea;

	/**
	* Sets a new value for property {@link #getValueLiveUpdate valueLiveUpdate}.

Indicates when the <code>value</code> property gets updated with the user changes. Setting it to <code>true</code> updates the <code>value</code> property whenever the user has modified the text shown on the text area.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bValueLiveUpdate New value for property <code>valueLiveUpdate</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueLiveUpdate( bValueLiveUpdate:Bool):sap.m.TextArea;

	/**
	* Sets a new value for property {@link #getWrapping wrapping}.

Indicates how the control wraps the text, e.g. <code>Soft</code>, <code>Hard</code>, <code>Off</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>None</code>.
	* @param	sWrapping New value for property <code>wrapping</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWrapping( sWrapping:sap.ui.core.Wrapping):sap.m.TextArea;
}

typedef TextAreaArgs = sap.m.InputBase.InputBaseArgs & {

	/**
	* Defines the number of visible text lines for the control. <b>Note:</b> The <code>height</code> property wins over the <code>rows</code> property, if both are set.
	*/
	@:optional var rows:haxe.extern.EitherType<String,Int>;

	/**
	* Defines the visible width of the control, in average character widths. <b>Note:</b> The <code>width</code> property wins over the <code>cols</code> property, if both are set.
	*/
	@:optional var cols:haxe.extern.EitherType<String,Int>;

	/**
	* Defines the height of the control.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the maximum number of characters that the <code>value</code> can be.
	*/
	@:optional var maxLength:haxe.extern.EitherType<String,Int>;

	/**
	* Determines whether the characters, exceeding the maximum allowed character count, are visible in the input field.

If set to <code>false</code> the user is not allowed to enter more characters than what is set in the <code>maxLength</code> property. If set to <code>true</code> the characters exceeding the <code>maxLength</code> value are selected on paste and the counter below the input field displays their number.
	*/
	@:optional var showExceededText:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates how the control wraps the text, e.g. <code>Soft</code>, <code>Hard</code>, <code>Off</code>.
	*/
	@:optional var wrapping:haxe.extern.EitherType<String,sap.ui.core.Wrapping>;

	/**
	* Indicates when the <code>value</code> property gets updated with the user changes. Setting it to <code>true</code> updates the <code>value</code> property whenever the user has modified the text shown on the text area.
	*/
	@:optional var valueLiveUpdate:haxe.extern.EitherType<String,Bool>;

	/**
	* Indicates the ability of the control to automatically grow and shrink dynamically with its content. <b>Note:</b> The <code>height</code> property is ignored, if this property set to <code>true</code>.
	*/
	@:optional var growing:haxe.extern.EitherType<String,Bool>;

	/**
	* Defines the maximum number of lines that the control can grow.
	*/
	@:optional var growingMaxLines:haxe.extern.EitherType<String,Int>;

    /**
    * null
    */
	@:optional var _counter:haxe.extern.EitherType<String,sap.m.Text>;

	/**
	* Is fired whenever the user has modified the text shown on the text area.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
