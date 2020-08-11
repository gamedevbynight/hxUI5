package sap.ui.commons;

@:native("sap.ui.commons.ResponsiveContainer")

/**
* Is used to provide a container, which can show different content depending on its current width. It fires an event, whenever a new range is reached. In addition the content of the new range is automatically shown, if it is set.
*/
extern class ResponsiveContainer extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveContainerArgs):Void {})
	public function new(?mSettings:ResponsiveContainerArgs):Void;

	/**
	* Adds some range to the aggregation {@link #getRanges ranges}.
	* @param	oRange The range to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addRange( oRange:sap.ui.commons.ResponsiveContainerRange):sap.ui.commons.ResponsiveContainer;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:rangeSwitch rangeSwitch} event of this <code>sap.ui.commons.ResponsiveContainer</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.ResponsiveContainer</code> itself.

The event is fired the width of the container reaches a new range.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.ResponsiveContainer</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachRangeSwitch( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.ResponsiveContainer;

	/**
	* Destroys all the ranges in the aggregation {@link #getRanges ranges}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyRanges( ):sap.ui.commons.ResponsiveContainer;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:rangeSwitch rangeSwitch} event of this <code>sap.ui.commons.ResponsiveContainer</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachRangeSwitch( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.ResponsiveContainer;

	/**
	* Creates a new subclass of class sap.ui.commons.ResponsiveContainer with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* ID of the element which is the current target of the association {@link #getDefaultContent defaultContent}, or <code>null</code>.
	* @return	null
	*/
	public function getDefaultContent( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getHeight height}.

The width of the responsive container.

Default value is <code>100%</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.ResponsiveContainer.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getRanges ranges}.

The ranges defined for this container
	* @return	null
	*/
	public function getRanges( ):Array<sap.ui.commons.ResponsiveContainerRange>;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the responsive container.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.commons.ResponsiveContainerRange</code> in the aggregation {@link #getRanges ranges}. and returns its index if found or -1 otherwise.
	* @param	oRange The range whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfRange( oRange:sap.ui.commons.ResponsiveContainerRange):Int;

	/**
	* Inserts a range into the aggregation {@link #getRanges ranges}.
	* @param	oRange The range to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the range should be inserted at; for a negative value of <code>iIndex</code>, the range is inserted at position 0; for a value greater than the current size of the aggregation, the range is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertRange( oRange:sap.ui.commons.ResponsiveContainerRange, iIndex:Int):sap.ui.commons.ResponsiveContainer;

	/**
	* Removes all the controls from the aggregation {@link #getRanges ranges}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllRanges( ):Array<sap.ui.commons.ResponsiveContainerRange>;
	@:overload( function(vRange:Int):sap.ui.commons.ResponsiveContainerRange{ })
	@:overload( function(vRange:String):sap.ui.commons.ResponsiveContainerRange{ })

	/**
	* Removes a range from the aggregation {@link #getRanges ranges}.
	* @param	vRange The range to remove or its index or id
	* @return	The removed range or <code>null</code>
	*/
	public function removeRange( vRange:sap.ui.commons.ResponsiveContainerRange):sap.ui.commons.ResponsiveContainerRange;
	@:overload( function(oDefaultContent:sap.ui.core.ID):sap.ui.commons.ResponsiveContainer{ })

	/**
	* Sets the associated {@link #getDefaultContent defaultContent}.
	* @param	oDefaultContent ID of an element which becomes the new target of this defaultContent association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDefaultContent( oDefaultContent:sap.ui.core.Control):sap.ui.commons.ResponsiveContainer;

	/**
	* Sets a new value for property {@link #getHeight height}.

The width of the responsive container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.commons.ResponsiveContainer;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the responsive container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.commons.ResponsiveContainer;
}

typedef ResponsiveContainerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The width of the responsive container.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The width of the responsive container.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

    /**
    * The ranges defined for this container
    */
	@:optional var ranges:Array<haxe.extern.EitherType<String,sap.ui.commons.ResponsiveContainerRange>>;

    /**
    * The currently shown content, either the default content or content of a range
    */
	@:optional var content:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* The default content to show, in case the range does not provide content
	*/
	@:optional var defaultContent:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* The event is fired the width of the container reaches a new range.
	*/
	@:optional var rangeSwitch:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
