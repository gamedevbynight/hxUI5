package sap.m.semantic;

@:native("sap.m.semantic.DetailPage")

/**
* A DetailPage is a {@link sap.m.semantic.ShareMenuPage} that supports semantic content of the following types:

<ul> <li>{@link sap.m.semantic.AddAction}</li> <li>{@link sap.m.semantic.MainAction}</li> <li>{@link sap.m.semantic.PositiveAction}</li> <li>{@link sap.m.semantic.NegativeAction}</li> <li>{@link sap.m.semantic.ForwardAction}</li> <li>{@link sap.m.semantic.EditAction}</li> <li>{@link sap.m.semantic.SaveAction}</li> <li>{@link sap.m.semantic.DeleteAction}</li> <li>{@link sap.m.semantic.CancelAction}</li> <li>{@link sap.m.semantic.FlagAction}</li> <li>{@link sap.m.semantic.FavoriteAction}</li> <li>{@link sap.m.semantic.OpenInAction}</li> <li>{@link sap.m.semantic.DiscussInJamAction}</li> <li>{@link sap.m.semantic.ShareInJamAction}</li> <li>{@link sap.m.semantic.SendEmailAction}</li> <li>{@link sap.m.semantic.SendMessageAction}</li> <li>{@link sap.m.semantic.PrintAction}</li> <li>{@link sap.m.semantic.MessagesIndicator}</li> <li>{@link sap.m.DraftIndicator}</li> </ul>
*/
extern class DetailPage extends sap.m.semantic.ShareMenuPage
{
	@:overload(function(?sId:String, ?mSettings:DetailPageArgs):Void {})
	public function new(?mSettings:DetailPageArgs):Void;

	/**
	* Destroys the addAction in the aggregation {@link #getAddAction addAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyAddAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the cancelAction in the aggregation {@link #getCancelAction cancelAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyCancelAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the deleteAction in the aggregation {@link #getDeleteAction deleteAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDeleteAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the discussInJamAction in the aggregation {@link #getDiscussInJamAction discussInJamAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDiscussInJamAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the draftIndicator in the aggregation {@link #getDraftIndicator draftIndicator}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyDraftIndicator( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the editAction in the aggregation {@link #getEditAction editAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyEditAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the favoriteAction in the aggregation {@link #getFavoriteAction favoriteAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFavoriteAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the flagAction in the aggregation {@link #getFlagAction flagAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyFlagAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the forwardAction in the aggregation {@link #getForwardAction forwardAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyForwardAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the mainAction in the aggregation {@link #getMainAction mainAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMainAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the messagesIndicator in the aggregation {@link #getMessagesIndicator messagesIndicator}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyMessagesIndicator( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the negativeAction in the aggregation {@link #getNegativeAction negativeAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyNegativeAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the openInAction in the aggregation {@link #getOpenInAction openInAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyOpenInAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the pagingAction in the aggregation {@link #getPagingAction pagingAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPagingAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the positiveAction in the aggregation {@link #getPositiveAction positiveAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPositiveAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the printAction in the aggregation {@link #getPrintAction printAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyPrintAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the saveAction in the aggregation {@link #getSaveAction saveAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySaveAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the saveAsTileAction in the aggregation {@link #getSaveAsTileAction saveAsTileAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySaveAsTileAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the sendEmailAction in the aggregation {@link #getSendEmailAction sendEmailAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySendEmailAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the sendMessageAction in the aggregation {@link #getSendMessageAction sendMessageAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySendMessageAction( ):sap.m.semantic.DetailPage;

	/**
	* Destroys the shareInJamAction in the aggregation {@link #getShareInJamAction shareInJamAction}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyShareInJamAction( ):sap.m.semantic.DetailPage;

	/**
	* Creates a new subclass of class sap.m.semantic.DetailPage with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.semantic.ShareMenuPage.extend}.
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
	* Gets content of aggregation {@link #getDiscussInJamAction discussInJamAction}.

DiscussInJam action
	* @return	null
	*/
	public function getDiscussInJamAction( ):sap.m.semantic.DiscussInJamAction;

	/**
	* Gets content of aggregation {@link #getDraftIndicator draftIndicator}.

DraftIndicator
	* @return	null
	*/
	public function getDraftIndicator( ):sap.m.DraftIndicator;

	/**
	* Gets content of aggregation {@link #getEditAction editAction}.

Edit action
	* @return	null
	*/
	public function getEditAction( ):sap.m.semantic.EditAction;

	/**
	* Gets content of aggregation {@link #getFavoriteAction favoriteAction}.

Favorite action
	* @return	null
	*/
	public function getFavoriteAction( ):sap.m.semantic.FavoriteAction;

	/**
	* Gets content of aggregation {@link #getFlagAction flagAction}.

Flag action
	* @return	null
	*/
	public function getFlagAction( ):sap.m.semantic.FlagAction;

	/**
	* Gets content of aggregation {@link #getForwardAction forwardAction}.

Negative action
	* @return	null
	*/
	public function getForwardAction( ):sap.m.semantic.ForwardAction;

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
	* Returns a metadata object for class sap.m.semantic.DetailPage.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets content of aggregation {@link #getNegativeAction negativeAction}.

Negative action
	* @return	null
	*/
	public function getNegativeAction( ):sap.m.semantic.NegativeAction;

	/**
	* Gets content of aggregation {@link #getOpenInAction openInAction}.

OpenIn action
	* @return	null
	*/
	public function getOpenInAction( ):sap.m.semantic.OpenInAction;

	/**
	* Gets content of aggregation {@link #getPagingAction pagingAction}.

Paging action
	* @return	null
	*/
	public function getPagingAction( ):sap.m.PagingButton;

	/**
	* Gets content of aggregation {@link #getPositiveAction positiveAction}.

Positive action
	* @return	null
	*/
	public function getPositiveAction( ):sap.m.semantic.PositiveAction;

	/**
	* Gets content of aggregation {@link #getPrintAction printAction}.

Print action
	* @return	null
	*/
	public function getPrintAction( ):sap.m.semantic.PrintAction;

	/**
	* Gets content of aggregation {@link #getSaveAction saveAction}.

Save action
	* @return	null
	*/
	public function getSaveAction( ):sap.m.semantic.SaveAction;

	/**
	* Gets content of aggregation {@link #getSaveAsTileAction saveAsTileAction}.

SaveAsTile button
	* @return	null
	*/
	public function getSaveAsTileAction( ):sap.m.Button;

	/**
	* Gets content of aggregation {@link #getSendEmailAction sendEmailAction}.

SendEmail action
	* @return	null
	*/
	public function getSendEmailAction( ):sap.m.semantic.SendEmailAction;

	/**
	* Gets content of aggregation {@link #getSendMessageAction sendMessageAction}.

SendMessage action
	* @return	null
	*/
	public function getSendMessageAction( ):sap.m.semantic.SendMessageAction;

	/**
	* Gets content of aggregation {@link #getShareInJamAction shareInJamAction}.

ShareInJam action
	* @return	null
	*/
	public function getShareInJamAction( ):sap.m.semantic.ShareInJamAction;

	/**
	* Sets the aggregated {@link #getAddAction addAction}.
	* @param	oAddAction The addAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAddAction( oAddAction:sap.m.semantic.AddAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getCancelAction cancelAction}.
	* @param	oCancelAction The cancelAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setCancelAction( oCancelAction:sap.m.semantic.CancelAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getDeleteAction deleteAction}.
	* @param	oDeleteAction The deleteAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDeleteAction( oDeleteAction:sap.m.semantic.DeleteAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getDiscussInJamAction discussInJamAction}.
	* @param	oDiscussInJamAction The discussInJamAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDiscussInJamAction( oDiscussInJamAction:sap.m.semantic.DiscussInJamAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getDraftIndicator draftIndicator}.
	* @param	oDraftIndicator The draftIndicator to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDraftIndicator( oDraftIndicator:sap.m.DraftIndicator):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getEditAction editAction}.
	* @param	oEditAction The editAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditAction( oEditAction:sap.m.semantic.EditAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getFavoriteAction favoriteAction}.
	* @param	oFavoriteAction The favoriteAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFavoriteAction( oFavoriteAction:sap.m.semantic.FavoriteAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getFlagAction flagAction}.
	* @param	oFlagAction The flagAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFlagAction( oFlagAction:sap.m.semantic.FlagAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getForwardAction forwardAction}.
	* @param	oForwardAction The forwardAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setForwardAction( oForwardAction:sap.m.semantic.ForwardAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getMainAction mainAction}.
	* @param	oMainAction The mainAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMainAction( oMainAction:sap.m.semantic.MainAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getMessagesIndicator messagesIndicator}.
	* @param	oMessagesIndicator The messagesIndicator to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMessagesIndicator( oMessagesIndicator:sap.m.semantic.MessagesIndicator):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getNegativeAction negativeAction}.
	* @param	oNegativeAction The negativeAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setNegativeAction( oNegativeAction:sap.m.semantic.NegativeAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getOpenInAction openInAction}.
	* @param	oOpenInAction The openInAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setOpenInAction( oOpenInAction:sap.m.semantic.OpenInAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getPagingAction pagingAction}.
	* @param	oPagingAction The pagingAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPagingAction( oPagingAction:sap.m.PagingButton):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getPositiveAction positiveAction}.
	* @param	oPositiveAction The positiveAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPositiveAction( oPositiveAction:sap.m.semantic.PositiveAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getPrintAction printAction}.
	* @param	oPrintAction The printAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setPrintAction( oPrintAction:sap.m.semantic.PrintAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getSaveAction saveAction}.
	* @param	oSaveAction The saveAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSaveAction( oSaveAction:sap.m.semantic.SaveAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getSaveAsTileAction saveAsTileAction}.
	* @param	oSaveAsTileAction The saveAsTileAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSaveAsTileAction( oSaveAsTileAction:sap.m.Button):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getSendEmailAction sendEmailAction}.
	* @param	oSendEmailAction The sendEmailAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSendEmailAction( oSendEmailAction:sap.m.semantic.SendEmailAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getSendMessageAction sendMessageAction}.
	* @param	oSendMessageAction The sendMessageAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSendMessageAction( oSendMessageAction:sap.m.semantic.SendMessageAction):sap.m.semantic.DetailPage;

	/**
	* Sets the aggregated {@link #getShareInJamAction shareInJamAction}.
	* @param	oShareInJamAction The shareInJamAction to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setShareInJamAction( oShareInJamAction:sap.m.semantic.ShareInJamAction):sap.m.semantic.DetailPage;
}

typedef DetailPageArgs = sap.m.semantic.ShareMenuPage.ShareMenuPageArgs & {

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
    * Negative action
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
    * Flag action
    */
	@:optional var flagAction:haxe.extern.EitherType<String,sap.m.semantic.FlagAction>;

    /**
    * Favorite action
    */
	@:optional var favoriteAction:haxe.extern.EitherType<String,sap.m.semantic.FavoriteAction>;

    /**
    * OpenIn action
    */
	@:optional var openInAction:haxe.extern.EitherType<String,sap.m.semantic.OpenInAction>;

    /**
    * DiscussInJam action
    */
	@:optional var discussInJamAction:haxe.extern.EitherType<String,sap.m.semantic.DiscussInJamAction>;

    /**
    * ShareInJam action
    */
	@:optional var shareInJamAction:haxe.extern.EitherType<String,sap.m.semantic.ShareInJamAction>;

    /**
    * SendEmail action
    */
	@:optional var sendEmailAction:haxe.extern.EitherType<String,sap.m.semantic.SendEmailAction>;

    /**
    * SendMessage action
    */
	@:optional var sendMessageAction:haxe.extern.EitherType<String,sap.m.semantic.SendMessageAction>;

    /**
    * Print action
    */
	@:optional var printAction:haxe.extern.EitherType<String,sap.m.semantic.PrintAction>;

    /**
    * MessagesIndicator
    */
	@:optional var messagesIndicator:haxe.extern.EitherType<String,sap.m.semantic.MessagesIndicator>;

    /**
    * SaveAsTile button
    */
	@:optional var saveAsTileAction:haxe.extern.EitherType<String,sap.m.Button>;

    /**
    * Paging action
    */
	@:optional var pagingAction:haxe.extern.EitherType<String,sap.m.PagingButton>;

    /**
    * DraftIndicator
    */
	@:optional var draftIndicator:haxe.extern.EitherType<String,sap.m.DraftIndicator>;
}
