package sap.f;

@:native("sap.f.FlexibleColumnLayoutSemanticHelper")

/**
* Helper class, facilitating the implementation of the recommended UX design of a <code>sap.f.FlexibleColumnLayout</code>-based app.

<b>Note:</b> Using this class is not mandatory in order to build an app with <code>sap.f.FlexibleColumnLayout</code>, but exists for convenience only.

<ul>The usage of <code>sap.f.FlexibleColumnLayoutSemanticHelper</code> revolves around two main methods: <li><code>getCurrentUIState</code>Suggests which action buttons to show in each <code>sap.f.FlexibleColumnLayout</code> column, based on the current control state (number and visibility of columns, layout, etc..)</li> <li><code>getNextUIState</code>Suggests which <code>layout</code> to use when navigating to another view level (e.g. from one view to two views).</li></ul>

Sample usage of the class:

<pre>
<code>
 var helper = sap.f.FlexibleColumnLayoutSemanticHelper.getInstanceFor(myFlexibleColumnLayout);
 helper.getCurrentUIState();
 helper.getNextUIState(2);
 helper.getNextUIState(0);
</code>
</pre>

Calling <code>getCurrentUIState()</code> will return information which action buttons (Close, FullScreen, ExitFullScreen) must be currently shown in which column, according to UX guidelines, as well as to what layout clicking them should lead.

Calling <code>getNextUIState(2)</code> will return information about the expected layout and action buttons if the application should display three views (master-detail-detail), based on the current state.

Similarly, calling <code>getNextUIState(0)</code> will return information about the expected layout and action buttons if the application should display the initial view only (master), based on the current state.

For more information, see {@link sap.f.FlexibleColumnLayoutSemanticHelper#getCurrentUIState} and {@link sap.f.FlexibleColumnLayoutSemanticHelper#getNextUIState}
*/
extern class FlexibleColumnLayoutSemanticHelper
{

	/**
	* 
	* @param	oFlexibleColumnLayout The <code>sap.f.FlexibleColumnLayout</code> object whose state will be manipulated.
	* @param	oSettings Determines the rules that will be used by the helper.
	* @return	Object
	*/
	public function new( ?oFlexibleColumnLayout:sap.f.FlexibleColumnLayout, ?oSettings:Dynamic):Void;

	/**
	* Returns an object, describing the current state of the control and the expected action buttons for each column.

<ul>The returned object has the following structure: <li>layout - the value of the <code>layout</code> property</li> <li>maxColumnsCount - the maximum number of columns that can be displayed at once based on the control width. See {@link sap.f.FlexibleColumnLayout#getMaxColumnsCount}</li> <li>columnsSizes - an object with fields <code>beginColumn, midColumn, endColumn</code>, representing the relative percentage sizes of the three columns as integers</li> <li>columnsVisibility - an object with fields <code>beginColumn, midColumn, endColumn</code>, representing the visibility of the three columns</li> <li>isFullScreen - <code>true</code> if only one column is visible at the moment, <code>false</code> otherwise <b>Note:</b> This may be due to small screen size (phone) or due to a layout, for which a single column takes up the whole width</li> <li>isLogicallyFullScreen - <code>true</code> if the current <code>layout</code> is one of the following: <code>sap.f.LayoutType.OneColumn, sap.f.LayoutType.MidColumnFullScreen, sap.f.LayoutType.EndColumnFullScreen</code>, <code>false</code> otherwise <b>Note:</b> While <code>isFullScreen</code> can be <code>true</code> for any layout, due to small screen size, <code>isLogicallyFullScreen</code> will only be <code>true</code> for the layout values, listed above.</li> <li>actionButtonsInfo - an object with fields <code>midColumn, endColumn</code>, each containing an object, telling whether action buttons should be shown in the <code>mid</code> and <code>end</code> columns, and what value of the <code>layout</code> property should be set upon clicking these buttons. Each of these objects has the following fields: <code>closeColumn, fullScreen, exitFullScreen</code>. If <code>null</code>, then the respective action button should not be shown, otherwise provides the value of <code>layout</code> property for the action button.</li></ul>

Example value:

<pre>
 <code>
 {
	   "layout":"ThreeColumnsMidExpanded",
	   "maxColumnsCount":3,
	   "columnsSizes":{
		  "beginColumn":25,
		  "midColumn":50,
		  "endColumn":25
	   },
	   "columnsVisibility":{
		  "beginColumn":true,
		  "midColumn":true,
		  "endColumn":true
	   },
	   "isFullScreen":false,
	   "isLogicallyFullScreen":false,
	   "actionButtonsInfo":{
		  "midColumn":{
			 "fullScreen":null,
			 "exitFullScreen":null,
			 "closeColumn":null
		  },
		  "endColumn":{
			 "fullScreen":"EndColumnFullScreen",
			 "exitFullScreen":null,
			 "closeColumn":"TwoColumnsBeginExpanded"
		  }
	   }
	}
 </code>
 </pre>
	* @return	The object describing the current UI state
	*/
	public function getCurrentUIState( ):Dynamic;

	/**
	* Returns the default layout types for the different numbers of columns.

<ul>The returned object has the following fields: <li>defaultLayoutType - the layout that will be suggested by default when only 1 column needs to be shown</li> <li>defaultTwoColumnLayoutType - the layout that will be suggested by default when 2 columns have to be shown side by side</li> <li>defaultThreeColumnLayoutType - the layout that will be suggested by default when 3 columns have to be shown side by side</li></ul>
	* @return	The object describing the default layout types for the different numbers of columns
	*/
	public function getDefaultLayouts( ):Dynamic;

	/**
	* Returns an instance of the <code>sap.f.FlexibleColumnLayoutSemanticHelper</code> class for a given <code>sap.f.FlexibleColumnLayout</code> object.
	* @param	oFlexibleColumnLayout The <code>sap.f.FlexibleColumnLayout</code> object to get a semantic helper instance for
	* @param	oSettings An optional settings object to be used when creating the instance. <b>Note:</b> will be considered only for the first <code>getInstanceFor</code> call for the given <code>sap.f.FlexibleColumnLayout</code> object.
	* @return	The <code>sap.f.FlexibleColumnLayoutSemanticHelper</code> instance
	*/
	public static function getInstanceFor( oFlexibleColumnLayout:sap.f.FlexibleColumnLayout, ?oSettings:Dynamic):sap.f.FlexibleColumnLayoutSemanticHelper;

	/**
	* Returns an object, describing the state that the control will have after navigating to a different view level.

About the format of return value, see: {@link sap.f.FlexibleColumnLayoutSemanticHelper#getCurrentUIState}
	* @param	iNextLevel the view level that should be represented. 0 means initial (master only), 1 - master-detail, 2 - master-detail-detail, 3 and above - subsequent views
	* @return	The object describing the next UI state
	*/
	public function getNextUIState( iNextLevel:Int):Dynamic;
}

