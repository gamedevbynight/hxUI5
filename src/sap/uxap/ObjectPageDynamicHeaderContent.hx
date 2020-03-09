package sap.uxap;

@:native("sap.uxap.ObjectPageDynamicHeaderContent")

/**
* Header content for the dynamic header of the {@link sap.uxap.ObjectPageLayout}.

<h3>Overview</h3>

The <code>ObjectPageDynamicHeaderContent</code> represents the movable part of the <code>ObjectPageLayout</code>'s dynamic header. It can contain any control and scrolls along with the content of the page until it disappears (collapsed header). When scrolled back to the top it becomes visible again (expanded header). It contains all the additional information of the object.

Documentation links: <ul> <li>{@link topic:d2ef0099542d44dc868719d908e576d0 Object Page Headers}</li> <li>{@link topic:6e340c119ddd4c778b315f65a0432420 Object Page Dynamic Header}</li> </ul>
*/
extern class ObjectPageDynamicHeaderContent extends sap.f.DynamicPageHeader implements sap.uxap.IHeaderContent
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageDynamicHeaderContentArgs):Void {})
	public function new(?mSettings:ObjectPageDynamicHeaderContentArgs):Void;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageDynamicHeaderContent with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.DynamicPageHeader.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageDynamicHeaderContent.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef ObjectPageDynamicHeaderContentArgs = sap.f.DynamicPageHeader.DynamicPageHeaderArgs & {
}
