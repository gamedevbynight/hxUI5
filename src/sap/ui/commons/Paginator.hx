package sap.ui.commons;

@:native("sap.ui.commons.Paginator")

/**
* Provides navigation between pages within a list of numbered pages.
*/
extern class Paginator extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:PaginatorArgs):Void {})
	public function new(?mSettings:PaginatorArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:page page} event of this <code>sap.ui.commons.Paginator</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.commons.Paginator</code> itself.

Event is fired when the user navigates to another page by selecting it directly, or by jumping forward/backward.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.commons.Paginator</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPage( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Paginator;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:page page} event of this <code>sap.ui.commons.Paginator</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPage( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.commons.Paginator;

	/**
	* Creates a new subclass of class sap.ui.commons.Paginator with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getCurrentPage currentPage}.

Represents the current page (first page has index 1, not 0, to match the visual number)

Default value is <code>1</code>.
	* @return	Value of property <code>currentPage</code>
	*/
	public function getCurrentPage( ):Int;

	/**
	* Returns a metadata object for class sap.ui.commons.Paginator.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getNumberOfPages numberOfPages}.

Represents the overall number of pages that are embedded into the parent control
	* @return	Value of property <code>numberOfPages</code>
	*/
	public function getNumberOfPages( ):Int;

	/**
	* Sets a new value for property {@link #getCurrentPage currentPage}.

Represents the current page (first page has index 1, not 0, to match the visual number)

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>1</code>.
	* @param	iCurrentPage New value for property <code>currentPage</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCurrentPage( iCurrentPage:Int):sap.ui.commons.Paginator;

	/**
	* Sets a new value for property {@link #getNumberOfPages numberOfPages}.

Represents the overall number of pages that are embedded into the parent control

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	iNumberOfPages New value for property <code>numberOfPages</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNumberOfPages( iNumberOfPages:Int):sap.ui.commons.Paginator;
}

typedef PaginatorArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Represents the current page (first page has index 1, not 0, to match the visual number)
	*/
	@:optional var currentPage:haxe.extern.EitherType<String,Int>;

	/**
	* Represents the overall number of pages that are embedded into the parent control
	*/
	@:optional var numberOfPages:haxe.extern.EitherType<String,Int>;

	/**
	* Event is fired when the user navigates to another page by selecting it directly, or by jumping forward/backward.
	*/
	@:optional var page:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
