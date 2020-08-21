package sap.ui.unified;

@:native("sap.ui.unified.ShellOverlay")

/**
* ShellOverlay to be opened in front of an sap.ui.unified.Shell
*/
extern class ShellOverlay extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ShellOverlayArgs):Void {})
	public function new(?mSettings:ShellOverlayArgs):Void;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.unified.ShellOverlay{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.unified.ShellOverlay;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.unified.ShellOverlay;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:closed closed} event of this <code>sap.ui.unified.ShellOverlay</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.unified.ShellOverlay</code> itself.

Fired when the overlay was closed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.unified.ShellOverlay</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachClosed( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.ShellOverlay;

	/**
	* Closes the ShellOverlay.
	* @return	Void
	*/
	public function close( ):Void;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.unified.ShellOverlay;

	/**
	* Destroys the search in the aggregation {@link #getSearch search}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySearch( ):sap.ui.unified.ShellOverlay;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:closed closed} event of this <code>sap.ui.unified.ShellOverlay</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachClosed( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.unified.ShellOverlay;

	/**
	* Creates a new subclass of class sap.ui.unified.ShellOverlay with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content to appear in the overlay.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.ui.unified.ShellOverlay.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getSearch search}.

Experimental (This aggregation might change in future!): The search control which should be displayed in the overlay header.
	* @return	null
	*/
	public function getSearch( ):sap.ui.core.Control;

	/**
	* ID of the element which is the current target of the association {@link #getShell shell}, or <code>null</code>.
	* @return	null
	*/
	public function getShell( ):sap.ui.core.ID;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.unified.ShellOverlay;

	/**
	* Opens the ShellOverlay.
	* @return	Void
	*/
	public function open( ):Void;

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
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets the aggregated {@link #getSearch search}.
	* @param	oSearch The search to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSearch( oSearch:sap.ui.core.Control):sap.ui.unified.ShellOverlay;
	@:overload( function(oShell:sap.ui.core.ID):sap.ui.unified.ShellOverlay{ })

	/**
	* Sets the associated {@link #getShell shell}.
	* @param	oShell ID of an element which becomes the new target of this shell association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShell( oShell:sap.ui.unified.ShellLayout):sap.ui.unified.ShellOverlay;
}

typedef ShellOverlayArgs = sap.ui.core.Control.ControlArgs & {

    /**
    * The content to appear in the overlay.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Experimental (This aggregation might change in future!): The search control which should be displayed in the overlay header.
    */
	@:optional var search:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Reference to the sap.ui.unified.Shell or sap.ui.unified.ShellLayout control.
	*/
	@:optional var shell:haxe.extern.EitherType<String,sap.ui.unified.ShellLayout>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Fired when the overlay was closed.
	*/
	@:optional var closed:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
