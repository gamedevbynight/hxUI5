package sap.m;

@:native("sap.m.TablePersoController")

/**
* Table Personalization Controller
*/
extern class TablePersoController extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:TablePersoControllerArgs):Void {})
	public function new(?mSettings:TablePersoControllerArgs):Void;

	/**
	* Activates the controller, i.e. tries to retrieve existing persisted personalizations, creates a TablePersoDialog for the associated table and attaches a close handler to apply the personalizations to the table and persist them.

This method should be called when the table to be personalized knows its columns. Usually, this is when that table's view has set its model, which is typically done in the corresponding controller's init method. For example <pre><code>
 onInit: function () {

		// set explored app's demo model on this sample
		var oModel = new JSONModel(sap.ui.require.toUrl("sap/ui/demo/mock/products.json"));
		var oGroupingModel = new JSONModel({ hasGrouping: false});
		this.getView().setModel(oModel);
		this.getView().setModel(oGroupingModel, 'Grouping');

		// init and activate controller
		this._oTPC = new TablePersoController({
			table: this.getView().byId("productsTable"),
			//specify the first part of persistence ids e.g. 'demoApp-productsTable-dimensionsCol'
			componentName: "demoApp",
			persoService: DemoPersoService,
		}).activate();
	}
</code></pre>
	* @return	the TablePersoController instance.
	*/
	public function activate( ):sap.m.TablePersoController;
	@:overload( function(vTable:sap.ui.core.ID):sap.m.TablePersoController{ })

	/**
	* Adds some table into the association {@link #getTables tables}.
	* @param	vTable The tables to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addTable( vTable:sap.m.Table):sap.m.TablePersoController;

	/**
	* Applies the personalizations by getting the existing personalizations and adjusting to the table.
	* @param	oTable the table to be personalized.
	* @return	Void
	*/
	public function applyPersonalizations( oTable:sap.m.Table):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:personalizationsDone personalizationsDone} event of this <code>sap.m.TablePersoController</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.m.TablePersoController</code> itself.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.m.TablePersoController</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPersonalizationsDone( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.m.TablePersoController;

	/**
	* Destroys the persoService in the aggregation {@link #getPersoService persoService}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPersoService( ):sap.m.TablePersoController;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:personalizationsDone personalizationsDone} event of this <code>sap.m.TablePersoController</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPersonalizationsDone( fnFunction:()->Void, ?oListener:Dynamic):sap.m.TablePersoController;

	/**
	* Creates a new subclass of class sap.m.TablePersoController with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getComponentName componentName}.

Available options for the text direction are LTR and RTL. By default the control inherits the text direction from its parent control.
	* @return	Value of property <code>componentName</code>
	*/
	public function getComponentName( ):String;

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

Default value is <code>false</code>.
	* @return	Value of property <code>hasGrouping</code>
	*/
	public function getHasGrouping( ):Bool;

	/**
	* Returns a metadata object for class sap.m.TablePersoController.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Gets content of aggregation {@link #getPersoService persoService}.
	* @return	null
	*/
	public function getPersoService( ):Dynamic;

	/**
	* Gets current value of property {@link #getShowResetAll showResetAll}.

Default value is <code>true</code>.
	* @return	Value of property <code>showResetAll</code>
	*/
	public function getShowResetAll( ):Bool;

	/**
	* Gets current value of property {@link #getShowSelectAll showSelectAll}.

Default value is <code>true</code>.
	* @return	Value of property <code>showSelectAll</code>
	*/
	public function getShowSelectAll( ):Bool;

	/**
	* ID of the element which is the current target of the association {@link #getTable table}, or <code>null</code>.
	* @return	null
	*/
	public function getTable( ):sap.ui.core.ID;

	/**
	* Returns a _tablePersoDialog instance if available. It can be NULL if the controller has not been activated yet.

This function makes a private aggregate publicly accessable. This is necessary for downward compatibility reasons: in the first versions of the tablePersoProvider developers still worked with the TablePersoDialog directly, which is now not necessary any longer.
	* @return	the TablePersoDialog instance.
	*/
	public function getTablePersoDialog( ):sap.m.TablePersoDialog;

	/**
	* Returns array of IDs of the elements which are the current targets of the association {@link #getTables tables}.
	* @return	null
	*/
	public function getTables( ):Array<sap.ui.core.ID>;

	/**
	* Opens the TablePersoDialog, stores the personalized settings on close, modifies the table columns, and sends them to the persistence service
	* @return	Void
	*/
	public function openDialog( ):Void;

	/**
	* Refresh the personalizations: reloads the personalization information from the table perso provider, applies it to the controller's table and updates the controller's table perso dialog.

Use case for a 'refresh' call would be that the table which si personalized changed its columns during runtime, after personalization has been activated.
	* @return	Void
	*/
	public function refresh( ):Void;

	/**
	* Removes all the controls in the association named {@link #getTables tables}.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllTables( ):Array<sap.ui.core.ID>;
	@:overload( function(vTable:Int):sap.ui.core.ID{ })
	@:overload( function(vTable:sap.ui.core.ID):sap.ui.core.ID{ })

	/**
	* Removes an table from the association named {@link #getTables tables}.
	* @param	vTable The table to be removed or its index or ID
	* @return	The removed table or <code>null</code>
	*/
	public function removeTable( vTable:sap.m.Table):sap.ui.core.ID;

	/**
	* Persist the personalizations
	* @return	Void
	*/
	public function savePersonalizations( ):Void;

	/**
	* Using this method, the first part of tablePerso persistence ids can be provided, in case the table's app does not provide that part itself.

If a component name is set using this method, it will be used, regardless of whether the table's app has a different component name or not.
	* @param	sCompName the new component name.
	* @return	the TablePersoController instance.
	*/
	public function setComponentName( sCompName:String):sap.m.TablePersoController;

	/**
	* Reflector for the controller's 'contentHeight' property.
	* @param	sHeight the new height of the TablePersoDialog.
	* @return	the TablePersoController instance.
	*/
	public function setContentHeight( sHeight:sap.ui.core.CSSSize):sap.m.TablePersoController;

	/**
	* Reflector for the controller's 'contentWidth' property.
	* @param	sWidth the new width of the tablePersoDialog
	* @return	the TablePersoController instance.
	*/
	public function setContentWidth( sWidth:sap.ui.core.CSSSize):sap.m.TablePersoController;

	/**
	* Reflector for the controller's 'hasGrouping' property.
	* @param	bHasGrouping is the tablePersoDialog displayed in grouping mode or not.
	* @return	the TablePersoController instance.
	*/
	public function setHasGrouping( bHasGrouping:Bool):sap.m.TablePersoController;

	/**
	* Sets the aggregated {@link #getPersoService persoService}.
	* @param	oPersoService The persoService to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPersoService( oPersoService:Dynamic):sap.m.TablePersoController;

	/**
	* Reflector for the controller's 'showResetAll' property.
	* @param	bShowResetAll is the tablePersoDialog's 'UndoPersonalization' button displayed or not.
	* @return	the TablePersoController instance.
	*/
	public function setShowResetAll( bShowResetAll:Bool):sap.m.TablePersoController;

	/**
	* Reflector for the controller's 'showSelectAll' property.
	* @param	bShowSelectAll is the tablePersoDialog's 'Display All' checkbox displayed or not.
	* @return	the TablePersoController instance.
	*/
	public function setShowSelectAll( bShowSelectAll:Bool):sap.m.TablePersoController;
	@:overload( function(oTable:sap.ui.core.ID):sap.m.TablePersoController{ })

	/**
	* Sets the associated {@link #getTable table}.
	* @param	oTable ID of an element which becomes the new target of this table association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTable( oTable:sap.m.Table):sap.m.TablePersoController;
}

typedef TablePersoControllerArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* null
	*/
	@:optional var contentWidth:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* null
	*/
	@:optional var contentHeight:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Available options for the text direction are LTR and RTL. By default the control inherits the text direction from its parent control.
	*/
	@:optional var componentName:String;

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
    * null
    */
	@:optional var _tablePersoDialog:haxe.extern.EitherType<String,sap.m.TablePersoDialog>;

    /**
    * null
    */
	@:optional var persoService:haxe.extern.EitherType<String,Dynamic>;

	/**
	* null
	*/
	@:optional var table:haxe.extern.EitherType<String,sap.m.Table>;

	/**
	* Also several tables may be personalized at once given they have same columns.
	*/
	@:optional var tables:Array<haxe.extern.EitherType<String,sap.m.Table>>;

	/**
	* null
	*/
	@:optional var personalizationsDone:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
