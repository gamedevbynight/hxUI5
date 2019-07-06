package sap.ui.commons;

@:native("sap.ui.commons.Tree")

/**
* Simple tree to display item in a hierarchical way
*/
extern class Tree extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:TreeArgs):Void {})
	public function new(?mSettings:TreeArgs):Void;

	/**
	* Adds some node to the aggregation {@link #getNodes nodes}.
	* @param	oNode The node to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addNode( oNode:sap.ui.commons.TreeNode):sap.ui.commons.Tree;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:select select} event of this <code>sap.ui.commons.Tree</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Tree</code> itself.

Event is fired when a tree node is selected.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Tree</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelect( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Tree;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:selectionChange selectionChange} event of this <code>sap.ui.commons.Tree</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Tree</code> itself.

fired when the selection of the tree has been changed
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Tree</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachSelectionChange( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Tree;

	/**
	* Binds aggregation {@link #getNodes nodes} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindNodes( oBindingInfo:Dynamic):sap.ui.commons.Tree;

	/**
	* Collapses all nodes in the tree.
	* @return	Void
	*/
	public function collapseAll( ):Void;

	/**
	* Destroys all the nodes in the aggregation {@link #getNodes nodes}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyNodes( ):sap.ui.commons.Tree;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:select select} event of this <code>sap.ui.commons.Tree</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelect( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Tree;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:selectionChange selectionChange} event of this <code>sap.ui.commons.Tree</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachSelectionChange( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Tree;

	/**
	* Expands all nodes in the tree.
	* @return	Void
	*/
	public function expandAll( ):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.Tree with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getHeight height}.

Tree height

Default value is <code>auto</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.commons.Tree.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getMinWidth minWidth}.

Minimal width for the Tree. Can be useful when, for example, the width is specified in percentage, to avoid the tree to become too narrow when container is resize
	* @return	Value of property <code>minWidth</code>
	*/
	public function getMinWidth( ):sap.ui.core.CSSSize;

	/**
	* Returns the node with the given context, or null if no such node currently exists.
	* @param	oContext The context of the node to be retrieved
	* @return	The found tree node
	*/
	public function getNodeByContext( oContext:sap.ui.model.Context):sap.ui.commons.TreeNode;

	/**
	* Gets content of aggregation {@link #getNodes nodes}.

First level nodes
	* @return	null
	*/
	public function getNodes( ):Array<sap.ui.commons.TreeNode>;

	/**
	* Gets current value of property {@link #getSelectionMode selectionMode}.

Selection mode of the Tree.

Default value is <code>Legacy</code>.
	* @return	Value of property <code>selectionMode</code>
	*/
	public function getSelectionMode( ):sap.ui.commons.TreeSelectionMode;

	/**
	* Gets current value of property {@link #getShowHeader showHeader}.

Tree Header is display. If false, the tree will be in a transparent mode

Default value is <code>true</code>.
	* @return	Value of property <code>showHeader</code>
	*/
	public function getShowHeader( ):Bool;

	/**
	* Gets current value of property {@link #getShowHeaderIcons showHeaderIcons}.

Show Header icons (e.g. Expand/Collapse all). Only consider if showHeader is true

Default value is <code>true</code>.
	* @return	Value of property <code>showHeaderIcons</code>
	*/
	public function getShowHeaderIcons( ):Bool;

	/**
	* Gets current value of property {@link #getShowHorizontalScrollbar showHorizontalScrollbar}.

Display horizontal scrollbar. If false, the overflow content will be hidden

Default value is <code>false</code>.
	* @return	Value of property <code>showHorizontalScrollbar</code>
	*/
	public function getShowHorizontalScrollbar( ):Bool;

	/**
	* Gets current value of property {@link #getTitle title}.

Tree title
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getWidth width}.

Tree width

Default value is <code>auto</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

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
	public function insertNode( oNode:sap.ui.commons.TreeNode, iIndex:Int):sap.ui.commons.Tree;

	/**
	* Removes all the controls from the aggregation {@link #getNodes nodes}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllNodes( ):Array<sap.ui.commons.TreeNode>;
	@:overload( function(vNode:Int):sap.ui.commons.TreeNode{ })
	@:overload( function(vNode:String):sap.ui.commons.TreeNode{ })

	/**
	* Removes a node from the aggregation {@link #getNodes nodes}.
	* @param	vNode The node to remove or its index or id
	* @return	The removed node or <code>null</code>
	*/
	public function removeNode( vNode:sap.ui.commons.TreeNode):sap.ui.commons.TreeNode;

	/**
	* Sets a new value for property {@link #getHeight height}.

Tree height

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.commons.Tree;

	/**
	* Sets a new value for property {@link #getMinWidth minWidth}.

Minimal width for the Tree. Can be useful when, for example, the width is specified in percentage, to avoid the tree to become too narrow when container is resize

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sMinWidth New value for property <code>minWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMinWidth( sMinWidth:sap.ui.core.CSSSize):sap.ui.commons.Tree;

	/**
	* Sets a new value for property {@link #getSelectionMode selectionMode}.

Selection mode of the Tree.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Legacy</code>.
	* @param	sSelectionMode New value for property <code>selectionMode</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSelectionMode( sSelectionMode:sap.ui.commons.TreeSelectionMode):sap.ui.commons.Tree;

	/**
	* Sets a new value for property {@link #getShowHeader showHeader}.

Tree Header is display. If false, the tree will be in a transparent mode

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeader New value for property <code>showHeader</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeader( bShowHeader:Bool):sap.ui.commons.Tree;

	/**
	* Sets a new value for property {@link #getShowHeaderIcons showHeaderIcons}.

Show Header icons (e.g. Expand/Collapse all). Only consider if showHeader is true

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowHeaderIcons New value for property <code>showHeaderIcons</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHeaderIcons( bShowHeaderIcons:Bool):sap.ui.commons.Tree;

	/**
	* Sets a new value for property {@link #getShowHorizontalScrollbar showHorizontalScrollbar}.

Display horizontal scrollbar. If false, the overflow content will be hidden

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bShowHorizontalScrollbar New value for property <code>showHorizontalScrollbar</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowHorizontalScrollbar( bShowHorizontalScrollbar:Bool):sap.ui.commons.Tree;

	/**
	* Sets a new value for property {@link #getTitle title}.

Tree title

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.ui.commons.Tree;

	/**
	* Sets a new value for property {@link #getWidth width}.

Tree width

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.commons.Tree;

	/**
	* Unbinds aggregation {@link #getNodes nodes} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindNodes( ):sap.ui.commons.Tree;
}

typedef TreeArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Tree title
	*/
	@:optional var title:String;

	/**
	* Tree width
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Tree height
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Tree Header is display. If false, the tree will be in a transparent mode
	*/
	@:optional var showHeader:haxe.extern.EitherType<String,Bool>;

	/**
	* Show Header icons (e.g. Expand/Collapse all). Only consider if showHeader is true
	*/
	@:optional var showHeaderIcons:haxe.extern.EitherType<String,Bool>;

	/**
	* Display horizontal scrollbar. If false, the overflow content will be hidden
	*/
	@:optional var showHorizontalScrollbar:haxe.extern.EitherType<String,Bool>;

	/**
	* Minimal width for the Tree. Can be useful when, for example, the width is specified in percentage, to avoid the tree to become too narrow when container is resize
	*/
	@:optional var minWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Selection mode of the Tree.
	*/
	@:optional var selectionMode:haxe.extern.EitherType<String,sap.ui.commons.TreeSelectionMode>;

    /**
    * First level nodes
    */
	@:optional var nodes:Array<haxe.extern.EitherType<String,sap.ui.commons.TreeNode>>;

	/**
	* Event is fired when a tree node is selected.
	*/
	@:optional var select:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* fired when the selection of the tree has been changed
	*/
	@:optional var selectionChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
