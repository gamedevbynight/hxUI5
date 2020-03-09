package sap.ui.commons;

@:native("sap.ui.commons.TreeNode")

/**
* Tree node element
*/
extern class TreeNode extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:TreeNodeArgs):Void {})
	public function new(?mSettings:TreeNodeArgs):Void;
	@:overload( function(vAriaDescribedBy:sap.ui.core.ID):sap.ui.commons.TreeNode{ })

	/**
	* Adds some ariaDescribedBy into the association {@link #getAriaDescribedBy ariaDescribedBy}.
	* @param	vAriaDescribedBy The ariaDescribedBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaDescribedBy( vAriaDescribedBy:sap.ui.core.Control):sap.ui.commons.TreeNode;
	@:overload( function(vAriaLabelledBy:sap.ui.core.ID):sap.ui.commons.TreeNode{ })

	/**
	* Adds some ariaLabelledBy into the association {@link #getAriaLabelledBy ariaLabelledBy}.
	* @param	vAriaLabelledBy The ariaLabelledBy to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addAriaLabelledBy( vAriaLabelledBy:sap.ui.core.Control):sap.ui.commons.TreeNode;

	/**
	* Adds some node to the aggregation {@link #getNodes nodes}.
	* @param	oNode The node to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addNode( oNode:sap.ui.commons.TreeNode):sap.ui.commons.TreeNode;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selected selected} event of this <code>sap.ui.commons.TreeNode</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.TreeNode</code> itself.

Node is selected
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.TreeNode</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelected( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.TreeNode;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:toggleOpenState toggleOpenState} event of this <code>sap.ui.commons.TreeNode</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.TreeNode</code> itself.

Node state has changed.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.TreeNode</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachToggleOpenState( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.TreeNode;

	/**
	* Collapses the node.
	* @param	bCollapseChildren Propagates collapse to node's children
	* @param	bDisableCollapseFinishedHandler Disables the collapse finished handler
	* @return	Void
	*/
	public function collapse( bCollapseChildren:Bool, bDisableCollapseFinishedHandler:Bool):Void;

	/**
	* Destroys all the nodes in the aggregation {@link #getNodes nodes}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyNodes( ):sap.ui.commons.TreeNode;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selected selected} event of this <code>sap.ui.commons.TreeNode</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelected( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.TreeNode;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:toggleOpenState toggleOpenState} event of this <code>sap.ui.commons.TreeNode</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachToggleOpenState( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.TreeNode;

	/**
	* Expands the node.
	* @param	bExpandChildren Propagates expand to node's children
	* @param	bDisableExpandFinishedHandler Disables the expand finished handler
	* @return	Void
	*/
	public function expand( bExpandChildren:Bool, bDisableExpandFinishedHandler:Bool):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.TreeNode with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

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
	* Gets current value of property {@link #getExpanded expanded}.

Node is expanded

Default value is <code>true</code>.
	* @return	Value of property <code>expanded</code>
	*/
	public function getExpanded( ):Bool;

	/**
	* Gets current value of property {@link #getHasExpander hasExpander}.

Should the node has an expander.

Default value is <code>false</code>.
	* @return	Value of property <code>hasExpander</code>
	*/
	public function getHasExpander( ):Bool;

	/**
	* Gets current value of property {@link #getIcon icon}.

Icon to display in front of the node
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Gets current value of property {@link #getIsSelected isSelected}.

Node is selected

Default value is <code>false</code>.
	* @return	Value of property <code>isSelected</code>
	*/
	public function getIsSelected( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.commons.TreeNode.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getNodes nodes}.

Subnodes for the current node
	* @return	null
	*/
	public function getNodes( ):Array<sap.ui.commons.TreeNode>;

	/**
	* Gets current value of property {@link #getSelectable selectable}.

The node is selectable. If true, clicking on the node text triggers "selected" event

Default value is <code>true</code>.
	* @return	Value of property <code>selectable</code>
	*/
	public function getSelectable( ):Bool;

	/**
	* Gets current value of property {@link #getText text}.

Node text
	* @return	Value of property <code>text</code>
	*/
	public function getText( ):String;

	/**
	* Checks for the provided <code>sap.ui.commons.TreeNode</code> in the aggregation {@link #getNodes nodes}. and returns its index if found or -1 otherwise.
	* @param	oNode The node whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfNode( oNode:sap.ui.commons.TreeNode):Int;

	/**
	* Inserts a node into the aggregation {@link #getNodes nodes}.
	* @param	oNode The node to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the node should be inserted at; for a negative value of <code>iIndex</code>, the node is inserted at position 0; for a value greater than the current size of the aggregation, the node is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertNode( oNode:sap.ui.commons.TreeNode, iIndex:Int):sap.ui.commons.TreeNode;

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

	/**
	* Removes all the controls from the aggregation {@link #getNodes nodes}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllNodes( ):Array<sap.ui.commons.TreeNode>;
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
	@:overload( function(vNode:Int):sap.ui.commons.TreeNode{ })
	@:overload( function(vNode:String):sap.ui.commons.TreeNode{ })

	/**
	* Removes a node from the aggregation {@link #getNodes nodes}.
	* @param	vNode The node to remove or its index or id
	* @return	The removed node or <code>null</code>
	*/
	public function removeNode( vNode:sap.ui.commons.TreeNode):sap.ui.commons.TreeNode;

	/**
	* Select the node, and if any, deselects the previously selected node
	* @param	bSuppressEvent null
	* @return	Void
	*/
	public function select( bSuppressEvent:Bool):Void;

	/**
	* Sets a new value for property {@link #getExpanded expanded}.

Node is expanded

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bExpanded New value for property <code>expanded</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setExpanded( bExpanded:Bool):sap.ui.commons.TreeNode;

	/**
	* Sets a new value for property {@link #getHasExpander hasExpander}.

Should the node has an expander.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bHasExpander New value for property <code>hasExpander</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHasExpander( bHasExpander:Bool):sap.ui.commons.TreeNode;

	/**
	* Sets a new value for property {@link #getIcon icon}.

Icon to display in front of the node

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.ui.commons.TreeNode;

	/**
	* Redefinition of Setter for property <code>isSelected</code> for validation purpose

Default value is empty/<code>undefined</code>
	* @param	bIsSelected new value for property <code>isSelected</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setIsSelected( bIsSelected:Bool):sap.ui.commons.TreeNode;

	/**
	* Redefinition of Setter for property <code>selectable</code> for validation purpose.

Default value is <code>true</code>
	* @param	bSelectable new value for property <code>selectable</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setSelectable( bSelectable:Bool):sap.ui.commons.TreeNode;

	/**
	* Sets a new value for property {@link #getText text}.

Node text

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sText New value for property <code>text</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setText( sText:String):sap.ui.commons.TreeNode;
}

typedef TreeNodeArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Node text
	*/
	@:optional var text:String;

	/**
	* Node is expanded
	*/
	@:optional var expanded:haxe.extern.EitherType<String,Bool>;

	/**
	* Should the node has an expander.
	*/
	@:optional var hasExpander:haxe.extern.EitherType<String,Bool>;

	/**
	* Icon to display in front of the node
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Node is selected
	*/
	@:optional var isSelected:haxe.extern.EitherType<String,Bool>;

	/**
	* The node is selectable. If true, clicking on the node text triggers "selected" event
	*/
	@:optional var selectable:haxe.extern.EitherType<String,Bool>;

    /**
    * Subnodes for the current node
    */
	@:optional var nodes:Array<haxe.extern.EitherType<String,sap.ui.commons.TreeNode>>;

	/**
	* When this node is collapsed and it has selected children, it looks as if it were selected itself. This association holds the references of the selected children.
	*/
	@:optional var selectedForNodes:Array<haxe.extern.EitherType<String,sap.ui.commons.TreeNode>>;

	/**
	* Association to controls / ids which describe this control (see WAI-ARIA attribute aria-describedby).
	*/
	@:optional var ariaDescribedBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Association to controls / ids which label this control (see WAI-ARIA attribute aria-labelledby).
	*/
	@:optional var ariaLabelledBy:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

	/**
	* Node is selected
	*/
	@:optional var selected:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Node state has changed.
	*/
	@:optional var toggleOpenState:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
