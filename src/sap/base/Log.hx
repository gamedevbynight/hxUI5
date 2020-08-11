package sap.base;

@:native("module:sap/base/Log")
extern class Log
{

	/**
	* Allows to add a new LogListener that will be notified for new log entries.

The given object must provide method <code>onLogEntry</code> and can also be informed about <code>onDetachFromLog</code>, <code>onAttachToLog</code> and <code>onDiscardLogEntries</code>.
	* @param	oListener The new listener object that should be informed
	* @return	Void
	*/
	public static function addLogListener( oListener:Dynamic):Void;

	/**
	* Creates a new debug-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	Void
	*/
	public static function debug( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):Void;

	/**
	* Creates a new error-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	Void
	*/
	public static function error( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):Void;

	/**
	* Creates a new fatal-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	Void
	*/
	public static function fatal( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):Void;

	/**
	* Returns the log level currently effective for the given component. If no component is given or when no level has been configured for a given component, the log level for the default component of this logger is returned.
	* @param	sComponent Name of the component to retrieve the log level for
	* @return	The log level for the given component or the default log level
	*/
	public static function getLevel( ?sComponent:String):sap.base.log.Level;

	/**
	* Returns the logged entries recorded so far as an array.

Log entries are plain JavaScript objects with the following properties <ul> <li>timestamp {number} point in time when the entry was created <li>level {module:sap/base/Log.Level} LogLevel level of the entry <li>message {string} message text of the entry </ul> The default amount of stored log entries is limited to 3000 entries.
	* @return	an array containing the recorded log entries
	*/
	public static function getLogEntries( ):Array<Dynamic>;

	/**
	* Returns a dedicated logger for a component

The logger comes with the same API as the Logger module: <ul> <li><code>#fatal</code> - see: {@link sap/base/Log.fatal} <li><code>#error</code> - see: {@link sap/base/Log.error} <li><code>#warning</code> - see: {@link sap/base/Log.warning} <li><code>#info</code> - see: {@link sap/base/Log.info} <li><code>#debug</code> - see: {@link sap/base/Log.debug} <li><code>#trace</code> - see: {@link sap/base/Log.trace} <li><code>#setLevel</code> - see: {@link sap/base/Log.setLevel} <li><code>#getLevel</code> - see: {@link sap/base/Log.getLevel} <li><code>#isLoggable</code> - see: {@link sap/base/Log.isLoggable} </ul>
	* @param	sComponent Name of the component which should be logged
	* @param	iLogLevel The default log level
	* @return	A logger with a specified component
	*/
	public static function getLogger( sComponent:String, ?iLogLevel:sap.base.log.Level):Dynamic;

	/**
	* Creates a new info-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	Void
	*/
	public static function info( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):Void;

	/**
	* Checks whether logging is enabled for the given log level, depending on the currently effective log level for the given component.

If no component is given, the default component of this logger will be taken into account.
	* @param	iLevel The log level in question
	* @param	sComponent Name of the component to check the log level for
	* @return	Whether logging is enabled or not
	*/
	public static function isLoggable( ?iLevel:sap.base.log.Level, ?sComponent:String):Bool;

	/**
	* Allows to remove a registered LogListener.
	* @param	oListener The new listener object that should be removed
	* @return	Void
	*/
	public static function removeLogListener( oListener:Dynamic):Void;

	/**
	* Defines the maximum <code>sap.base.log.Level</code> of log entries that will be recorded. Log entries with a higher (less important) log level will be omitted from the log. When a component name is given, the log level will be configured for that component only, otherwise the log level for the default component of this logger is set. For the global logger, the global default level is set.

<b>Note</b>: Setting a global default log level has no impact on already defined component log levels. They always override the global default log level.
	* @param	iLogLevel The new log level
	* @param	sComponent The log component to set the log level for
	* @return	Void
	*/
	public static function setLevel( iLogLevel:sap.base.log.Level, ?sComponent:String):Void;

	/**
	* Creates a new trace-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	Void
	*/
	public static function trace( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):Void;

	/**
	* Creates a new warning-level entry in the log with the given message, details and calling component.
	* @param	sMessage Message text to display
	* @param	sDetails Details about the message, might be omitted
	* @param	sComponent Name of the component that produced the log entry
	* @param	fnSupportInfo Callback that returns an additional support object to be logged in support mode. This function is only called if support info mode is turned on with <code>logSupportInfo(true)</code>. To avoid negative effects regarding execution times and memory consumption, the returned object should be a simple immutable JSON object with mostly static and stable content.
	* @return	Void
	*/
	public static function warning( sMessage:String, ?sDetails:String, ?sComponent:String, ?fnSupportInfo:()->Void):Void;
}

