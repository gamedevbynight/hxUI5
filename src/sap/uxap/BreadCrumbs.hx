package sap.uxap;

@:native("sap.uxap.BreadCrumbs")

/**
* Represents the navigation steps up to the current location in the app.

<h3>Overview</h3>

The <code>BreadCrumbs</code> control allows the users to quickly navigate to a previous location on the path that got them to the current location by choosing the displayed navigation steps.

It has two main modes of operation: <ul> <li>A trail of links followed by separators, when there's enough space for the control to fit on one line.</li> <li>A dropdown list with the links, when the trail of links wouldn't fit on one line.</li> </ul>
*/
extern class BreadCrumbs extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:BreadCrumbsArgs):Void {})
	public function new(?mSettings:BreadCrumbsArgs):Void;

	/**
	* Adds some link to the aggregation {@link #getLinks links}.
	* @param	oLink The link to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addLink( oLink:sap.m.Link):sap.uxap.BreadCrumbs;

	/**
	* Destroys the currentLocation in the aggregation {@link #getCurrentLocation currentLocation}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCurrentLocation( ):sap.uxap.BreadCrumbs;

	/**
	* Destroys all the links in the aggregation {@link #getLinks links}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyLinks( ):sap.uxap.BreadCrumbs;

	/**
	* Creates a new subclass of class sap.uxap.BreadCrumbs with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getCurrentLocation currentLocation}.

The current/last element in the BreadCrumbs path.
	* @return	null
	*/
	public function getCurrentLocation( ):sap.m.Text;

	/**
	* Gets content of aggregation {@link #getLinks links}.

A list of all the active link elements in the BreadCrumbs control.
	* @return	null
	*/
	public function getLinks( ):Array<sap.m.Link>;

	/**
	* Returns a metadata object for class sap.uxap.BreadCrumbs.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowCurrentLocation showCurrentLocation}.

Sets the visibility of the current/last element in the BreadCrumbs path.

Default value is <code>true</code>.
	* @return	Value of property <code>showCurrentLocation</code>
	*/
	public function getShowCurrentLocation( ):Bool;

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
	public function insertLink( oLink:sap.m.Link, iIndex:Int):sap.uxap.BreadCrumbs;

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
	* Sets the aggregated {@link #getCurrentLocation currentLocation}.
	* @param	oCurrentLocation The currentLocation to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCurrentLocation( oCurrentLocation:sap.m.Text):sap.uxap.BreadCrumbs;

	/**
	* Sets a new value for property {@link #getShowCurrentLocation showCurrentLocation}.

Sets the visibility of the current/last element in the BreadCrumbs path.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowCurrentLocation New value for property <code>showCurrentLocation</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowCurrentLocation( ?bShowCurrentLocation:Bool):sap.uxap.BreadCrumbs;
}

typedef BreadCrumbsArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Sets the visibility of the current/last element in the BreadCrumbs path.
	*/
	@:optional var showCurrentLocation:haxe.extern.EitherType<String,Bool>;

    /**
    * A list of all the active link elements in the BreadCrumbs control.
    */
	@:optional var links:Array<haxe.extern.EitherType<String,sap.m.Link>>;

    /**
    * The current/last element in the BreadCrumbs path.
    */
	@:optional var currentLocation:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * An icon that is used as a separator after each link in the standard mode.
    */
	@:optional var _tubeIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * A select control which is used to display the BreadCrumbs content on smaller mobile devices or when there's not enough space for the control to fit on one line.
    */
	@:optional var _overflowSelect:haxe.extern.EitherType<String,sap.m.Select>;
}
