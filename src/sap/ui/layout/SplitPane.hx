package sap.ui.layout;

@:native("sap.ui.layout.SplitPane")

/**
* SplitPane is a container of a single control in a responsive splitter. Could be used as an aggregation of a {@link sap.ui.layout.PaneContainer PaneContainer}.

The behavior of the Split Panes is handled by the following properties: <ul> <li><code>requiredParentWidth</code> - determines the minimum width of the parent container (in pixels). When it is reached, the pane will be hidden from the screen.</li> <li><code>demandPane</code> - determines if the pane is reachable via the pagination bar after it has been hidden from the screen.</li> </ul
*/
extern class SplitPane extends sap.ui.core.Element
{
	@:overload(function(?sId:String, ?mSettings:SplitPaneArgs):Void {})
	public function new(?mSettings:SplitPaneArgs):Void;

	/**
	* Destroys the content in the aggregation {@link #getContent content}.
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function destroyContent( ):sap.ui.layout.SplitPane;

	/**
	* Creates a new subclass of class sap.ui.layout.SplitPane with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Element.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets content of aggregation {@link #getContent content}.

Content of the SplitPane
	* @return	null
	*/
	public function getContent( ):sap.ui.core.Control;

	/**
	* Gets current value of property {@link #getDemandPane demandPane}.

Determines whether the pane will be moved to the pagination

Default value is <code>true</code>.
	* @return	Value of property <code>demandPane</code>
	*/
	public function getDemandPane( ):Bool;

	/**
	* Returns a metadata object for class sap.ui.layout.SplitPane.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Gets current value of property {@link #getRequiredParentWidth requiredParentWidth}.

Determines the minimum width of the ResponsiveSplitter(in pixels). When it is reached the pane will be hidden from the screen.

Default value is <code>800</code>.
	* @return	Value of property <code>requiredParentWidth</code>
	*/
	public function getRequiredParentWidth( ):Int;

	/**
	* Sets the aggregated {@link #getContent content}.
	* @param	oContent The content to set
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setContent( oContent:sap.ui.core.Control):sap.ui.layout.SplitPane;

	/**
	* Sets a new value for property {@link #getDemandPane demandPane}.

Determines whether the pane will be moved to the pagination

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bDemandPane New value for property <code>demandPane</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setDemandPane( bDemandPane:Bool):sap.ui.layout.SplitPane;

	/**
	* Sets a new value for property {@link #getRequiredParentWidth requiredParentWidth}.

Determines the minimum width of the ResponsiveSplitter(in pixels). When it is reached the pane will be hidden from the screen.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>800</code>.
	* @param	iRequiredParentWidth New value for property <code>requiredParentWidth</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setRequiredParentWidth( iRequiredParentWidth:Int):sap.ui.layout.SplitPane;
}

typedef SplitPaneArgs = sap.ui.core.Element.ElementArgs & {

	/**
	* Determines whether the pane will be moved to the pagination
	*/
	@:optional var demandPane:haxe.extern.EitherType<String,Bool>;

	/**
	* Determines the minimum width of the ResponsiveSplitter(in pixels). When it is reached the pane will be hidden from the screen.
	*/
	@:optional var requiredParentWidth:haxe.extern.EitherType<String,Int>;

    /**
    * Content of the SplitPane
    */
	@:optional var content:haxe.extern.EitherType<String,sap.ui.core.Control>;
}
