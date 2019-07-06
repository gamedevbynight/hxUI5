package jquery.sap;

@:native("jquery.sap.log")
extern class Log
{

	/**
	* Allows to add a new LogListener that will be notified for new log entries.

The given object must provide method <code>onLogEntry</code> and can also be informed about <code>onDetachFromLog</code> and <code>onAttachToLog</code>
	* @param	oListener The new listener object that should be informed
	* @return	The global logger
	*/
	public static function addLogListener( oListener:Dynamic):jquery.sap.log;

	/**
	* Creates a new debug-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance
	*/
	public static function debug( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):jquery.sap.log.Logger;

	/**
	* Creates a new error-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance
	*/
	public static function error( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):jquery.sap.log.Logger;

	/**
	* Creates a new fatal-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance for method chaining
	*/
	public static function fatal( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):jquery.sap.log.Logger;

	/**
	* Returns the log level currently effective for the given component. If no component is given or when no level has been configured for a given component, the log level for the default component of this logger is returned.
	* @param	sComponent Name of the component to retrieve the log level for
	* @return	The log level for the given component or the default log level
	*/
	public static function getLevel( ?sComponent:String):Int;

	/**
	* Returns the logged entries recorded so far as an array.

Log entries are plain JavaScript objects with the following properties <ul> <li>timestamp {number} point in time when the entry was created</li> <li>level {int} LogLevel level of the entry</li> <li>message {string} message text of the entry</li> </ul>
	* @return	an array containing the recorded log entries
	*/
	public static function getLogEntries( ):Array<Dynamic>;

	/**
	* Returns a {@link jQuery.sap.log.Logger} for the given component.

The method might or might not return the same logger object across multiple calls. While loggers are assumed to be light weight objects, consumers should try to avoid redundant calls and instead keep references to already retrieved loggers.

The optional second parameter <code>iDefaultLogLevel</code> allows to specify a default log level for the component. It is only applied when no log level has been defined so far for that component (ignoring inherited log levels). If this method is called multiple times for the same component but with different log levels, only the first call one might be taken into account.
	* @param	sComponent Component to create the logger for
	* @param	iDefaultLogLevel a default log level to be used for the component, if no log level has been defined for it so far.
	* @return	A logger for the component.
	*/
	public static function getLogger( sComponent:String, ?iDefaultLogLevel:Int):jquery.sap.log.Logger;

	/**
	* Creates a new info-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance
	*/
	public static function info( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):jquery.sap.log.Logger;

	/**
	* Checks whether logging is enabled for the given log level, depending on the currently effective log level for the given component.

If no component is given, the default component of this logger will be taken into account.
	* @param	iLevel The log level in question
	* @param	sComponent Name of the component to check the log level for
	* @return	Whether logging is enabled or not
	*/
	public static function isLoggable( ?iLevel:Int, ?sComponent:String):Bool;

	/**
	* Allows to remove a registered LogListener.
	* @param	oListener The new listener object that should be removed
	* @return	The global logger
	*/
	public static function removeLogListener( oListener:Dynamic):jquery.sap.log;

	/**
	* Defines the maximum <code>jQuery.sap.log.Level</code> of log entries that will be recorded. Log entries with a higher (less important) log level will be omitted from the log. When a component name is given, the log level will be configured for that component only, otherwise the log level for the default component of this logger is set. For the global logger, the global default level is set.

<b>Note</b>: Setting a global default log level has no impact on already defined component log levels. They always override the global default log level.
	* @param	iLogLevel The new log level
	* @param	sComponent The log component to set the log level for
	* @return	This logger object to allow method chaining
	*/
	public static function setLevel( iLogLevel:jquery.sap.log.Level, ?sComponent:String):jquery.sap.log.Logger;

	/**
	* Creates a new trace-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log-instance
	*/
	public static function trace( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):jquery.sap.log.Logger;

	/**
	* Creates a new warning-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	The log instance
	*/
	public static function warning( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):jquery.sap.log.Logger;
}

