package sap.m.semantic;

@:native("sap.m.semantic.MasterPage")

/**
* A MasterPage is a {@link sap.m.semantic.SemanticPage} that supports semantic content of the following types:

<ul> <li>{@link sap.m.semantic.AddAction}</li> <li>{@link sap.m.semantic.MainAction}</li> <li>{@link sap.m.semantic.PositiveAction}</li> <li>{@link sap.m.semantic.NegativeAction}</li> <li>{@link sap.m.semantic.ForwardAction}</li> <li>{@link sap.m.semantic.EditAction}</li> <li>{@link sap.m.semantic.SaveAction}</li> <li>{@link sap.m.semantic.DeleteAction}</li> <li>{@link sap.m.semantic.CancelAction}</li> <li>{@link sap.m.semantic.MultiSelectAction}</li> <li>{@link sap.m.semantic.FlagAction}</li> <li>{@link sap.m.semantic.FavoriteAction}</li> <li>{@link sap.m.semantic.SortAction}</li> <li>{@link sap.m.semantic.SortSelect}</li> <li>{@link sap.m.semantic.FilterAction}</li> <li>{@link sap.m.semantic.FilterSelect}</li> <li>{@link sap.m.semantic.GroupAction}</li> <li>{@link sap.m.semantic.GroupSelect}</li> <li>{@link sap.m.semantic.MessagesIndicator}</li> </ul>
*/
extern class MasterPage extends sap.m.semantic.SemanticPage
{
	@:overload(function(?sId:String, ?mSettings:MasterPageArgs):Void {})
	public function new(?mSettings:MasterPageArgs):Void;

	/**
	* Destroys the addAction in the aggregation {@link #getAddAction addAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAddAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the cancelAction in the aggregation {@link #getCancelAction cancelAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCancelAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the deleteAction in the aggregation {@link #getDeleteAction deleteAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDeleteAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the editAction in the aggregation {@link #getEditAction editAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyEditAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the filter in the aggregation {@link #getFilter filter}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFilter( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the forwardAction in the aggregation {@link #getForwardAction forwardAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyForwardAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the group in the aggregation {@link #getGroup group}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyGroup( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the mainAction in the aggregation {@link #getMainAction mainAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMainAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the messagesIndicator in the aggregation {@link #getMessagesIndicator messagesIndicator}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMessagesIndicator( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the multiSelectAction in the aggregation {@link #getMultiSelectAction multiSelectAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMultiSelectAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the negativeAction in the aggregation {@link #getNegativeAction negativeAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyNegativeAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the positiveAction in the aggregation {@link #getPositiveAction positiveAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPositiveAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the saveAction in the aggregation {@link #getSaveAction saveAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySaveAction( ):sap.m.semantic.MasterPage;

	/**
	* Destroys the sort in the aggregation {@link #getSort sort}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySort( ):sap.m.semantic.MasterPage;

	/**
	* Creates a new subclass of class sap.m.semantic.MasterPage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.SemanticPage.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets content of aggregation {@link #getAddAction addAction}.

Add action
	* @return	null
	*/
	public function getAddAction( ):sap.m.semantic.AddAction;

	/**
	* Gets content of aggregation {@link #getCancelAction cancelAction}.

Cancel action
	* @return	null
	*/
	public function getCancelAction( ):sap.m.semantic.CancelAction;

	/**
	* Gets content of aggregation {@link #getDeleteAction deleteAction}.

Delete action
	* @return	null
	*/
	public function getDeleteAction( ):sap.m.semantic.DeleteAction;

	/**
	* Gets content of aggregation {@link #getEditAction editAction}.

Edit action
	* @return	null
	*/
	public function getEditAction( ):sap.m.semantic.EditAction;

	/**
	* Gets content of aggregation {@link #getFilter filter}.

Filter action
	* @return	null
	*/
	public function getFilter( ):sap.m.semantic.IFilter;

	/**
	* Gets content of aggregation {@link #getForwardAction forwardAction}.

Forward action
	* @return	null
	*/
	public function getForwardAction( ):sap.m.semantic.ForwardAction;

	/**
	* Gets content of aggregation {@link #getGroup group}.

Group action
	* @return	null
	*/
	public function getGroup( ):sap.m.semantic.IGroup;

	/**
	* Gets content of aggregation {@link #getMainAction mainAction}.

Main action
	* @return	null
	*/
	public function getMainAction( ):sap.m.semantic.MainAction;

	/**
	* Gets content of aggregation {@link #getMessagesIndicator messagesIndicator}.

MessagesIndicator
	* @return	null
	*/
	public function getMessagesIndicator( ):sap.m.semantic.MessagesIndicator;

	/**
	* Returns a metadata object for class sap.m.semantic.MasterPage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getMultiSelectAction multiSelectAction}.

MultiSelect action
	* @return	null
	*/
	public function getMultiSelectAction( ):sap.m.semantic.MultiSelectAction;

	/**
	* Gets content of aggregation {@link #getNegativeAction negativeAction}.

Negative action
	* @return	null
	*/
	public function getNegativeAction( ):sap.m.semantic.NegativeAction;

	/**
	* Gets content of aggregation {@link #getPositiveAction positiveAction}.

Positive action
	* @return	null
	*/
	public function getPositiveAction( ):sap.m.semantic.PositiveAction;

	/**
	* Gets content of aggregation {@link #getSaveAction saveAction}.

Save action
	* @return	null
	*/
	public function getSaveAction( ):sap.m.semantic.SaveAction;

	/**
	* Gets content of aggregation {@link #getSort sort}.

Sort action
	* @return	null
	*/
	public function getSort( ):sap.m.semantic.ISort;

	/**
	* Sets the aggregated {@link #getAddAction addAction}.
	* @param	oAddAction The addAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAddAction( oAddAction:sap.m.semantic.AddAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getCancelAction cancelAction}.
	* @param	oCancelAction The cancelAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCancelAction( oCancelAction:sap.m.semantic.CancelAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getDeleteAction deleteAction}.
	* @param	oDeleteAction The deleteAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDeleteAction( oDeleteAction:sap.m.semantic.DeleteAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getEditAction editAction}.
	* @param	oEditAction The editAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditAction( oEditAction:sap.m.semantic.EditAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getFilter filter}.
	* @param	oFilter The filter to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFilter( oFilter:sap.m.semantic.IFilter):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getForwardAction forwardAction}.
	* @param	oForwardAction The forwardAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setForwardAction( oForwardAction:sap.m.semantic.ForwardAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getGroup group}.
	* @param	oGroup The group to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setGroup( oGroup:sap.m.semantic.IGroup):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getMainAction mainAction}.
	* @param	oMainAction The mainAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMainAction( oMainAction:sap.m.semantic.MainAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getMessagesIndicator messagesIndicator}.
	* @param	oMessagesIndicator The messagesIndicator to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMessagesIndicator( oMessagesIndicator:sap.m.semantic.MessagesIndicator):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getMultiSelectAction multiSelectAction}.
	* @param	oMultiSelectAction The multiSelectAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMultiSelectAction( oMultiSelectAction:sap.m.semantic.MultiSelectAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getNegativeAction negativeAction}.
	* @param	oNegativeAction The negativeAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNegativeAction( oNegativeAction:sap.m.semantic.NegativeAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getPositiveAction positiveAction}.
	* @param	oPositiveAction The positiveAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPositiveAction( oPositiveAction:sap.m.semantic.PositiveAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getSaveAction saveAction}.
	* @param	oSaveAction The saveAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSaveAction( oSaveAction:sap.m.semantic.SaveAction):sap.m.semantic.MasterPage;

	/**
	* Sets the aggregated {@link #getSort sort}.
	* @param	oSort The sort to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSort( oSort:sap.m.semantic.ISort):sap.m.semantic.MasterPage;
}

typedef MasterPageArgs = sap.m.semantic.SemanticPage.SemanticPageArgs & {

    /**
    * Add action
    */
	@:optional var addAction:haxe.extern.EitherType<String,sap.m.semantic.AddAction>;

    /**
    * Main action
    */
	@:optional var mainAction:haxe.extern.EitherType<String,sap.m.semantic.MainAction>;

    /**
    * Positive action
    */
	@:optional var positiveAction:haxe.extern.EitherType<String,sap.m.semantic.PositiveAction>;

    /**
    * Negative action
    */
	@:optional var negativeAction:haxe.extern.EitherType<String,sap.m.semantic.NegativeAction>;

    /**
    * MultiSelect action
    */
	@:optional var multiSelectAction:haxe.extern.EitherType<String,sap.m.semantic.MultiSelectAction>;

    /**
    * Forward action
    */
	@:optional var forwardAction:haxe.extern.EitherType<String,sap.m.semantic.ForwardAction>;

    /**
    * Edit action
    */
	@:optional var editAction:haxe.extern.EitherType<String,sap.m.semantic.EditAction>;

    /**
    * Save action
    */
	@:optional var saveAction:haxe.extern.EitherType<String,sap.m.semantic.SaveAction>;

    /**
    * Delete action
    */
	@:optional var deleteAction:haxe.extern.EitherType<String,sap.m.semantic.DeleteAction>;

    /**
    * Cancel action
    */
	@:optional var cancelAction:haxe.extern.EitherType<String,sap.m.semantic.CancelAction>;

    /**
    * Sort action
    */
	@:optional var sort:haxe.extern.EitherType<String,sap.m.semantic.ISort>;

    /**
    * Filter action
    */
	@:optional var filter:haxe.extern.EitherType<String,sap.m.semantic.IFilter>;

    /**
    * Group action
    */
	@:optional var group:haxe.extern.EitherType<String,sap.m.semantic.IGroup>;

    /**
    * MessagesIndicator
    */
	@:optional var messagesIndicator:haxe.extern.EitherType<String,sap.m.semantic.MessagesIndicator>;
}
