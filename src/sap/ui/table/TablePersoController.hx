package sap.ui.table;

@:native("sap.ui.table.TablePersoController")

/**
* The TablePersoController can be used to connect a table with a persistence service.
*/
extern class TablePersoController extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:TablePersoControllerArgs):Void {})
	public function new(?mSettings:TablePersoControllerArgs):Void;

	/**
	* Creates a new subclass of class sap.ui.table.TablePersoController with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets current value of property {@link #getAutoSave autoSave}.

Auto save state

Default value is <code>true</code>.
	* @return	Value of property <code>autoSave</code>
	*/
	public function getAutoSave( ):Bool;

	/**
	* Gets current value of property {@link #getCustomDataKey customDataKey}.

By defining a custom data key the <code>TablePersoController</code> will try to get the key for saving the perso data from the custom data of the Table and Column instead of creating it by concatenating the ID of the Table and the Column. Basically this will be more stable than using the auto IDs.

Default value is <code>"persoKey"</code>.
	* @return	Value of property <code>customDataKey</code>
	*/
	public function getCustomDataKey( ):String;

	/**
	* Returns a metadata object for class sap.ui.table.TablePersoController.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Gets current value of property {@link #getPersoService persoService}.

Personalization Service object. Needs to have the following methods: <ul> <li>getPersData() : <code>jQuery Promise</code> (http://api.jquery.com/promise/)</li> <li>setPersData(oBundle) : <code>jQuery Promise</code> (http://api.jquery.com/promise/)</li> <li>delPersData() : <code>jQuery Promise</code> (http://api.jquery.com/promise/)</li> </ul>
	* @return	Value of property <code>persoService</code>
	*/
	public function getPersoService( ):Dynamic;

	/**
	* ID of the element which is the current target of the association {@link #getTable table}, or <code>null</code>.
	* @return	null
	*/
	public function getTable( ):sap.ui.core.ID;

	/**
	* Opens the personalization dialog for the Table to modify the visibility and the order of the columns.

<i>Using this functionality will require to load the sap.m library because the personalization dialog is only available in this library for now.</i>
	* @param	mSettings null
	* @return	Void
	*/
	public function openDialog( mSettings:Dynamic):Void;

	/**
	* Refresh the personalizations (reloads data from service).
	* @return	<code>jQuery Promise</code> which is resolved once the refresh is finished
	*/
	public function refresh( ):jquery.Promise;

	/**
	* Saves the current personalization state.
	* @return	<code>jQuery Promise</code> which is resolved once the save is finished
	*/
	public function savePersonalizations( ):jquery.Promise;

	/**
	* Sets a new value for property {@link #getAutoSave autoSave}.

Auto save state

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bAutoSave New value for property <code>autoSave</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAutoSave( ?bAutoSave:Bool):sap.ui.table.TablePersoController;

	/**
	* Sets a new value for property {@link #getCustomDataKey customDataKey}.

By defining a custom data key the <code>TablePersoController</code> will try to get the key for saving the perso data from the custom data of the Table and Column instead of creating it by concatenating the ID of the Table and the Column. Basically this will be more stable than using the auto IDs.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"persoKey"</code>.
	* @param	sCustomDataKey New value for property <code>customDataKey</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCustomDataKey( ?sCustomDataKey:String):sap.ui.table.TablePersoController;

	/**
	* Sets a new value for property {@link #getPersoService persoService}.

Personalization Service object. Needs to have the following methods: <ul> <li>getPersData() : <code>jQuery Promise</code> (http://api.jquery.com/promise/)</li> <li>setPersData(oBundle) : <code>jQuery Promise</code> (http://api.jquery.com/promise/)</li> <li>delPersData() : <code>jQuery Promise</code> (http://api.jquery.com/promise/)</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oPersoService New value for property <code>persoService</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPersoService( oPersoService:Dynamic):sap.ui.table.TablePersoController;
	@:overload( function(oTable:sap.ui.core.ID):sap.ui.table.TablePersoController{ })

	/**
	* Sets the associated {@link #getTable table}.
	* @param	oTable ID of an element which becomes the new target of this table association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTable( oTable:sap.ui.table.Table):sap.ui.table.TablePersoController;
}

typedef TablePersoControllerArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {

	/**
	* Auto save state
	*/
	@:optional var autoSave:haxe.extern.EitherType<String,Bool>;

	/**
	* Personalization Service object. Needs to have the following methods: <ul> <li>getPersData() : <code>jQuery Promise</code> (http://api.jquery.com/promise/)</li> <li>setPersData(oBundle) : <code>jQuery Promise</code> (http://api.jquery.com/promise/)</li> <li>delPersData() : <code>jQuery Promise</code> (http://api.jquery.com/promise/)</li> </ul>
	*/
	@:optional var persoService:Dynamic;

	/**
	* By defining a custom data key the <code>TablePersoController</code> will try to get the key for saving the perso data from the custom data of the Table and Column instead of creating it by concatenating the ID of the Table and the Column. Basically this will be more stable than using the auto IDs.
	*/
	@:optional var customDataKey:String;

	/**
	* The target table of this controller.
	*/
	@:optional var table:haxe.extern.EitherType<String,sap.ui.table.Table>;
}
