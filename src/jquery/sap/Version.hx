package jquery.sap;

@:native("jQuery.sap.Version")

/**
* Represents a version consisting of major, minor, patch version and suffix, e.g. '1.2.7-SNAPSHOT'.
*/
extern class Version
{
	@:overload( function(?vMajor:Int, ?iMinor:Int, ?iPatch:Int, ?sSuffix:String):Void{ })
	@:overload( function(?vMajor:String, ?iMinor:Int, ?iPatch:Int, ?sSuffix:String):Void{ })
	@:overload( function(?vMajor:Array<Dynamic>, ?iMinor:Int, ?iPatch:Int, ?sSuffix:String):Void{ })

	/**
	* 
	* @param	vMajor the major part of the version (int) or any of the single parameter variants explained above.
	* @param	iMinor the minor part of the version number
	* @param	iPatch the patch part of the version number
	* @param	sSuffix the suffix part of the version number
	* @return	Object
	*/
	public function new( ?vMajor:jquery.sap.Version, ?iMinor:Int, ?iPatch:Int, ?sSuffix:String):Void;

	/**
	* Compares this version with a given one.

The version with which this version should be compared can be given as a <code>jQuery.sap.Version</code> instance, as a string (e.g. <code>v.compareto("1.4.5")</code>). Or major, minor, patch and suffix values can be given as separate parameters (e.g. <code>v.compareTo(1, 4, 5)</code>) or in an array (e.g. <code>v.compareTo([1, 4, 5])</code>).
	* @return	0, if the given version is equal to this version, a negative value if the given other version is greater and a positive value otherwise
	*/
	public function compareTo( ):Int;

	/**
	* Returns the major version part of this version.
	* @return	the major version part of this version
	*/
	public function getMajor( ):Int;

	/**
	* Returns the minor version part of this version.
	* @return	the minor version part of this version
	*/
	public function getMinor( ):Int;

	/**
	* Returns the patch (or micro) version part of this version.
	* @return	the patch version part of this version
	*/
	public function getPatch( ):Int;

	/**
	* Returns the version suffix of this version.
	* @return	the version suffix of this version
	*/
	public function getSuffix( ):String;
	@:overload( function(vMin:String, vMax:String):Bool{ })
	@:overload( function(vMin:String, vMax:Array<Dynamic>):Bool{ })
	@:overload( function(vMin:String, vMax:jquery.sap.Version):Bool{ })
	@:overload( function(vMin:Array<Dynamic>, vMax:String):Bool{ })
	@:overload( function(vMin:Array<Dynamic>, vMax:Array<Dynamic>):Bool{ })
	@:overload( function(vMin:Array<Dynamic>, vMax:jquery.sap.Version):Bool{ })
	@:overload( function(vMin:jquery.sap.Version, vMax:String):Bool{ })
	@:overload( function(vMin:jquery.sap.Version, vMax:Array<Dynamic>):Bool{ })

	/**
	* Checks whether this version is in the range of the given interval (start inclusive, end exclusive).

The boundaries against which this version should be checked can be given as <code>jQuery.sap.Version</code> instances (e.g. <code>v.inRange(v1, v2)</code>), as strings (e.g. <code>v.inRange("1.4", "2.7")</code>) or as arrays (e.g. <code>v.inRange([1,4], [2,7])</code>).
	* @param	vMin the start of the range (inclusive)
	* @param	vMax the end of the range (exclusive)
	* @return	<code>true</code> if this version is greater or equal to <code>vMin</code> and smaller than <code>vMax</code>, <code>false</code> otherwise.
	*/
	public function inRange( vMin:jquery.sap.Version, vMax:jquery.sap.Version):Bool;

	/**
	* Returns a string representation of this version.
	* @return	a string representation of this version.
	*/
	public function toString( ):String;
}

