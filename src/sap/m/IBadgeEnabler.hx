package sap.m;

@:native("sap.m.IBadgeEnabler")

/**
* A helper class for implementing the {@link sap.m.IBadge} interface.

The class represents a utility for visualising and updating the <code>badge</code> indicator for <code>sap.ui.core.Control</code> instances. It should be created once per <code>IBadge</code> instance.

On its initialization, <codeBadgeEnabler</code> can accept a settings object. The settings object contains the following properties:

<ul> <li><code>position</code> - accepts three predefined string values which add relative CSS classes to the badge element and position it accordingly: <code>topLeft</code>, <code>topRight</code> and <code>inline</code></li>

<li><code>accentColor</code> - accepts string values equal to theme-specific accent colors. For more information, see the {@link https://experience.sap.com/fiori-design-web/quartz-light-colors/#accent-colors SAP Fiori Design Guidelines}.</li>

<li><code>selector</code> - accepts Object, containing one property which is named either <code>selector</code> or <code>suffix</code>. If no selector is passed, the main ID of the control is automatically set as selector value.</li> </ul>
*/
extern class IBadgeEnabler
{
}

