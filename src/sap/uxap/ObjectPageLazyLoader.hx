package sap.uxap;

@:native("sap.uxap.ObjectPageLazyLoader")

/**
* A helper element that enables a "stashed-based" lazy loading approach for the content of the {@link sap.uxap.ObjectPageSubSection} control.

<code>ObjectPageLazyLoader</code> is intended to be used in a declarative way only (for example, in a view) with the <code>stashed</code> property set to <code>true</code>, and is recommended to be used only once per subsection as its sole content.

<code>ObjectPageLazyLoader</code> utilizes UI5's stashing mechanism and is a lightweight alternative to the native block-based Lazy Loading of the <code>ObjectPageLayout</code>. Wrapping the content of a subsection in an <code>ObjectPageLazyLoader</code> with <code>stashed=true</code> will make the content unstash automatically as the user scrolls.

<b>Note:</b> Subsections are required to have an ID when used with <code>ObjectPageLazyLoader</code>.
*/
extern class ObjectPageLazyLoader extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageLazyLoaderArgs):Void {})
	public function new(?mSettings:ObjectPageLazyLoaderArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.uxap.ObjectPageLazyLoader;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.uxap.ObjectPageLazyLoader;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageLazyLoader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Controls to be displayed after this element is unstashed
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageLazyLoader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.uxap.ObjectPageLazyLoader;

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
}

typedef ObjectPageLazyLoaderArgs = sap.ui.core.Element.ElementArgs & {

    /**
    * Controls to be displayed after this element is unstashed
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
