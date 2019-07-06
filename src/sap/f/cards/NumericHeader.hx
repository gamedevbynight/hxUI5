package sap.f.cards;

@:native("sap.f.cards.NumericHeader")

/**
* Displays general information in the header of the {@link sap.f.Card} and allows the configuration of a numeric value visualization..

You can configure the title, subtitle, status text and icon, using the provided properties. To add more side number indicators, use the <code>sideIndicators</code> aggregation.

<b>Notes:</b> <ul> <li>You should always set a title.</li> <li>You should always have a maximum of two side indicators.</li> <li>To show only basic information, use {@link sap.f.cards.Header Header} instead.</li> </ul>
*/
extern class NumericHeader extends sap.ui.core.Control implements sap.f.cards.IHeader
{
	@:overload(function(?sId:String, ?mSettings:NumericHeaderArgs):Void {})
	public function new(?mSettings:NumericHeaderArgs):Void;

	/**
	* Adds some sideIndicator to the aggregation {@link #getSideIndicators sideIndicators}.
	* @param	oSideIndicator The sideIndicator to add; if empty, nothing is inserted
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function addSideIndicator( oSideIndicator:sap.f.cards.NumericSideIndicator):sap.f.cards.NumericHeader;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:press press} event of this <code>sap.f.cards.NumericHeader</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.f.cards.NumericHeader</code> itself.

Fires when the user presses the control.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.f.cards.NumericHeader</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachPress( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.f.cards.NumericHeader;

	/**
	* Destroys all the sideIndicators in the aggregation {@link #getSideIndicators sideIndicators}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroySideIndicators( ):sap.f.cards.NumericHeader;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:press press} event of this <code>sap.f.cards.NumericHeader</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachPress( fnFunction:()->Void, ?oListener:Dynamic):sap.f.cards.NumericHeader;

	/**
	* Creates a new subclass of class sap.f.cards.NumericHeader with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDetails details}.

Additional text which adds more details to what is shown in the numeric header.
	* @return	Value of property <code>details</code>
	*/
	public function getDetails( ):String;

	/**
	* Returns a metadata object for class sap.f.cards.NumericHeader.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getNumber number}.

The numeric value of the main number indicator. If the value contains more than five characters, only the first five are displayed. Without rounding the number.
	* @return	Value of property <code>number</code>
	*/
	public function getNumber( ):String;

	/**
	* Gets current value of property {@link #getScale scale}.

Defines the unit of measurement (scaling prefix) for the main indicator. Financial characters can be used for currencies and counters. The International System of Units (SI) prefixes can be used. If the unit contains more than three characters, only the first three characters are displayed.
	* @return	Value of property <code>scale</code>
	*/
	public function getScale( ):String;

	/**
	* Gets content of aggregation {@link #getSideIndicators sideIndicators}.

Additional side number indicators. For example "Deviation" and "Target". Not more than two side indicators should be used.
	* @return	null
	*/
	public function getSideIndicators( ):Array<sap.f.cards.NumericSideIndicator>;

	/**
	* Gets current value of property {@link #getState state}.

The semantic color which represents the state of the main number indicator.

Default value is <code>Neutral</code>.
	* @return	Value of property <code>state</code>
	*/
	public function getState( ):sap.m.ValueColor;

	/**
	* Gets current value of property {@link #getStatusText statusText}.

Defines the status text.

Default value is <code>empty string</code>.
	* @return	Value of property <code>statusText</code>
	*/
	public function getStatusText( ):String;

	/**
	* Gets current value of property {@link #getSubtitle subtitle}.

The subtitle of the card
	* @return	Value of property <code>subtitle</code>
	*/
	public function getSubtitle( ):String;

	/**
	* Gets current value of property {@link #getTitle title}.

The title of the card
	* @return	Value of property <code>title</code>
	*/
	public function getTitle( ):String;

	/**
	* Gets current value of property {@link #getTrend trend}.

The direction of the trend arrow. Shows deviation for the value of the main number indicator.

Default value is <code>None</code>.
	* @return	Value of property <code>trend</code>
	*/
	public function getTrend( ):sap.m.DeviationIndicator;

	/**
	* Gets current value of property {@link #getUnitOfMeasurement unitOfMeasurement}.

General unit of measurement for the header. Displayed as side information to the subtitle.
	* @return	Value of property <code>unitOfMeasurement</code>
	*/
	public function getUnitOfMeasurement( ):String;

	/**
	* Checks for the provided <code>sap.f.cards.NumericSideIndicator</code> in the aggregation {@link #getSideIndicators sideIndicators}. and returns its index if found or -1 otherwise.
	* @param	oSideIndicator The sideIndicator whose index is looked for
	* @return	The index of the provided control in the aggregation if found, or -1 otherwise
	*/
	public function indexOfSideIndicator( oSideIndicator:sap.f.cards.NumericSideIndicator):Int;

	/**
	* Inserts a sideIndicator into the aggregation {@link #getSideIndicators sideIndicators}.
	* @param	oSideIndicator The sideIndicator to insert; if empty, nothing is inserted
	* @param	iIndex The <code>0</code>-based index the sideIndicator should be inserted at; for a negative value of <code>iIndex</code>, the sideIndicator is inserted at position 0; for a value greater than the current size of the aggregation, the sideIndicator is inserted at the last position
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function insertSideIndicator( oSideIndicator:sap.f.cards.NumericSideIndicator, iIndex:Int):sap.f.cards.NumericHeader;

	/**
	* null
	* @return	If the header is ready or not.
	*/
	public function isReady( ):Bool;

	/**
	* Removes all the controls from the aggregation {@link #getSideIndicators sideIndicators}.

Additionally, it unregisters them from the hosting UIArea.
	* @return	An array of the removed elements (might be empty)
	*/
	public function removeAllSideIndicators( ):Array<sap.f.cards.NumericSideIndicator>;
	@:overload( function(vSideIndicator:Int):sap.f.cards.NumericSideIndicator{ })
	@:overload( function(vSideIndicator:String):sap.f.cards.NumericSideIndicator{ })

	/**
	* Removes a sideIndicator from the aggregation {@link #getSideIndicators sideIndicators}.
	* @param	vSideIndicator The sideIndicator to remove or its index or id
	* @return	The removed sideIndicator or <code>null</code>
	*/
	public function removeSideIndicator( vSideIndicator:sap.f.cards.NumericSideIndicator):sap.f.cards.NumericSideIndicator;

	/**
	* Sets additional text which adds more details to what is shown in the numeric header.
	* @param	sValue The text of the details
	* @return	<code>this</code> pointer for chaining
	*/
	public function setDetails( sValue:String):sap.f.cards.NumericHeader;

	/**
	* Sets the value of the main number indicator.
	* @param	sValue A string representation of the number
	* @return	<code>this</code> pointer for chaining
	*/
	public function setNumber( sValue:String):sap.f.cards.NumericHeader;

	/**
	* Sets the unit of measurement (scaling prefix) for the main indicator.
	* @param	sValue The text of the title
	* @return	<code>this</code> pointer for chaining
	*/
	public function setScale( sValue:String):sap.f.cards.NumericHeader;

	/**
	* Sets the semantic color which represents the state of the main number indicator.
	* @param	sValue The semantic color which represents the state
	* @return	<code>this</code> pointer for chaining
	*/
	public function setState( sValue:sap.m.ValueColor):sap.f.cards.NumericHeader;

	/**
	* Sets a new value for property {@link #getStatusText statusText}.

Defines the status text.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sStatusText New value for property <code>statusText</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setStatusText( sStatusText:String):sap.f.cards.NumericHeader;

	/**
	* Sets the subtitle.
	* @param	sValue The text of the subtitle
	* @return	<code>this</code> pointer for chaining
	*/
	public function setSubtitle( sValue:String):sap.f.cards.NumericHeader;

	/**
	* Sets the title.
	* @param	sValue The text of the title
	* @return	<code>this</code> pointer for chaining
	*/
	public function setTitle( sValue:String):sap.f.cards.NumericHeader;

	/**
	* Sets the direction of the trend arrow.
	* @param	sValue The direction of the trend arrow
	* @return	<code>this</code> pointer for chaining
	*/
	public function setTrend( sValue:sap.m.DeviationIndicator):sap.f.cards.NumericHeader;

	/**
	* Sets the general unit of measurement for the header. Displayed as side information to the subtitle.
	* @param	sValue The value of the unit of measurement
	* @return	<code>this</code> pointer for chaining
	*/
	public function setUnitOfMeasurement( sValue:String):sap.f.cards.NumericHeader;
}

typedef NumericHeaderArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The title of the card
	*/
	@:optional var title:String;

	/**
	* The subtitle of the card
	*/
	@:optional var subtitle:String;

	/**
	* Defines the status text.
	*/
	@:optional var statusText:String;

	/**
	* General unit of measurement for the header. Displayed as side information to the subtitle.
	*/
	@:optional var unitOfMeasurement:String;

	/**
	* The numeric value of the main number indicator. If the value contains more than five characters, only the first five are displayed. Without rounding the number.
	*/
	@:optional var number:String;

	/**
	* Defines the unit of measurement (scaling prefix) for the main indicator. Financial characters can be used for currencies and counters. The International System of Units (SI) prefixes can be used. If the unit contains more than three characters, only the first three characters are displayed.
	*/
	@:optional var scale:String;

	/**
	* The direction of the trend arrow. Shows deviation for the value of the main number indicator.
	*/
	@:optional var trend:haxe.extern.EitherType<String,sap.m.DeviationIndicator>;

	/**
	* The semantic color which represents the state of the main number indicator.
	*/
	@:optional var state:haxe.extern.EitherType<String,sap.m.ValueColor>;

	/**
	* Additional text which adds more details to what is shown in the numeric header.
	*/
	@:optional var details:String;

    /**
    * Additional side number indicators. For example "Deviation" and "Target". Not more than two side indicators should be used.
    */
	@:optional var sideIndicators:Array<haxe.extern.EitherType<String,sap.f.cards.NumericSideIndicator>>;

    /**
    * Used to display title text
    */
	@:optional var _title:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * Used to display subtitle text
    */
	@:optional var _subtitle:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * Shows unit of measurement next to subtitle
    */
	@:optional var _unitOfMeasurement:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * Display details
    */
	@:optional var _details:haxe.extern.EitherType<String,sap.m.Text>;

    /**
    * Displays the main number indicator
    */
	@:optional var _mainIndicator:haxe.extern.EitherType<String,sap.m.NumericContent>;

	/**
	* Fires when the user presses the control.
	*/
	@:optional var press:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
