package sap.m;

@:native("sap.m.QuickViewPage")

/**
* QuickViewPage consists of a page header, an object icon or image, an object name with short description, and an object information divided in groups. The control uses the sap.m.SimpleForm control to display information.
*/
extern class QuickViewPage extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:QuickViewPageArgs):Void {})
	public function new(?mSettings:QuickViewPageArgs):Void;

	/**
	* Adds some group to the aggregation {@link #getGroups groups}.
	* @param	oGroup The group to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addGroup( oGroup:sap.m.QuickViewGroup):sap.m.QuickViewPage;

	/**
	* Binds aggregation {@link #getGroups groups} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindGroups( oBindingInfo:Dynamic):sap.m.QuickViewPage;

	/**
	* Destroys all the groups in the aggregation {@link #getGroups groups}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyGroups( ):sap.m.QuickViewPage;

	/**
	* Creates a new subclass of class sap.m.QuickViewPage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getCrossAppNavCallback crossAppNavCallback}.

Specifies the application which provides target and param configuration for cross-application navigation from the 'page header'.
	* @return	Value of property <code>crossAppNavCallback</code>
	*/
	public function getCrossAppNavCallback( ):Dynamic;

	/**
	* Gets current value of property {@link #getDescription description}.

Specifies the text displayed under the header of the content section

Default value is <code>empty string</code>.
	* @return	Value of property <code>description</code>
	*/
	public function getDescription( ):String;

	/**
	* Gets current value of property {@link #getFallbackIcon fallbackIcon}.

Defines the fallback icon displayed in case of wrong image src or loading issues.

<b>Note</b> Accepted values are only icons from the SAP icon font.
	* @return	Value of property <code>fallbackIcon</code>
	*/
	public function getFallbackIcon( ):sap.ui.core.URI;

	/**
	* Gets content of aggregation {@link #getGroups groups}.

QuickViewGroup consists of a title (optional) and an entity of group elements.
	* @return	null
	*/
	public function getGroups( ):Array<sap.m.QuickViewGroup>;

	/**
	* Gets current value of property {@link #getHeader header}.

Specifies the text displayed in the header of the control.

Default value is <code>empty string</code>.
	* @return	Value of property <code>header</code>
	*/
	public function getHeader( ):String;

	/**
	* Gets current value of property {@link #getIcon icon}.

Specifies the URL of the icon displayed under the header of the page

Default value is <code>empty string</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):String;

	/**
	* Returns a metadata object for class sap.m.QuickViewPage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getPageId pageId}.

Page id

Default value is <code>empty string</code>.
	* @return	Value of property <code>pageId</code>
	*/
	public function getPageId( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

Specifies the text displayed in the header of the content section of the control.

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleUrl titleUrl}.

Specifies the URL which opens when the title or the thumbnail is clicked.

Default value is <code>empty string</code>.
	* @return	Value of property <code>titleUrl</code>
	*/
	public function getTitleUrl( ):String;

	/**
	* Checks for the provided <code>sap.m.QuickViewGroup</code> in the aggregation {@link #getGroups groups}. and returns its index if found or -1 otherwise.
	* @param	oGroup The group whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfGroup( oGroup:sap.m.QuickViewGroup):Int;

	/**
	* Inserts a group into the aggregation {@link #getGroups groups}.
	* @param	oGroup The group to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the group should be inserted at; for a negative value of <code>iIndex</code>, the group is inserted at position 0; for a value greater than the current size of the aggregation, the group is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertGroup( oGroup:sap.m.QuickViewGroup, iIndex:Int):sap.m.QuickViewPage;

	/**
	* Removes all the controls from the aggregation {@link #getGroups groups}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllGroups( ):Array<sap.m.QuickViewGroup>;
	@:overload( function(vGroup:Int):sap.m.QuickViewGroup{ })
	@:overload( function(vGroup:String):sap.m.QuickViewGroup{ })

	/**
	* Removes a group from the aggregation {@link #getGroups groups}.
	* @param	vGroup The group to remove or its index or id
	* @return	The removed group or <code>null</code>
	*/
	public function removeGroup( vGroup:sap.m.QuickViewGroup):sap.m.QuickViewGroup;

	/**
	* Sets a new value for property {@link #getCrossAppNavCallback crossAppNavCallback}.

Specifies the application which provides target and param configuration for cross-application navigation from the 'page header'.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oCrossAppNavCallback New value for property <code>crossAppNavCallback</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCrossAppNavCallback( oCrossAppNavCallback:Dynamic):sap.m.QuickViewPage;

	/**
	* Sets a new value for property {@link #getDescription description}.

Specifies the text displayed under the header of the content section

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sDescription New value for property <code>description</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDescription( ?sDescription:String):sap.m.QuickViewPage;

	/**
	* Sets a new value for property {@link #getFallbackIcon fallbackIcon}.

Defines the fallback icon displayed in case of wrong image src or loading issues.

<b>Note</b> Accepted values are only icons from the SAP icon font.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFallbackIcon New value for property <code>fallbackIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFallbackIcon( ?sFallbackIcon:sap.ui.core.URI):sap.m.QuickViewPage;

	/**
	* Sets a new value for property {@link #getHeader header}.

Specifies the text displayed in the header of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHeader New value for property <code>header</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeader( ?sHeader:String):sap.m.QuickViewPage;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Specifies the URL of the icon displayed under the header of the page

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( ?sIcon:String):sap.m.QuickViewPage;

	/**
	* Sets a new value for property {@link #getPageId pageId}.

Page id

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sPageId New value for property <code>pageId</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPageId( ?sPageId:String):sap.m.QuickViewPage;

	/**
	* Sets a new value for property {@link #getTitle title}.

Specifies the text displayed in the header of the content section of the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( ?sTitle:String):sap.m.QuickViewPage;

	/**
	* Sets a new value for property {@link #getTitleUrl titleUrl}.

Specifies the URL which opens when the title or the thumbnail is clicked.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitleUrl New value for property <code>titleUrl</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleUrl( ?sTitleUrl:String):sap.m.QuickViewPage;

	/**
	* Unbinds aggregation {@link #getGroups groups} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindGroups( ):sap.m.QuickViewPage;
}

typedef QuickViewPageArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Page id
	*/
	@:optional var pageId:String;

	/**
	* Specifies the text displayed in the header of the control.
	*/
	@:optional var header:String;

	/**
	* Specifies the text displayed in the header of the content section of the control.
	*/
	@:optional var title:String;

	/**
	* Specifies the URL which opens when the title or the thumbnail is clicked.
	*/
	@:optional var titleUrl:String;

	/**
	* Specifies the application which provides target and param configuration for cross-application navigation from the 'page header'.
	*/
	@:optional var crossAppNavCallback:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Specifies the text displayed under the header of the content section
	*/
	@:optional var description:String;

	/**
	* Specifies the URL of the icon displayed under the header of the page
	*/
	@:optional var icon:String;

	/**
	* Defines the fallback icon displayed in case of wrong image src or loading issues.

<b>Note</b> Accepted values are only icons from the SAP icon font.
	*/
	@:optional var fallbackIcon:haxe.extern.EitherType<String,sap.ui.core.URI>;

    /**
    * QuickViewGroup consists of a title (optional) and an entity of group elements.
    */
	@:optional var groups:Array<haxe.extern.EitherType<String,sap.m.QuickViewGroup>>;
}
