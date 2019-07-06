package sap.base.log;

@:native("module:sap/base/Log.Level")
@:enum extern abstract Level(String)
{
    /**
    * Trace level to log everything.
    */
    var ALL= "ALL";
    /**
    * Debug level. Use this for logging information necessary for debugging
    */
    var DEBUG= "DEBUG";
    /**
    * Error level. Use this for logging of erroneous but still recoverable situations
    */
    var ERROR= "ERROR";
    /**
    * Fatal level. Use this for logging unrecoverable situations
    */
    var FATAL= "FATAL";
    /**
    * Info level. Use this for logging information of purely informative nature
    */
    var INFO= "INFO";
    /**
    * Do not log anything
    */
    var NONE= "NONE";
    /**
    * Trace level. Use this for tracing the program flow.
    */
    var TRACE= "TRACE";
    /**
    * Warning level. Use this for logging unwanted but foreseen situations
    */
    var WARNING= "WARNING";
}
