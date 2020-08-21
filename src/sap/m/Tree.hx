package sap.m;

@:native("sap.m.Tree")

/**
* The <code>Tree</code> control provides a tree structure for displaying data in a hierarchy. <b>Note:</b> Growing feature is not supported by <code>Tree</code>.
*/
extern class Tree extends sap.m.ListBase
{
	@:overload(function(?sId:String, ?mSettings:TreeArgs):Void {})
	public function new(?mSettings:TreeArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:toggleOpenState toggleOpenState} event of this <code>sap.m.Tree</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.Tree</code> itself.

Fired when an item has been expanded or collapsed by user interaction.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.Tree</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachToggleOpenState( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Tree;
	@:overload( function(vParam:Int):sap.m.Tree{ })

	/**
	* Collapses one or multiple items.
	* @param	vParam The index or indices of the tree items to be collapsed
	* @return	A reference to the Tree control
	*/
	public function collapse( vParam:Array<Int>):sap.m.Tree;

	/**
	* Collapses all nodes.
	* @return	A reference to the Tree control
	*/
	public function collapseAll( ):sap.m.Tree;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:toggleOpenState toggleOpenState} event of this <code>sap.m.Tree</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachToggleOpenState( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.Tree;
	@:overload( function(vParam:Int):sap.m.Tree{ })

	/**
	* Expands one or multiple items. Note that items that are hidden at the time of calling this API can't be expanded.
	* @param	vParam The index or indices of the item to be expanded
	* @return	A reference to the Tree control
	*/
	public function expand( vParam:Array<Int>):sap.m.Tree;

	/**
	* Defines the level to which the tree is expanded. The function can be used to define the initial expanding state. An alternative way to define the initial expanding state is to set the parameter <code>numberOfExpandedLevels</code> of the binding.

Example: <pre>
  oTree.bindItems({
     path: "...",
     parameters: {
        numberOfExpandedLevels: 1
     }
  });
</pre>
	* @param	iLevel The level to which the data is expanded
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function expandToLevel( iLevel:Int):sap.m.Tree;

	/**
	* Creates a new subclass of class sap.m.Tree with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.Tree.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef TreeArgs = sap.m.ListBase.ListBaseArgs & {

	/**
	* Fired when an item has been expanded or collapsed by user interaction.
	*/
	@:optional var toggleOpenState:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
