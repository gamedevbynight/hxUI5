package sap.ui.core;

@:native("sap.ui.core.ComponentLifecycle")
@:enum extern abstract ComponentLifecycle(String)
{
    /**
    * Application managed lifecycle means that the application takes care to destroy the components associated with the <code>ComponentContainer</code>.
    */
    var Application= "Application";
    /**
    * Container managed lifecycle means that the <code>ComponentContainer</code> takes care to destroy the components associated with the <code>ComponentContainer</code> once the <code>ComponentContainer</code> is destroyed or a new component is associated.
    */
    var Container= "Container";
    /**
    * Legacy lifecycle means that the <code>ComponentContainer</code> takes care to destroy the component which is associated with the <code>ComponentContainer</code> once the <code>ComponentContainer</code> is destroyed, but not when a new component is associated.
    */
    var Legacy= "Legacy";
}
