package sap.ui.core;

@:native("sap.ui.core.ExtensionPoint")
extern class ExtensionPoint
{

	/**
	* Creates 0..n UI5 controls from an <code>ExtensionPoint</code>.

One control if the <code>ExtensionPoint</code> is e.g. filled with a <code>View</code>, zero for extension points without configured extension and n controls for multi-root <code>Fragments</code> as extension.
	* @param	mOptions an object map (see below)
	* @return	a Promise, which resolves with an array of 0..n controls created from an <code>ExtensionPoint</code>. If <code>mOptions.createDefaultContent</code> is called and returns a Promise, that Promise is returned by <code>ExtensionPoint.load</code>.
	*/
	public static function load( mOptions:Dynamic):Array<js.lib.Promise<sap.ui.core.Control>>;
}

