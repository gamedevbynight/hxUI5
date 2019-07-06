package sap.ui.test.gherkin;

@:native("sap.ui.test.gherkin.qUnitTestHarness")
extern class QUnitTestHarness
{

	/**
	* Dynamically generates and executes QUnit tests
	* @param	args the arguments to the function
	* @return	Void
	*/
	public static function test( args:Dynamic):Void;
}

