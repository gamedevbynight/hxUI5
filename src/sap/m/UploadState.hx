package sap.m;

@:native("sap.m.UploadState")
@:enum extern abstract UploadState(String)
{
    /**
    * The file has been uploaded successfuly.
    */
    var Complete= "Complete";
    /**
    * The file cannot be uploaded due to an error.
    */
    var Error= "Error";
    /**
    * The file is awaiting an explicit command to start being uploaded.
    */
    var Ready= "Ready";
    /**
    * The file is currently being uploaded.
    */
    var Uploading= "Uploading";
}
