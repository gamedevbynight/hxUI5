package sap.ui.integration;

@:native("sap.ui.integration.Designtime")

/**
* Brings JavaScript capabilities for an {@link sap.ui.integration.widgets.Card} where custom logic can be implemented.
*/
extern class Designtime extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:DesigntimeArgs):Void {})
	public function new(?mSettings:DesigntimeArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.integration.Designtime with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns an interface to the card, which uses this extension.
	* @return	An interface to the card.
	*/
	public function getCard( ):sap.ui.integration.widgets.CardFacade;

	/**
	* Returns a metadata object for class sap.ui.integration.Designtime.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;
}

typedef DesigntimeArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {
}
