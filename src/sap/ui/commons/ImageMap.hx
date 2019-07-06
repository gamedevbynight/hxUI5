package sap.ui.commons;

@:native("sap.ui.commons.ImageMap")

/**
* Combination of image areas where at runtime these areas are starting points for hyperlinks or actions
*/
extern class ImageMap extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:ImageMapArgs):Void {})
	public function new(?mSettings:ImageMapArgs):Void;

	/**
	* Adds some area to the aggregation {@link #getAreas areas}.
	* @param	oArea The area to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addArea( oArea:sap.ui.commons.Area):sap.ui.commons.ImageMap;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.ui.commons.ImageMap</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.ImageMap</code> itself.

Event for the areas that can be clicked in an ImageMap
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.ImageMap</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.ImageMap;

	/**
	* Adds areas to the Image Map.

Each argument must be either a JSon object or a list of objects or the area element or elements.
	* @param	content Area content to add
	* @return	<code>this</code> to allow method chaining
	*/
	public function createArea( content:Dynamic):sap.ui.commons.ImageMap;

	/**
	* Destroys all the areas in the aggregation {@link #getAreas areas}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAreas( ):sap.ui.commons.ImageMap;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.ui.commons.ImageMap</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.ImageMap;

	/**
	* Creates a new subclass of class sap.ui.commons.ImageMap with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getAreas areas}.

Area representing the reference to the target location
	* @return	null
	*/
	public function getAreas( ):Array<sap.ui.commons.Area>;

	/**
	* Returns a metadata object for class sap.ui.commons.ImageMap.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getName name}.

Name for the image that serves as reference
	* @return	Value of property <code>name</code>
	*/
	public function getName( ):String;

	/**
	* Checks for the provided <code>sap.ui.commons.Area</code> in the aggregation {@link #getAreas areas}. and returns its index if found or -1 otherwise.
	* @param	oArea The area whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfArea( oArea:sap.ui.commons.Area):Int;

	/**
	* Inserts a area into the aggregation {@link #getAreas areas}.
	* @param	oArea The area to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the area should be inserted at; for a negative value of <code>iIndex</code>, the area is inserted at position 0; for a value greater than the current size of the aggregation, the area is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertArea( oArea:sap.ui.commons.Area, iIndex:Int):sap.ui.commons.ImageMap;

	/**
	* Removes all the controls from the aggregation {@link #getAreas areas}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllAreas( ):Array<sap.ui.commons.Area>;
	@:overload( function(vArea:Int):sap.ui.commons.Area{ })
	@:overload( function(vArea:String):sap.ui.commons.Area{ })

	/**
	* Removes a area from the aggregation {@link #getAreas areas}.
	* @param	vArea The area to remove or its index or id
	* @return	The removed area or <code>null</code>
	*/
	public function removeArea( vArea:sap.ui.commons.Area):sap.ui.commons.Area;

	/**
	* Sets a new value for property {@link #getName name}.

Name for the image that serves as reference

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sName New value for property <code>name</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setName( sName:String):sap.ui.commons.ImageMap;
}

typedef ImageMapArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Name for the image that serves as reference
	*/
	@:optional var name:String;

    /**
    * Area representing the reference to the target location
    */
	@:optional var areas:Array<haxe.extern.EitherType<String,sap.ui.commons.Area>>;

	/**
	* Event for the areas that can be clicked in an ImageMap
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
