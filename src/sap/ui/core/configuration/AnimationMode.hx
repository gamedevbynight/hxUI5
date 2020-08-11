package sap.ui.core.configuration;

@:enum extern abstract AnimationMode(String)
{
    /**
    * <code>basic</code> can be used for a reduced, more light-weight set of animations.
    */
    var basic= "basic";
    /**
    * <code>full</code> represents a mode with unrestricted animation capabilities.
    */
    var full= "full";
    /**
    * <code>minimal</code> includes animations of fundamental functionality.
    */
    var minimal= "minimal";
    /**
    * <code>none</code> deactivates the animation completely.
    */
    var none= "none";
}
