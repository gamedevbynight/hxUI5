package jquery.sap.history;

@:native("jQuery.sap.history.NavType")
@:enum extern abstract NavType(String)
{
    /**
    * This indicates that the new hash is achieved by pressing the back button.
    */
    var Back= "Back";
    /**
    * This indicates that the new hash is restored from the bookmark.
    */
    var Bookmark= "Bookmark";
    /**
    * This indicates that the new hash is achieved by pressing the forward button.
    */
    var Forward= "Forward";
    /**
    * This indicates that the new hash is achieved by some unknown direction. This happens when the user navigates out of the application and then click on the forward button in the browser to navigate back to the application.
    */
    var Unknown= "Unknown";
}
