package sap.ui.core.dnd;

@:native("sap.ui.core.dnd.DragDropBase")

/**
* Provides the base class for all drag-and-drop configurations. This feature enables a native HTML5 drag-and-drop API for the controls, therefore it is limited to browser support. <h3>Limitations</h3> <ul> <li>There is no mobile device that supports drag and drop.</li> <li>There is no accessible alternative for drag and drop. Applications which use the drag-and-drop functionality must provide an accessible alternative UI (for example, action buttons or menus) to perform the same operations.</li> <li>A custom dragging ghost element is not possible in Internet Explorer.</li> <li>Transparency of the drag ghost element and the cursor during drag-and-drop operations depends on the browser implementation.</li> <li>Internet Explorer does only support plain text MIME type for the DataTransfer Object.</li> <li>Constraining a drag position is not possible, therefore there is no snap-to-grid or snap-to-element feature possible.</li> <li>Texts in draggable controls cannot be selected.</li> <li>The text of input fields in draggable controls can be selected, but not dragged.</li> </ul>
*/
extern class DragDropBase extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:DragDropBaseArgs):Void {})
	public function new(?mSettings:DragDropBaseArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.core.dnd.DragDropBase with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getEnabled enabled}.

Indicates whether this configuration is active or not.

Default value is <code>true</code>.
	* @return	Value of property <code>enabled</code>
	*/
	public function getEnabled( ):Bool;

	/**
	* Gets current value of property {@link #getGroupName groupName}.

Defines the name of the group to which this object belongs. If <code>groupName</code> is specified, then this object will only interacts with other drag-and-drop objects within the same group.
	* @return	Value of property <code>groupName</code>
	*/
	public function getGroupName( ):String;

	/**
	* Returns a metadata object for class sap.ui.core.dnd.DragDropBase.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets a new value for property {@link #getGroupName groupName}.

Defines the name of the group to which this object belongs. If <code>groupName</code> is specified, then this object will only interacts with other drag-and-drop objects within the same group.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sGroupName New value for property <code>groupName</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroupName( sGroupName:String):sap.ui.core.dnd.DragDropBase;
}

typedef DragDropBaseArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Defines the name of the group to which this object belongs. If <code>groupName</code> is specified, then this object will only interacts with other drag-and-drop objects within the same group.
	*/
	@:optional var groupName:String;

	/**
	* Indicates whether this configuration is active or not.
	*/
	@:optional var enabled:haxe.extern.EitherType<String,Bool>;
}
