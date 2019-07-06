package sap.ui.commons;

@:native("sap.ui.commons.ResponsiveContainerRange")

/**
* Defines a range for the ResponsiveContainer
*/
extern class ResponsiveContainerRange extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveContainerRangeArgs):Void {})
	public function new(?mSettings:ResponsiveContainerRangeArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.ResponsiveContainerRange with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* ID of the element which is the current target of the association {@link #getContent content}, or <code>null</code>.
	* @return	null
	*/
	public function getContent( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getHeight height}.

The minimal height for this range to be displayed.

Default value is <code>empty string</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getKey key}.

A key which can be used to identify the range (optional).

Default value is <code>empty string</code>.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.ResponsiveContainerRange.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getWidth width}.

The minimal width for this range to be displayed.

Default value is <code>empty string</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;
	@:overload( function(oContent:sap.ui.core.ID):sap.ui.commons.ResponsiveContainerRange{ })

	/**
	* Sets the associated {@link #getContent content}.
	* @param	oContent ID of an element which becomes the new target of this content association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( oContent:sap.ui.core.Control):sap.ui.commons.ResponsiveContainerRange;

	/**
	* Sets a new value for property {@link #getHeight height}.

The minimal height for this range to be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.commons.ResponsiveContainerRange;

	/**
	* Sets a new value for property {@link #getKey key}.

A key which can be used to identify the range (optional).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.ui.commons.ResponsiveContainerRange;

	/**
	* Sets a new value for property {@link #getWidth width}.

The minimal width for this range to be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.ResponsiveContainerRange;
}

typedef ResponsiveContainerRangeArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The minimal width for this range to be displayed.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The minimal height for this range to be displayed.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* A key which can be used to identify the range (optional).
	*/
	@:optional var key:String;

	/**
	* The content to show for this range (optional).
	*/
	@:optional var content:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
