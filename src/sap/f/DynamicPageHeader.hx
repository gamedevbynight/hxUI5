package sap.f;

@:native("sap.f.DynamicPageHeader")

/**
* Header of the {@link sap.f.DynamicPage}.

<h3>Overview</h3>

The <code>DynamicPageHeader</code> control is part of the {@link sap.f.DynamicPage} family and is used to serve as header of the {@link sap.f.DynamicPage DynamicPage}.

<h3>Usage</h3>

The <code>DynamicPageHeader</code> can hold any layout control and has two states - expanded and collapsed (snapped). The switching between these states happens when:

<ul><li>the user scrolls below its bottom margin</li> <li>the user clicks on the {@link sap.f.DynamicPageTitle DynamicPageTitle}</li> <li>through the {@link sap.f.DynamicPage DynamicPage} property <code>headerExpanded</code></li></ul>

<h3>Responsive Behavior</h3>

The responsive behavior of the <code>DynamicPageHeader</code> depends on the behavior of the content that is displayed.
*/
extern class DynamicPageHeader extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:DynamicPageHeaderArgs):Void {})
	public function new(?mSettings:DynamicPageHeaderArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.f.DynamicPageHeader;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.f.DynamicPageHeader;

	/**
	* Creates a new subclass of class sap.f.DynamicPageHeader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getBackgroundDesign backgroundDesign}.

Determines the background color of the <code>DynamicPageHeader</code>.

<b>Note:</b> The default value of <code>backgroundDesign</code> property is null. If the property is not set, the color of the background is <code>@sapUiObjectHeaderBackground</code>, which depends on the specific theme.
	* @return	Value of property <code>backgroundDesign</code>
	*/
	public function getBackgroundDesign( ):sap.m.BackgroundDesign;

	/**
	* Gets content of aggregation {@link #getContent content}.

The content of the header.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.f.DynamicPageHeader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getPinnable pinnable}.

Determines whether the header is pinnable.

Default value is <code>true</code>.
	* @return	Value of property <code>pinnable</code>
	*/
	public function getPinnable( ):Bool;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.f.DynamicPageHeader;

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
	* Sets the value of the <code>backgroundDesign</code> property.
	* @param	sBackgroundDesign new value of the <code>backgroundDesign</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setBackgroundDesign( sBackgroundDesign:sap.m.BackgroundDesign):sap.f.DynamicPageHeader;

	/**
	* Sets a new value for property {@link #getPinnable pinnable}.

Determines whether the header is pinnable.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bPinnable New value for property <code>pinnable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPinnable( bPinnable:Bool):sap.f.DynamicPageHeader;
}

typedef DynamicPageHeaderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines whether the header is pinnable.
	*/
	@:optional var pinnable:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the background color of the <code>DynamicPageHeader</code>.

<b>Note:</b> The default value of <code>backgroundDesign</code> property is null. If the property is not set, the color of the background is <code>@sapUiObjectHeaderBackground</code>, which depends on the specific theme.
	*/
	@:optional var backgroundDesign:haxe.extern.EitherType<String,sap.m.BackgroundDesign>;

    /**
    * The content of the header.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The pin/unpin button in the header.
    */
	@:optional var _pinButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Visual indication for expanding/collapsing.
    */
	@:optional var _collapseButton:haxe.extern.EitherType<String,sap.m.Button>;
}
