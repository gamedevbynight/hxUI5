package sap.ui.test.gherkin;

@:native("sap.ui.test.gherkin.opa5TestHarness")
extern class Opa5TestHarness
{

	/**
	* Dynamically generates Opa5 tests

If a test step is missing and args.generateMissingSteps is true then the Gherkin step will be converted into Opa Page Object code and executed. The text will be converted to camelCase and have any non-alphanumeric character removed. Here are two pertinent examples:

(1) The simple step "Given I start my app" will be converted into the call "Given.iStartMyApp();"

(2) The step "Then on page 1: I should see the page 1 text" will become the call "Then.onPage1.iShouldSeeThePage1Text();"

Chaining function calls, such as "Then.iStartMyApp().and.iCloseMyApp()" is not possible at this time.
	* @param	args the arguments to the function
	* @return	Void
	*/
	public static function test( args:Dynamic):Void;
}

