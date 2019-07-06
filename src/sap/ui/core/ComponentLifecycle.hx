package sap.ui.core;

@:native("sap.ui.core.ComponentLifecycle")
@:enum extern abstract ComponentLifecycle(String)
{
    /**
    * Application managed lifecycle means that the Application takes care to destroy the Components associated with the ComponentContainer.
    */
    var Application= "Application";
    /**
    * Container managed lifecycle means that the ComponentContainer takes care to destroy the Components associated with the ComponentContainer once the ComponentContainer is destroyed or a new Component is associated.
    */
    var Container= "Container";
    /**
    * Legacy lifecycle means that the ComponentContainer takes care to destroy the Component which is associated with the ComponentContainer once the ComponentContainer is destroyed but not when a new Component is associated.
    */
    var Legacy= "Legacy";
}
