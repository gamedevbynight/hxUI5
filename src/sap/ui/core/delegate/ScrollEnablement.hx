package sap.ui.core.delegate;

@:native("sap.ui.core.delegate.ScrollEnablement")

/**
* Delegate for touch scrolling on mobile devices.

This delegate uses native scrolling of mobile and desktop browsers. Third party scrolling libraries are not supported.

Controls that implement ScrollEnablement should additionally provide the getScrollDelegate method that returns the current instance of this delegate object
*/
extern class ScrollEnablement extends sap.ui.base.Object
{

	/**
	* Creates a new subclass of class sap.ui.core.delegate.ScrollEnablement with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.delegate.ScrollEnablement.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

