package sap.uxap;

@:native("sap.uxap.ObjectPageAccessibleLandmarkInfo")

/**
* Settings for accessible landmarks which can be applied to the container elements of a <code>sap.uxap.ObjectPageLayout</code> control. These landmarks are used by assistive technologies (such as screenreaders) to provide a meaningful page overview.
*/
extern class ObjectPageAccessibleLandmarkInfo extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageAccessibleLandmarkInfoArgs):Void {})
	public function new(?mSettings:ObjectPageAccessibleLandmarkInfoArgs):Void;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageAccessibleLandmarkInfo with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getContentLabel contentLabel}.

Texts which describe the landmark of the content container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	* @return	Value of property <code>contentLabel</code>
	*/
	public function getContentLabel( ):String;

	/**
	* Gets current value of property {@link #getContentRole contentRole}.

Landmark role of the content container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

Default value is <code>"None"</code>.
	* @return	Value of property <code>contentRole</code>
	*/
	public function getContentRole( ):sap.ui.core.AccessibleLandmarkRole;

	/**
	* Gets current value of property {@link #getFooterLabel footerLabel}.

Texts which describe the landmark of the header container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	* @return	Value of property <code>footerLabel</code>
	*/
	public function getFooterLabel( ):String;

	/**
	* Gets current value of property {@link #getFooterRole footerRole}.

Landmark role of the footer container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

Default value is <code>"Region"</code>.
	* @return	Value of property <code>footerRole</code>
	*/
	public function getFooterRole( ):sap.ui.core.AccessibleLandmarkRole;

	/**
	* Gets current value of property {@link #getHeaderLabel headerLabel}.

Texts which describe the landmark of the header container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	* @return	Value of property <code>headerLabel</code>
	*/
	public function getHeaderLabel( ):String;

	/**
	* Gets current value of property {@link #getHeaderRole headerRole}.

Landmark role of the header container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

Default value is <code>"Banner"</code>.
	* @return	Value of property <code>headerRole</code>
	*/
	public function getHeaderRole( ):sap.ui.core.AccessibleLandmarkRole;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageAccessibleLandmarkInfo.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getNavigationLabel navigationLabel}.

Texts which describe the landmark of the navigation container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	* @return	Value of property <code>navigationLabel</code>
	*/
	public function getNavigationLabel( ):String;

	/**
	* Gets current value of property {@link #getNavigationRole navigationRole}.

Landmark role of the navigation container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

Default value is <code>"Navigation"</code>.
	* @return	Value of property <code>navigationRole</code>
	*/
	public function getNavigationRole( ):sap.ui.core.AccessibleLandmarkRole;

	/**
	* Gets current value of property {@link #getRootLabel rootLabel}.

Texts which describe the landmark of the root container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	* @return	Value of property <code>rootLabel</code>
	*/
	public function getRootLabel( ):String;

	/**
	* Gets current value of property {@link #getRootRole rootRole}.

Landmark role of the root container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

Default value is <code>"Main"</code>.
	* @return	Value of property <code>rootRole</code>
	*/
	public function getRootRole( ):sap.ui.core.AccessibleLandmarkRole;

	/**
	* Sets a new value for property {@link #getContentLabel contentLabel}.

Texts which describe the landmark of the content container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentLabel New value for property <code>contentLabel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentLabel( ?sContentLabel:String):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Sets a new value for property {@link #getContentRole contentRole}.

Landmark role of the content container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"None"</code>.
	* @param	sContentRole New value for property <code>contentRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentRole( ?sContentRole:sap.ui.core.AccessibleLandmarkRole):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Sets a new value for property {@link #getFooterLabel footerLabel}.

Texts which describe the landmark of the header container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFooterLabel New value for property <code>footerLabel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooterLabel( ?sFooterLabel:String):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Sets a new value for property {@link #getFooterRole footerRole}.

Landmark role of the footer container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"Region"</code>.
	* @param	sFooterRole New value for property <code>footerRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFooterRole( ?sFooterRole:sap.ui.core.AccessibleLandmarkRole):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Sets a new value for property {@link #getHeaderLabel headerLabel}.

Texts which describe the landmark of the header container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeaderLabel New value for property <code>headerLabel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderLabel( ?sHeaderLabel:String):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Sets a new value for property {@link #getHeaderRole headerRole}.

Landmark role of the header container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"Banner"</code>.
	* @param	sHeaderRole New value for property <code>headerRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderRole( ?sHeaderRole:sap.ui.core.AccessibleLandmarkRole):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Sets a new value for property {@link #getNavigationLabel navigationLabel}.

Texts which describe the landmark of the navigation container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sNavigationLabel New value for property <code>navigationLabel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNavigationLabel( ?sNavigationLabel:String):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Sets a new value for property {@link #getNavigationRole navigationRole}.

Landmark role of the navigation container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"Navigation"</code>.
	* @param	sNavigationRole New value for property <code>navigationRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNavigationRole( ?sNavigationRole:sap.ui.core.AccessibleLandmarkRole):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Sets a new value for property {@link #getRootLabel rootLabel}.

Texts which describe the landmark of the root container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sRootLabel New value for property <code>rootLabel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRootLabel( ?sRootLabel:String):sap.uxap.ObjectPageAccessibleLandmarkInfo;

	/**
	* Sets a new value for property {@link #getRootRole rootRole}.

Landmark role of the root container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"Main"</code>.
	* @param	sRootRole New value for property <code>rootRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRootRole( ?sRootRole:sap.ui.core.AccessibleLandmarkRole):sap.uxap.ObjectPageAccessibleLandmarkInfo;
}

typedef ObjectPageAccessibleLandmarkInfoArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Landmark role of the root container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.
	*/
	@:optional var rootRole:haxe.extern.EitherType<String,sap.ui.core.AccessibleLandmarkRole>;

	/**
	* Texts which describe the landmark of the root container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	*/
	@:optional var rootLabel:String;

	/**
	* Landmark role of the content container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.
	*/
	@:optional var contentRole:haxe.extern.EitherType<String,sap.ui.core.AccessibleLandmarkRole>;

	/**
	* Texts which describe the landmark of the content container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	*/
	@:optional var contentLabel:String;

	/**
	* Landmark role of the navigation container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.
	*/
	@:optional var navigationRole:haxe.extern.EitherType<String,sap.ui.core.AccessibleLandmarkRole>;

	/**
	* Texts which describe the landmark of the navigation container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	*/
	@:optional var navigationLabel:String;

	/**
	* Landmark role of the header container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.
	*/
	@:optional var headerRole:haxe.extern.EitherType<String,sap.ui.core.AccessibleLandmarkRole>;

	/**
	* Texts which describe the landmark of the header container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	*/
	@:optional var headerLabel:String;

	/**
	* Landmark role of the footer container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If set to <code>sap.ui.core.AccessibleLandmarkRole.None</code>, no landmark will be added to the container.
	*/
	@:optional var footerRole:haxe.extern.EitherType<String,sap.ui.core.AccessibleLandmarkRole>;

	/**
	* Texts which describe the landmark of the header container of the corresponding <code>sap.uxap.ObjectPageLayout</code> control.

If not set (and a landmark different than <code>sap.ui.core.AccessibleLandmarkRole.None</code> is defined), no label is set.
	*/
	@:optional var footerLabel:String;
}
