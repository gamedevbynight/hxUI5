package sap.ui.core.routing;

@:native("sap.ui.core.routing.History")

/**
* Used to determine the {@link sap.ui.core.routing.HistoryDirection} of the current or a future navigation, done with a {@link sap.ui.core.routing.Router} or {@link sap.ui.core.routing.HashChanger}.

<strong>ATTENTION:</strong> this class will not be accurate if someone does hash-replacement without the named classes above. If you are manipulating the hash directly, this class is not supported anymore.
*/
extern class History
{

	/**
	* 
	* @param	oHashChanger required, without a HashChanger this class cannot work. The class needs to be aware of the hash-changes.
	* @return	Object
	*/
	public function new( ?oHashChanger:sap.ui.core.routing.HashChanger):Void;

	/**
	* Determines what the navigation direction for a newly given hash would be It will say Unknown if there is a history foo - bar (current history) - foo If you now ask for the direction of the hash "foo" you get Unknown because it might be backwards or forwards. For hash replacements, the history stack will be replaced at this position for the history.
	* @param	sNewHash optional, if this parameter is not passed the last hashChange is taken.
	* @return	or undefined, if no navigation has taken place yet.
	*/
	public function getDirection( ?sNewHash:String):sap.ui.core.routing.HistoryDirection;

	/**
	* null
	* @return	a global singleton that gets created as soon as the sap.ui.core.routing.History is required
	*/
	public static function getInstance( ):sap.ui.core.routing.History;

	/**
	* gets the previous hash in the history - if the last direction was Unknown or there was no navigation yet, undefined will be returned
	* @return	or undefined
	*/
	public function getPreviousHash( ):String;
}

