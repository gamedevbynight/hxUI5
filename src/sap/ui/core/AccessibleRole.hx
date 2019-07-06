package sap.ui.core;

@:native("sap.ui.core.AccessibleRole")
@:enum extern abstract AccessibleRole(String)
{
    /**
    * A message with an alert or error information.
    */
    var Alert= "Alert";
    /**
    * A separate window with an alert or error information.
    */
    var AlertDialog= "AlertDialog";
    /**
    * A software unit executing a set of tasks for the user.
    */
    var Application= "Application";
    /**
    * Usually defined as the advertisement at the top of a web page. The banner content typically contains the site or company logo, or other key advertisements.
    */
    var Banner= "Banner";
    /**
    * Allows user-triggered actions.
    */
    var Button= "Button";
    /**
    * A control that has three possible values: true, false, mixed.
    */
    var Checkbox= "Checkbox";
    /**
    * A table cell containing header information for a column.
    */
    var ColumnHeader= "ColumnHeader";
    /**
    * Allows selecting an item from a list, or to enter data directly in the input field.
    */
    var Combobox= "Combobox";
    /**
    * Information about the content on the page. Examples are footnotes, copyrights, or links to privacy statements.
    */
    var ContentInfo= "ContentInfo";
    /**
    * The content of the associated element represents a definition. If there is a definition element within the content, this one represents the term being defined.
    */
    var Definition= "Definition";
    /**
    * Descriptive content for a page element.
    */
    var Description= "Description";
    /**
    * A small window that is designed to interrupt the current application processing in order to inform the user and to get some response.
    */
    var Dialog= "Dialog";
    /**
    * A list of references to members of a single group.
    */
    var Directory= "Directory";
    /**
    * Content that contains related information, such as a book.
    */
    var Document= "Document";
    /**
    * Contains cells of tabular data arranged in rows and columns, for example in a table.
    */
    var Grid= "Grid";
    /**
    * A table cell in a grid where the cells can be active, editable, and selectable. Cells may have functional relationships to controls, for example.
    */
    var GridCell= "GridCell";
    /**
    * A section of user interface objects.
    */
    var Group= "Group";
    /**
    * A heading for a section of the page.
    */
    var Heading= "Heading";
    /**
    * A container for a collection of elements that form an image.
    */
    var Img= "Img";
    /**
    * An interactive reference to a resource.
    */
    var Link= "Link";
    /**
    * A container for non-interactive list items which are the children of the list.
    */
    var List= "List";
    /**
    * A widget that allows the user to select one or more items from a list. The items within the list are static and can contain images.
    */
    var Listbox= "Listbox";
    /**
    * A single item in a list.
    */
    var ListItem= "ListItem";
    /**
    * An area where new information is added, or old information disappears. Information types are chat logs, messaging, or error logs, for example. The log contains a sequence: New information is always added to the end of the log.
    */
    var Log= "Log";
    /**
    * Defines the main content of a document.
    */
    var Main= "Main";
    /**
    * Is used to scroll text across the page.
    */
    var Marquee= "Marquee";
    /**
    * Offers a list of choices to the user.
    */
    var Menu= "Menu";
    /**
    * A container for menu items where each item may activate a submenu.
    */
    var Menubar= "Menubar";
    /**
    * A child in a menu.
    */
    var MenuItem= "MenuItem";
    /**
    * A checkable menu item (tri-state).
    */
    var MenuItemCheckbox= "MenuItemCheckbox";
    /**
    * A menu item which is part of a group of menuitemradio roles.
    */
    var MenuItemRadio= "MenuItemRadio";
    /**
    * A collection of links suitable for use when navigating the document or related documents.
    */
    var Navigation= "Navigation";
    /**
    * The content is parenthetic or ancillary to the main content of the resource.
    */
    var Note= "Note";
    /**
    * A selectable item in a list represented by a select.
    */
    var Option= "Option";
    /**
    * An element whose role is presentational does not need to be mapped to the accessibility API.
    */
    var Presentation= "Presentation";
    /**
    * Shows the execution progress in applications providing functions that take a long time.
    */
    var ProgressBar= "ProgressBar";
    /**
    * An option in single-select list. Only one radio control in a radiogroup can be selected at the same time.
    */
    var Radio= "Radio";
    /**
    * A group of radio controls.
    */
    var RadioGroup= "RadioGroup";
    /**
    * A large section on the web page.
    */
    var Region= "Region";
    /**
    * A row of table cells.
    */
    var Row= "Row";
    /**
    * A table cell containing header information for a row.
    */
    var RowHeader= "RowHeader";
    /**
    * A search section of a web document. In many cases, this is a form used to submit search requests about the site, or a more general Internet wide search service.
    */
    var Search= "Search";
    /**
    * A unique section of the document. In the case of a portal, this may include time display, weather forecast, or stock price.
    */
    var Secondary= "Secondary";
    /**
    * Indicates that the element contains content that is related to the main content of the page.
    */
    var SeeAlso= "SeeAlso";
    /**
    * A line or bar that separates sections of content.
    */
    var Separator= "Separator";
    /**
    * A user input where the user selects an input in a given range. This form of range expects an analogous keyboard interface.
    */
    var Slider= "Slider";
    /**
    * Allows users to select a value from a list of given entries where exactly one value is displayed at runtime, and the other ones can be displayed by scrolling using the arrow up and arrow down key.
    */
    var SpinButton= "SpinButton";
    /**
    * A container for processing advisory information.
    */
    var Status= "Status";
    /**
    * A header for a tab panel.
    */
    var Tab= "Tab";
    /**
    * A list of tabs which are references to tab panels.
    */
    var Tablist= "Tablist";
    /**
    * A container for the resources associated with a tab.
    */
    var Tabpanel= "Tabpanel";
    /**
    * Inputs that allow free-form text as their value.
    */
    var Textbox= "Textbox";
    /**
    * A numerical counter which indicates an amount of elapsed time from a start point, or of the time remaining until a certain end point.
    */
    var Timer= "Timer";
    /**
    * A collection of commonly used functions represented in compact visual form.
    */
    var Toolbar= "Toolbar";
    /**
    * A popup that displays a description for an element when the user passes over or rests on that element. Supplement to the normal tooltip processing of the user agent.
    */
    var Tooltip= "Tooltip";
    /**
    * A form of a list (tree) having groups (subtrees) inside groups (subtrees), where the sub trees can be collapsed and expanded.
    */
    var Tree= "Tree";
    /**
    * A grid whose rows are expandable and collapsable in the same manner as the ones of trees.
    */
    var TreeGrid= "TreeGrid";
    /**
    * A tree node
    */
    var TreeItem= "TreeItem";
}
