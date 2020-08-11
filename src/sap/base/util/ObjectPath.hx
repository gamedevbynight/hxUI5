package sap.base.util;

@:native("module:sap/base/util/ObjectPath")
extern class ObjectPath
{
	@:overload( function(vObjectPath:String, ?oRootContext:Dynamic):Dynamic{ })

	/**
	* Creates a object path from the provided path in the provided root context.

The provided path is used to navigate through the nested objects, starting with the root context.
	* @param	vObjectPath Path as string where each name is separated by '.'. Can also be an array of names.
	* @param	oRootContext Root context where the path starts
	* @return	The newly created context object, e.g. base.my.test.module
	*/
	public static function create( vObjectPath:Array<String>, ?oRootContext:Dynamic):Dynamic;
	@:overload( function(vObjectPath:String, ?oRootContext:Dynamic):Dynamic{ })

	/**
	* Returns a value located in the provided path. If the provided path cannot be resolved completely, <code>undefined</code> is returned.

The provided object path is used to navigate through the nested objects, starting with the root context. If no root context is provided, the object path begins with <code>window</code>.
	* @param	vObjectPath Path as string where each name is separated by '.'. Can also be an array of names.
	* @param	oRootContext Root context where the path starts
	* @return	Returns the value located in the provided path, or <code>undefined</code> if the path does not exist completely.
	*/
	public static function get( vObjectPath:Array<String>, ?oRootContext:Dynamic):Dynamic;
	@:overload( function(vObjectPath:String, vValue:Dynamic, ?oRootContext:Dynamic):Void{ })

	/**
	* Sets a value located in the provided path.

The provided path is used to navigate through the nested objects, starting with the root context.

<b>Note:</b> Ensures that the object path exists.
	* @param	vObjectPath vObjectPath Path as string where each name is separated by '.'. Can also be an array of names.
	* @param	vValue The value to be set in the root context's object path
	* @param	oRootContext Root context where the path starts
	* @return	Void
	*/
	public static function set( vObjectPath:Array<String>, vValue:Dynamic, ?oRootContext:Dynamic):Void;
}

