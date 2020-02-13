package sap.uxap;

@:native("sap.uxap.ObjectPageHeaderLayoutData")

/**
* A {@link sap.ui.core.LayoutData} element that can be added to controls used in the <code>headerContent</code> aggregation of the <code>ObjectPageLayout</code>.

<b>Note:</b> This element is only taken into account when the <code>sap.uxap.ObjectPageLayout</code> control is used together with <code>sap.uxap.ObjectPageHeader</code> as value of <code>headerTitle</code>.
*/
extern class ObjectPageHeaderLayoutData extends sap.ui.core.LayoutData
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageHeaderLayoutDataArgs):Void {})
	public function new(?mSettings:ObjectPageHeaderLayoutDataArgs):Void;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageHeaderLayoutData with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.LayoutData.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageHeaderLayoutData.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowSeparatorAfter showSeparatorAfter}.

If this property is set the control will display a separator after it.

Default value is <code>false</code>.
	* @return	Value of property <code>showSeparatorAfter</code>
	*/
	public function getShowSeparatorAfter( ):Bool;

	/**
	* Gets current value of property {@link #getShowSeparatorBefore showSeparatorBefore}.

If this property is set the control will display a separator before it.

Default value is <code>false</code>.
	* @return	Value of property <code>showSeparatorBefore</code>
	*/
	public function getShowSeparatorBefore( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleL visibleL}.

If this property is set the control will be visible (or not) in a large sized layout.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleL</code>
	*/
	public function getVisibleL( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleM visibleM}.

If this property is set the control will be visible (or not) in a medium sized layout.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleM</code>
	*/
	public function getVisibleM( ):Bool;

	/**
	* Gets current value of property {@link #getVisibleS visibleS}.

If this property is set the control will be visible (or not) in a small sized layout.

Default value is <code>true</code>.
	* @return	Value of property <code>visibleS</code>
	*/
	public function getVisibleS( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

If this property is set the control will take the provided size.

Default value is <code>auto</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getShowSeparatorAfter showSeparatorAfter}.

If this property is set the control will display a separator after it.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSeparatorAfter New value for property <code>showSeparatorAfter</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSeparatorAfter( bShowSeparatorAfter:Bool):sap.uxap.ObjectPageHeaderLayoutData;

	/**
	* Sets a new value for property {@link #getShowSeparatorBefore showSeparatorBefore}.

If this property is set the control will display a separator before it.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowSeparatorBefore New value for property <code>showSeparatorBefore</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowSeparatorBefore( bShowSeparatorBefore:Bool):sap.uxap.ObjectPageHeaderLayoutData;

	/**
	* Sets a new value for property {@link #getVisibleL visibleL}.

If this property is set the control will be visible (or not) in a large sized layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleL New value for property <code>visibleL</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleL( bVisibleL:Bool):sap.uxap.ObjectPageHeaderLayoutData;

	/**
	* Sets a new value for property {@link #getVisibleM visibleM}.

If this property is set the control will be visible (or not) in a medium sized layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleM New value for property <code>visibleM</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleM( bVisibleM:Bool):sap.uxap.ObjectPageHeaderLayoutData;

	/**
	* Sets a new value for property {@link #getVisibleS visibleS}.

If this property is set the control will be visible (or not) in a small sized layout.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisibleS New value for property <code>visibleS</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibleS( bVisibleS:Bool):sap.uxap.ObjectPageHeaderLayoutData;

	/**
	* Sets a new value for property {@link #getWidth width}.

If this property is set the control will take the provided size.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.uxap.ObjectPageHeaderLayoutData;
}

typedef ObjectPageHeaderLayoutDataArgs = sap.ui.core.LayoutData.LayoutDataArgs & {

	/**
	* If this property is set the control will be visible (or not) in a small sized layout.
	*/
	@:optional var visibleS:haxe.extern.EitherType<String,Bool>;

	/**
	* If this property is set the control will be visible (or not) in a medium sized layout.
	*/
	@:optional var visibleM:haxe.extern.EitherType<String,Bool>;

	/**
	* If this property is set the control will be visible (or not) in a large sized layout.
	*/
	@:optional var visibleL:haxe.extern.EitherType<String,Bool>;

	/**
	* If this property is set the control will display a separator before it.
	*/
	@:optional var showSeparatorBefore:haxe.extern.EitherType<String,Bool>;

	/**
	* If this property is set the control will display a separator after it.
	*/
	@:optional var showSeparatorAfter:haxe.extern.EitherType<String,Bool>;

	/**
	* If this property is set the control will take the provided size.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;
}
