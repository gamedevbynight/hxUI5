package sap.ui.core.support;

@:native("sap.ui.core.support.RuleEngineOpaAssertions")
extern class RuleEngineOpaAssertions
{

	/**
	* If there are issues found the assertion result will be false and a report with all the issues will be generated in the message of the test. If no issues were found the assertion result will be true and no report will be generated.

If "sap-skip-rules-issues=true" is set as an URI parameter, assertion result will be always positive.
	* @return	Promise.
	*/
	public static function getFinalReport( ):js.lib.Promise<RuleEngineOpaAssertions>;

	/**
	* Stores analysis history (if such) as last element in window._$files array. Accessing this array gives an opportunity to store this history in a file.
	* @param	options The options used to configure reporting.
	* @return	Promise.
	*/
	public static function getReportAsFileInFormat( ?options:Dynamic):js.lib.Promise<RuleEngineOpaAssertions>;

	/**
	* Run the Support Assistant and analyze against a specific state of the application. Depending on the options passed the assertion might either fail or not if any issues were found.

If "sap-skip-rules-issues=true" is set as an URI parameter, assertion result will be always positive.
	* @param	options The options used to configure an analysis.
	* @return	Promise.
	*/
	public static function noRuleFailures( ?options:Dynamic):js.lib.Promise<RuleEngineOpaAssertions>;
}

