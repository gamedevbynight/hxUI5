package sap.ui.core;

@:native("sap.ui.core.UIArea")

/**
* An area in a page that hosts a tree of UI elements.

<code>UIArea</code>s are fully managed by the UI5 {@link sap.ui.core.Core Core}. They cannot be created by the application but are implicitly created by the Core when controls are placed via {@link sap.ui.core.Control#placeAt Control#placeAt} at a new DOM element for which no <code>UIArea</code> exists yet.

<code>UIArea</code>s are essential for the rendering of controls. Controls get rendered only when they are directly or indirectly contained in the <code>content</code> aggregation of a <code>UIArea</code>. <code>Control#placeAt</code> ensures that there is a <code>UIArea</code> with the given ID and adds the control to the <code>content</code> aggregation of this <code>UIArea</code>. Whenever controls become invalidated, the corresponding <code>UIArea</code> remembers this and takes care of the re-rendering of the control.

Additionally, <code>UIArea</code>s play an important role in the event handling of controls. They register for a standard set of browser events. For each incoming event, they identify the control to which the target of the event belongs to and dispatch the event to that control. This dispatching reduces the number of event handlers in a page.

<code>UIArea</code>s also act as a data binding root for their contained controls. Whenever a model is attached to or detached from the Core, this change is propagated to all <code>UIAreas</code> which in turn propagate it further down to their aggregated children, etc.

The special aggregation named <code>dependents</code> also participates in the databinding, but its content is not rendered by the <code>UIArea</code>. It can be used for popups or similar controls that are not contained in the normal control tree, but nevertheless should receive model or binding context updates.
*/
extern class UIArea extends sap.ui.base.ManagedObject
{

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.ui.core.UIArea;

	/**
	* Adds some dependent to the aggregation {@link #getDependents dependents}.
	* @param	oDependent The dependent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addDependent( oDependent:sap.ui.core.Control):sap.ui.core.UIArea;

	/**
	* Enabled or disables logging of certain event types.

The event handling code of class UIArea logs all processed browser events with log level DEBUG. Only some events that occur too frequently are suppressed by default: <code>mousemove</code>, <code>mouseover</code>, <code>mouseout</code>, <code>scroll</code>, <code>dragover</code>, <code>dragenter</code> and <code>dragleave</code>.

With this method, logging can be disabled for further event types or it can be enabled for some or all of the event types listed above. The parameter <code>mEventTypes</code> is a map of boolean values keyed by event type names. When the value for an event type coerces to true, events of that type won't be logged.
	* @param	mEventTypes Map of logging flags keyed by event types
	* @return	A copy of the resulting event logging configuration (not normalized)
	*/
	public static function configureEventLogging( ?mEventTypes:Dynamic):Dynamic;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.core.UIArea;

	/**
	* Destroys all the dependents in the aggregation {@link #getDependents dependents}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDependents( ):sap.ui.core.UIArea;

	/**
	* Creates a new subclass of class sap.ui.core.UIArea with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Content that is displayed in the UIArea.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getDependents dependents}.

Dependent objects whose lifecycle is bound to the UIArea but which are not automatically rendered by the UIArea.
	* @return	null
	*/
	public function getDependents( ):Array<sap.ui.core.Control>;

	/**
	* Returns this <code>UIArea</code>'s id (as determined from provided RootNode).
	* @return	id of this UIArea
	*/
	public function getId( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.core.UIArea.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the Root Node hosting this instance of <code>UIArea</code>.
	* @return	the Root Node hosting this instance of <code>UIArea</code>.
	*/
	public function getRootNode( ):js.html.Element;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getContent content}. and returns its index if found or -1 otherwise.
	* @param	oContent The content whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfContent( oContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getDependents dependents}. and returns its index if found or -1 otherwise.
	* @param	oDependent The dependent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfDependent( oDependent:sap.ui.core.Control):Int;

	/**
	* Inserts a content into the aggregation {@link #getContent content}.
	* @param	oContent The content to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the content should be inserted at; for a negative value of <code>iIndex</code>, the content is inserted at position 0; for a value greater than the current size of the aggregation, the content is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.ui.core.UIArea;

	/**
	* Inserts a dependent into the aggregation {@link #getDependents dependents}.
	* @param	oDependent The dependent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the dependent should be inserted at; for a negative value of <code>iIndex</code>, the dependent is inserted at position 0; for a value greater than the current size of the aggregation, the dependent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertDependent( oDependent:sap.ui.core.Control, iIndex:Int):sap.ui.core.UIArea;

	/**
	* Returns the locked state of the <code>sap.ui.core.UIArea</code>
	* @return	locked state
	*/
	public function isLocked( ):Bool;

	/**
	* Locks this instance of UIArea.

Rerendering and eventing will not be active as long as no {@link #unlock} is called.
	* @return	Void
	*/
	public function lock( ):Void;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getDependents dependents}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllDependents( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vDependent:Int):sap.ui.core.Control{ })
	@:overload( function(vDependent:String):sap.ui.core.Control{ })

	/**
	* Removes a dependent from the aggregation {@link #getDependents dependents}.
	* @param	vDependent The dependent to remove or its index or id
	* @return	The removed dependent or <code>null</code>
	*/
	public function removeDependent( vDependent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Allows setting the root node hosting this instance of <code>UIArea</code>.

The node must have an ID that will be used as ID for this instance of <code>UIArea</code>.
	* @param	oRootNode the hosting DOM node for this instance of <code>UIArea</code>.
	* @return	Void
	*/
	public function setRootNode( oRootNode:Dynamic):Void;

	/**
	* Un-Locks this instance of UIArea.

Rerendering and eventing will now be enabled again.
	* @return	Void
	*/
	public function unlock( ):Void;
}

