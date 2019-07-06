package sap.m;

@:native("sap.m.StepInputStepModeType")
@:enum extern abstract StepInputStepModeType(String)
{
    /**
    * Choosing increase/decrease button will add/subtract the <code>step</code> value to/from the current value. For example, if <code>step</code> is 5, current <code>value</code> is 17 and increase button is chosen, the result will be 22 (5+17).

<b>Note:</b> Using keyboard PageUp/PageDown will add/subtract the <code>step</code> multiplied by the <code>largerStep</code> values to/from the current <code>value</code>. For example, if <code>step</code> is 5, <code>largerStep</code> is 3, current <code>value</code> is 17 and PageUp is chosen, the result would be 32 (5*3+17).

For more information, see {@link sap.m.StepInput}'s <code>step</code>, <code>largerStep</code> and <code>stepMode</code> properties.
    */
    var AdditionAndSubtraction= "AdditionAndSubtraction";
    /**
    * Pressing increase/decrease button will increase/decrease the current <code>value</code> to the closest number that is divisible by the <code>step</code>.

For example, if <code>step</code> is 5, current <code>value</code> is 17 and increase button is chosen, the result will be 20 as it is the closest larger number that is divisible by 5.

<b>Note:</b> Using keyboard PageUp/PageDown will increase/decrease the current <code>value</code> to the closest number that is divisible by the multiplication of the <code>step</code> and the <code>largerStep</code> values. For example, if <code>step</code> is 5, <code>largerStep</code> is 3, current <code>value</code> is 17 and PageUp is chosen, the result would be 30 as it is the closest larger number that is divisible by 15.

The logic above will work only if both <code>step</code> and <code>largerStep</code> are integers.

For more information, see {@link sap.m.StepInput}'s <code>step</code>, <code>largerStep</code> and <code>stepMode</code> properties.
    */
    var Multiple= "Multiple";
}
