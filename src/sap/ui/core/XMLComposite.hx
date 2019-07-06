package sap.ui.core;

@:native("sap.ui.core.XMLComposite")

/**
* Base Class for XMLComposite controls.
*/
extern class XMLComposite extends sap.ui.core.Control implements sap.ui.core.IDScope
{
public function new():Void;

	/**
	* Creates a new subclass of class sap.ui.core.XMLComposite with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDisplayBlock displayBlock}.

Whether the CSS display should be set to "block".

Default value is <code>true</code>.
	* @return	Value of property <code>displayBlock</code>
	*/
	public function getDisplayBlock( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

The height
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.ui.core.XMLComposite.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the resource bundle of the resource model

Sample: this.getResourceBundle().then(function(oBundle) {oBundle.getText(<messagebundle_key>)})
	* @return	loaded resource bundle or ECMA Script 6 Promise in asynchronous case
	*/
	public function getResourceBundle( ):Dynamic;

	/**
	* Gets current value of property {@link #getWidth width}.

The width

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets a new value for property {@link #getDisplayBlock displayBlock}.

Whether the CSS display should be set to "block".

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bDisplayBlock New value for property <code>displayBlock</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDisplayBlock( bDisplayBlock:Bool):sap.ui.core.XMLComposite;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.core.XMLComposite;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.core.XMLComposite;
}

