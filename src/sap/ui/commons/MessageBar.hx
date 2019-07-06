package sap.ui.commons;

@:native("sap.ui.commons.MessageBar")

/**
* Creates an instance of a MessageBar Control, for displaying messages.
*/
extern class MessageBar extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:MessageBarArgs):Void {})
	public function new(?mSettings:MessageBarArgs):Void;

	/**
	* Adds/updates a supplied list of messages. The MessageBar will appear if at least one message exists.
	* @param	aAMessages Array of messages.
	* @return	Void
	*/
	public function addMessages( aAMessages:Array<sap.ui.commons.Message>):Void;

	/**
	* Deletes all messages.
	* @return	<code>this</code> to allow method chaining
	*/
	public function deleteAllMessages( ):sap.ui.commons.MessageBar;

	/**
	* Deletes a supplied list of messages. The MessageBar will disappear when no message remains.
	* @param	aIds Messages IDs to be deleted.
	* @return	Void
	*/
	public function deleteMessages( aIds:Array<String>):Void;

	/**
	* Creates a new subclass of class sap.ui.commons.MessageBar with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAnchorID anchorID}.

Element ID upon which the MessageBar will be initially positioned.

Default value is <code>empty string</code>.
	* @return	Value of property <code>anchorID</code>
	*/
	public function getAnchorID( ):String;

	/**
	* Gets current value of property {@link #getAnchorSnapPoint anchorSnapPoint}.

Type: sap.ui.core.Popup.Dock SnapPoint of MessageBar over anchorId. Note: Use "begin" or "end" for RTL support. Note: "center" is not indicated, as positioning is only set once, either via the css "left" or the "right" attribute. Therefore a MessageBar will only be extended in one direction, as Messages come in.

Default value is <code>begin top</code>.
	* @return	Value of property <code>anchorSnapPoint</code>
	*/
	public function getAnchorSnapPoint( ):String;

	/**
	* Gets current value of property {@link #getMaxListed maxListed}.

Maximum number of messages being displayed in the List before a scrollbar appears. Value '0' means no limit.

Default value is <code>7</code>.
	* @return	Value of property <code>maxListed</code>
	*/
	public function getMaxListed( ):Int;

	/**
	* Gets current value of property {@link #getMaxToasted maxToasted}.

Maximum number of simultaneous messages being toasted in a row. Value '0' means this dynamic part is switched off.

Default value is <code>3</code>.
	* @return	Value of property <code>maxToasted</code>
	*/
	public function getMaxToasted( ):Int;

	/**
	* Returns a metadata object for class sap.ui.commons.MessageBar.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getVisible visible}.

Specifies whether or not the MessageBar is visible. Invisible controls are not rendered.

Default value is <code>true</code>.
	* @return	Value of property <code>visible</code>
	*/
	public function getVisible( ):Bool;

	/**
	* Sets a new value for property {@link #getAnchorID anchorID}.

Element ID upon which the MessageBar will be initially positioned.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sAnchorID New value for property <code>anchorID</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAnchorID( sAnchorID:String):sap.ui.commons.MessageBar;

	/**
	* Sets a new value for property {@link #getAnchorSnapPoint anchorSnapPoint}.

Type: sap.ui.core.Popup.Dock SnapPoint of MessageBar over anchorId. Note: Use "begin" or "end" for RTL support. Note: "center" is not indicated, as positioning is only set once, either via the css "left" or the "right" attribute. Therefore a MessageBar will only be extended in one direction, as Messages come in.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>begin top</code>.
	* @param	sAnchorSnapPoint New value for property <code>anchorSnapPoint</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAnchorSnapPoint( sAnchorSnapPoint:String):sap.ui.commons.MessageBar;

	/**
	* Sets a new value for property {@link #getMaxListed maxListed}.

Maximum number of messages being displayed in the List before a scrollbar appears. Value '0' means no limit.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>7</code>.
	* @param	iMaxListed New value for property <code>maxListed</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxListed( iMaxListed:Int):sap.ui.commons.MessageBar;

	/**
	* Sets a new value for property {@link #getMaxToasted maxToasted}.

Maximum number of simultaneous messages being toasted in a row. Value '0' means this dynamic part is switched off.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>3</code>.
	* @param	iMaxToasted New value for property <code>maxToasted</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxToasted( iMaxToasted:Int):sap.ui.commons.MessageBar;

	/**
	* Setter for property <code>visible</code>.

Default value is <code>true</code>

The default implementation of function <code>setVisible()</code> is enhanced in order to toggle the <code>visibility:hidden;</code> attribute over the control.
	* @param	bVisible New value for property <code>visible</code>
	* @return	<code>this</code> to allow method chaining
	*/
	public function setVisible( bVisible:Bool):sap.ui.commons.MessageBar;
}

typedef MessageBarArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Element ID upon which the MessageBar will be initially positioned.
	*/
	@:optional var anchorID:String;

	/**
	* Specifies whether or not the MessageBar is visible. Invisible controls are not rendered.
	*/
	@:optional var visible:haxe.extern.EitherType<String,Bool>;

	/**
	* Maximum number of simultaneous messages being toasted in a row. Value '0' means this dynamic part is switched off.
	*/
	@:optional var maxToasted:haxe.extern.EitherType<String,Int>;

	/**
	* Maximum number of messages being displayed in the List before a scrollbar appears. Value '0' means no limit.
	*/
	@:optional var maxListed:haxe.extern.EitherType<String,Int>;

	/**
	* Type: sap.ui.core.Popup.Dock SnapPoint of MessageBar over anchorId. Note: Use "begin" or "end" for RTL support. Note: "center" is not indicated, as positioning is only set once, either via the css "left" or the "right" attribute. Therefore a MessageBar will only be extended in one direction, as Messages come in.
	*/
	@:optional var anchorSnapPoint:String;
}
