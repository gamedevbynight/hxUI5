package sap.ui.core.util.reflection;

@:native("sap.ui.core.util.reflection.BaseTreeModifier")
extern class BaseTreeModifier
{
	@:overload( function(vControl:sap.ui.base.ManagedObject, mSettings:Dynamic):js.html.Element{ })

	/**
	* See {@link sap.ui.base.ManagedObject#applySettings} method.
	* @param	vControl Control representation
	* @param	mSettings Further settings or properties for the control
	* @return	XML node of the control being created
	*/
	public static function applySettings( vControl:js.html.Element, mSettings:Dynamic):js.html.Element;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sEventName:String, sFunctionPath:String, vData:Dynamic):Void{ })

	/**
	* Attaches event on the specified <code>ManagedObject</code>.
	* @param	vControl Control representation
	* @param	sEventName Event name
	* @param	sFunctionPath Absolute path to a function
	* @param	vData Predefined values for event handler function
	* @return	Void
	*/
	public static function attachEvent( vControl:js.html.Element, sEventName:String, sFunctionPath:String, vData:Dynamic):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sAggregationName:String, vBindingInfos:Dynamic):Void{ })

	/**
	* See {@link sap.ui.base.ManagedObject#bindAggregation} method.
	* @param	vControl Control representation
	* @param	sAggregationName Aggregation name
	* @param	vBindingInfos Binding info
	* @return	Void
	*/
	public static function bindAggregation( vControl:js.html.Element, sAggregationName:String, vBindingInfos:Dynamic):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sPropertyName:String, vBindingInfos:Dynamic):Void{ })

	/**
	* See {@link sap.ui.base.ManagedObject#bindProperty} method.
	* @param	vControl Control representation
	* @param	sPropertyName Property name
	* @param	vBindingInfos Binding info
	* @return	Void
	*/
	public static function bindProperty( vControl:js.html.Element, sPropertyName:String, vBindingInfos:Dynamic):Void;

	/**
	* Function determining the control targeted by the change.
	* @param	oSelector Target of a flexibility change
	* @param	oAppComponent Application component
	* @param	oView For XML processing only: XML node of the view
	* @return	Control representation targeted within the selector
	*/
	public static function bySelector( oSelector:Dynamic, oAppComponent:sap.ui.core.UIComponent, oView:js.html.Element):Dynamic;

	/**
	* Creates the control in the corresponding representation.
	* @param	sClassName Class name for the control (for example, <code>sap.m.Button</code>), ensures that the class is loaded (no synchronous requests are called)
	* @param	oAppComponent Needed to calculate the correct ID in case you provide an ID
	* @param	oView XML node of the view, required for XML case to create nodes and to find elements
	* @param	oSelector Selector to calculate the ID for the control that is created
	* @param	mSettings Further settings or properties for the control that is created
	* @param	bAsync Determines whether a synchronous (promise) or an asynchronous value should be returned
	* @return	Element or promise with element of the control that is created
	*/
	public static function createControl( sClassName:String, ?oAppComponent:sap.ui.core.UIComponent, ?oView:js.html.Element, ?oSelector:Dynamic, ?mSettings:Dynamic, bAsync:Bool):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject, ?bSuppressInvalidate:Bool):Void{ })

	/**
	* Cleans up the resources associated with this object and all its aggregated children. See {@link sap.ui.base.ManagedObject#destroy} method.

After an object has been destroyed, it can no longer be used! Applications should call this method if they don't need the object any longer.
	* @param	vControl Control representation
	* @param	bSuppressInvalidate if true, this ManagedObject is not marked as changed
	* @return	Void
	*/
	public static function destroy( vControl:js.html.Element, ?bSuppressInvalidate:Bool):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sEventName:String, sFunctionPath:String):Void{ })

	/**
	* Detaches event from the specified ManagedObject.
	* @param	vControl Control representation
	* @param	sEventName Event name
	* @param	sFunctionPath Absolute path to a function
	* @return	Void
	*/
	public static function detachEvent( vControl:js.html.Element, sEventName:String, sFunctionPath:String):Void;
	@:overload( function(vParent:sap.ui.base.ManagedObject):Int{ })

	/**
	* Finds the index of the control in its parent aggregation.
	* @param	vParent Control representation
	* @return	Index of the control
	*/
	public static function findIndexInParentAggregation( vParent:js.html.Element):Int;
	@:overload( function(vParent:sap.ui.base.ManagedObject, sName:String):Dynamic{ })

	/**
	* See {@link sap.ui.base.ManagedObject#getAggregation} method.
	* @param	vParent Control which has the aggregation
	* @param	sName Aggregation name
	* @return	Aggregation content
	*/
	public static function getAggregation( vParent:js.html.Element, sName:String):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject):Map<String,Dynamic>{ })

	/**
	* See {@link sap.ui.base.ManagedObjectMetadata#getAllAggregations} method.
	* @param	vControl Control representation
	* @return	Map of aggregation info objects keyed by aggregation names
	*/
	public static function getAllAggregations( vControl:js.html.Element):Map<String,Dynamic>;
	@:overload( function(vParent:sap.ui.base.ManagedObject, sName:String):Dynamic{ })

	/**
	* See {@link sap.ui.base.ManagedObject#getAssociation} method.
	* @param	vParent Control which has the association
	* @param	sName Association name
	* @return	ID of the associated managed object or an array of such IDs; may be null if the association has not been populated
	*/
	public static function getAssociation( vParent:js.html.Element, sName:String):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sAggregationName:String):Void{ })

	/**
	* Gets the binding template from an aggregation. See {@link sap.ui.base.ManagedObject#getBindingInfo} method.
	* @param	vControl Control representation
	* @param	sAggregationName Aggregation name
	* @return	Void
	*/
	public static function getBindingTemplate( vControl:js.html.Element, sAggregationName:String):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject):String{ })

	/**
	* Returns the module path of an instance specific change handler.
	* @param	vControl Control representation
	* @return	Module path
	*/
	public static function getChangeHandlerModulePath( vControl:js.html.Element):String;
	@:overload( function(vControl:sap.ui.base.ManagedObject):String{ })

	/**
	* See {@link sap.ui.base.Metadata#getName} method.
	* @param	vControl Control representation
	* @return	Control type
	*/
	public static function getControlType( vControl:js.html.Element):String;
	@:overload( function(vControl:sap.ui.base.ManagedObject):sap.ui.core.util.reflection.FlexDelegateInfo{ })

	/**
	* Gets the flexibility delegate information placed at a control.
	* @param	vControl Control representation
	* @return	Delegate information
	*/
	public static function getFlexDelegate( vControl:js.html.Element):sap.ui.core.util.reflection.FlexDelegateInfo;
	@:overload( function(vControl:sap.ui.base.ManagedObject):String{ })

	/**
	* See {@link sap.ui.base.ManagedObject#getId} method.
	* @param	vControl Control representation
	* @return	ID
	*/
	public static function getId( vControl:js.html.Element):String;
	@:overload( function(vControl:sap.ui.base.ManagedObject):Dynamic{ })

	/**
	* See {@link sap.ui.base.ManagedObject#getParent} method.
	* @param	vControl Control representation
	* @return	Parent control in its representation
	*/
	public static function getParent( vControl:js.html.Element):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject, ?vParent:sap.ui.base.ManagedObject):String{ })
	@:overload( function(vControl:sap.ui.base.ManagedObject, ?vParent:js.html.Element):String{ })
	@:overload( function(vControl:js.html.Element, ?vParent:sap.ui.base.ManagedObject):String{ })

	/**
	* Removes all objects from the aggregation of the given control.
	* @param	vControl Control representation
	* @param	vParent Control representation of the parent only needed in XML case
	* @return	Parent aggregation name
	*/
	public static function getParentAggregationName( vControl:js.html.Element, ?vParent:js.html.Element):String;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sPropertyName:String):Dynamic{ })

	/**
	* See {@link sap.ui.base.ManagedObject#getProperty} method.
	* @param	vControl Control representation
	* @param	sPropertyName Property name
	* @return	Value of the property
	*/
	public static function getProperty( vControl:js.html.Element, sPropertyName:String):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sPropertyName:String):Dynamic{ })

	/**
	* See {@link sap.ui.base.ManagedObject#getBindingInfo} method.
	* @param	vControl Control representation
	* @param	sPropertyName Property name
	* @return	Binding info
	*/
	public static function getPropertyBinding( vControl:js.html.Element, sPropertyName:String):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sPropertyName:String):Dynamic{ })

	/**
	* Checks if there is a property binding and returns it if available, otherwise returns the value of the property.
	* @param	vControl Control representation
	* @param	sPropertyName Property name
	* @return	Binding info object or value of the property
	*/
	public static function getPropertyBindingOrProperty( vControl:js.html.Element, sPropertyName:String):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject, oAppComponent:sap.ui.core.Component, ?mAdditionalSelectorInformation:Dynamic):Dynamic{ })
	@:overload( function(vControl:js.html.Element, oAppComponent:sap.ui.core.Component, ?mAdditionalSelectorInformation:Dynamic):Dynamic{ })

	/**
	* Function for determining the selector that is used later to apply a change for a given control.
	* @param	vControl Control or ID string for which the selector should be determined
	* @param	oAppComponent Application component, needed only if <code>vControl</code> is a string or XML node
	* @param	mAdditionalSelectorInformation Additional mapped data which is added to the selector
	* @return	oSelector
	*/
	public static function getSelector( vControl:String, oAppComponent:sap.ui.core.Component, ?mAdditionalSelectorInformation:Dynamic):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject):Bool{ })

	/**
	* See {@link sap.ui.core.StashedControlSupport#getVisible} method.
	* @param	vControl Control representation
	* @return	<code>true</code> if the control is stashed
	*/
	public static function getStashed( vControl:js.html.Element):Bool;
	@:overload( function(vControl:sap.ui.base.ManagedObject):Bool{ })

	/**
	* See {@link sap.ui.core.Control#getVisible} method.
	* @param	vControl Control representation
	* @return	<code>true</code> if the control's <code>visible</code> property is set
	*/
	public static function getVisible( vControl:js.html.Element):Bool;
	@:overload( function(vParent:sap.ui.base.ManagedObject, sAggregationName:String, oObject:sap.ui.base.ManagedObject, iIndex:Int, ?oView:js.html.Element):Void{ })
	@:overload( function(vParent:sap.ui.base.ManagedObject, sAggregationName:String, oObject:js.html.Element, iIndex:Int, ?oView:js.html.Element):Void{ })
	@:overload( function(vParent:js.html.Element, sAggregationName:String, oObject:sap.ui.base.ManagedObject, iIndex:Int, ?oView:js.html.Element):Void{ })

	/**
	* See {@link sap.ui.base.ManagedObject#insertAggregation} method.
	* @param	vParent Control which has the aggregation
	* @param	sAggregationName Aggregation name
	* @param	oObject XML node or element of the control that will be inserted
	* @param	iIndex Index for <code>oObject</code> in the aggregation
	* @param	oView XML node of the view, needed in XML case to potentially create (aggregation) nodes
	* @return	Void
	*/
	public static function insertAggregation( vParent:js.html.Element, sAggregationName:String, oObject:js.html.Element, iIndex:Int, ?oView:js.html.Element):Void;

	/**
	* Loads a fragment and turns the result into an array of nodes; also prefixes all the controls with a given namespace; throws an error if there is at least one control in the fragment without a stable ID or has a duplicate ID in the given view.
	* @param	sFragment XML fragment as string
	* @param	sNamespace Namespace of the app
	* @param	oView View for the fragment
	* @return	Array with the nodes/instances of the controls of the fragment
	*/
	public static function instantiateFragment( sFragment:String, sNamespace:String, oView:sap.ui.core.mvc.View):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sPropertyName:String):Bool{ })

	/**
	* See {@link sap.ui.base.ManagedObject#isPropertyInitial} method.
	* @param	vControl Control representation
	* @param	sPropertyName Property name
	* @return	<code>true</code> if the property is initial
	*/
	public static function isPropertyInitial( vControl:js.html.Element, sPropertyName:String):Bool;
	@:overload( function(vParent:sap.ui.base.ManagedObject, sAggregationName:String, oObject:sap.ui.base.ManagedObject):Void{ })
	@:overload( function(vParent:sap.ui.base.ManagedObject, sAggregationName:String, oObject:js.html.Element):Void{ })
	@:overload( function(vParent:js.html.Element, sAggregationName:String, oObject:sap.ui.base.ManagedObject):Void{ })

	/**
	* Removes the object from the aggregation of the given control. See {@link sap.ui.base.ManagedObject#removeAggregation} method.
	* @param	vParent Control representation
	* @param	sAggregationName Aggregation name
	* @param	oObject Aggregated object to be set
	* @return	Void
	*/
	public static function removeAggregation( vParent:js.html.Element, sAggregationName:String, oObject:js.html.Element):Void;
	@:overload( function(vParent:sap.ui.base.ManagedObject, sAggregationName:String):Void{ })

	/**
	* Removes all objects from the aggregation of the given control. See {@link sap.ui.base.ManagedObject#removeAllAggregation} method.
	* @param	vParent Control representation
	* @param	sAggregationName Aggregation name
	* @return	Void
	*/
	public static function removeAllAggregation( vParent:js.html.Element, sAggregationName:String):Void;
	@:overload( function(vParent:sap.ui.base.ManagedObject, sName:String, sId:String):Void{ })
	@:overload( function(vParent:sap.ui.base.ManagedObject, sName:String, sId:sap.ui.base.ManagedObject):Void{ })
	@:overload( function(vParent:sap.ui.base.ManagedObject, sName:String, sId:js.html.Element):Void{ })
	@:overload( function(vParent:js.html.Element, sName:String, sId:String):Void{ })
	@:overload( function(vParent:js.html.Element, sName:String, sId:sap.ui.base.ManagedObject):Void{ })

	/**
	* See {@link sap.ui.base.ManagedObject#setAssociation} method.
	* @param	vParent Control which has the association
	* @param	sName Association name
	* @param	sId ID of the managed object that is set as an association, or the managed object or XML node itself or <code>null</code>
	* @return	Void
	*/
	public static function setAssociation( vParent:js.html.Element, sName:String, sId:js.html.Element):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sPropertyName:String, vPropertyValue:Dynamic):Void{ })

	/**
	* See {@link sap.ui.base.ManagedObject#setProperty} method.
	* @param	vControl Control representation
	* @param	sPropertyName Property name
	* @param	vPropertyValue New value for the property
	* @return	Void
	*/
	public static function setProperty( vControl:js.html.Element, sPropertyName:String, vPropertyValue:Dynamic):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sPropertyName:String, vPropertyBinding:Dynamic):Void{ })

	/**
	* Similar as {@link #bindProperty}, but allows to specify binding like in control constructor.
	* @param	vControl Control representation
	* @param	sPropertyName Property name
	* @param	vPropertyBinding See {@link sap.ui.base.ManagedObject#extractBindingInfo} method
	* @return	Void
	*/
	public static function setPropertyBinding( vControl:js.html.Element, sPropertyName:String, vPropertyBinding:Dynamic):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sPropertyName:String, vBindingOrValue:Dynamic):Void{ })

	/**
	* Calls {@link sap.ui.core.util.reflection.BaseTreeModifier#setPropertyBinding} if the passed value is a binding info object or binding string, otherwise calls {@link sap.ui.core.util.reflection.BaseTreeModifier#setProperty}.
	* @param	vControl Control representation
	* @param	sPropertyName Property name
	* @param	vBindingOrValue Property binding or property value
	* @return	Void
	*/
	public static function setPropertyBindingOrProperty( vControl:js.html.Element, sPropertyName:String, vBindingOrValue:Dynamic):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, bVisible:Bool):Void{ })

	/**
	* See {@link sap.ui.core.StashedControlSupport#setVisible} method.
	* @param	vControl Control representation
	* @param	bVisible New value for <code>stashed</code> property
	* @return	Void
	*/
	public static function setStashed( vControl:js.html.Element, bVisible:Bool):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, bVisible:Bool):Void{ })

	/**
	* See {@link sap.ui.core.Control#setVisible} method.
	* @param	vControl Control representation
	* @param	bVisible New value for <code>visible</code> property
	* @return	Void
	*/
	public static function setVisible( vControl:js.html.Element, bVisible:Bool):Void;

	/**
	* Loads a fragment, processes the XML templating and turns the result into an array of nodes or controls. See {@link sap.ui.core.util.XMLPreprocessor#process}
	* @param	sFragmentName XML fragment name (e.g. some.path.fragmentName)
	* @param	mPreprocessorSettings Map/JSON object with initial property values, etc.
	* @param	oView View for the fragment, only needed on JS side
	* @return	Array with the nodes/instances of the controls of the fragment
	*/
	public static function templateControlFragment( sFragmentName:String, ?mPreprocessorSettings:Dynamic, oView:sap.ui.core.mvc.View):Dynamic;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sAggregationName:String):Void{ })

	/**
	* See {@link sap.ui.base.ManagedObject#unbindAggregation} method.
	* @param	vControl Control representation
	* @param	sAggregationName Aggregation name to be unbound
	* @return	Void
	*/
	public static function unbindAggregation( vControl:js.html.Element, sAggregationName:String):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, sPropertyName:String):Void{ })

	/**
	* See {@link sap.ui.base.ManagedObject#unbindProperty} method.
	* @param	vControl Control representation
	* @param	sPropertyName Property name to be unbound
	* @return	Void
	*/
	public static function unbindProperty( vControl:js.html.Element, sPropertyName:String):Void;
	@:overload( function(vParent:sap.ui.base.ManagedObject, sAggregationName:String):Void{ })

	/**
	* See {@link sap.ui.base.ManagedObject#updateAggregation} method.
	* @param	vParent Control representation
	* @param	sAggregationName Aggregation name
	* @return	Void
	*/
	public static function updateAggregation( vParent:js.html.Element, sAggregationName:String):Void;
	@:overload( function(vControl:sap.ui.base.ManagedObject, mAggregationMetadata:Dynamic, vParent:sap.ui.base.ManagedObject, sFragment:String, iIndex:Int):Bool{ })
	@:overload( function(vControl:sap.ui.base.ManagedObject, mAggregationMetadata:Dynamic, vParent:js.html.Element, sFragment:String, iIndex:Int):Bool{ })
	@:overload( function(vControl:js.html.Element, mAggregationMetadata:Dynamic, vParent:sap.ui.base.ManagedObject, sFragment:String, iIndex:Int):Bool{ })

	/**
	* Validates if the control has the correct type for the aggregation.
	* @param	vControl Control whose type is to be checked
	* @param	mAggregationMetadata Aggregation info object
	* @param	vParent Parent of the control
	* @param	sFragment Path to the fragment that contains the control whose type is to be checked
	* @param	iIndex Index of the current control in the parent aggregation
	* @return	<code>true</code> if the type matches
	*/
	public static function validateType( vControl:js.html.Element, mAggregationMetadata:Dynamic, vParent:js.html.Element, sFragment:String, iIndex:Int):Bool;
}

