package sap.m;

@:native("sap.m.InputListItem")

/**
* List item should be used for a label and an input field.
*/
extern class InputListItem extends sap.m.ListItemBase
{
	@:overload(function(?sId:String, ?mSettings:InputListItemArgs):Void {})
	public function new(?mSettings:InputListItemArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.InputListItem;

	/**
	* Binds aggregation {@link #getContent content} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindContent( oBindingInfo:Dynamic):sap.m.InputListItem;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.InputListItem;

	/**
	* Creates a new subclass of class sap.m.InputListItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.ListItemBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Content controls can be added
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getLabel label}.

Label of the list item
	* @return	Value of property <code>label</code>
	*/
	public function getLabel( ):String;

	/**
	* Gets current value of property {@link #getLabelTextDirection labelTextDirection}.

This property specifies the label text directionality with enumerated options. By default, the label inherits text direction from the DOM.

Default value is <code>Inherit</code>.
	* @return	Value of property <code>labelTextDirection</code>
	*/
	public function getLabelTextDirection( ):sap.ui.core.TextDirection;

	/**
	* Returns a metadata object for class sap.m.InputListItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.InputListItem;

	/**
	* Removes all the controls from the aggregation {@link #getContent content}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllContent( ):Array<sap.ui.core.Control>;
	@:overload( function(vContent:Int):sap.ui.core.Control{ })
	@:overload( function(vContent:String):sap.ui.core.Control{ })

	/**
	* Removes a content from the aggregation {@link #getContent content}.
	* @param	vContent The content to remove or its index or id
	* @return	The removed content or <code>null</code>
	*/
	public function removeContent( vContent:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getLabel label}.

Label of the list item

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sLabel New value for property <code>label</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabel( sLabel:String):sap.m.InputListItem;

	/**
	* Sets a new value for property {@link #getLabelTextDirection labelTextDirection}.

This property specifies the label text directionality with enumerated options. By default, the label inherits text direction from the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Inherit</code>.
	* @param	sLabelTextDirection New value for property <code>labelTextDirection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLabelTextDirection( sLabelTextDirection:sap.ui.core.TextDirection):sap.m.InputListItem;

	/**
	* Unbinds aggregation {@link #getContent content} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindContent( ):sap.m.InputListItem;
}

typedef InputListItemArgs = sap.m.ListItemBase.ListItemBaseArgs & {

	/**
	* Label of the list item
	*/
	@:optional var label:String;

	/**
	* This property specifies the label text directionality with enumerated options. By default, the label inherits text direction from the DOM.
	*/
	@:optional var labelTextDirection:haxe.extern.EitherType<String,sap.ui.core.TextDirection>;

    /**
    * Content controls can be added
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
