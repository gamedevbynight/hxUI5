package sap.m;

@:native("sap.m.LightBox")

/**
* Represents a popup containing an image and a footer.

<h3>Overview</h3>

The purpose of the control is to display an image in its original size as long as this is possible. On smaller screens images are scaled down to fit.

<strong>Notes:</strong> <ul> <li>If the image doesn't load in 10 seconds, an error is displayed.</li> <li>Setting the <code>imageContent</code> aggregation of the control as well as the source of the image and the title of the image is <u>mandatory</u>. If the image source is not set, the control will not open.</li> </ul> <h3>Structure</h3>

Each LightBox holds a {@link sap.m.LightBoxItem LightBoxItem} which keeps the properties of the image: <ul> <li> imageSrc - The source URI of the image </li> <li> title - The title of the image </li> <li> subtitle - The subtitle of the image </li> <li> alt - The alt text of the image </li> </ul> <h3>Usage</h3>

The most common use case is to click on an image thumbnail to view it in bigger size. When the image that should be displayed in the control cannot be loaded, an error is displayed in the popup.

<h3>Responsive Behavior</h3>

On a mobile device, flipping the device to landscape will flip the lightbox and the image will be adjusted to fit the new dimensions.

<h3>Additional Information</h3>

Check out the <a href="/#docs/api/symbols/sap.m.LightBox.html" >API Reference</a>.
*/
extern class LightBox extends sap.ui.core.Control implements sap.ui.core.PopupInterface
{
	@:overload(function(?sId:String, ?mSettings:LightBoxArgs):Void {})
	public function new(?mSettings:LightBoxArgs):Void;

	/**
	* Adds some imageContent to the aggregation {@link #getImageContent imageContent}.
	* @param	oImageContent The imageContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addImageContent( oImageContent:sap.m.LightBoxItem):sap.m.LightBox;

	/**
	* Binds aggregation {@link #getImageContent imageContent} to model data.

See {@link sap.ui.base.ManagedObject#bindAggregation ManagedObject.bindAggregation} for a detailed description of the possible properties of <code>oBindingInfo</code>.
	* @param	oBindingInfo The binding information
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function bindImageContent( oBindingInfo:Dynamic):sap.m.LightBox;

	/**
	* Closes the LightBox.
	* @return	Pointer to the control instance for chaining.
	*/
	public function close( ):sap.m.LightBox;

	/**
	* Destroys all the imageContent in the aggregation {@link #getImageContent imageContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyImageContent( ):sap.m.LightBox;

	/**
	* Detaches all handlers and destroys the instance.
	* @return	Void
	*/
	public function exit( ):Void;

	/**
	* Creates a new subclass of class sap.m.LightBox with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getImageContent imageContent}.

Aggregation which holds data about the image and its description. Although multiple LightBoxItems may be added to this aggregation only the first one in the list will be taken into account.
	* @return	null
	*/
	public function getImageContent( ):Array<sap.m.LightBoxItem>;

	/**
	* Returns a metadata object for class sap.m.LightBox.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Checks for the provided <code>sap.m.LightBoxItem</code> in the aggregation {@link #getImageContent imageContent}. and returns its index if found or -1 otherwise.
	* @param	oImageContent The imageContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfImageContent( oImageContent:sap.m.LightBoxItem):Int;

	/**
	* Inserts a imageContent into the aggregation {@link #getImageContent imageContent}.
	* @param	oImageContent The imageContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the imageContent should be inserted at; for a negative value of <code>iIndex</code>, the imageContent is inserted at position 0; for a value greater than the current size of the aggregation, the imageContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertImageContent( oImageContent:sap.m.LightBoxItem, iIndex:Int):sap.m.LightBox;

	/**
	* Rerenders the LightBox.
	* @param	oOrigin Origin of the invalidation.
	* @return	this LightBox reference for chaining.
	*/
	public function invalidate( oOrigin:Dynamic):sap.m.LightBox;

	/**
	* Returns if the LightBox is open.
	* @return	Is the LightBox open
	*/
	public function isOpen( ):Bool;

	/**
	* Overwrites the onAfterRendering.
	* @return	Void
	*/
	public function onAfterRendering( ):Void;

	/**
	* Overwrites the onBeforeRendering.
	* @return	Void
	*/
	public function onBeforeRendering( ):Void;

	/**
	* Opens the LightBox.
	* @return	Pointer to the control instance for chaining.
	*/
	public function open( ):sap.m.LightBox;

	/**
	* Removes all the controls from the aggregation {@link #getImageContent imageContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllImageContent( ):Array<sap.m.LightBoxItem>;
	@:overload( function(vImageContent:Int):sap.m.LightBoxItem{ })
	@:overload( function(vImageContent:String):sap.m.LightBoxItem{ })

	/**
	* Removes a imageContent from the aggregation {@link #getImageContent imageContent}.
	* @param	vImageContent The imageContent to remove or its index or id
	* @return	The removed imageContent or <code>null</code>
	*/
	public function removeImageContent( vImageContent:sap.m.LightBoxItem):sap.m.LightBoxItem;

	/**
	* Unbinds aggregation {@link #getImageContent imageContent} from model data.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function unbindImageContent( ):sap.m.LightBox;
}

typedef LightBoxArgs = sap.ui.core.Control.ControlArgs & {

    /**
    * Aggregation which holds data about the image and its description. Although multiple LightBoxItems may be added to this aggregation only the first one in the list will be taken into account.
    */
	@:optional var imageContent:Array<haxe.extern.EitherType<String,sap.m.LightBoxItem>>;

    /**
    * The close button aggregation inside the LightBox control. This button has to have text in it.
    */
	@:optional var _closeButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * The error icon displayed when the image could not be loaded in time.
    */
	@:optional var _errorIcon:haxe.extern.EitherType<String,sap.ui.core.Icon>;

    /**
    * The main error message displayed when the image could not be loaded.
    */
	@:optional var _errorTitle:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * The detailed error message displayed when the image could not be loaded.
    */
	@:optional var _errorSubtitle:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * A layout control used to display the error texts when the image could not be loaded.
    */
	@:optional var _verticalLayout:haxe.extern.EitherType<String,sap.ui.layout.VerticalLayout>;

    /**
    * Hidden text used for accessibility of the popup.
    */
	@:optional var _invisiblePopupText:haxe.extern.EitherType<String,sap.ui.core.InvisibleText>;

    /**
    * BusyIndicator for loading state.
    */
	@:optional var _busy:haxe.extern.EitherType<String,sap.m.BusyIndicator>;
}
