package sap.m;

@:native("sap.m.TablePersoProvider")

/**
* Table Personalization Provider
*/
extern class TablePersoProvider extends sap.ui.base.ManagedObject
{
public function new():Void;

	/**
	* Removes the personalization bundle This must return a jQuery promise (see http://api.jquery.com/promise/)
	* @return	Void
	*/
	public function delPersData( ):Void;

	/**
	* Creates a new subclass of class sap.m.TablePersoProvider with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.ManagedObject.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Callback function which can be used to determine the title of a given column within the TablePersoDialog. As a default, the column header controls are asked for their 'text' or 'title' property. This works in most cases, for example if the header control is an sap.m.Label (has 'text' property) or an sap.m.ObjectListItem (has 'title' property).

If the header control used in a column has neither 'text' nor 'title' property, or if you would like to display a modified column name for a certain column, this callback function can be used.

If the callback delivers null for a column (which is the default implementation), the default texts described above are displayed for that column in the TablePersoDialog.

In case neither the callback delivers null and neither 'text' nor ' title' property are at hand, the TablePersoDialog will display the column id and a warning message is logged.
	* @param	oColumn column whose caption shall be determined
	* @return	Void
	*/
	public function getCaption( oColumn:sap.m.Column):Void;

	/**
	* Callback function which can be used to determine the group of a given column within the TablePersoDialog. As a default, the columns are not assigned to a group.

This information is used to group the columns within the TablePersoDialog if the TablePersoController's 'group' flag is set, otherwise, the groups are ignored.
	* @param	oColumn column whose group shall be determined
	* @return	Void
	*/
	public function getGroup( oColumn:sap.m.Column):Void;

	/**
	* Returns a metadata object for class sap.m.TablePersoProvider.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.ManagedObjectMetadata;

	/**
	* Retrieves the personalization bundle. This must return a jQuery promise (see http://api.jquery.com/promise/)
	* @return	Void
	*/
	public function getPersData( ):Void;

	/**
	* Resets user’s personalization for a given table so that ‘getPersData’ will deliver its initial state. If no table is specified, all personalizations of the currently logged on user are reset.

This must return a jQuery promise (see http://api.jquery.com/promise/)
	* @return	Void
	*/
	public function resetPersData( ):Void;

	/**
	* Stores the personalization bundle, overwriting any previous bundle completely This must return a jQuery promise (see http://api.jquery.com/promise/)
	* @param	oBundle null
	* @return	Void
	*/
	public function setPersData( oBundle:Dynamic):Void;
}

