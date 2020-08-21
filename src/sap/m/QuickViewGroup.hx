package sap.m;

@:native("sap.m.QuickViewGroup")

/**
* QuickViewGroup consists of a title (optional) and an entity of group elements.
*/
extern class QuickViewGroup extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:QuickViewGroupArgs):Void {})
	public function new(?mSettings:QuickViewGroupArgs):Void;

	/**
	* Adds some element to the aggregation {@link #getElements elements}.
	* @param	oElement The element to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addElement( oElement:sap.m.QuickViewGroupElement):sap.m.QuickViewGroup;

	/**
	* Binds aggregation {@link #getElements elements} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindElements( oBindingInfo:Dynamic):sap.m.QuickViewGroup;

	/**
	* Destroys all the elements in the aggregation {@link #getElements elements}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyElements( ):sap.m.QuickViewGroup;

	/**
	* Creates a new subclass of class sap.m.QuickViewGroup with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getElements elements}.

A combination of one label and another control (Link or Text) associated to this label.
	* @return	null
	*/
	public function getElements( ):Array<sap.m.QuickViewGroupElement>;

	/**
	* Gets current value of property {@link #getHeading heading}.

The title of the group

Default value is <code>empty string</code>.
	* @return	Value of property <code>heading</code>
	*/
	public function getHeading( ):String;

	/**
	* Returns a metadata object for class sap.m.QuickViewGroup.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Determines whether the group is visible on the screen.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Checks for the provided <code>sap.m.QuickViewGroupElement</code> in the aggregation {@link #getElements elements}. and returns its index if found or -1 otherwise.
	* @param	oElement The element whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfElement( oElement:sap.m.QuickViewGroupElement):Int;

	/**
	* Inserts a element into the aggregation {@link #getElements elements}.
	* @param	oElement The element to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the element should be inserted at; for a negative value of <code>iIndex</code>, the element is inserted at position 0; for a value greater than the current size of the aggregation, the element is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertElement( oElement:sap.m.QuickViewGroupElement, iIndex:Int):sap.m.QuickViewGroup;

	/**
	* Removes all the controls from the aggregation {@link #getElements elements}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllElements( ):Array<sap.m.QuickViewGroupElement>;
	@:overload( function(vElement:Int):sap.m.QuickViewGroupElement{ })
	@:overload( function(vElement:String):sap.m.QuickViewGroupElement{ })

	/**
	* Removes a element from the aggregation {@link #getElements elements}.
	* @param	vElement The element to remove or its index or id
	* @return	The removed element or <code>null</code>
	*/
	public function removeElement( vElement:sap.m.QuickViewGroupElement):sap.m.QuickViewGroupElement;

	/**
	* Sets a new value for property {@link #getHeading heading}.

The title of the group

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sHeading New value for property <code>heading</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeading( ?sHeading:String):sap.m.QuickViewGroup;

	/**
	* Sets a new value for property {@link #getVisible visible}.

Determines whether the group is visible on the screen.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bVisible New value for property <code>visible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setVisible( ?bVisible:Bool):sap.m.QuickViewGroup;

	/**
	* Unbinds aggregation {@link #getElements elements} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindElements( ):sap.m.QuickViewGroup;
}

typedef QuickViewGroupArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Determines whether the group is visible on the screen.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* The title of the group
	*/
	@:optional var heading:String;

    /**
    * A combination of one label and another control (Link or Text) associated to this label.
    */
	@:optional var elements:Array<haxe.extern.EitherType<String,sap.m.QuickViewGroupElement>>;
}
