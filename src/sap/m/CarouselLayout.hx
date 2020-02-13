package sap.m;

@:native("sap.m.CarouselLayout")

/**
* Applies a <code>sap.m.CarouselLayout</code> to a provided DOM element or Control.
*/
extern class CarouselLayout extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:CarouselLayoutArgs):Void {})
	public function new(?mSettings:CarouselLayoutArgs):Void;

	/**
	* Creates a new subclass of class sap.m.CarouselLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.CarouselLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Gets current value of property {@link #getVisiblePagesCount visiblePagesCount}.

Defines how many pages are displayed in the visible area of the <code>Carousel</code> control. Value should be a positive number.

<b>Note:</b> When this property is set to something different than the default value, the <code>loop</code> property of <code>Carousel</code> is ignored.

Default value is <code>1</code>.
	* @return	Value of property <code>visiblePagesCount</code>
	*/
	public function getVisiblePagesCount( ):Int;

	/**
	* Sets a new value for property {@link #getVisiblePagesCount visiblePagesCount}.

Defines how many pages are displayed in the visible area of the <code>Carousel</code> control. Value should be a positive number.

<b>Note:</b> When this property is set to something different than the default value, the <code>loop</code> property of <code>Carousel</code> is ignored.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iVisiblePagesCount New value for property <code>visiblePagesCount</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisiblePagesCount( iVisiblePagesCount:Int):sap.m.CarouselLayout;
}

typedef CarouselLayoutArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* Defines how many pages are displayed in the visible area of the <code>Carousel</code> control. Value should be a positive number.

<b>Note:</b> When this property is set to something different than the default value, the <code>loop</code> property of <code>Carousel</code> is ignored.
	*/
	@:optional var visiblePagesCount:haxe.extern.EitherType<String,Int>;
}
