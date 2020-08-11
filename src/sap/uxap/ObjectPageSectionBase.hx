package sap.uxap;

@:native("sap.uxap.ObjectPageSectionBase")

/**
* An abstract container for sections and subsections in the {@link sap.uxap.ObjectPageLayout}.
*/
extern class ObjectPageSectionBase extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageSectionBaseArgs):Void {})
	public function new(?mSettings:ObjectPageSectionBaseArgs):Void;

	/**
	* Explicitly ask to connect to the UI5 model tree
	* @return	Void
	*/
	public function connectToModels( ):Void;

	/**
	* Destroys the customAnchorBarButton in the aggregation {@link #getCustomAnchorBarButton customAnchorBarButton}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomAnchorBarButton( ):sap.uxap.ObjectPageSectionBase;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageSectionBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getCustomAnchorBarButton customAnchorBarButton}.

The custom button that will provide a link to the section in the ObjectPageLayout anchor bar. This button will be used as a custom template to be into the ObjectPageLayout anchorBar area, therefore property changes happening on this button template after the first rendering won't affect the actual button copy used in the anchorBar.

If you want to change some of the button properties, you would need to bind them to a model.
	* @return	null
	*/
	public function getCustomAnchorBarButton( ):sap.m.Button;

	/**
	* Gets current value of property {@link #getImportance importance}.

Determines whether the section will be hidden on low resolutions.

Default value is <code>High</code>.
	* @return	Value of property <code>importance</code>
	*/
	public function getImportance( ):sap.uxap.Importance;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageSectionBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getTitle title}.

Defines the title of the respective section/subsection.

<b>Note:</b> If a subsection is the only one (or the only one visible) within a section, its title is displayed instead of the section title. This behavior is true even if the <code>showTitle</code> propeprty of {@link sap.uxap.ObjectPageSubSection} is set to <code>false</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTitleLevel titleLevel}.

Determines the ARIA level of the <code>ObjectPageSectionBase</code> title. The ARIA level is used by assisting technologies, such as screen readers, to create a hierarchical site map for faster navigation.

<b>Note:</b> Defining a <code>titleLevel</code> will add <code>aria-level</code> attribute from 1 to 6, instead of changing the <code>ObjectPageSectionBase</code> title HTML tag from H1 to H6. <br>For example: if <code>titleLevel</code> is <code>TitleLevel.H1</code>, it will result as aria-level of 1 added to the <code>ObjectPageSectionBase</code> title.

Default value is <code>Auto</code>.
	* @return	Value of property <code>titleLevel</code>
	*/
	public function getTitleLevel( ):sap.ui.core.TitleLevel;

	/**
	* Gets current value of property {@link #getVisible visible}.

Invisible ObjectPageSectionBase are not rendered

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets the aggregated {@link #getCustomAnchorBarButton customAnchorBarButton}.
	* @param	oCustomAnchorBarButton The customAnchorBarButton to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomAnchorBarButton( oCustomAnchorBarButton:sap.m.Button):sap.uxap.ObjectPageSectionBase;

	/**
	* Sets a new value for property {@link #getImportance importance}.

Determines whether the section will be hidden on low resolutions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>High</code>.
	* @param	sImportance New value for property <code>importance</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImportance( ?sImportance:sap.uxap.Importance):sap.uxap.ObjectPageSectionBase;

	/**
	* Sets a new value for property {@link #getTitle title}.

Defines the title of the respective section/subsection.

<b>Note:</b> If a subsection is the only one (or the only one visible) within a section, its title is displayed instead of the section title. This behavior is true even if the <code>showTitle</code> propeprty of {@link sap.uxap.ObjectPageSubSection} is set to <code>false</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.uxap.ObjectPageSectionBase;

	/**
	* Sets a new value for property {@link #getTitleLevel titleLevel}.

Determines the ARIA level of the <code>ObjectPageSectionBase</code> title. The ARIA level is used by assisting technologies, such as screen readers, to create a hierarchical site map for faster navigation.

<b>Note:</b> Defining a <code>titleLevel</code> will add <code>aria-level</code> attribute from 1 to 6, instead of changing the <code>ObjectPageSectionBase</code> title HTML tag from H1 to H6. <br>For example: if <code>titleLevel</code> is <code>TitleLevel.H1</code>, it will result as aria-level of 1 added to the <code>ObjectPageSectionBase</code> title.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Auto</code>.
	* @param	sTitleLevel New value for property <code>titleLevel</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleLevel( ?sTitleLevel:sap.ui.core.TitleLevel):sap.uxap.ObjectPageSectionBase;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Invisible ObjectPageSectionBase are not rendered

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.uxap.ObjectPageSectionBase;
}

typedef ObjectPageSectionBaseArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the title of the respective section/subsection.

<b>Note:</b> If a subsection is the only one (or the only one visible) within a section, its title is displayed instead of the section title. This behavior is true even if the <code>showTitle</code> propeprty of {@link sap.uxap.ObjectPageSubSection} is set to <code>false</code>.
	*/
	@:optional var title:String;

	/**
	* Determines the ARIA level of the <code>ObjectPageSectionBase</code> title. The ARIA level is used by assisting technologies, such as screen readers, to create a hierarchical site map for faster navigation.

<b>Note:</b> Defining a <code>titleLevel</code> will add <code>aria-level</code> attribute from 1 to 6, instead of changing the <code>ObjectPageSectionBase</code> title HTML tag from H1 to H6. <br>For example: if <code>titleLevel</code> is <code>TitleLevel.H1</code>, it will result as aria-level of 1 added to the <code>ObjectPageSectionBase</code> title.
	*/
	@:optional var titleLevel:haxe.extern.EitherType<String,sap.ui.core.TitleLevel>;

	/**
	* Invisible ObjectPageSectionBase are not rendered
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the section will be hidden on low resolutions.
	*/
	@:optional var importance:haxe.extern.EitherType<String,sap.uxap.Importance>;

    /**
    * The custom button that will provide a link to the section in the ObjectPageLayout anchor bar. This button will be used as a custom template to be into the ObjectPageLayout anchorBar area, therefore property changes happening on this button template after the first rendering won't affect the actual button copy used in the anchorBar.

If you want to change some of the button properties, you would need to bind them to a model.
    */
	@:optional var customAnchorBarButton:haxe.extern.EitherType<String,sap.m.Button>;
}
