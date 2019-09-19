package sap.ui.core.routing;

@:native("sap.ui.core.routing.History")

/**
* null
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
	* Returns the length difference between the history state stored in browser's pushState and the state maintained in this class.

The function returns <code>undefined</code> when <ul> <li>The current state in browser's history pushState isn't initialized, for example, between a new hash is set or replaced and the "hashChange" event is processed by this class</li> <li>History pushState isn't fully supported, for example, Internet Explorer.</li> <li>History pushState is already used before UI5 History is initialized, and UI5 can't maintain the hash history by using the browser pushState</li> </ul>

Once the "hashChange" event is processed by this class, this method always returns 0. However, before a "hashChange" event reaches this class, it returns the offset between the new hash and the previous one within the history state.
	* @return	The length difference or returns <code>undefined</code> when browser pushState can't be used at the moment when this function is called
	*/
	public function getHistoryStateOffset( ):Dynamic;

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

