package sap.ui.layout.cssgrid;

@:native("sap.ui.layout.cssgrid.GridResponsiveLayout")

/**
* Applies a sap.ui.layout.cssgrid.GridSettings to a provided DOM element or Control. Have to possibility to hold multiple sap.ui.layout.cssgrid.GridSettings and apply the currently active GridSettings.
*/
extern class GridResponsiveLayout extends sap.ui.layout.cssgrid.GridLayoutBase
{
	@:overload(function(?sId:String, ?mSettings:GridResponsiveLayoutArgs):Void {})
	public function new(?mSettings:GridResponsiveLayoutArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:layoutChange layoutChange} event of this <code>sap.ui.layout.cssgrid.GridResponsiveLayout</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.layout.cssgrid.GridResponsiveLayout</code> itself.

Fired when the currently active GridSettings changes
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.layout.cssgrid.GridResponsiveLayout</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLayoutChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Destroys the layout in the aggregation {@link #getLayout layout}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayout( ):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Destroys the layoutL in the aggregation {@link #getLayoutL layoutL}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutL( ):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Destroys the layoutM in the aggregation {@link #getLayoutM layoutM}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutM( ):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Destroys the layoutS in the aggregation {@link #getLayoutS layoutS}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutS( ):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Destroys the layoutXL in the aggregation {@link #getLayoutXL layoutXL}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLayoutXL( ):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:layoutChange layoutChange} event of this <code>sap.ui.layout.cssgrid.GridResponsiveLayout</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLayoutChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Creates a new subclass of class sap.ui.layout.cssgrid.GridResponsiveLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.layout.cssgrid.GridLayoutBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getContainerQuery containerQuery}.

If set to <code>true</code>, the current range (large, medium or small) is defined by the size of the container surrounding the <code>CSSGrid</code> instead of the device screen size (media Query).

Default value is <code>false</code>.
	* @return	Value of property <code>containerQuery</code>
	*/
	public function getContainerQuery( ):Bool;

	/**
	* Gets content of aggregation {@link #getLayout layout}.

The sap.ui.layout.cssgrid.GridSettings applied if no settings are provided for a specific size
	* @return	null
	*/
	public function getLayout( ):sap.ui.layout.cssgrid.GridSettings;

	/**
	* Gets content of aggregation {@link #getLayoutL layoutL}.

The sap.ui.layout.cssgrid.GridSettings applied for size "L"
	* @return	null
	*/
	public function getLayoutL( ):sap.ui.layout.cssgrid.GridSettings;

	/**
	* Gets content of aggregation {@link #getLayoutM layoutM}.

The sap.ui.layout.cssgrid.GridSettings applied for size "M"
	* @return	null
	*/
	public function getLayoutM( ):sap.ui.layout.cssgrid.GridSettings;

	/**
	* Gets content of aggregation {@link #getLayoutS layoutS}.

The sap.ui.layout.cssgrid.GridSettings applied for size "S"
	* @return	null
	*/
	public function getLayoutS( ):sap.ui.layout.cssgrid.GridSettings;

	/**
	* Gets content of aggregation {@link #getLayoutXL layoutXL}.

The sap.ui.layout.cssgrid.GridSettings applied for size "XL"
	* @return	null
	*/
	public function getLayoutXL( ):sap.ui.layout.cssgrid.GridSettings;

	/**
	* Returns a metadata object for class sap.ui.layout.cssgrid.GridResponsiveLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Sets a new value for property {@link #getContainerQuery containerQuery}.

If set to <code>true</code>, the current range (large, medium or small) is defined by the size of the container surrounding the <code>CSSGrid</code> instead of the device screen size (media Query).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bContainerQuery New value for property <code>containerQuery</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContainerQuery( bContainerQuery:Bool):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Sets the aggregated {@link #getLayout layout}.
	* @param	oLayout The layout to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayout( oLayout:sap.ui.layout.cssgrid.GridSettings):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Sets the aggregated {@link #getLayoutL layoutL}.
	* @param	oLayoutL The layoutL to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutL( oLayoutL:sap.ui.layout.cssgrid.GridSettings):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Sets the aggregated {@link #getLayoutM layoutM}.
	* @param	oLayoutM The layoutM to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutM( oLayoutM:sap.ui.layout.cssgrid.GridSettings):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Sets the aggregated {@link #getLayoutS layoutS}.
	* @param	oLayoutS The layoutS to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutS( oLayoutS:sap.ui.layout.cssgrid.GridSettings):sap.ui.layout.cssgrid.GridResponsiveLayout;

	/**
	* Sets the aggregated {@link #getLayoutXL layoutXL}.
	* @param	oLayoutXL The layoutXL to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLayoutXL( oLayoutXL:sap.ui.layout.cssgrid.GridSettings):sap.ui.layout.cssgrid.GridResponsiveLayout;
}

typedef GridResponsiveLayoutArgs = sap.ui.layout.cssgrid.GridLayoutBase.GridLayoutBaseArgs & {

	/**
	* If set to <code>true</code>, the current range (large, medium or small) is defined by the size of the container surrounding the <code>CSSGrid</code> instead of the device screen size (media Query).
	*/
	@:optional var containerQuery:haxe.extern.EitherType<String,Bool>;

    /**
    * The sap.ui.layout.cssgrid.GridSettings applied if no settings are provided for a specific size
    */
	@:optional var layout:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.GridSettings>;

    /**
    * The sap.ui.layout.cssgrid.GridSettings applied for size "S"
    */
	@:optional var layoutS:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.GridSettings>;

    /**
    * The sap.ui.layout.cssgrid.GridSettings applied for size "M"
    */
	@:optional var layoutM:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.GridSettings>;

    /**
    * The sap.ui.layout.cssgrid.GridSettings applied for size "L"
    */
	@:optional var layoutL:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.GridSettings>;

    /**
    * The sap.ui.layout.cssgrid.GridSettings applied for size "XL"
    */
	@:optional var layoutXL:haxe.extern.EitherType<String,sap.ui.layout.cssgrid.GridSettings>;

	/**
	* Fired when the currently active GridSettings changes
	*/
	@:optional var layoutChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
