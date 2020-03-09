package sap.ui.core;

@:native("sap.ui.core.CustomData")

/**
* Contains a single key/value pair of custom data attached to an <code>Element</code>.

See method {@link sap.ui.core.Element#data Element.prototype.data} and the chapter {@link topic:91f0c3ee6f4d1014b6dd926db0e91070 Custom Data - Attaching Data Objects to Controls} in the documentation.
*/
extern class CustomData extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:CustomDataArgs):Void {})
	public function new(?mSettings:CustomDataArgs):Void;

	/**
	* Creates a new subclass of <code>CustomData</code> with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getKey key}.

The key of the data in this CustomData object. When the data is just stored, it can be any string, but when it is to be written to HTML (<code>writeToDom == true</code>) then it must also be a valid HTML attribute name. It must conform to the {@link sap.ui.core.ID} type and may contain no colon. To avoid collisions, it also may not start with "sap-ui". When written to HTML, the key is prefixed with "data-". If any restriction is violated, a warning will be logged and nothing will be written to the DOM.
	* @return	Value of property <code>key</code>
	*/
	public function getKey( ):String;

	/**
	* Returns a metadata object for class <code>sap.ui.core.CustomData</code>.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getValue value}.

The data stored in this CustomData object. When the data is just stored, it can be any JS type, but when it is to be written to HTML (<code>writeToDom == true</code>) then it must be a string. If this restriction is violated, a warning will be logged and nothing will be written to the DOM.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):Dynamic;

	/**
	* Gets current value of property {@link #getWriteToDom writeToDom}.

If set to "true" and the value is of type "string" and the key conforms to the documented restrictions, this custom data is written to the HTML root element of the control as a "data-*" attribute. If the key is "abc" and the value is "cde", the HTML will look as follows:

<pre>
  &lt;SomeTag ... data-abc="cde" ... &gt;
</pre>

Thus the application can provide stable attributes by data binding which can be used for styling or identification purposes.

<b>ATTENTION:</b> use carefully to not create huge attributes or a large number of them.

Default value is <code>false</code>.
	* @return	Value of property <code>writeToDom</code>
	*/
	public function getWriteToDom( ):Bool;

	/**
	* Sets a new value for property {@link #getKey key}.

The key of the data in this CustomData object. When the data is just stored, it can be any string, but when it is to be written to HTML (<code>writeToDom == true</code>) then it must also be a valid HTML attribute name. It must conform to the {@link sap.ui.core.ID} type and may contain no colon. To avoid collisions, it also may not start with "sap-ui". When written to HTML, the key is prefixed with "data-". If any restriction is violated, a warning will be logged and nothing will be written to the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sKey New value for property <code>key</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setKey( sKey:String):sap.ui.core.CustomData;

	/**
	* Sets a new value for property {@link #getValue value}.

The data stored in this CustomData object. When the data is just stored, it can be any JS type, but when it is to be written to HTML (<code>writeToDom == true</code>) then it must be a string. If this restriction is violated, a warning will be logged and nothing will be written to the DOM.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	oValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( oValue:Dynamic):sap.ui.core.CustomData;

	/**
	* Sets a new value for property {@link #getWriteToDom writeToDom}.

If set to "true" and the value is of type "string" and the key conforms to the documented restrictions, this custom data is written to the HTML root element of the control as a "data-*" attribute. If the key is "abc" and the value is "cde", the HTML will look as follows:

<pre>
  &lt;SomeTag ... data-abc="cde" ... &gt;
</pre>

Thus the application can provide stable attributes by data binding which can be used for styling or identification purposes.

<b>ATTENTION:</b> use carefully to not create huge attributes or a large number of them.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bWriteToDom New value for property <code>writeToDom</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWriteToDom( bWriteToDom:Bool):sap.ui.core.CustomData;
}

typedef CustomDataArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* The key of the data in this CustomData object. When the data is just stored, it can be any string, but when it is to be written to HTML (<code>writeToDom == true</code>) then it must also be a valid HTML attribute name. It must conform to the {@link sap.ui.core.ID} type and may contain no colon. To avoid collisions, it also may not start with "sap-ui". When written to HTML, the key is prefixed with "data-". If any restriction is violated, a warning will be logged and nothing will be written to the DOM.
	*/
	@:optional var key:String;

	/**
	* The data stored in this CustomData object. When the data is just stored, it can be any JS type, but when it is to be written to HTML (<code>writeToDom == true</code>) then it must be a string. If this restriction is violated, a warning will be logged and nothing will be written to the DOM.
	*/
	@:optional var value:Dynamic;

	/**
	* If set to "true" and the value is of type "string" and the key conforms to the documented restrictions, this custom data is written to the HTML root element of the control as a "data-*" attribute. If the key is "abc" and the value is "cde", the HTML will look as follows:

<pre>
  &lt;SomeTag ... data-abc="cde" ... &gt;
</pre>

Thus the application can provide stable attributes by data binding which can be used for styling or identification purposes.

<b>ATTENTION:</b> use carefully to not create huge attributes or a large number of them.
	*/
	@:optional var writeToDom:haxe.extern.EitherType<String,Bool>;
}
