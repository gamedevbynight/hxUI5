package sap.ui.device.media;

@:native("sap.ui.Device.media.RANGESETS")
extern class RANGESETS
{

	/**
	* A 3-step range set (S-L).

The ranges of this set are: <ul> <li><code>"S"</code>: For screens smaller than 520 pixels.</li> <li><code>"M"</code>: For screens greater than or equal to 520 pixels and smaller than 960 pixels.</li> <li><code>"L"</code>: For screens greater than or equal to 960 pixels.</li> </ul>

To use this range set, you must initialize it explicitly ({@link sap.ui.Device.media.initRangeSet}).

If this range set is initialized, a CSS class is added to the page root (<code>html</code> tag) which indicates the current screen width range: <code>sapUiMedia-3Step-<i>NAME_OF_THE_INTERVAL</i></code>.
	*/
	 public static var SAP_3STEPS:Dynamic;

	/**
	* A 4-step range set (S-XL).

The ranges of this set are: <ul> <li><code>"S"</code>: For screens smaller than 520 pixels.</li> <li><code>"M"</code>: For screens greater than or equal to 520 pixels and smaller than 760 pixels.</li> <li><code>"L"</code>: For screens greater than or equal to 760 pixels and smaller than 960 pixels.</li> <li><code>"XL"</code>: For screens greater than or equal to 960 pixels.</li> </ul>

To use this range set, you must initialize it explicitly ({@link sap.ui.Device.media.initRangeSet}).

If this range set is initialized, a CSS class is added to the page root (<code>html</code> tag) which indicates the current screen width range: <code>sapUiMedia-4Step-<i>NAME_OF_THE_INTERVAL</i></code>.
	*/
	 public static var SAP_4STEPS:Dynamic;

	/**
	* A 6-step range set (XS-XXL).

The ranges of this set are: <ul> <li><code>"XS"</code>: For screens smaller than 241 pixels.</li> <li><code>"S"</code>: For screens greater than or equal to 241 pixels and smaller than 400 pixels.</li> <li><code>"M"</code>: For screens greater than or equal to 400 pixels and smaller than 541 pixels.</li> <li><code>"L"</code>: For screens greater than or equal to 541 pixels and smaller than 768 pixels.</li> <li><code>"XL"</code>: For screens greater than or equal to 768 pixels and smaller than 960 pixels.</li> <li><code>"XXL"</code>: For screens greater than or equal to 960 pixels.</li> </ul>

To use this range set, you must initialize it explicitly ({@link sap.ui.Device.media.initRangeSet}).

If this range set is initialized, a CSS class is added to the page root (<code>html</code> tag) which indicates the current screen width range: <code>sapUiMedia-6Step-<i>NAME_OF_THE_INTERVAL</i></code>.
	*/
	 public static var SAP_6STEPS:Dynamic;

	/**
	* A 3-step range set (Phone, Tablet, Desktop).

The ranges of this set are: <ul> <li><code>"Phone"</code>: For screens smaller than 600 pixels.</li> <li><code>"Tablet"</code>: For screens greater than or equal to 600 pixels and smaller than 1024 pixels.</li> <li><code>"Desktop"</code>: For screens greater than or equal to 1024 pixels.</li> </ul>

This range set is initialized by default. An initialization via {@link sap.ui.Device.media.initRangeSet} is not needed.

A CSS class is added to the page root (<code>html</code> tag) which indicates the current screen width range: <code>sapUiMedia-Std-<i>NAME_OF_THE_INTERVAL</i></code>. Furthermore there are 5 additional CSS classes to hide elements based on the width of the screen: <ul> <li><code>sapUiHideOnPhone</code>: Will be hidden if the screen has 600px or less</li> <li><code>sapUiHideOnTablet</code>: Will be hidden if the screen has more than 600px and less than 1023px</li> <li><code>sapUiHideOnDesktop</code>: Will be hidden if the screen is larger than 1024px</li> <li><code>sapUiVisibleOnlyOnPhone</code>: Will be visible only if the screen has less than 600px</li> <li><code>sapUiVisibleOnlyOnTablet</code>: Will be visible only if the screen has 600px or more but less than 1024px</li> <li><code>sapUiVisibleOnlyOnDesktop</code>: Will be visible only if the screen has 1024px or more</li> </ul>
	*/
	 public static var SAP_STANDARD:Dynamic;

	/**
	* A 4-step range set (Phone, Tablet, Desktop, LargeDesktop).

The ranges of this set are: <ul> <li><code>"Phone"</code>: For screens smaller than 600 pixels.</li> <li><code>"Tablet"</code>: For screens greater than or equal to 600 pixels and smaller than 1024 pixels.</li> <li><code>"Desktop"</code>: For screens greater than or equal to 1024 pixels and smaller than 1440 pixels.</li> <li><code>"LargeDesktop"</code>: For screens greater than or equal to 1440 pixels.</li> </ul>

This range set is initialized by default. An initialization via {@link sap.ui.Device.media.initRangeSet} is not needed.

A CSS class is added to the page root (<code>html</code> tag) which indicates the current screen width range: <code>sapUiMedia-StdExt-<i>NAME_OF_THE_INTERVAL</i></code>.
	*/
	 public static var SAP_STANDARD_EXTENDED:Dynamic;


}

