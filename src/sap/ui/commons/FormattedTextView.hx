package sap.ui.commons;

@:native("sap.ui.commons.FormattedTextView")

/**
* The FormattedTextView control allows the usage of a limited set of HTML tags for display.
*/
extern class FormattedTextView extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:FormattedTextViewArgs):Void {})
	public function new(?mSettings:FormattedTextViewArgs):Void;

	/**
	* Adds some control to the aggregation {@link #getControls controls}.
	* @param	oControl The control to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addControl( oControl:sap.ui.core.Control):sap.ui.commons.FormattedTextView;

	/**
	* Destroys all the controls in the aggregation {@link #getControls controls}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyControls( ):sap.ui.commons.FormattedTextView;

	/**
	* Creates a new subclass of class sap.ui.commons.FormattedTextView with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getAccessibleRole accessibleRole}.

The ARIA role for the control.

Default value is <code>Document</code>.
	* @return	Value of property <code>accessibleRole</code>
	*/
	public function getAccessibleRole( ):sap.ui.core.AccessibleRole;

	/**
	* Gets content of aggregation {@link #getControls controls}.

Array of controls that should be replaced within htmlText.
	* @return	null
	*/
	public function getControls( ):Array<sap.ui.core.Control>;

	/**
	* Gets current value of property {@link #getHtmlText htmlText}.

Determines text with placeholders.

Default value is <code>empty string</code>.
	* @return	Value of property <code>htmlText</code>
	*/
	public function getHtmlText( ):String;

	/**
	* Returns a metadata object for class sap.ui.commons.FormattedTextView.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Indicates whether the FormattedTextView contains other controls.
	* @return	null
	*/
	public function hasControls( ):Bool;

	/**
	* Checks for the provided <code>sap.ui.core.Control</code> in the aggregation {@link #getControls controls}. and returns its index if found or -1 otherwise.
	* @param	oControl The control whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfControl( oControl:sap.ui.core.Control):Int;

	/**
	* Inserts a control into the aggregation {@link #getControls controls}.
	* @param	oControl The control to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the control should be inserted at; for a negative value of <code>iIndex</code>, the control is inserted at position 0; for a value greater than the current size of the aggregation, the control is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertControl( oControl:sap.ui.core.Control, iIndex:Int):sap.ui.commons.FormattedTextView;

	/**
	* Removes all the controls from the aggregation {@link #getControls controls}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllControls( ):Array<sap.ui.core.Control>;
	@:overload( function(vControl:Int):sap.ui.core.Control{ })
	@:overload( function(vControl:String):sap.ui.core.Control{ })

	/**
	* Removes a control from the aggregation {@link #getControls controls}.
	* @param	vControl The control to remove or its index or id
	* @return	The removed control or <code>null</code>
	*/
	public function removeControl( vControl:sap.ui.core.Control):sap.ui.core.Control;

	/**
	* Sets a new value for property {@link #getAccessibleRole accessibleRole}.

The ARIA role for the control.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Document</code>.
	* @param	sAccessibleRole New value for property <code>accessibleRole</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setAccessibleRole( sAccessibleRole:sap.ui.core.AccessibleRole):sap.ui.commons.FormattedTextView;

	/**
	* Sets text with placeholders and given array of controls.
	* @param	sHtmlText Contains the corresponding HTML text
	* @param	aControls Array of controls that should be used within given HTML text
	* @return	Void
	*/
	public function setContent( sHtmlText:String, aControls:sap.ui.commons.FormattedTextViewControl):Void;

	/**
	* Sets the HTML text to be displayed.
	* @param	sText HTML text as a string
	* @return	Void
	*/
	public function setHtmlText( sText:String):Void;
}

typedef FormattedTextViewArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The ARIA role for the control.
	*/
	@:optional var accessibleRole:haxe.extern.EitherType<String,sap.ui.core.AccessibleRole>;

	/**
	* Determines text with placeholders.
	*/
	@:optional var htmlText:String;

    /**
    * Array of controls that should be replaced within htmlText.
    */
	@:optional var controls:Array<haxe.extern.EitherType<String,sap.ui.core.Control>>;
}
