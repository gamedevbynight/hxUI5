package sap.ui.layout.cssgrid;

@:native("sap.ui.layout.cssgrid.ResponsiveColumnLayout")

/**
* Represents a layout which displays variable number of columns, depending on available screen size. With that it achieves flexible layouts and line breaks for large, medium, and small-sized screens, such as desktop, tablet, and mobile.

Grid row's height is dynamically determined by the height of the highest grid element on this row.
*/
extern class ResponsiveColumnLayout extends sap.ui.layout.cssgrid.GridLayoutBase
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveColumnLayoutArgs):Void {})
	public function new(?mSettings:ResponsiveColumnLayoutArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:layoutChange layoutChange} event of this <code>sap.ui.layout.cssgrid.ResponsiveColumnLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.layout.cssgrid.ResponsiveColumnLayout</code> itself.

Fired when the currently active layout changes
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.layout.cssgrid.ResponsiveColumnLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLayoutChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.layout.cssgrid.ResponsiveColumnLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:layoutChange layoutChange} event of this <code>sap.ui.layout.cssgrid.ResponsiveColumnLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLayoutChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.layout.cssgrid.ResponsiveColumnLayout;

	/**
	* Creates a new subclass of class sap.ui.layout.cssgrid.ResponsiveColumnLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.cssgrid.GridLayoutBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.ui.layout.cssgrid.ResponsiveColumnLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Returns if the Grid Layout is responsive.
	* @return	If the Grid Layout is responsive.
	*/
	public function isResponsive( ):Bool;
}

typedef ResponsiveColumnLayoutArgs = sap.ui.layout.cssgrid.GridLayoutBase.GridLayoutBaseArgs & {

	/**
	* Fired when the currently active layout changes
	*/
	@:optional var layoutChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
