package sap.uxap;

@:native("sap.uxap.ObjectPageSection")

/**
* Top-level information container of an {@link sap.uxap.ObjectPageLayout}.

The <code>ObjectPageSection</code>'s purpose is to aggregate subsections.

<b>Note:</b> This control is intended to be used only as part of the <code>ObjectPageLayout</code>.
*/
extern class ObjectPageSection extends sap.uxap.ObjectPageSectionBase
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageSectionArgs):Void {})
	public function new(?mSettings:ObjectPageSectionArgs):Void;

	/**
	* Adds some subSection to the aggregation {@link #getSubSections subSections}.
	* @param	oSubSection The subSection to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSubSection( oSubSection:sap.uxap.ObjectPageSubSection):sap.uxap.ObjectPageSection;

	/**
	* Destroys all the subSections in the aggregation {@link #getSubSections subSections}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySubSections( ):sap.uxap.ObjectPageSection;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageSection with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.uxap.ObjectPageSectionBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageSection.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* ID of the element which is the current target of the association {@link #getSelectedSubSection selectedSubSection}, or <code>null</code>.
	* @return	null
	*/
	public function getSelectedSubSection( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getShowTitle showTitle}.

Determines whether to display the Section title or not.

Default value is <code>true</code>.
	* @return	Value of property <code>showTitle</code>
	*/
	public function getShowTitle( ):Bool;

	/**
	* Gets content of aggregation {@link #getSubSections subSections}.

The list of Subsections.
	* @return	null
	*/
	public function getSubSections( ):Array<sap.uxap.ObjectPageSubSection>;

	/**
	* Gets current value of property {@link #getTitleUppercase titleUppercase}.

Determines whether the Section title is displayed in upper case.

Default value is <code>true</code>.
	* @return	Value of property <code>titleUppercase</code>
	*/
	public function getTitleUppercase( ):Bool;

	/**
	* Checks for the provided <code>sap.uxap.ObjectPageSubSection</code> in the aggregation {@link #getSubSections subSections}. and returns its index if found or -1 otherwise.
	* @param	oSubSection The subSection whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSubSection( oSubSection:sap.uxap.ObjectPageSubSection):Int;

	/**
	* Inserts a subSection into the aggregation {@link #getSubSections subSections}.
	* @param	oSubSection The subSection to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the subSection should be inserted at; for a negative value of <code>iIndex</code>, the subSection is inserted at position 0; for a value greater than the current size of the aggregation, the subSection is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSubSection( oSubSection:sap.uxap.ObjectPageSubSection, iIndex:Int):sap.uxap.ObjectPageSection;

	/**
	* Removes all the controls from the aggregation {@link #getSubSections subSections}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSubSections( ):Array<sap.uxap.ObjectPageSubSection>;
	@:overload( function(vSubSection:Int):sap.uxap.ObjectPageSubSection{ })
	@:overload( function(vSubSection:String):sap.uxap.ObjectPageSubSection{ })

	/**
	* Removes a subSection from the aggregation {@link #getSubSections subSections}.
	* @param	vSubSection The subSection to remove or its index or id
	* @return	The removed subSection or <code>null</code>
	*/
	public function removeSubSection( vSubSection:sap.uxap.ObjectPageSubSection):sap.uxap.ObjectPageSubSection;
	@:overload( function(oSelectedSubSection:sap.ui.core.ID):sap.uxap.ObjectPageSection{ })

	/**
	* Sets the associated {@link #getSelectedSubSection selectedSubSection}.
	* @param	oSelectedSubSection ID of an element which becomes the new target of this selectedSubSection association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectedSubSection( oSelectedSubSection:sap.uxap.ObjectPageSubSection):sap.uxap.ObjectPageSection;

	/**
	* Sets a new value for property {@link #getShowTitle showTitle}.

Determines whether to display the Section title or not.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowTitle New value for property <code>showTitle</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowTitle( bShowTitle:Bool):sap.uxap.ObjectPageSection;

	/**
	* Sets a new value for property {@link #getTitleUppercase titleUppercase}.

Determines whether the Section title is displayed in upper case.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bTitleUppercase New value for property <code>titleUppercase</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitleUppercase( bTitleUppercase:Bool):sap.uxap.ObjectPageSection;
}

typedef ObjectPageSectionArgs = sap.uxap.ObjectPageSectionBase.ObjectPageSectionBaseArgs & {

	/**
	* Determines whether to display the Section title or not.
	*/
	@:optional var showTitle:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines whether the Section title is displayed in upper case.
	*/
	@:optional var titleUppercase:haxe.extern.EitherType<String,Bool>;

    /**
    * The list of Subsections.
    */
	@:optional var subSections:Array<haxe.extern.EitherType<String,sap.uxap.ObjectPageSubSection>>;

    /**
    * Screen Reader ariaLabelledBy
    */
	@:optional var ariaLabelledBy:haxe.extern.EitherType<String,sap.ui.core.InvisibleText>;

    /**
    * null
    */
	@:optional var _showHideAllButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _showHideButton:haxe.extern.EitherType<String,sap.m.Button>;

	/**
	* The most recently selected Subsection by the user.
	*/
	@:optional var selectedSubSection:haxe.extern.EitherType<String,sap.uxap.ObjectPageSubSection>;
}
