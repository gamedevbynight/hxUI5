package sap.ui.test.gherkin;

@:native("sap.ui.test.gherkin.StepDefinitions")

/**
* Provides the interface between human and machine since a Gherkin feature file is human-readable and the computer does not know how to execute its steps.

It defines what each step in the Gherkin feature file will actually do when it is executed.
*/
extern class StepDefinitions extends sap.ui.base.Object
{
public function new():Void;

	/**
	* Closes the application and cleans up any mess made by the tests. To avoid erroneous exceptions during test execution, make sure that it is safe to run this method even if the application was never started.
	* @return	Void
	*/
	public function closeApplication( ):Void;

	/**
	* Creates a new subclass of class sap.ui.test.gherkin.StepDefinitions with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.test.gherkin.StepDefinitions.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Registers the step definitions by calling the method "register".
	* @return	Void
	*/
	public function init( ):Void;

	/**
	* Registers a step definition.
	* @param	rRegex the regular expression that matches the feature file step (with leading "Given", "When", "Then", "But" or "*" removed). E.g. if the feature file has the step "Then I should be served a coffee" it will be truncated to "I should be served a coffee" and tested against "rRegex" to check for a match. The simple regular expression /^I should be served a coffee$/i would match this text. The regular expression can specify capturing groups, which will be passed as parameters to "fnFunc".
	* @param	fnFunc the function to execute in the event that the regular expression matches. Receives regular expression capturing groups as parameters in the same order that they are specified in the regular expression. If a data table is specified for the step, it will be passed as an additional final parameter. At execution time, all functions within a particular scenario will execute within the same "this" context.
	* @return	Void
	*/
	public function register( rRegex:RegExp, fnFunc:()->Void):Void;
}

