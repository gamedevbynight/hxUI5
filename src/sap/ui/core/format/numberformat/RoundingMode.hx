package sap.ui.core.format.numberformat;

@:enum extern abstract RoundingMode(String)
{
    /**
    * Rounding mode to round away from zero
    */
    var AWAY_FROM_ZERO= "AWAY_FROM_ZERO";
    /**
    * Rounding mode to round towards positive infinity
    */
    var CEILING= "CEILING";
    /**
    * Rounding mode to round towards negative infinity
    */
    var FLOOR= "FLOOR";
    /**
    * Rounding mode to round towards the nearest neighbor unless both neighbors are equidistant, in which case round away from zero.
    */
    var HALF_AWAY_FROM_ZERO= "HALF_AWAY_FROM_ZERO";
    /**
    * Rounding mode to round towards the nearest neighbor unless both neighbors are equidistant, in which case round towards positive infinity.
    */
    var HALF_CEILING= "HALF_CEILING";
    /**
    * Rounding mode to round towards the nearest neighbor unless both neighbors are equidistant, in which case round towards negative infinity.
    */
    var HALF_FLOOR= "HALF_FLOOR";
    /**
    * Rounding mode to round towards the nearest neighbor unless both neighbors are equidistant, in which case round towards zero.
    */
    var HALF_TOWARDS_ZERO= "HALF_TOWARDS_ZERO";
    /**
    * Rounding mode to round towards zero
    */
    var TOWARDS_ZERO= "TOWARDS_ZERO";
}
