package sap.ui.codeeditor;

@:native("sap.ui.codeeditor.CodeEditor")

/**
* Allows to visualize source code of various types with syntax highlighting, line numbers in editable and read only mode. Use this controls in scenarios where the user should be able to inspect and edit source code. NOTE: There is a known limitation where CodeEditor won't work within IconTabBar on Internet Explorer. There is a way to achieve the same functionality - an example of IconTabHeader and a CodeEditor can be found in the CodeEditor's samples.
*/
extern class CodeEditor extends sap.ui.core.Control
{
	@:overload(function(?sId:String, ?mSettings:CodeEditorArgs):Void {})
	public function new(?mSettings:CodeEditorArgs):Void;

	/**
	* Defines custom completer - object implementing a getCompletions method. The method has two parameters - fnCallback method and context object. Context object provides details about oPos and sPrefix as provided by ACE.
	* @param	oCustomCompleter Object with getCompletions method
	* @return	Void
	*/
	public function addCustomCompleter( oCustomCompleter:Dynamic):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:change change} event of this <code>sap.ui.codeeditor.CodeEditor</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.codeeditor.CodeEditor</code> itself.

Fired when the value has changed and the focus leaves the code editor.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.codeeditor.CodeEditor</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.codeeditor.CodeEditor;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:liveChange liveChange} event of this <code>sap.ui.codeeditor.CodeEditor</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.codeeditor.CodeEditor</code> itself.

Fired when the value is changed by user interaction - each keystroke, delete, paste, etc.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.codeeditor.CodeEditor</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachLiveChange( ?oData:Dynamic, fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.codeeditor.CodeEditor;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:change change} event of this <code>sap.ui.codeeditor.CodeEditor</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.codeeditor.CodeEditor;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:liveChange liveChange} event of this <code>sap.ui.codeeditor.CodeEditor</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachLiveChange( fnFunction:(Dynamic)->Void, ?oListener:Dynamic):sap.ui.codeeditor.CodeEditor;

	/**
	* Creates a new subclass of class sap.ui.codeeditor.CodeEditor with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Sets the focus to the code editor
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function focus( ):sap.ui.codeeditor.CodeEditor;

	/**
	* Gets current value of property {@link #getColorTheme colorTheme}.

Sets the editors color theme Possible values are: default, hcb, hcb_bright, hcb_blue, theme-ambiance, chaos, chrome, clouds, clouds_midnight, cobalt, crimson_editor, dawn, dreamweaver, eclipse, github, gob, gruvbox, idle_fingers, iplastic, katzenmilch, kr_theme, kuroir, merbivore, merbivore_soft, mono_industrial, monokai, pastel_on_dark, solarized_dark, solarized_light, sqlserver, terminal, textmate, tomorrow, tomorrow_night, tomorrow_night_blue, tomorrow_night_bright, tomorrow_night_eighties, twilight, dracula vibrant_ink, xcode

Default value is <code>"default"</code>.
	* @return	Value of property <code>colorTheme</code>
	*/
	public function getColorTheme( ):String;

	/**
	* Returns the current value of the code editor
	* @return	Returns the current value of the code editor
	*/
	public function getCurrentValue( ):String;

	/**
	* Gets current value of property {@link #getEditable editable}.

Sets whether the code in the editor can be changed by the user

Default value is <code>true</code>.
	* @return	Value of property <code>editable</code>
	*/
	public function getEditable( ):Bool;

	/**
	* Gets current value of property {@link #getHeight height}.

The height of the code editor. A minimal height of 3rem will be applied in case the height is less than 20px.

Default value is <code>"100%"</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* Gets current value of property {@link #getLineNumbers lineNumbers}.

Sets whether line numbers should be shown

Default value is <code>true</code>.
	* @return	Value of property <code>lineNumbers</code>
	*/
	public function getLineNumbers( ):Bool;

	/**
	* Gets current value of property {@link #getMaxLines maxLines}.

Sets whether the editor height should auto expand to a maximum number of lines. After reaching the maximum number of lines specified, the content of the <code>CodeEditor</code> will become scrollable.

<b>Note:</b> Keep in mind that the auto expand <code>CodeEditor</code> behavior requires the <code>height</code> property to be set to <code>auto</code>.

Default value is <code>0</code>.
	* @return	Value of property <code>maxLines</code>
	*/
	public function getMaxLines( ):Int;

	/**
	* Returns a metadata object for class sap.ui.codeeditor.CodeEditor.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.core.ElementMetadata;

	/**
	* Gets current value of property {@link #getSyntaxHints syntaxHints}.

Sets whether to show syntax hints the editor. This flag is only available if line numbers are shown.

Default value is <code>true</code>.
	* @return	Value of property <code>syntaxHints</code>
	*/
	public function getSyntaxHints( ):Bool;

	/**
	* Gets current value of property {@link #getType type}.

The type of the code in the editor used for syntax highlighting Possible types are: abap, abc, actionscript, ada, apache_conf, applescript, asciidoc, assembly_x86, autohotkey, batchfile, bro, c9search, c_cpp, cirru, clojure, cobol, coffee, coldfusion, csharp, css, curly, d, dart, diff, django, dockerfile, dot, drools, eiffel, ejs, elixir, elm, erlang, forth, fortran, ftl, gcode, gherkin, gitignore, glsl, gobstones, golang, groovy, haml, handlebars, haskell, haskell_cabal, haxe, hjson, html, html_elixir, html_ruby, ini, io, jack, jade, java, javascript, json, jsoniq, jsp, jsx, julia, kotlin, latex, lean, less, liquid, lisp, live_script, livescript, logiql, lsl, lua, luapage, lucene, makefile, markdown, mask, matlab, mavens_mate_log, maze, mel, mips_assembler, mipsassembler, mushcode, mysql, nix, nsis, objectivec, ocaml, pascal, perl, pgsql, php, plain_text, powershell, praat, prolog, properties, protobuf, python, r, razor, rdoc, rhtml, rst, ruby, rust, sass, scad, scala, scheme, scss, sh, sjs, smarty, snippets, soy_template, space, sql, sqlserver, stylus, svg, swift, swig, tcl, tex, text, textile, toml, tsx, twig, typescript, vala, vbscript, velocity, verilog, vhdl, wollok, xml, xquery, yaml, terraform, slim, redshift, red, puppet, php_laravel_blade, mixal, jssm, fsharp, edifact, csp, cssound_score, cssound_orchestra, cssound_document,

Default value is <code>"javascript"</code>.
	* @return	Value of property <code>type</code>
	*/
	public function getType( ):String;

	/**
	* Gets current value of property {@link #getValue value}.

The value displayed in the code editor

Default value is <code>empty string</code>.
	* @return	Value of property <code>value</code>
	*/
	public function getValue( ):String;

	/**
	* Gets current value of property {@link #getValueSelection valueSelection}.

Sets whether the code is automatically selected if a value is set

Default value is <code>false</code>.
	* @return	Value of property <code>valueSelection</code>
	*/
	public function getValueSelection( ):Bool;

	/**
	* Gets current value of property {@link #getWidth width}.

The width of the code editor

Default value is <code>"100%"</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* Pretty-prints the content of the editor
	* @return	Void
	*/
	public function prettyPrint( ):Void;

	/**
	* Sets the color theme of the code editor
	* @param	sTheme See property documentation for accepted values
	* @return	Returns <code>this</code> to allow method chaining
	*/
	public function setColorTheme( sTheme:String):sap.ui.codeeditor.CodeEditor;

	/**
	* Sets a new value for property {@link #getEditable editable}.

Sets whether the code in the editor can be changed by the user

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bEditable New value for property <code>editable</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setEditable( ?bEditable:Bool):sap.ui.codeeditor.CodeEditor;

	/**
	* Sets a new value for property {@link #getHeight height}.

The height of the code editor. A minimal height of 3rem will be applied in case the height is less than 20px.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"100%"</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( ?sHeight:sap.ui.core.CSSSize):sap.ui.codeeditor.CodeEditor;

	/**
	* Sets a new value for property {@link #getLineNumbers lineNumbers}.

Sets whether line numbers should be shown

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bLineNumbers New value for property <code>lineNumbers</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setLineNumbers( ?bLineNumbers:Bool):sap.ui.codeeditor.CodeEditor;

	/**
	* Sets a new value for property {@link #getMaxLines maxLines}.

Sets whether the editor height should auto expand to a maximum number of lines. After reaching the maximum number of lines specified, the content of the <code>CodeEditor</code> will become scrollable.

<b>Note:</b> Keep in mind that the auto expand <code>CodeEditor</code> behavior requires the <code>height</code> property to be set to <code>auto</code>.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>0</code>.
	* @param	iMaxLines New value for property <code>maxLines</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setMaxLines( ?iMaxLines:Int):sap.ui.codeeditor.CodeEditor;

	/**
	* Sets a new value for property {@link #getSyntaxHints syntaxHints}.

Sets whether to show syntax hints the editor. This flag is only available if line numbers are shown.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>true</code>.
	* @param	bSyntaxHints New value for property <code>syntaxHints</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setSyntaxHints( ?bSyntaxHints:Bool):sap.ui.codeeditor.CodeEditor;

	/**
	* Sets a new value for property {@link #getType type}.

The type of the code in the editor used for syntax highlighting Possible types are: abap, abc, actionscript, ada, apache_conf, applescript, asciidoc, assembly_x86, autohotkey, batchfile, bro, c9search, c_cpp, cirru, clojure, cobol, coffee, coldfusion, csharp, css, curly, d, dart, diff, django, dockerfile, dot, drools, eiffel, ejs, elixir, elm, erlang, forth, fortran, ftl, gcode, gherkin, gitignore, glsl, gobstones, golang, groovy, haml, handlebars, haskell, haskell_cabal, haxe, hjson, html, html_elixir, html_ruby, ini, io, jack, jade, java, javascript, json, jsoniq, jsp, jsx, julia, kotlin, latex, lean, less, liquid, lisp, live_script, livescript, logiql, lsl, lua, luapage, lucene, makefile, markdown, mask, matlab, mavens_mate_log, maze, mel, mips_assembler, mipsassembler, mushcode, mysql, nix, nsis, objectivec, ocaml, pascal, perl, pgsql, php, plain_text, powershell, praat, prolog, properties, protobuf, python, r, razor, rdoc, rhtml, rst, ruby, rust, sass, scad, scala, scheme, scss, sh, sjs, smarty, snippets, soy_template, space, sql, sqlserver, stylus, svg, swift, swig, tcl, tex, text, textile, toml, tsx, twig, typescript, vala, vbscript, velocity, verilog, vhdl, wollok, xml, xquery, yaml, terraform, slim, redshift, red, puppet, php_laravel_blade, mixal, jssm, fsharp, edifact, csp, cssound_score, cssound_orchestra, cssound_document,

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"javascript"</code>.
	* @param	sType New value for property <code>type</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setType( ?sType:String):sap.ui.codeeditor.CodeEditor;

	/**
	* Sets a new value for property {@link #getValue value}.

The value displayed in the code editor

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>empty string</code>.
	* @param	sValue New value for property <code>value</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValue( ?sValue:String):sap.ui.codeeditor.CodeEditor;

	/**
	* Sets a new value for property {@link #getValueSelection valueSelection}.

Sets whether the code is automatically selected if a value is set

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>false</code>.
	* @param	bValueSelection New value for property <code>valueSelection</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setValueSelection( ?bValueSelection:Bool):sap.ui.codeeditor.CodeEditor;

	/**
	* Sets a new value for property {@link #getWidth width}.

The width of the code editor

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>"100%"</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( ?sWidth:sap.ui.core.CSSSize):sap.ui.codeeditor.CodeEditor;
}

typedef CodeEditorArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The value displayed in the code editor
	*/
	@:optional var value:String;

	/**
	* The type of the code in the editor used for syntax highlighting Possible types are: abap, abc, actionscript, ada, apache_conf, applescript, asciidoc, assembly_x86, autohotkey, batchfile, bro, c9search, c_cpp, cirru, clojure, cobol, coffee, coldfusion, csharp, css, curly, d, dart, diff, django, dockerfile, dot, drools, eiffel, ejs, elixir, elm, erlang, forth, fortran, ftl, gcode, gherkin, gitignore, glsl, gobstones, golang, groovy, haml, handlebars, haskell, haskell_cabal, haxe, hjson, html, html_elixir, html_ruby, ini, io, jack, jade, java, javascript, json, jsoniq, jsp, jsx, julia, kotlin, latex, lean, less, liquid, lisp, live_script, livescript, logiql, lsl, lua, luapage, lucene, makefile, markdown, mask, matlab, mavens_mate_log, maze, mel, mips_assembler, mipsassembler, mushcode, mysql, nix, nsis, objectivec, ocaml, pascal, perl, pgsql, php, plain_text, powershell, praat, prolog, properties, protobuf, python, r, razor, rdoc, rhtml, rst, ruby, rust, sass, scad, scala, scheme, scss, sh, sjs, smarty, snippets, soy_template, space, sql, sqlserver, stylus, svg, swift, swig, tcl, tex, text, textile, toml, tsx, twig, typescript, vala, vbscript, velocity, verilog, vhdl, wollok, xml, xquery, yaml, terraform, slim, redshift, red, puppet, php_laravel_blade, mixal, jssm, fsharp, edifact, csp, cssound_score, cssound_orchestra, cssound_document,
	*/
	@:optional var type:String;

	/**
	* The width of the code editor
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* The height of the code editor. A minimal height of 3rem will be applied in case the height is less than 20px.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Sets whether the code in the editor can be changed by the user
	*/
	@:optional var editable:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets whether line numbers should be shown
	*/
	@:optional var lineNumbers:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets whether the code is automatically selected if a value is set
	*/
	@:optional var valueSelection:haxe.extern.EitherType<String,Bool>;

	/**
	* Sets whether the editor height should auto expand to a maximum number of lines. After reaching the maximum number of lines specified, the content of the <code>CodeEditor</code> will become scrollable.

<b>Note:</b> Keep in mind that the auto expand <code>CodeEditor</code> behavior requires the <code>height</code> property to be set to <code>auto</code>.
	*/
	@:optional var maxLines:haxe.extern.EitherType<String,Int>;

	/**
	* Sets the editors color theme Possible values are: default, hcb, hcb_bright, hcb_blue, theme-ambiance, chaos, chrome, clouds, clouds_midnight, cobalt, crimson_editor, dawn, dreamweaver, eclipse, github, gob, gruvbox, idle_fingers, iplastic, katzenmilch, kr_theme, kuroir, merbivore, merbivore_soft, mono_industrial, monokai, pastel_on_dark, solarized_dark, solarized_light, sqlserver, terminal, textmate, tomorrow, tomorrow_night, tomorrow_night_blue, tomorrow_night_bright, tomorrow_night_eighties, twilight, dracula vibrant_ink, xcode
	*/
	@:optional var colorTheme:String;

	/**
	* Sets whether to show syntax hints the editor. This flag is only available if line numbers are shown.
	*/
	@:optional var syntaxHints:haxe.extern.EitherType<String,Bool>;

	/**
	* Fired when the value has changed and the focus leaves the code editor.
	*/
	@:optional var change:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;

	/**
	* Fired when the value is changed by user interaction - each keystroke, delete, paste, etc.
	*/
	@:optional var liveChange:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
