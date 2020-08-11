package sap.uxap;

@:native("sap.uxap.ObjectPageHeaderActionButton")

/**
* A Button that is used in the <code>actions</code> aggregation of the {@link sap.uxap.ObjectPageHeader}.
*/
extern class ObjectPageHeaderActionButton extends sap.m.Button implements sap.m.IOverflowToolbarContent
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageHeaderActionButtonArgs):Void {})
	public function new(?mSettings:ObjectPageHeaderActionButtonArgs):Void;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageHeaderActionButton with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Button.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getHideIcon hideIcon}.

Hide the button icon when rendered into the headerTitle part of the ObjectPageLayout. This is useful if you want to display texts only in the headerTitle part but still want to display text + icon in the actionSheet that appears when not enough space is available on the screen for displaying all actions.

Default value is <code>false</code>.
	* @return	Value of property <code>hideIcon</code>
	*/
	public function getHideIcon( ):Bool;

	/**
	* Gets current value of property {@link #getHideText hideText}.

Hide the button text when rendered into the headerTitle part of the ObjectPageLayout. This is useful if you want to display icons only in the headerTitle part but still want to display text + icon in the actionSheet that appears when not enough space is available on the screen for displaying all actions.

Default value is <code>true</code>.
	* @return	Value of property <code>hideText</code>
	*/
	public function getHideText( ):Bool;

	/**
	* Gets current value of property {@link #getImportance importance}.

Determines the order in which the button overflows.

Default value is <code>High</code>.
	* @return	Value of property <code>importance</code>
	*/
	public function getImportance( ):sap.uxap.Importance;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageHeaderActionButton.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Sets a new value for property {@link #getHideIcon hideIcon}.

Hide the button icon when rendered into the headerTitle part of the ObjectPageLayout. This is useful if you want to display texts only in the headerTitle part but still want to display text + icon in the actionSheet that appears when not enough space is available on the screen for displaying all actions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bHideIcon New value for property <code>hideIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHideIcon( ?bHideIcon:Bool):sap.uxap.ObjectPageHeaderActionButton;

	/**
	* Sets a new value for property {@link #getHideText hideText}.

Hide the button text when rendered into the headerTitle part of the ObjectPageLayout. This is useful if you want to display icons only in the headerTitle part but still want to display text + icon in the actionSheet that appears when not enough space is available on the screen for displaying all actions.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bHideText New value for property <code>hideText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHideText( ?bHideText:Bool):sap.uxap.ObjectPageHeaderActionButton;

	/**
	* Sets a new value for property {@link #getImportance importance}.

Determines the order in which the button overflows.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>High</code>.
	* @param	sImportance New value for property <code>importance</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setImportance( ?sImportance:sap.uxap.Importance):sap.uxap.ObjectPageHeaderActionButton;
}

typedef ObjectPageHeaderActionButtonArgs = sap.m.Button.ButtonArgs & {

	/**
	* Hide the button text when rendered into the headerTitle part of the ObjectPageLayout. This is useful if you want to display icons only in the headerTitle part but still want to display text + icon in the actionSheet that appears when not enough space is available on the screen for displaying all actions.
	*/
	@:optional var hideText:haxe.extern.EitherType<String,Bool>;

	/**
	* Hide the button icon when rendered into the headerTitle part of the ObjectPageLayout. This is useful if you want to display texts only in the headerTitle part but still want to display text + icon in the actionSheet that appears when not enough space is available on the screen for displaying all actions.
	*/
	@:optional var hideIcon:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the order in which the button overflows.
	*/
	@:optional var importance:haxe.extern.EitherType<String,sap.uxap.Importance>;
}
