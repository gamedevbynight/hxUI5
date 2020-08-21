package sap.m;

@:native("sap.m.TablePersoDialog")

/**
* Table Personalization Dialog
*/
extern class TablePersoDialog extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:TablePersoDialogArgs):Void {})
	public function new(?mSettings:TablePersoDialogArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:cancel cancel} event of this <code>sap.m.TablePersoDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TablePersoDialog</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TablePersoDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachCancel( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.TablePersoDialog;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:confirm confirm} event of this <code>sap.m.TablePersoDialog</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TablePersoDialog</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TablePersoDialog</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachConfirm( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.TablePersoDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:cancel cancel} event of this <code>sap.m.TablePersoDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachCancel( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.TablePersoDialog;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:confirm confirm} event of this <code>sap.m.TablePersoDialog</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachConfirm( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.m.TablePersoDialog;

	/**
	* Creates a new subclass of class sap.m.TablePersoDialog with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getColumnInfoCallback columnInfoCallback}.
	* @return	Value of property <code>columnInfoCallback</code>
	*/
	public function getColumnInfoCallback( ):Dynamic;

	/**
	* Gets current value of property {@link #getContentHeight contentHeight}.
	* @return	Value of property <code>contentHeight</code>
	*/
	public function getContentHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getContentWidth contentWidth}.
	* @return	Value of property <code>contentWidth</code>
	*/
	public function getContentWidth( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getHasGrouping hasGrouping}.
	* @return	Value of property <code>hasGrouping</code>
	*/
	public function getHasGrouping( ):Bool;

	/**
	* Gets current value of property {@link #getInitialColumnState initialColumnState}.
	* @return	Value of property <code>initialColumnState</code>
	*/
	public function getInitialColumnState( ):Dynamic;

	/**
	* Returns a metadata object for class sap.m.TablePersoDialog.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* ID of the element which is the current target of the association {@link #getPersoDialogFor persoDialogFor}, or <code>null</code>.
	* @return	null
	*/
	public function getPersoDialogFor( ):sap.ui.core.ID;

	/**
	* Gets current value of property {@link #getPersoMap persoMap}.
	* @return	Value of property <code>persoMap</code>
	*/
	public function getPersoMap( ):Dynamic;

	/**
	* Gets current value of property {@link #getShowResetAll showResetAll}.
	* @return	Value of property <code>showResetAll</code>
	*/
	public function getShowResetAll( ):Bool;

	/**
	* Gets current value of property {@link #getShowSelectAll showSelectAll}.
	* @return	Value of property <code>showSelectAll</code>
	*/
	public function getShowSelectAll( ):Bool;

	/**
	* Sets the content of the dialog, being list items representing the associated table's column settings, and opens the dialog
	* @return	Void
	*/
	public function open( ):Void;

	/**
	* Returns the personalizations made. Currently supports a 'columns' property which holds an array of settings, one element per column in the associated table. The element contains column-specific information as follows: id: column id; order: new order; text: the column's header text that was displayed in the dialog; visible: visibility (true or false).
	* @return	the personalization data
	*/
	public function retrievePersonalizations( ):Dynamic;

	/**
	* Sets a new value for property {@link #getColumnInfoCallback columnInfoCallback}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oColumnInfoCallback New value for property <code>columnInfoCallback</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setColumnInfoCallback( oColumnInfoCallback:Dynamic):sap.m.TablePersoDialog;

	/**
	* Sets a new value for property {@link #getContentHeight contentHeight}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentHeight New value for property <code>contentHeight</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentHeight( sContentHeight:sap.ui.core.CSSSize):sap.m.TablePersoDialog;

	/**
	* Sets a new value for property {@link #getContentWidth contentWidth}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sContentWidth New value for property <code>contentWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContentWidth( sContentWidth:sap.ui.core.CSSSize):sap.m.TablePersoDialog;

	/**
	* Setter to turn on/ switch off TablePersoDialog's grouping mode.
	* @param	bHasGrouping groping mode on or off.
	* @return	the TablePersoDialog instance.
	*/
	public function setHasGrouping( bHasGrouping:Bool):sap.m.TablePersoDialog;

	/**
	* Sets a new value for property {@link #getInitialColumnState initialColumnState}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oInitialColumnState New value for property <code>initialColumnState</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitialColumnState( oInitialColumnState:Dynamic):sap.m.TablePersoDialog;
	@:overload( function(oPersoDialogFor:sap.ui.core.ID):sap.m.TablePersoDialog{ })

	/**
	* Sets the associated {@link #getPersoDialogFor persoDialogFor}.
	* @param	oPersoDialogFor ID of an element which becomes the new target of this persoDialogFor association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPersoDialogFor( oPersoDialogFor:sap.m.Table):sap.m.TablePersoDialog;

	/**
	* Sets a new value for property {@link #getPersoMap persoMap}.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oPersoMap New value for property <code>persoMap</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPersoMap( oPersoMap:Dynamic):sap.m.TablePersoDialog;

	/**
	* Setter to show/hide TablePersoDialog's 'Undo Personalization' button.
	* @param	bShowResetAll 'undo Personalization' button visible or not.
	* @return	the TablePersoDialog instance.
	*/
	public function setShowResetAll( bShowResetAll:Bool):sap.m.TablePersoDialog;

	/**
	* Setter to show/hide TablePersoDialog's 'selectAll' checkbox.
	* @param	bShowSelectAll selectAll checkbox visible or not.
	* @return	the TablePersoDialog instance.
	*/
	public function setShowSelectAll( bShowSelectAll:Bool):sap.m.TablePersoDialog;
}

typedef TablePersoDialogArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* null
	*/
	@:optional var contentWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* null
	*/
	@:optional var contentHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* null
	*/
	@:optional var persoMap:haxe.extern.EitherType<String,Dynamic>;

	/**
	* null
	*/
	@:optional var columnInfoCallback:haxe.extern.EitherType<String,Dynamic>;

	/**
	* null
	*/
	@:optional var initialColumnState:haxe.extern.EitherType<String,Dynamic>;

	/**
	* null
	*/
	@:optional var hasGrouping:haxe.extern.EitherType<String,Bool>;

	/**
	* null
	*/
	@:optional var showSelectAll:haxe.extern.EitherType<String,Bool>;

	/**
	* null
	*/
	@:optional var showResetAll:haxe.extern.EitherType<String,Bool>;

	/**
	* The table which shall be personalized.
	*/
	@:optional var persoDialogFor:haxe.extern.EitherType<String,sap.m.Table>;

	/**
	* null
	*/
	@:optional var cancel:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* null
	*/
	@:optional var confirm:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
