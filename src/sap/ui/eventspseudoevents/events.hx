package sap.ui.eventspseudoevents;

@:native("module:sap/ui/events/PseudoEvents.events")
@:enum extern abstract events(String)
{
    /**
    * Pseudo event for keyboard backspace without modifiers (Ctrl, Alt or Shift)
    */
    var sapbackspace= "sapbackspace";
    /**
    * Pseudo event for keyboard backspace with modifiers (Ctrl, Alt or Shift)
    */
    var sapbackspacemodifiers= "sapbackspacemodifiers";
    /**
    * Pseudo event for pseudo bottom event
    */
    var sapbottom= "sapbottom";
    /**
    * Pseudo event for pseudo collapse event (keyboard numpad -) without modifiers (Ctrl, Alt or Shift)
    */
    var sapcollapse= "sapcollapse";
    /**
    * Pseudo event for pseudo collapse event (keyboard numpad *)
    */
    var sapcollapseall= "sapcollapseall";
    /**
    * Pseudo event for pseudo collapse event (keyboard numpad -) with modifiers (Ctrl, Alt or Shift)
    */
    var sapcollapsemodifiers= "sapcollapsemodifiers";
    /**
    * Pseudo event for pseudo 'decrease' event without modifiers (Ctrl, Alt or Shift)
    */
    var sapdecrease= "sapdecrease";
    /**
    * Pseudo event for pseudo 'decrease' event with modifiers (Ctrl, Alt or Shift)
    */
    var sapdecreasemodifiers= "sapdecreasemodifiers";
    /**
    * Pseudo event indicating delayed double click (e.g. for inline edit)
    */
    var sapdelayeddoubleclick= "sapdelayeddoubleclick";
    /**
    * Pseudo event for keyboard delete without modifiers (Ctrl, Alt or Shift)
    */
    var sapdelete= "sapdelete";
    /**
    * Pseudo event for keyboard delete with modifiers (Ctrl, Alt or Shift)
    */
    var sapdeletemodifiers= "sapdeletemodifiers";
    /**
    * Pseudo event for keyboard arrow down without modifiers (Ctrl, Alt or Shift)
    */
    var sapdown= "sapdown";
    /**
    * Pseudo event for keyboard arrow down with modifiers (Ctrl, Alt or Shift)
    */
    var sapdownmodifiers= "sapdownmodifiers";
    /**
    * Pseudo event for keyboard End without modifiers (Ctrl, Alt or Shift)
    */
    var sapend= "sapend";
    /**
    * Pseudo event for keyboard End with modifiers (Ctrl, Alt or Shift)
    */
    var sapendmodifiers= "sapendmodifiers";
    /**
    * Pseudo event for keyboard enter without modifiers (Ctrl, Alt or Shift)
    */
    var sapenter= "sapenter";
    /**
    * Pseudo event for keyboard enter with modifiers (Ctrl, Alt or Shift)
    */
    var sapentermodifiers= "sapentermodifiers";
    /**
    * Pseudo event for keyboard escape
    */
    var sapescape= "sapescape";
    /**
    * Pseudo event for pseudo expand event (keyboard numpad +) without modifiers (Ctrl, Alt or Shift)
    */
    var sapexpand= "sapexpand";
    /**
    * Pseudo event for pseudo expand event (keyboard numpad +) with modifiers (Ctrl, Alt or Shift)
    */
    var sapexpandmodifiers= "sapexpandmodifiers";
    /**
    * Pseudo event for pseudo 'hide' event (Alt + up-Arrow)
    */
    var saphide= "saphide";
    /**
    * Pseudo event for keyboard Home/Pos1 with modifiers (Ctrl, Alt or Shift)
    */
    var saphome= "saphome";
    /**
    * Pseudo event for keyboard Home/Pos1 without modifiers (Ctrl, Alt or Shift)
    */
    var saphomemodifiers= "saphomemodifiers";
    /**
    * Pseudo event for pseudo 'increase' event without modifiers (Ctrl, Alt or Shift)
    */
    var sapincrease= "sapincrease";
    /**
    * Pseudo event for pseudo 'increase' event with modifiers (Ctrl, Alt or Shift)
    */
    var sapincreasemodifiers= "sapincreasemodifiers";
    /**
    * Pseudo event for keyboard arrow left without modifiers (Ctrl, Alt or Shift)
    */
    var sapleft= "sapleft";
    /**
    * Pseudo event for keyboard arrow left with modifiers (Ctrl, Alt or Shift)
    */
    var sapleftmodifiers= "sapleftmodifiers";
    /**
    * Pseudo event for pressing the '-' (minus) sign.
    */
    var sapminus= "sapminus";
    /**
    * Pseudo event for pseudo 'next' event without modifiers (Ctrl, Alt or Shift)
    */
    var sapnext= "sapnext";
    /**
    * Pseudo event for pseudo 'next' event with modifiers (Ctrl, Alt or Shift)
    */
    var sapnextmodifiers= "sapnextmodifiers";
    /**
    * Pseudo event for keyboard page down without modifiers (Ctrl, Alt or Shift)
    */
    var sappagedown= "sappagedown";
    /**
    * Pseudo event for keyboard page down with modifiers (Ctrl, Alt or Shift)
    */
    var sappagedownmodifiers= "sappagedownmodifiers";
    /**
    * Pseudo event for keyboard page up without modifiers (Ctrl, Alt or Shift)
    */
    var sappageup= "sappageup";
    /**
    * Pseudo event for keyboard page up with modifiers (Ctrl, Alt or Shift)
    */
    var sappageupmodifiers= "sappageupmodifiers";
    /**
    * Pseudo event for pressing the '+' (plus) sign.
    */
    var sapplus= "sapplus";
    /**
    * Pseudo event for pseudo 'previous' event without modifiers (Ctrl, Alt or Shift)
    */
    var sapprevious= "sapprevious";
    /**
    * Pseudo event for pseudo 'previous' event with modifiers (Ctrl, Alt or Shift)
    */
    var sappreviousmodifiers= "sappreviousmodifiers";
    /**
    * Pseudo event for keyboard arrow right without modifiers (Ctrl, Alt or Shift)
    */
    var sapright= "sapright";
    /**
    * Pseudo event for keyboard arrow right with modifiers (Ctrl, Alt or Shift)
    */
    var saprightmodifiers= "saprightmodifiers";
    /**
    * Pseudo event for pseudo 'select' event... space, enter, ... without modifiers (Ctrl, Alt or Shift)
    */
    var sapselect= "sapselect";
    /**
    * Pseudo event for pseudo 'select' event... space, enter, ... with modifiers (Ctrl, Alt or Shift)
    */
    var sapselectmodifiers= "sapselectmodifiers";
    /**
    * Pseudo event for pseudo 'show' event (F4, Alt + down-Arrow)
    */
    var sapshow= "sapshow";
    /**
    * Pseudo event for pseudo skip back (F6 + shift modifier)
    */
    var sapskipback= "sapskipback";
    /**
    * Pseudo event for pseudo skip forward (F6 + no modifier)
    */
    var sapskipforward= "sapskipforward";
    /**
    * Pseudo event for keyboard space without modifiers (Ctrl, Alt or Shift)
    */
    var sapspace= "sapspace";
    /**
    * Pseudo event for keyboard space with modifiers (Ctrl, Alt or Shift)
    */
    var sapspacemodifiers= "sapspacemodifiers";
    /**
    * Pseudo event for keyboard tab (TAB + no modifier)
    */
    var saptabnext= "saptabnext";
    /**
    * Pseudo event for keyboard tab (TAB + shift modifier)
    */
    var saptabprevious= "saptabprevious";
    /**
    * Pseudo event for pseudo top event
    */
    var saptop= "saptop";
    /**
    * Pseudo event for keyboard arrow up without modifiers (Ctrl, Alt or Shift)
    */
    var sapup= "sapup";
    /**
    * Pseudo event for keyboard arrow up with modifiers (Ctrl, Alt or Shift)
    */
    var sapupmodifiers= "sapupmodifiers";
}
