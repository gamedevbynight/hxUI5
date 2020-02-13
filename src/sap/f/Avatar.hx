package sap.f;

@:native("sap.f.Avatar")

/**
* An image-like control that has different display options for representing images, initials, and icons.

<h3>Overview</h3>

The <code>Avatar</code> control allows the usage of different content, shapes, and sizes depending on the use case.

The content types that can be displayed are either images, icons, or initials. The shape can be circular or square. There are several predefined sizes, as well as an option to set a custom size.

<h3>Usage</h3>

Up to two Latin letters can be displayed as initials in an <code>Avatar</code>. If there are more than two letters, or if there's a non-Latin character present, a default image placeholder will be created.
*/
extern class Avatar extends sap.m.Avatar
{
	@:overload(function(?sId:String, ?mSettings:AvatarArgs):Void {})
	public function new(?mSettings:AvatarArgs):Void;

	/**
	* Creates a new subclass of class sap.f.Avatar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.Avatar.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.f.Avatar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;
}

typedef AvatarArgs = sap.m.Avatar.AvatarArgs & {
}
