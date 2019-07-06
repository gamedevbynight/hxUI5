package sap.m;

@:native("sap.m.ViewSettingsCustomTab")

/**
* The ViewSettingsCustomTab control is used for adding custom tabs in the ViewSettingsDialog.
*/
extern class ViewSettingsCustomTab extends sap.ui.core.Item
{
	@:overload(function(?sId:String, ?mSettings:ViewSettingsCustomTabArgs):Void {})
	public function new(?mSettings:ViewSettingsCustomTabArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.m.ViewSettingsCustomTab;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.m.ViewSettingsCustomTab;

	/**
	* Creates a new subclass of class sap.m.ViewSettingsCustomTab with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Item.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content of this Custom tab
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getIcon icon}.

Custom tab button icon

Default value is <code>sap-icon://competitor</code>.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.m.ViewSettingsCustomTab.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getTitle title}.

Custom tab title

Default value is <code>empty string</code>.
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.m.ViewSettingsCustomTab;

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
	* Sets a new value for property {@link #getIcon icon}.

Custom tab button icon

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>sap-icon://competitor</code>.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.m.ViewSettingsCustomTab;

	/**
	* Sets a new value for property {@link #getTitle title}.

Custom tab title

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sTitle New value for property <code>title</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTitle( sTitle:String):sap.m.ViewSettingsCustomTab;
}

typedef ViewSettingsCustomTabArgs = sap.ui.core.Item.ItemArgs & {

	/**
	* Custom tab button icon
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Custom tab title
	*/
	@:optional var title:String;

    /**
    * The content of this Custom tab
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
