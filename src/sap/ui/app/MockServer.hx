package sap.ui.app;

@:native("sap.ui.app.MockServer")

/**
* Class to mock a server.
*/
extern class MockServer extends sap.ui.base.ManagedObject
{
	@:overload(function(?sId:String, ?mSettings:MockServerArgs):Void {})
	public function new(?mSettings:MockServerArgs):Void;
}

typedef MockServerArgs = sap.ui.base.ManagedObject.ManagedObjectArgs & {
}
