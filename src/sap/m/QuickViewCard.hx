package sap.m;

@:native("sap.m.QuickViewCard")

/**
* The QuickViewCard control displays information of an object in a business-card format. It also allows this object to be linked to another object using one of the links. Clicking that link updates the information with the data of the linked object. Unlimited number of objects can be linked.
*/
extern class QuickViewCard extends sap.m.QuickViewBase
{
	@:overload(function(?sId:String, ?mSettings:QuickViewCardArgs):Void {})
	public function new(?mSettings:QuickViewCardArgs):Void;

	/**
	* Creates a new subclass of class sap.m.QuickViewCard with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.QuickViewBase.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a metadata object for class sap.m.QuickViewCard.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getShowVerticalScrollBar showVerticalScrollBar}.

Determines whether the browser displays the vertical scroll bar or simply cuts the content of the QuickViewCard.

Default value is <code>true</code>.
	* @return	Value of property <code>showVerticalScrollBar</code>
	*/
	public function getShowVerticalScrollBar( ):Bool;

	/**
	* Sets a new value for property {@link #getShowVerticalScrollBar showVerticalScrollBar}.

Determines whether the browser displays the vertical scroll bar or simply cuts the content of the QuickViewCard.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bShowVerticalScrollBar New value for property <code>showVerticalScrollBar</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShowVerticalScrollBar( ?bShowVerticalScrollBar:Bool):sap.m.QuickViewCard;
}

typedef QuickViewCardArgs = sap.m.QuickViewBase.QuickViewBaseArgs & {

	/**
	* Determines whether the browser displays the vertical scroll bar or simply cuts the content of the QuickViewCard.
	*/
	@:optional var showVerticalScrollBar:haxe.extern.EitherType<String,Bool>;
}
