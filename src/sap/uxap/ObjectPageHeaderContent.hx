package sap.uxap;

@:native("sap.uxap.ObjectPageHeaderContent")

/**
* Header content for the classic header of the {@link sap.uxap.ObjectPageLayout}.

<h3>Overview</h3>

The <code>ObjectPageHeaderContent</code> represents the movable part of the <code>ObjectPageLayout</code>'s classic header. It can contain any control and scrolls along with the content of the page until it disappears (collapsed header). When scrolled back to the top it becomes visible again (expanded header). It contains all the additional information of the object.

Documentation links: <ul> <li>{@link topic:d2ef0099542d44dc868719d908e576d0 Object Page Headers}</li> <li>{@link topic:0fecbce45e39406aa939bd25e89823f4 Object Page Classic Header}</li> <li>{@link https://experience.sap.com/fiori-design-web/object-page/ UX Guidelines: Object Page}</li> </ul>
*/
extern class ObjectPageHeaderContent extends sap.ui.core.Control implements sap.uxap.IHeaderContent
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageHeaderContentArgs):Void {})
	public function new(?mSettings:ObjectPageHeaderContentArgs):Void;

	/**
	* Adds some content to the aggregation {@link #getContent content}.
	* @param	oContent The content to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addContent( oContent:sap.ui.core.Control):sap.uxap.ObjectPageHeaderContent;

	/**
	* Destroys all the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.uxap.ObjectPageHeaderContent;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageHeaderContent with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

The list of Objects of type sap.ui.core.Control.
	* @return	null
	*/
	public function getContent( ):Array<sap.ui.core.Control>;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageHeaderContent.
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
	public function insertContent( oContent:sap.ui.core.Control, iIndex:Int):sap.uxap.ObjectPageHeaderContent;

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

typedef ObjectPageHeaderContentArgs = sap.ui.core.Control.ControlArgs & {

    /**
    * The list of Objects of type sap.ui.core.Control.
    */
	@:optional var content:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * Internal aggregation for the "Edit Header" button.
    */
	@:optional var _editHeaderButton:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * null
    */
	@:optional var _objectImage:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * null
    */
	@:optional var _placeholder:haxe.extern.EitherType<String,sap.m.Avatar>;
}
