package sap.m;

@:native("sap.m.Breadcrumbs")

/**
* Enables users to navigate between items by providing a list of links to previous steps in the user's navigation path. The last three steps can be accessed as links directly, while the remaining links prior to them are available in a drop-down menu.
*/
extern class Breadcrumbs extends sap.ui.core.Control implements sap.m.IBreadcrumbs
{
	@:overload(function(?sId:String, ?mSettings:BreadcrumbsArgs):Void {})
	public function new(?mSettings:BreadcrumbsArgs):Void;

	/**
	* Adds some link to the aggregation {@link #getLinks links}.
	* @param	oLink The link to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addLink( oLink:sap.m.Link):sap.m.Breadcrumbs;

	/**
	* Destroys all the links in the aggregation {@link #getLinks links}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLinks( ):sap.m.Breadcrumbs;

	/**
	* Creates a new subclass of class sap.m.Breadcrumbs with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCurrentLocationText currentLocationText}.

Determines the text of current/last element in the Breadcrumbs path.
	* @return	Value of property <code>currentLocationText</code>
	*/
	public function getCurrentLocationText( ):String;

	/**
	* Gets content of aggregation {@link #getLinks links}.

A list of all the active link elements in the Breadcrumbs control. <b>Note:</b> Enabling the property <code>wrapping</code> of the link will not work since it's incompatible with the concept of the control. The other properties will work, but their effect may be undesirable.
	* @return	null
	*/
	public function getLinks( ):Array<sap.m.Link>;

	/**
	* Returns a metadata object for class sap.m.Breadcrumbs.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getSeparatorStyle separatorStyle}.

Determines the visual style of the separator between the <code>Breadcrumbs</code> elements.

Default value is <code>Slash</code>.
	* @return	Value of property <code>separatorStyle</code>
	*/
	public function getSeparatorStyle( ):sap.m.BreadcrumbsSeparatorStyle;

	/**
	* Checks for the provided <code>sap.m.Link</code> in the aggregation {@link #getLinks links}. and returns its index if found or -1 otherwise.
	* @param	oLink The link whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfLink( oLink:sap.m.Link):Int;

	/**
	* Inserts a link into the aggregation {@link #getLinks links}.
	* @param	oLink The link to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the link should be inserted at; for a negative value of <code>iIndex</code>, the link is inserted at position 0; for a value greater than the current size of the aggregation, the link is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertLink( oLink:sap.m.Link, iIndex:Int):sap.m.Breadcrumbs;

	/**
	* Removes all the controls from the aggregation {@link #getLinks links}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllLinks( ):Array<sap.m.Link>;
	@:overload( function(vLink:Int):sap.m.Link{ })
	@:overload( function(vLink:String):sap.m.Link{ })

	/**
	* Removes a link from the aggregation {@link #getLinks links}.
	* @param	vLink The link to remove or its index or id
	* @return	The removed link or <code>null</code>
	*/
	public function removeLink( vLink:sap.m.Link):sap.m.Link;

	/**
	* Sets a new value for property {@link #getCurrentLocationText currentLocationText}.

Determines the text of current/last element in the Breadcrumbs path.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sCurrentLocationText New value for property <code>currentLocationText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCurrentLocationText( sCurrentLocationText:String):sap.m.Breadcrumbs;

	/**
	* Custom setter for the <code>Breadcrumbs</code> separator style.
	* @param	sSeparatorStyle null
	* @return	this
	*/
	public function setSeparatorStyle( sSeparatorStyle:String):Dynamic;
}

typedef BreadcrumbsArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the text of current/last element in the Breadcrumbs path.
	*/
	@:optional var currentLocationText:String;

	/**
	* Determines the visual style of the separator between the <code>Breadcrumbs</code> elements.
	*/
	@:optional var separatorStyle:haxe.extern.EitherType<String,sap.m.BreadcrumbsSeparatorStyle>;

    /**
    * A list of all the active link elements in the Breadcrumbs control. <b>Note:</b> Enabling the property <code>wrapping</code> of the link will not work since it's incompatible with the concept of the control. The other properties will work, but their effect may be undesirable.
    */
	@:optional var links:Array<haxe.extern.EitherType<String,sap.m.Link>>;

    /**
    * Private aggregations
    */
	@:optional var _currentLocation:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * null
    */
	@:optional var _select:haxe.extern.EitherType<String,sap.m.Select>;
}
