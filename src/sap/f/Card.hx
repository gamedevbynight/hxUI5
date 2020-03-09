package sap.f;

@:native("sap.f.Card")

/**
* A control that represents a container with a predefined header and content.

<h3>Overview</h3> The card is a container for grouping and displaying information.

<h3>Structure</h3> You can control the width and height of the card, using properties. The <code>Card</code> has the following aggregations: <ul> <li><code>header</code> - can be either a {@link sap.f.cards.Header Header} or a {@link sap.f.cards.NumericHeader NumericHeader} <li><code>content</code> - can be any {@link sap.ui.core.Control Control}.</li> </ul>

<h3>Guidelines:</h3> <ul> <li>A card should represent a task or visualize a specific set of information.</li> <li>It is recommended to use cards on home page layouts.</li> <li>The card shouldn't be large with a lot of content.</li> </ul>

<h3>Usage</h3> To show a KPI value or any numeric information, use {@link sap.f.cards.NumericHeader NumericHeader} as a card header. For any other use cases, use the regular {@link sap.f.cards.Header Header}. Recommended content: - List - Table - Object information - Charts - Timelines - Images

<i>When to use</i> <ul> <li>When you need multiple cards on a home page layout.</li> <li>When you have to achieve simple card visualization.</li> </ul>

<i>When not to use</i> <ul> <li>When you have to reuse the card between applications. For such cases, use: {@link sap.ui.integration.widgets.Card Integration Card}.</li> <li>When you need nesting. For such cases, use: {@link sap.m.Panel Panel}.</li> <li>When the card is not part of a card layout. For such cases, use: {@link sap.m.Panel Panel}.</li> <li>When you need more header configuration flexibility.</li> </ul>
*/
extern class Card extends sap.ui.core.Control implements sap.f.ICard
{
	@:overload(function(?sId:String, ?mSettings:CardArgs):Void {})
	public function new(?mSettings:CardArgs):Void;

	/**
	* Destroys the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.f.Card;

	/**
	* Destroys the header in the aggregation {@link #getHeader header}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyHeader( ):sap.f.Card;

	/**
	* Creates a new subclass of class sap.f.Card with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Defines the content of the card.
	* @return	null
	*/
	public function getContent( ):sap.ui.core.Control;

	/**
	* Gets content of aggregation {@link #getHeader header}.

Defines the header of the card.
	* @return	null
	*/
	public function getHeader( ):sap.f.cards.IHeader;

	/**
	* Gets current value of property {@link #getHeaderPosition headerPosition}.

Defines the position of the Card Header.

Default value is <code>Top</code>.
	* @return	Value of property <code>headerPosition</code>
	*/
	public function getHeaderPosition( ):sap.f.cards.HeaderPosition;

	/**
	* Gets current value of property {@link #getHeight height}.

Defines the height of the card.

Default value is <code>auto</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Returns a metadata object for class sap.f.Card.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the card.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Sets the aggregated {@link #getContent content}.
	* @param	oContent The content to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( oContent:sap.ui.core.Control):sap.f.Card;

	/**
	* Sets the aggregated {@link #getHeader header}.
	* @param	oHeader The header to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeader( oHeader:sap.f.cards.IHeader):sap.f.Card;

	/**
	* Sets a new value for property {@link #getHeaderPosition headerPosition}.

Defines the position of the Card Header.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>Top</code>.
	* @param	sHeaderPosition New value for property <code>headerPosition</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeaderPosition( sHeaderPosition:sap.f.cards.HeaderPosition):sap.f.Card;

	/**
	* Sets a new value for property {@link #getHeight height}.

Defines the height of the card.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.f.Card;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the card.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.f.Card;
}

typedef CardArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* Defines the width of the card.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the height of the card.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the position of the Card Header.
	*/
	@:optional var headerPosition:haxe.extern.EitherType<String,sap.f.cards.HeaderPosition>;

    /**
    * Defines the header of the card.
    */
	@:optional var header:haxe.extern.EitherType<String,sap.f.cards.IHeader>;

    /**
    * Defines the content of the card.
    */
	@:optional var content:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
