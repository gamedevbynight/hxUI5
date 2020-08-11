package sap.m;

@:native("sap.m.GrowingList")

/**
* <code>sap.m.GrowingList</code> control is the container for all list items and inherits from sap.m.List control. Everything like the selection, deletion, unread states and inset style are also maintained here. In addition the control provides a loading mechanism to request data from the model and append the list items to the list. The request is started manually by tapping on the trigger at the end of the list.
*/
extern class GrowingList extends sap.m.List
{
	@:overload(function(?sId:String, ?mSettings:GrowingListArgs):Void {})
	public function new(?mSettings:GrowingListArgs):Void;

	/**
	* Creates a new subclass of class sap.m.GrowingList with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.m.List.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns a metadata object for class sap.m.GrowingList.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getScrollToLoad scrollToLoad}.

If you set this property to true then user needs to scroll end to trigger loading a new page. Default value is false which means user needs to scroll end and then click button to load new page. NOTE: This property can be set true, if growing property is set "true" and if you only have one instance of this control inside the scroll container(e.g Page).

Default value is <code>false</code>.
	* @return	Value of property <code>scrollToLoad</code>
	*/
	public function getScrollToLoad( ):Bool;

	/**
	* Gets current value of property {@link #getThreshold threshold}.

Number of items requested from the server. To activate this you should set growing property to "true"

Default value is <code>20</code>.
	* @return	Value of property <code>threshold</code>
	*/
	public function getThreshold( ):Int;

	/**
	* Gets current value of property {@link #getTriggerText triggerText}.

Text which is displayed on the trigger at the end of the list. The default is a translated text ("Load More Data") coming from the messagebundle properties. This property can be used only if growing property is set "true" and scrollToLoad property is set "false".
	* @return	Value of property <code>triggerText</code>
	*/
	public function getTriggerText( ):String;

	/**
	* Sets a new value for property {@link #getScrollToLoad scrollToLoad}.

If you set this property to true then user needs to scroll end to trigger loading a new page. Default value is false which means user needs to scroll end and then click button to load new page. NOTE: This property can be set true, if growing property is set "true" and if you only have one instance of this control inside the scroll container(e.g Page).

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bScrollToLoad New value for property <code>scrollToLoad</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setScrollToLoad( ?bScrollToLoad:Bool):sap.m.GrowingList;

	/**
	* Sets a new value for property {@link #getThreshold threshold}.

Number of items requested from the server. To activate this you should set growing property to "true"

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>20</code>.
	* @param	iThreshold New value for property <code>threshold</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setThreshold( ?iThreshold:Int):sap.m.GrowingList;

	/**
	* Sets a new value for property {@link #getTriggerText triggerText}.

Text which is displayed on the trigger at the end of the list. The default is a translated text ("Load More Data") coming from the messagebundle properties. This property can be used only if growing property is set "true" and scrollToLoad property is set "false".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sTriggerText New value for property <code>triggerText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setTriggerText( sTriggerText:String):sap.m.GrowingList;
}

typedef GrowingListArgs = sap.m.List.ListArgs & {

	/**
	* Number of items requested from the server. To activate this you should set growing property to "true"
	*/
	@:optional var threshold:haxe.extern.EitherType<String,Int>;

	/**
	* Text which is displayed on the trigger at the end of the list. The default is a translated text ("Load More Data") coming from the messagebundle properties. This property can be used only if growing property is set "true" and scrollToLoad property is set "false".
	*/
	@:optional var triggerText:String;

	/**
	* If you set this property to true then user needs to scroll end to trigger loading a new page. Default value is false which means user needs to scroll end and then click button to load new page. NOTE: This property can be set true, if growing property is set "true" and if you only have one instance of this control inside the scroll container(e.g Page).
	*/
	@:optional var scrollToLoad:haxe.extern.EitherType<String,Bool>;
}
