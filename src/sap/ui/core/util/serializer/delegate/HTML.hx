package sap.ui.core.util.serializer.delegate;

@:native("sap.ui.core.util.serializer.delegate.HTML")

/**
* HTML serializer delegate class.
*/
extern class HTML extends sap.ui.core.util.serializer.delegate.Delegate
{

	/**
	* Creates a new subclass of class sap.ui.core.util.serializer.delegate.HTML with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.util.serializer.delegate.Delegate.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.ui.core.util.serializer.delegate.HTML.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;
}

