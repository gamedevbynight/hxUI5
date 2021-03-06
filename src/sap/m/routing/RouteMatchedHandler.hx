package sap.m.routing;

@:native("sap.m.routing.RouteMatchedHandler")

/**
* This class will attach to the Events of a provided router and add the views created by it to a {@link sap.m.SplitContainer} or a {@link sap.m.NavContainer} Control, if this is the target control of the route.</br> If the targetControl is no {@link sap.m.SplitContainer} or a {@link sap.m.NavContainer}, It will only close the dialogs, according to the property value.</br> </br> When a navigation is triggered, this class will try to determine the transition of the pages based on the history.</br> Eg: if a user presses browser back, it will show a backwards animation.</br> </br> The navigation on the container takes place in the RoutePatternMatched event of the Router. If you register on the RouteMatched event of the Router, the visual navigation did not take place yet.</br> </br> Since it is hard to detect if a user has pressed browser back, this transitions will not be reliable, for example if someone bookmarked a detail page, and wants to navigate to a masterPage.</br> If you want this case to always show a backwards transition, you should specify a "viewLevel" property on your Route.</br> The viewLevel has to be an integer. The Master should have a lower number than the detail.</br> These levels should represent the user process of your application and they do not have to match the container structure of your Routes.</br> If the user navigates between views with the same viewLevel, the history is asked for the direction.</br> </br> You can specify a property "transition" in a route to define which transition will be applied when navigating. If it is not defined, the nav container will take its default transition. </br> You can also specify "transitionParameters" on a Route, to give the transition parameters.</br> </br> preservePageInSplitContainer is deprecated since 1.28 since Targets make this parameter obsolete. If you want to preserve the current view when navigating, but you want to navigate to it when nothing is displayed in the navContainer, you can set preservePageInSplitContainer = true</br> When the route that has this flag directly matches the pattern, the view will still be switched by the splitContainer. </br>
*/
extern class RouteMatchedHandler extends sap.ui.base.Object
{

	/**
	* 
	* @param	router A router that creates views</br>
	* @param	closeDialogs If set to <code>true</code> it will close all open dialogs before navigating. If set to <code>false</code> it will just navigate without closing dialogs.
	* @return	Object
	*/
	public function new( ?router:sap.ui.core.routing.Router, ?closeDialogs:Bool):Void;

	/**
	* Removes the routeMatchedHandler from the Router
	* @return	for chaining
	*/
	public function destroy( ):sap.m.routing.RouteMatchedHandler;

	/**
	* Creates a new subclass of class sap.m.routing.RouteMatchedHandler with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.base.Object.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Gets if a navigation should close dialogs
	* @return	a flag indication if dialogs will be closed
	*/
	public function getCloseDialogs( ):Bool;

	/**
	* Returns a metadata object for class sap.m.routing.RouteMatchedHandler.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Sets if a navigation should close dialogs
	* @param	bCloseDialogs close dialogs if true
	* @return	for chaining
	*/
	public function setCloseDialogs( bCloseDialogs:Bool):sap.m.routing.RouteMatchedHandler;
}

