package sap.ui.test.actions;

@:native("sap.ui.test.actions.Drop")

/**
* The <code>Drop</code> action is used to simulate drop on a control. The control should be droppable, as defined by its dnd aggregation configuration. The dropped control should be defined in a preceding {@link sap.ui.test.actions.Drag} action.

The <code>Drop</code> action targets a special DOM element representing the control. This DOM element can be customized.

For most most controls, the target will be the DOM focus reference. You can choose a different DOM element by specifying its ID suffix. You can do this by directly passing the ID suffix to the Drop constructor, or by defining a control adapter function. You can also set the traget to be the root DOM element of a given aggregation, by specifying the aggregation name in the Drop constructor.

* The <code>Drop</code> action is not supported in IE11!
*/
extern class Drop extends sap.ui.test.actions.Action
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.test.actions.Drop with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.test.actions.Action.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAfter after}.

Set `after` to true, to drop the source immediately before the target element.
	* @return	Value of property <code>after</code>
	*/
	public function getAfter( ):Bool;

	/**
	* Gets current value of property {@link #getAggregationName aggregationName}.

name of the droppable aggregation, whose root to use as drop target. This makes sense only for some controls, where this root DOM element is droppable.
	* @return	Value of property <code>aggregationName</code>
	*/
	public function getAggregationName( ):String;

	/**
	* Gets current value of property {@link #getBefore before}.

specify a position for the drop event, relative to the position of the control's representative DOM element. This makes sense only for the case when dropping right on top of the DOM element makes no sense, and instead, the drop should happen right before or after the element. e.g. sap.m.IconTabBar. Default position is "center", meaning the drop will be directly on the element. Set `before` to true, to drop the source immediately before the target element.
	* @return	Value of property <code>before</code>
	*/
	public function getBefore( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.test.actions.Drop.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Sets a new value for property {@link #getAfter after}.

Set `after` to true, to drop the source immediately before the target element.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bAfter New value for property <code>after</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAfter( bAfter:Bool):sap.ui.test.actions.Drop;

	/**
	* Sets a new value for property {@link #getAggregationName aggregationName}.

name of the droppable aggregation, whose root to use as drop target. This makes sense only for some controls, where this root DOM element is droppable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sAggregationName New value for property <code>aggregationName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAggregationName( sAggregationName:String):sap.ui.test.actions.Drop;

	/**
	* Sets a new value for property {@link #getBefore before}.

specify a position for the drop event, relative to the position of the control's representative DOM element. This makes sense only for the case when dropping right on top of the DOM element makes no sense, and instead, the drop should happen right before or after the element. e.g. sap.m.IconTabBar. Default position is "center", meaning the drop will be directly on the element. Set `before` to true, to drop the source immediately before the target element.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	bBefore New value for property <code>before</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setBefore( bBefore:Bool):sap.ui.test.actions.Drop;
}

