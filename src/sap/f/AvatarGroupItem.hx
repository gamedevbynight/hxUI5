package sap.f;

@:native("sap.f.AvatarGroupItem")

/**
* Represents a single avatar item displayed in the {@link sap.f.AvatarGroup} control.

<h3>Overview</h3> The <code>AvatarGroupItem</code> control allows you to define additional properties that are applied when rendering each <code>AvatarGroupItem</code> instance in the {@link sap.f.AvatarGroup} control.
*/
extern class AvatarGroupItem extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:AvatarGroupItemArgs):Void {})
	public function new(?mSettings:AvatarGroupItemArgs):Void;

	/**
	* Creates a new subclass of class sap.f.AvatarGroupItem with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns the color of the avatar.
	* @return	The color of the avatar
	*/
	public function getAvatarColor( ):String;

	/**
	* Gets current value of property {@link #getFallbackIcon fallbackIcon}.

Defines the fallback icon displayed in case of wrong image src and no initials set.

<b>Notes:</b> <ul> <li>If not set, a default fallback icon is displayed.</li> <li>Accepted values are only icons from the SAP icon font.</li> </ul>
	* @return	Value of property <code>fallbackIcon</code>
	*/
	public function getFallbackIcon( ):String;

	/**
	* Gets current value of property {@link #getInitials initials}.

Defines the displayed initials.
	* @return	Value of property <code>initials</code>
	*/
	public function getInitials( ):String;

	/**
	* Returns a metadata object for class sap.f.AvatarGroupItem.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSrc src}.

Determines the path to the desired image or icon.
	* @return	Value of property <code>src</code>
	*/
	public function getSrc( ):sap.ui.core.URI;

	/**
	* Sets a new value for property {@link #getFallbackIcon fallbackIcon}.

Defines the fallback icon displayed in case of wrong image src and no initials set.

<b>Notes:</b> <ul> <li>If not set, a default fallback icon is displayed.</li> <li>Accepted values are only icons from the SAP icon font.</li> </ul>

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sFallbackIcon New value for property <code>fallbackIcon</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setFallbackIcon( ?sFallbackIcon:String):sap.f.AvatarGroupItem;

	/**
	* Sets a new value for property {@link #getInitials initials}.

Defines the displayed initials.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sInitials New value for property <code>initials</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setInitials( ?sInitials:String):sap.f.AvatarGroupItem;

	/**
	* Sets a new value for property {@link #getSrc src}.

Determines the path to the desired image or icon.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sSrc New value for property <code>src</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSrc( ?sSrc:sap.ui.core.URI):sap.f.AvatarGroupItem;
}

typedef AvatarGroupItemArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Determines the path to the desired image or icon.
	*/
	@:optional var src:haxe.extern.EitherType<String,sap.ui.core.URI>;

	/**
	* Defines the displayed initials.
	*/
	@:optional var initials:String;

	/**
	* Defines the fallback icon displayed in case of wrong image src and no initials set.

<b>Notes:</b> <ul> <li>If not set, a default fallback icon is displayed.</li> <li>Accepted values are only icons from the SAP icon font.</li> </ul>
	*/
	@:optional var fallbackIcon:String;
}
