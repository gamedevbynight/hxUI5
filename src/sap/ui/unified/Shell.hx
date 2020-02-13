package sap.ui.unified;

@:native("sap.ui.unified.Shell")

/**
* The shell control is meant as root control (full-screen) of an application. It was build as root control of the Fiori Launchpad application and provides the basic capabilities for this purpose. Do not use this control within applications which run inside the Fiori Lauchpad and do not use it for other scenarios than the root control usecase.
*/
extern class Shell extends sap.ui.unified.ShellLayout
{
	@:overload(function(?sId:String, ?mSettings:ShellArgs):Void {})
	public function new(?mSettings:ShellArgs):Void;

	/**
	* Adds some curtainContent to the aggregation {@link #getCurtainContent curtainContent}.
	* @param	oCurtainContent The curtainContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCurtainContent( oCurtainContent:sap.ui.core.Control):sap.ui.unified.Shell;

	/**
	* Adds some curtainPaneContent to the aggregation {@link #getCurtainPaneContent curtainPaneContent}.
	* @param	oCurtainPaneContent The curtainPaneContent to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addCurtainPaneContent( oCurtainPaneContent:sap.ui.core.Control):sap.ui.unified.Shell;

	/**
	* Adds some headEndItem to the aggregation {@link #getHeadEndItems headEndItems}.
	* @param	oHeadEndItem The headEndItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addHeadEndItem( oHeadEndItem:sap.ui.unified.ShellHeadItem):sap.ui.unified.Shell;

	/**
	* Adds some headItem to the aggregation {@link #getHeadItems headItems}.
	* @param	oHeadItem The headItem to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addHeadItem( oHeadItem:sap.ui.unified.ShellHeadItem):sap.ui.unified.Shell;

	/**
	* Destroys all the curtainContent in the aggregation {@link #getCurtainContent curtainContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCurtainContent( ):sap.ui.unified.Shell;

	/**
	* Destroys all the curtainPaneContent in the aggregation {@link #getCurtainPaneContent curtainPaneContent}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCurtainPaneContent( ):sap.ui.unified.Shell;

	/**
	* Destroys all the headEndItems in the aggregation {@link #getHeadEndItems headEndItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeadEndItems( ):sap.ui.unified.Shell;

	/**
	* Destroys the header in the aggregation named <code>header</code>, but only if a custom header is set. The default header can not be destroyed.
	* @return	<code>this</code> to allow method chaining
	*/
	public function destroyHeader( ):sap.ui.unified.Shell;

	/**
	* Destroys all the headItems in the aggregation {@link #getHeadItems headItems}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeadItems( ):sap.ui.unified.Shell;

	/**
	* Destroys the search in the aggregation {@link #getSearch search}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySearch( ):sap.ui.unified.Shell;

	/**
	* Destroys the user in the aggregation {@link #getUser user}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyUser( ):sap.ui.unified.Shell;

	/**
	* Creates a new subclass of class sap.ui.unified.Shell with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.unified.ShellLayout.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getCurtainContent curtainContent}.

The content to appear in the curtain area.
	* @return	null
	*/
	public function getCurtainContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getCurtainPaneContent curtainPaneContent}.

The content to appear in the pane area of the curtain.
	* @return	null
	*/
	public function getCurtainPaneContent( ):Array<sap.ui.core.Control>;

	/**
	* Gets content of aggregation {@link #getHeadEndItems headEndItems}.

The buttons shown in the end (right in left-to-right case) of the Shell header. Currently max. 3 visible buttons are supported (when user is set only 1). If a custom header is set this aggregation has no effect.
	* @return	null
	*/
	public function getHeadEndItems( ):Array<sap.ui.unified.ShellHeadItem>;

	/**
	* Gets content of aggregation {@link #getHeadItems headItems}.

The buttons shown in the begin (left in left-to-right case) of the Shell header. Currently max. 3 visible buttons are supported. If a custom header is set this aggregation has no effect.
	* @return	null
	*/
	public function getHeadItems( ):Array<sap.ui.unified.ShellHeadItem>;

	/**
	* Gets current value of property {@link #getIcon icon}.

The application icon. If a custom header is set this property has no effect.
	* @return	Value of property <code>icon</code>
	*/
	public function getIcon( ):sap.ui.core.URI;

	/**
	* Returns a metadata object for class sap.ui.unified.Shell.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getSearch search}.

Experimental (This aggregation might change in future!): The search control which should be displayed in the shell header. If a custom header is set this aggregation has no effect.
	* @return	null
	*/
	public function getSearch( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getSearchVisible searchVisible}.

If set to false, the search area (aggregation 'search') is hidden. If a custom header is set this property has no effect.

Default value is <code>true</code>.
	* @return	Value of property <code>searchVisible</code>
	*/
	public function getSearchVisible( ):Bool;

	/**
	* Gets content of aggregation {@link #getUser user}.

The user item which is rendered in the shell header beside the items. If a custom header is set this aggregation has no effect.
	* @return	null
	*/
	public function getUser( ):sap.ui.unified.ShellHeadUserItem;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getCurtainContent curtainContent}. and returns its index if found or -1 otherwise.
	* @param	oCurtainContent The curtainContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCurtainContent( oCurtainContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getCurtainPaneContent curtainPaneContent}. and returns its index if found or -1 otherwise.
	* @param	oCurtainPaneContent The curtainPaneContent whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfCurtainPaneContent( oCurtainPaneContent:sap.ui.core.Control):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.ShellHeadItem</code> in the aggregation {@link #getHeadEndItems headEndItems}. and returns its index if found or -1 otherwise.
	* @param	oHeadEndItem The headEndItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfHeadEndItem( oHeadEndItem:sap.ui.unified.ShellHeadItem):Int;

	/**
	* Checks for the provided <code>sap.ui.unified.ShellHeadItem</code> in the aggregation {@link #getHeadItems headItems}. and returns its index if found or -1 otherwise.
	* @param	oHeadItem The headItem whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfHeadItem( oHeadItem:sap.ui.unified.ShellHeadItem):Int;

	/**
	* Inserts a curtainContent into the aggregation {@link #getCurtainContent curtainContent}.
	* @param	oCurtainContent The curtainContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the curtainContent should be inserted at; for a negative value of <code>iIndex</code>, the curtainContent is inserted at position 0; for a value greater than the current size of the aggregation, the curtainContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCurtainContent( oCurtainContent:sap.ui.core.Control, iIndex:Int):sap.ui.unified.Shell;

	/**
	* Inserts a curtainPaneContent into the aggregation {@link #getCurtainPaneContent curtainPaneContent}.
	* @param	oCurtainPaneContent The curtainPaneContent to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the curtainPaneContent should be inserted at; for a negative value of <code>iIndex</code>, the curtainPaneContent is inserted at position 0; for a value greater than the current size of the aggregation, the curtainPaneContent is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertCurtainPaneContent( oCurtainPaneContent:sap.ui.core.Control, iIndex:Int):sap.ui.unified.Shell;

	/**
	* Inserts a headEndItem into the aggregation {@link #getHeadEndItems headEndItems}.
	* @param	oHeadEndItem The headEndItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the headEndItem should be inserted at; for a negative value of <code>iIndex</code>, the headEndItem is inserted at position 0; for a value greater than the current size of the aggregation, the headEndItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertHeadEndItem( oHeadEndItem:sap.ui.unified.ShellHeadItem, iIndex:Int):sap.ui.unified.Shell;

	/**
	* Inserts a headItem into the aggregation {@link #getHeadItems headItems}.
	* @param	oHeadItem The headItem to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the headItem should be inserted at; for a negative value of <code>iIndex</code>, the headItem is inserted at position 0; for a value greater than the current size of the aggregation, the headItem is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertHeadItem( oHeadItem:sap.ui.unified.ShellHeadItem, iIndex:Int):sap.ui.unified.Shell;

	/**
	* Removes all the controls from the aggregation {@link #getCurtainContent curtainContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCurtainContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getCurtainPaneContent curtainPaneContent}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllCurtainPaneContent( ):Array<sap.ui.core.Control>;

	/**
	* Removes all the controls from the aggregation {@link #getHeadEndItems headEndItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllHeadEndItems( ):Array<sap.ui.unified.ShellHeadItem>;

	/**
	* Removes all the controls from the aggregation {@link #getHeadItems headItems}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllHeadItems( ):Array<sap.ui.unified.ShellHeadItem>;
	@:overload( function(vCurtainContent:Int):sap.ui.core.Control{ })
	@:overload( function(vCurtainContent:String):sap.ui.core.Control{ })

	/**
	* Removes a curtainContent from the aggregation {@link #getCurtainContent curtainContent}.
	* @param	vCurtainContent The curtainContent to remove or its index or id
	* @return	The removed curtainContent or <code>null</code>
	*/
	public function removeCurtainContent( vCurtainContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vCurtainPaneContent:Int):sap.ui.core.Control{ })
	@:overload( function(vCurtainPaneContent:String):sap.ui.core.Control{ })

	/**
	* Removes a curtainPaneContent from the aggregation {@link #getCurtainPaneContent curtainPaneContent}.
	* @param	vCurtainPaneContent The curtainPaneContent to remove or its index or id
	* @return	The removed curtainPaneContent or <code>null</code>
	*/
	public function removeCurtainPaneContent( vCurtainPaneContent:sap.ui.core.Control):sap.ui.core.Control;
	@:overload( function(vHeadEndItem:Int):sap.ui.unified.ShellHeadItem{ })
	@:overload( function(vHeadEndItem:String):sap.ui.unified.ShellHeadItem{ })

	/**
	* Removes a headEndItem from the aggregation {@link #getHeadEndItems headEndItems}.
	* @param	vHeadEndItem The headEndItem to remove or its index or id
	* @return	The removed headEndItem or <code>null</code>
	*/
	public function removeHeadEndItem( vHeadEndItem:sap.ui.unified.ShellHeadItem):sap.ui.unified.ShellHeadItem;
	@:overload( function(vHeadItem:Int):sap.ui.unified.ShellHeadItem{ })
	@:overload( function(vHeadItem:String):sap.ui.unified.ShellHeadItem{ })

	/**
	* Removes a headItem from the aggregation {@link #getHeadItems headItems}.
	* @param	vHeadItem The headItem to remove or its index or id
	* @return	The removed headItem or <code>null</code>
	*/
	public function removeHeadItem( vHeadItem:sap.ui.unified.ShellHeadItem):sap.ui.unified.ShellHeadItem;

	/**
	* Setter for the aggregated <code>header</code>.
	* @param	oHeader The Control which should be rendered within the Shell header or <code>null</code> to render the default Shell header.
	* @return	<code>this</code> to allow method chaining
	*/
	public function setHeader( oHeader:sap.ui.core.Control):sap.ui.unified.Shell;

	/**
	* Sets a new value for property {@link #getIcon icon}.

The application icon. If a custom header is set this property has no effect.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sIcon New value for property <code>icon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setIcon( sIcon:sap.ui.core.URI):sap.ui.unified.Shell;

	/**
	* Sets the aggregated {@link #getSearch search}.
	* @param	oSearch The search to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSearch( oSearch:sap.ui.core.Control):sap.ui.unified.Shell;

	/**
	* Sets a new value for property {@link #getSearchVisible searchVisible}.

If set to false, the search area (aggregation 'search') is hidden. If a custom header is set this property has no effect.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSearchVisible New value for property <code>searchVisible</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSearchVisible( bSearchVisible:Bool):sap.ui.unified.Shell;

	/**
	* Sets the aggregated {@link #getUser user}.
	* @param	oUser The user to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setUser( oUser:sap.ui.unified.ShellHeadUserItem):sap.ui.unified.Shell;
}

typedef ShellArgs = sap.ui.unified.ShellLayout.ShellLayoutArgs & {

	/**
	* The application icon. If a custom header is set this property has no effect.
	*/
	@:optional var icon:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* If set to false, the search area (aggregation 'search') is hidden. If a custom header is set this property has no effect.
	*/
	@:optional var searchVisible:haxe.extern.EitherType<String,Bool>;

    /**
    * The content to appear in the curtain area.
    */
	@:optional var curtainContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The content to appear in the pane area of the curtain.
    */
	@:optional var curtainPaneContent:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;

    /**
    * The buttons shown in the begin (left in left-to-right case) of the Shell header. Currently max. 3 visible buttons are supported. If a custom header is set this aggregation has no effect.
    */
	@:optional var headItems:Array<haxe.extern.EitherType<String,sap.ui.unified.ShellHeadItem>>;

    /**
    * The buttons shown in the end (right in left-to-right case) of the Shell header. Currently max. 3 visible buttons are supported (when user is set only 1). If a custom header is set this aggregation has no effect.
    */
	@:optional var headEndItems:Array<haxe.extern.EitherType<String,sap.ui.unified.ShellHeadItem>>;

    /**
    * Experimental (This aggregation might change in future!): The search control which should be displayed in the shell header. If a custom header is set this aggregation has no effect.
    */
	@:optional var search:haxe.extern.EitherType<String,sap.ui.core.Control>;

    /**
    * The user item which is rendered in the shell header beside the items. If a custom header is set this aggregation has no effect.
    */
	@:optional var user:haxe.extern.EitherType<String,sap.ui.unified.ShellHeadUserItem>;
}
