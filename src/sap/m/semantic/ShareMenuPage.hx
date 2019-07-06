package sap.m.semantic;

@:native("sap.m.semantic.ShareMenuPage")

/**
* A ShareMenuPage is a {@link sap.m.semantic.SemanticPage} with support for "share" menu in the footer.
*/
extern class ShareMenuPage extends sap.m.semantic.SemanticPage
{
	@:overload(function(?sId:String, ?mSettings:ShareMenuPageArgs):Void {})
	public function new(?mSettings:ShareMenuPageArgs):Void;

	/**
	* Adds some customShareMenuContent to the aggregation {@link #getCustomShareMenuContent customShareMenuContent}.
	* @param	oCustomShareMenuContent The customShareMenuContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCustomShareMenuContent( oCustomShareMenuContent:sap.m.Button):sap.m.semantic.ShareMenuPage;

	/**
	* Destroys all the customShareMenuContent in the aggregation {@link #getCustomShareMenuContent customShareMenuContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCustomShareMenuContent( ):sap.m.semantic.ShareMenuPage;

	/**
	* Creates a new subclass of class sap.m.semantic.ShareMenuPage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticPage.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getCustomShareMenuContent customShareMenuContent}.

Custom share menu buttons
	* @return	null
	*/
	public function getCustomShareMenuContent( ):Array<sap.m.Button>;

	/**
	* Returns a metadata object for class sap.m.semantic.ShareMenuPage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Checks for the provided <code>sap.m.Button</code> in the aggregation {@link #getCustomShareMenuContent customShareMenuContent}. and returns its index if found or -1 otherwise.
	* @param	oCustomShareMenuContent The customShareMenuContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCustomShareMenuContent( oCustomShareMenuContent:sap.m.Button):Int;

	/**
	* Inserts a customShareMenuContent into the aggregation {@link #getCustomShareMenuContent customShareMenuContent}.
	* @param	oCustomShareMenuContent The customShareMenuContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the customShareMenuContent should be inserted at; for a negative value of <code>iIndex</code>, the customShareMenuContent is inserted at position 0; for a value greater than the current size of the aggregation, the customShareMenuContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCustomShareMenuContent( oCustomShareMenuContent:sap.m.Button, iIndex:Int):sap.m.semantic.ShareMenuPage;

	/**
	* Removes all the controls from the aggregation {@link #getCustomShareMenuContent customShareMenuContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCustomShareMenuContent( ):Array<sap.m.Button>;
	@:overload( function(vCustomShareMenuContent:Int):sap.m.Button{ })
	@:overload( function(vCustomShareMenuContent:String):sap.m.Button{ })

	/**
	* Removes a customShareMenuContent from the aggregation {@link #getCustomShareMenuContent customShareMenuContent}.
	* @param	vCustomShareMenuContent The customShareMenuContent to remove or its index or id
	* @return	The removed customShareMenuContent or <code>null</code>
	*/
	public function removeCustomShareMenuContent( vCustomShareMenuContent:sap.m.Button):sap.m.Button;
}

typedef ShareMenuPageArgs = sap.m.semantic.SemanticPage.SemanticPageArgs & {

    /**
    * Custom share menu buttons
    */
	@:optional var customShareMenuContent:Array<haxe.extern.EitherType<String,sap.m.Button>>;

    /**
    * Wrapped instance of {@link sap.m.ActionSheet}
    */
	@:optional var _actionSheet:haxe.extern.EitherType<String,sap.m.ActionSheet>;
}
