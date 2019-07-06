package sap.ui.core.theming;

@:native("sap.ui.core.theming.Parameters")
extern class Parameters
{
	@:overload( function(vName:String, ?oElement:sap.ui.core.Element):Dynamic{ })

	/**
	* Returns the current value for one or more theming parameters, depending on the given arguments. <ul> <li>If no parameter is given a key-value map containing all parameters is returned</li> <li>If a <code>string</code> is given as first parameter the value is returned as a <code>string</code></li> <li>If an <code>array</code> is given as first parameter a key-value map containing all parameters from the <code>array</code> is returned</li> </ul> <p>The returned key-value maps are a copy so changing values in the map does not have any effect</p>
	* @param	vName the (array with) CSS parameter name(s)
	* @param	oElement Element / control instance to take into account when looking for a parameter value. This can make a difference when a parameter value is overridden in a theme scope set via a CSS class.
	* @return	the CSS parameter value(s)
	*/
	public static function get( vName:Array<String>, ?oElement:sap.ui.core.Element):Dynamic;

	/**
	* Resets the CSS parameters which finally will reload the parameters the next time they are queried via the method <code>get</code>.
	* @return	Void
	*/
	public static function reset( ):Void;
}

