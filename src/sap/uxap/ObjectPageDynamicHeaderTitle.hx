package sap.uxap;

@:native("sap.uxap.ObjectPageDynamicHeaderTitle")

/**
* Represents the static part (header title) of the dynamic header of the {@link sap.uxap.ObjectPageLayout}.

<h3>Overview</h3>

The <code>ObjectPageDynamicHeaderTitle</code> is used to represent the most important details of the displayed business object, such as the object title and actions that the user can perform.

<b>Note:</b> The <code>ObjectPageDynamicHeaderTitle</code> is meant to be used inside the <code>ObjectPageLayout</code> control. Any other usage is not supported and can lead to unexpected behavior.
*/
extern class ObjectPageDynamicHeaderTitle extends sap.f.DynamicPageTitle implements sap.uxap.IHeaderTitle
{
	@:overload(function(?sId:String, ?mSettings:ObjectPageDynamicHeaderTitleArgs):Void {})
	public function new(?mSettings:ObjectPageDynamicHeaderTitleArgs):Void;

	/**
	* Creates a new subclass of class sap.uxap.ObjectPageDynamicHeaderTitle with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.f.DynamicPageTitle.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.uxap.ObjectPageDynamicHeaderTitle.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

typedef ObjectPageDynamicHeaderTitleArgs = sap.f.DynamicPageTitle.DynamicPageTitleArgs & {
}
