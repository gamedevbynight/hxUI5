package sap.ui.layout;

@:native("sap.ui.layout.ResponsiveFlowLayout")

/**
* This is a layout where several controls can be added. These controls are blown up to fit in an entire row. If the window resizes, the controls are moved between the rows and resized again.
*/
extern class ResponsiveFlowLayout extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ResponsiveFlowLayoutArgs):Void {})
	public function new(?mSettings:ResponsiveFlowLayoutArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.layout.ResponsiveFlowLayout{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.layout.ResponsiveFlowLayout;

	/**
	* Adds content. This function needs to be overridden to prevent any rendering while some content is still being added.
	* @param	oContent The content that should be added to the layout
	* @return	Void
	*/
	public function addContent( oContent:sap.ui.core.Control):Void;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.layout.ResponsiveFlowLayout;

	/**
	* Creates a new subclass of class sap.ui.layout.ResponsiveFlowLayout with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets content of aggregation {@link #getContent content}.

Added content that should be positioned. Every content item should have a ResponsiveFlowLayoutData attached, or otherwise, the default values are used.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.ui.layout.ResponsiveFlowLayout.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getResponsive responsive}.

If set to false, all added controls will keep their width, or otherwise, the controls will be stretched to the possible width of a row.

Default value is <code>true</code>.
	* @return	Value of property <code>responsive</code>
	*/
	public function getResponsive( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts content. This function needs to be overridden to prevent any rendering while some content is still being added.
	* @param	oContent The content that should be inserted to the layout
	* @param	iIndex The index where the content should be inserted into
	* @return	Void
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):Void;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(oContent:Int):Void{ })
	@:overload( function(oContent:String):Void{ })

	/**
	* Removes content. This function needs to be overridden to prevent any rendering while some content is still being added.
	* @param	oContent The content that should be removed from the layout
	* @return	Void
	*/
	public function removeContent( oContent:sap.ui.core.Control):Void;

	/**
	* Sets a new value for property {@link #getResponsive responsive}.

If set to false, all added controls will keep their width, or otherwise, the controls will be stretched to the possible width of a row.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bResponsive New value for property <code>responsive</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setResponsive( bResponsive:Bool):sap.ui.layout.ResponsiveFlowLayout;
}

typedef ResponsiveFlowLayoutArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* If set to false, all added controls will keep their width, or otherwise, the controls will be stretched to the possible width of a row.
	*/
	@:optional var responsive:haxe.extern.EitherType<String,Bool>;

    /**
    * Added content that should be positioned. Every content item should have a ResponsiveFlowLayoutData attached, or otherwise, the default values are used.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / IDs that label this control (see WAI-ARIA attribute <code>aria-labelledby</code>).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
