package sap.m;

@:native("sap.m.ObjectMarker")

/**
* The <code>sap.m.ObjectMarker</code> control represents one of the following predefined types: <ul> <li><code>Flagged</code> <li><code>Favorite</code> <li><code>Draft</code> <li><code>Locked</code> <li><code>LockedBy</code> <li><code>Unsaved</code> <li><code>UnsavedBy</code> </ul> <b>Note</b>: Use the <code>LockedBy/UnsavedBy</code> type along with the <code>additionalInfo</code> property to display the name of the user who locked/changed the object. If <code>additionalInfo</code> property is not set when using <code>LockedBy/UnsavedBy</code> types, the string "Locked by another user"/"Unsaved changes by another user" will be displayed. If you don't want to display name of the user, simply use the <code>Locked/Unsaved</code> types.
*/
extern class ObjectMarker extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ObjectMarkerArgs):Void {})
	public function new(?mSettings:ObjectMarkerArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.m.ObjectMarker{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.m.ObjectMarker;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.m.ObjectMarker{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.m.ObjectMarker;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.m.ObjectMarker</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.ObjectMarker</code> itself.

Event is fired when the <code>ObjectMarker</code> is interactive and the user taps/clicks on it.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.ObjectMarker</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.ObjectMarker;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.m.ObjectMarker</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.m.ObjectMarker;

	/**
	* Creates a new subclass of class sap.m.ObjectMarker with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAdditionalInfo additionalInfo}.

Sets additional information to the displayed <code>type</code>.

<b>Note:</b> If no type is set, the additional information will not be displayed.

Default value is <code>empty string</code>.
	* @return	Value of property <code>additionalInfo</code>
	*/
	public function getAdditionalInfo( ):String;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	null
	*/
	public function getAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	null
	*/
	public function getAriaLabelledBy( ):Array<sap.ui.core.ID>;

	/**
	* Returns a metadata object for class sap.m.ObjectMarker.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getType type}.

Sets one of the predefined types.

<b>Note</b>: If the <code>visibility</code> property is not specified explicitly, every <code>type</code> comes with predefined one as follows: <ul> <li>For <code>Flagged</code> and <code>Favorite</code> the icon is visible and the text is not displayed</li> <li>For <code>Draft</code> the text is visible and the icon is not displayed</li> <li>For <code>Locked</code>, <code>LockedBy</code>, <code>Unsaved</code> and <code>UnsavedBy</code> - on screens larger than 600px both icon and text are visible, otherwise only the icon</li>

</ul>
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):sap.m.ObjectMarkerType;

	/**
	* Gets current value of property {@link #getVisibility visibility}.

Sets one of the visibility states. Visibility states are as follows: <ul> <li><code>IconOnly</code> - displays only icon, regardless of the screen size</li> <li><code>TextOnly</code> - displays only text, regardless of the screen size</li> <li><code>IconAndText</code> - displays both icon and text, regardless of the screen size</li> </ul>
	* @return	Value of property <code>visibility</code>
	*/
	public function getVisibility( ):sap.m.ObjectMarkerVisibility;

	/**
	* Removes all the controls in the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaDescribedBy( ):Array<sap.ui.core.ID>;

	/**
	* Removes all the controls in the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAriaLabelledBy( ):Array<sap.ui.core.ID>;
	@:overload( function(vAriaDescribedBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaDescribedBy from the association named {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to be removed or its index or ID
	* @return	The removed ariaDescribedBy or <code>null</code>
	*/
	public function removeAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.core.ID;
	@:overload( function(vAriaLabelledBy:Int):sap.ui.core.ID{ })
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an ariaLabelledBy from the association named {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to be removed or its index or ID
	* @return	The removed ariaLabelledBy or <code>null</code>
	*/
	public function removeAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.core.ID;

	/**
	* Sets a new value for property {@link #getAdditionalInfo additionalInfo}.

Sets additional information to the displayed <code>type</code>.

<b>Note:</b> If no type is set, the additional information will not be displayed.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sAdditionalInfo New value for property <code>additionalInfo</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAdditionalInfo( sAdditionalInfo:String):sap.m.ObjectMarker;

	/**
	* Sets a new value for property {@link #getType type}.

Sets one of the predefined types.

<b>Note</b>: If the <code>visibility</code> property is not specified explicitly, every <code>type</code> comes with predefined one as follows: <ul> <li>For <code>Flagged</code> and <code>Favorite</code> the icon is visible and the text is not displayed</li> <li>For <code>Draft</code> the text is visible and the icon is not displayed</li> <li>For <code>Locked</code>, <code>LockedBy</code>, <code>Unsaved</code> and <code>UnsavedBy</code> - on screens larger than 600px both icon and text are visible, otherwise only the icon</li>

</ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( sType:sap.m.ObjectMarkerType):sap.m.ObjectMarker;

	/**
	* Sets a new value for property {@link #getVisibility visibility}.

Sets one of the visibility states. Visibility states are as follows: <ul> <li><code>IconOnly</code> - displays only icon, regardless of the screen size</li> <li><code>TextOnly</code> - displays only text, regardless of the screen size</li> <li><code>IconAndText</code> - displays both icon and text, regardless of the screen size</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sVisibility New value for property <code>visibility</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisibility( sVisibility:sap.m.ObjectMarkerVisibility):sap.m.ObjectMarker;
}

typedef ObjectMarkerArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Sets one of the predefined types.

<b>Note</b>: If the <code>visibility</code> property is not specified explicitly, every <code>type</code> comes with predefined one as follows: <ul> <li>For <code>Flagged</code> and <code>Favorite</code> the icon is visible and the text is not displayed</li> <li>For <code>Draft</code> the text is visible and the icon is not displayed</li> <li>For <code>Locked</code>, <code>LockedBy</code>, <code>Unsaved</code> and <code>UnsavedBy</code> - on screens larger than 600px both icon and text are visible, otherwise only the icon</li>

</ul>
	*/
	@:optional var type:haxe.extern.EitherType<String,sap.m.ObjectMarkerType>;

	/**
	* Sets one of the visibility states. Visibility states are as follows: <ul> <li><code>IconOnly</code> - displays only icon, regardless of the screen size</li> <li><code>TextOnly</code> - displays only text, regardless of the screen size</li> <li><code>IconAndText</code> - displays both icon and text, regardless of the screen size</li> </ul>
	*/
	@:optional var visibility:haxe.extern.EitherType<String,sap.m.ObjectMarkerVisibility>;

	/**
	* Sets additional information to the displayed <code>type</code>.

<b>Note:</b> If no type is set, the additional information will not be displayed.
	*/
	@:optional var additionalInfo:String;

    /**
    * Internal control that should be <code>sap.m.Link</code> for interactive and <code>sap.m.Text</code> for non-interactive <code>ObjectMarker</code>.
    */
	@:optional var _innerControl:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Event is fired when the <code>ObjectMarker</code> is interactive and the user taps/clicks on it.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
