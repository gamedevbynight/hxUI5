package sap.ui.commons;

@:native("sap.ui.commons.Accordion")

/**
* Contains N sections, acting as containers for any library control
*/
extern class Accordion extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:AccordionArgs):Void {})
	public function new(?mSettings:AccordionArgs):Void;

	/**
	* Adds some section to the aggregation {@link #getSections sections}.
	* @param	oSection The section to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSection( oSection:sap.ui.commons.AccordionSection):sap.ui.commons.Accordion;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:sectionClose sectionClose} event of this <code>sap.ui.commons.Accordion</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Accordion</code> itself.

Event is triggered when the user closes a section.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Accordion</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSectionClose( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Accordion;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:sectionOpen sectionOpen} event of this <code>sap.ui.commons.Accordion</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Accordion</code> itself.

Event is triggered when the user opens a section.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Accordion</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSectionOpen( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Accordion;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:sectionsReorder sectionsReorder} event of this <code>sap.ui.commons.Accordion</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Accordion</code> itself.

Event is triggered when the user changes the position of a section.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Accordion</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSectionsReorder( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Accordion;

	/**
	* Closes a section and opens the default one
	* @param	sSectionId Id of the section that is being closed
	* @return	Void
	*/
	public function closeSection( sSectionId:String):Void;

	/**
	* Destroys all the sections in the aggregation {@link #getSections sections}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySections( ):sap.ui.commons.Accordion;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:sectionClose sectionClose} event of this <code>sap.ui.commons.Accordion</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSectionClose( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Accordion;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:sectionOpen sectionOpen} event of this <code>sap.ui.commons.Accordion</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSectionOpen( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Accordion;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:sectionsReorder sectionsReorder} event of this <code>sap.ui.commons.Accordion</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSectionsReorder( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Accordion;

	/**
	* Creates a new subclass of class sap.ui.commons.Accordion with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.commons.Accordion.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getOpenedSectionsId openedSectionsId}.

Section IDs that are opened by default at application start
	* @return	Value of property <code>openedSectionsId</code>
	*/
	public function getOpenedSectionsId( ):String;

	/**
	* Gets content of aggregation {@link #getSections sections}.

Empty container used to display any library control
	* @return	null
	*/
	public function getSections( ):Array<sap.ui.commons.AccordionSection>;

	/**
	* Gets current value of property {@link #getWidth width}.

When the specified width is less than the width of a section content, a horizontal scroll bar is provided.

Default value is <code>200px</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Checks for the provided <code>sap.ui.commons.AccordionSection</code> in the aggregation {@link #getSections sections}. and returns its index if found or -1 otherwise.
	* @param	oSection The section whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSection( oSection:sap.ui.commons.AccordionSection):Int;

	/**
	* Inserts a section into the aggregation {@link #getSections sections}.
	* @param	oSection The section to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the section should be inserted at; for a negative value of <code>iIndex</code>, the section is inserted at position 0; for a value greater than the current size of the aggregation, the section is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSection( oSection:sap.ui.commons.AccordionSection, iIndex:Int):sap.ui.commons.Accordion;

	/**
	* Opens a section
	* @param	sSectionId Id of the section that is being opened
	* @return	Void
	*/
	public function openSection( sSectionId:String):Void;

	/**
	* Removes all the controls from the aggregation {@link #getSections sections}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSections( ):Array<sap.ui.commons.AccordionSection>;
	@:overload( function(vSection:Int):sap.ui.commons.AccordionSection{ })
	@:overload( function(vSection:String):sap.ui.commons.AccordionSection{ })

	/**
	* Removes a section from the aggregation {@link #getSections sections}.
	* @param	vSection The section to remove or its index or id
	* @return	The removed section or <code>null</code>
	*/
	public function removeSection( vSection:sap.ui.commons.AccordionSection):sap.ui.commons.AccordionSection;

	/**
	* Redefinition of the method to add additional handling
	* @param	sOpenedSectionsId New value for property openedSectionsId
	* @return	'this' to allow method chaining
	*/
	public function setOpenedSectionsId( sOpenedSectionsId:String):sap.ui.commons.Accordion;

	/**
	* Sets a new value for property {@link #getWidth width}.

When the specified width is less than the width of a section content, a horizontal scroll bar is provided.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>200px</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.Accordion;
}

typedef AccordionArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* When the specified width is less than the width of a section content, a horizontal scroll bar is provided.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Section IDs that are opened by default at application start
	*/
	@:optional var openedSectionsId:String;

    /**
    * Empty container used to display any library control
    */
	@:optional var sections:Array<haxe.extern.EitherType<String,sap.ui.commons.AccordionSection>>;

	/**
	* Event is triggered when the user closes a section.
	*/
	@:optional var sectionClose:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is triggered when the user opens a section.
	*/
	@:optional var sectionOpen:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Event is triggered when the user changes the position of a section.
	*/
	@:optional var sectionsReorder:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
