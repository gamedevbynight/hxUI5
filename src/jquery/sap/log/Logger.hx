package jquery.sap.log;

@:native("jQuery.sap.log.Logger")

/**
* A Logger class
*/
extern class Logger
{

	/**
	* 
	* @param	sDefaultComponent The component to use
	* @return	Object
	*/
	public function new( ?sDefaultComponent:String):Void;

	/**
	* Creates a new debug-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance
	*/
	public function debug( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:(Dynamic)->Void):jquery.sap.log.Logger;

	/**
	* Creates a new error-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance
	*/
	public function error( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:(Dynamic)->Void):jquery.sap.log.Logger;

	/**
	* Creates a new fatal-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance for method chaining
	*/
	public function fatal( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:(Dynamic)->Void):jquery.sap.log.Logger;

	/**
	* Returns the log level currently effective for the given component. If no component is given or when no level has been configured for a given component, the log level for the default component of this logger is returned.
	* @param	sComponent Name of the component to retrieve the log level for
	* @return	The log level for the given component or the default log level
	*/
	public function getLevel( ?sComponent:String):Int;

	/**
	* Creates a new info-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance
	*/
	public function info( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:(Dynamic)->Void):jquery.sap.log.Logger;

	/**
	* Checks whether logging is enabled for the given log level, depending on the currently effective log level for the given component.

If no component is given, the default component of this logger will be taken into account.
	* @param	iLevel The log level in question
	* @param	sComponent Name of the component to check the log level for
	* @return	Whether logging is enabled or not
	*/
	public function isLoggable( ?iLevel:Int, ?sComponent:String):Bool;

	/**
	* Defines the maximum <code>jQuery.sap.log.Level</code> of log entries that will be recorded. Log entries with a higher (less important) log level will be omitted from the log. When a component name is given, the log level will be configured for that component only, otherwise the log level for the default component of this logger is set. For the global logger, the global default level is set.

<b>Note</b>: Setting a global default log level has no impact on already defined component log levels. They always override the global default log level.
	* @param	iLogLevel The new log level
	* @param	sComponent The log component to set the log level for
	* @return	This logger object to allow method chaining
	*/
	public function setLevel( iLogLevel:jquery.sap.log.Level, ?sComponent:String):jquery.sap.log.Logger;

	/**
	* Creates a new trace-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log-instance
	*/
	public function trace( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:(Dynamic)->Void):jquery.sap.log.Logger;

	/**
	* Creates a new warning-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance
	*/
	public function warning( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:(Dynamic)->Void):jquery.sap.log.Logger;
}

