package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.ODataMetaModel")

/**
* Implementation of an OData metadata model which offers access to OData V4 metadata. The meta model does not support any public events; attaching an event handler leads to an error.

This model is read-only.
*/
extern class ODataMetaModel extends sap.ui.model.MetaModel
{
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:sap.ui.model.Filter):sap.ui.model.ListBinding{ })
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:sap.ui.model.Sorter, ?aFilters:Array<sap.ui.model.Filter>):sap.ui.model.ListBinding{ })
	@:overload( function(sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:sap.ui.model.Filter):sap.ui.model.ListBinding{ })

	/**
	* Creates a list binding for this metadata model which iterates content from the given path (relative to the given context), sorted and filtered as indicated.

By default, OData names are iterated and a trailing slash is implicitly added to the path (see {@link #requestObject} for the effects this has); technical properties and inline annotations are filtered out.

A path which ends with an "@" segment can be used to iterate all inline or external targeting annotations; no trailing slash is added implicitly; technical properties and OData names are filtered out.
	* @param	sPath A relative or absolute path within the metadata model, for example "/EMPLOYEES"
	* @param	oContext The context to be used as a starting point in case of a relative path
	* @param	aSorters Initial sort order, see {@link sap.ui.model.ListBinding#sort}
	* @param	aFilters Initial application filter(s), see {@link sap.ui.model.ListBinding#filter}; filters with filter operators "All" or "Any" are not supported
	* @return	A list binding for this metadata model
	*/
	public function bindList( sPath:String, ?oContext:sap.ui.model.Context, ?aSorters:Array<sap.ui.model.Sorter>, ?aFilters:Array<sap.ui.model.Filter>):sap.ui.model.ListBinding;

	/**
	* Creates a property binding for this metadata model which refers to the content from the given path (relative to the given context).
	* @param	sPath A relative or absolute path within the metadata model, for example "/EMPLOYEES/ENTRYDATE"
	* @param	oContext The context to be used as a starting point in case of a relative path
	* @param	mParameters Optional binding parameters that are passed to {@link #getObject} to compute the binding's value; if they are given, <code>oContext</code> cannot be omitted
	* @return	A property binding for this metadata model
	*/
	public function bindProperty( sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic):sap.ui.model.PropertyBinding;

	/**
	* Method not supported
	* @return	Void
	*/
	public function bindTree( ):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.v4.ODataMetaModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.MetaModel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:(Dynamic)->Void):(Dynamic)->Void;

	/**
	* Returns a snapshot of each $metadata or annotation file loaded so far, combined into a single "JSON" object according to the streamlined OData V4 Metadata JSON Format.
	* @return	The OData metadata as a "JSON" object, if it is already available, or <code>undefined</code>.
	*/
	public function getData( ):Dynamic;

	/**
	* Returns a map of entity tags for each $metadata or annotation file loaded so far.
	* @return	A map which contains one entry for each $metadata or annotation file loaded so far: the key is the file's URL as a <code>string</code> and the value is the <code>string</code> value of the "ETag" response header for that file. Initially, the map is empty. If no "ETag" response header was sent for a file, the <code>Date</code> value of the "Last-Modified" response header is used instead. The value <code>null</code> is used in case no such header is sent at all. Note that this map may change due to load-on-demand of "cross-service references" (see parameter <code>supportReferences</code> of {@link sap.ui.model.odata.v4.ODataModel#constructor}).
	*/
	public function getETags( ):Dynamic;

	/**
	* Returns the OData metadata model context corresponding to the given OData data model path.
	* @param	sPath An absolute data path within the OData data model, for example "/EMPLOYEES/0/ENTRYDATE"
	* @return	The corresponding metadata context within the OData metadata model, for example with metadata path "/EMPLOYEES/ENTRYDATE"
	*/
	public function getMetaContext( sPath:String):sap.ui.model.Context;

	/**
	* Returns a metadata object for class sap.ui.model.odata.v4.ODataMetaModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the OData metadata model path corresponding to the given OData data model path.
	* @param	sPath An absolute data path within the OData data model, for example "/EMPLOYEES/0/ENTRYDATE" or "/EMPLOYEES('42')/ENTRYDATE
	* @return	The corresponding metadata path within the OData metadata model, for example "/EMPLOYEES/ENTRYDATE"
	*/
	public function getMetaPath( sPath:String):String;

	/**
	* Returns the metadata object for the given path relative to the given context. Returns <code>undefined</code> in case the metadata is not (yet) available. Use {@link #requestObject} for asynchronous access.
	* @param	sPath A relative or absolute path within the metadata model
	* @param	oContext The context to be used as a starting point in case of a relative path
	* @param	mParameters Optional (binding) parameters; if they are given, <code>oContext</code> cannot be omitted
	* @return	The requested metadata object if it is already available, or <code>undefined</code>
	*/
	public function getObject( sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic):Dynamic;

	/**
	* Method not supported
	* @return	Void
	*/
	public function getOriginalProperty( ):Void;

	/**
	* Returns the UI5 type for the given property path that formats and parses corresponding to the property's EDM type and constraints. The property's type must be a primitive type. Use {@link #requestUI5Type} for asynchronous access.
	* @param	sPath An absolute path to an OData property within the OData data model
	* @param	mFormatOptions Type-specific format options, since 1.81.0. The boolean format option "parseKeepsEmptyString" applies to {@link sap.ui.model.odata.type.String} only and is ignored for all other types. All other format options are passed "as is".
	* @return	The corresponding UI5 type from {@link sap.ui.model.odata.type}, if all required metadata to calculate this type is already available; if no specific type can be determined, a warning is logged and {@link sap.ui.model.odata.type.Raw} is used
	*/
	public function getUI5Type( sPath:String, ?mFormatOptions:Dynamic):sap.ui.model.odata.type.ODataType;

	/**
	* Determines which type of value list exists for the given property.
	* @param	sPropertyPath An absolute path to an OData property within the OData data model
	* @return	The type of the value list
	*/
	public function getValueListType( sPropertyPath:String):sap.ui.model.odata.v4.ValueListType;

	/**
	* Method not supported
	* @return	Void
	*/
	public function refresh( ):Void;

	/**
	* Request currency customizing based on the code list reference given in the entity container's <code>com.sap.vocabularies.CodeList.v1.CurrencyCodes</code> annotation. The corresponding HTTP request uses the HTTP headers obtained via {@link sap.ui.model.odata.v4.ODataModel#getHttpHeaders} from this meta model's data model.
	* @param	vRawValue If present, it must be this meta model's root entity container
	* @param	oDetails The details object
	* @return	A promise resolving with the currency customizing which is a map from currency key to an object with the following properties: <ul> <li>StandardCode: The language-independent standard code (e.g. ISO) for the currency as referred to via the <code>com.sap.vocabularies.CodeList.v1.StandardCode</code> annotation on the currency's key, if present <li>Text: The language-dependent text for the currency as referred to via the <code>com.sap.vocabularies.Common.v1.Text</code> annotation on the currency's key <li>UnitSpecificScale: The decimals for the currency as referred to via the <code>com.sap.vocabularies.Common.v1.UnitSpecificScale</code> annotation on the currency's key; entries where this would be <code>null</code> are ignored, and an error is logged </ul> It resolves with <code>null</code>, if no <code>com.sap.vocabularies.CodeList.v1.CurrencyCodes</code> annotation is found. It is rejected, if there is not exactly one currency key, or if the currency customizing cannot be loaded.
	*/
	public function requestCurrencyCodes( ?vRawValue:Dynamic, ?oDetails:Dynamic):js.lib.Promise<ODataMetaModel>;

	/**
	* Requests a snapshot of each $metadata or annotation file loaded so far, combined into a single "JSON" object according to the streamlined OData V4 Metadata JSON Format. It is a map from all currently known qualified names to their values, with the special key "$EntityContainer" mapped to the root entity container's qualified name as a starting point. See {@link topic:87aac894a40640f89920d7b2a414499b OData V4 Metadata JSON Format}.

Note that this snapshot may change due to load-on-demand of "cross-service references" (see parameter <code>supportReferences</code> of {@link sap.ui.model.odata.v4.ODataModel#constructor}).
	* @return	A promise which is resolved with the OData metadata as a "JSON" object as soon as it is available.
	*/
	public function requestData( ):js.lib.Promise<ODataMetaModel>;

	/**
	* Requests the metadata value for the given path relative to the given context. Returns a <code>Promise</code> which is resolved with the requested metadata value or rejected with an error (only in case metadata cannot be loaded). An invalid path leads to an <code>undefined</code> result and a warning is logged. Use {@link #getObject} for synchronous access.

A relative path is appended to the context's path separated by a forward slash("/"). A relative path starting with "@" (that is, an annotation) is appended without a separator. Use "./" as a prefix for such a relative path to enforce a separator.

Example: <pre>
&lt;template:with path="/EMPLOYEES/ENTRYDATE" var="property">
  &lt;!-- /EMPLOYEES/ENTRYDATE/$Type -->
  "{property>$Type}"

  &lt;!-- /EMPLOYEES/ENTRYDATE@com.sap.vocabularies.Common.v1.Text -->
  "{property>@com.sap.vocabularies.Common.v1.Text}"

  &lt;!-- /EMPLOYEES/ENTRYDATE/@com.sap.vocabularies.Common.v1.Text -->
  "{property>./@com.sap.vocabularies.Common.v1.Text}"
&lt;/template:with>
</pre>

The basic idea is that every path described in "14.2.1 Attribute Target" in specification "OData Version 4.0 Part 3: Common Schema Definition Language" is a valid absolute path within the metadata model if a leading slash is added; for example "/" + "MySchema.MyEntityContainer/MyEntitySet/MyComplexProperty/MyNavigationProperty". Also, every path described in "14.5.2 Expression edm:AnnotationPath", "14.5.11 Expression edm:NavigationPropertyPath", "14.5.12 Expression edm:Path", and "14.5.13 Expression edm:PropertyPath" is a valid relative path within the metadata model if a suitable prefix is added which addresses an entity container, entity set, singleton, complex type, entity type, or property; for example "/MySchema.MyEntityType/MyProperty" + "@vCard.Address#work/FullName".

The absolute path is split into segments and followed step-by-step, starting at the global scope of all known qualified OData names. There are two technical properties there: "$Version" (typically "4.0") and "$EntityContainer" with the name of the single entity container for this metadata model's service.

An empty segment in between is invalid, except to force return type lookup for operation overloads (see below). An empty segment at the end caused by a trailing slash differentiates between a name and the object it refers to. This way, "/$EntityContainer" refers to the name of the single entity container and "/$EntityContainer/" refers to the single entity container as an object.

The segment "@sapui.name" refers back to the last OData name (simple identifier or qualified name) or annotation name encountered during path traversal immediately before "@sapui.name": <ul> <li> "/EMPLOYEES@sapui.name" results in "EMPLOYEES" and "/EMPLOYEES/@sapui.name" results in the same as "/EMPLOYEES/$Type", that is, the qualified name of the entity set's type (see below how "$Type" is inserted implicitly). Note how the separating slash again makes a difference here. <li> "/EMPLOYEES/@com.sap.vocabularies.Common.v1.Label@sapui.name" results in "@com.sap.vocabularies.Common.v1.Label" and a slash does not make any difference as long as the annotation does not have a "$Type" property. <li> A technical property (that is, a numerical segment or one starting with a "$") immediately before "@sapui.name" is invalid, for example "/$EntityContainer@sapui.name". </ul> The path must not continue after "@sapui.name".

If the current object is a string value, that string value is treated as a relative path and followed step-by-step before the next segment is processed. Except for this, a path must not continue if it comes across a non-object value. Such a string value can be a qualified name (example path "/$EntityContainer/..."), a simple identifier (example path "/TEAMS/$NavigationPropertyBinding/TEAM_2_EMPLOYEES/...") including the special name "$ReturnType" (since 1.71.0), or even a path according to "14.5.12 Expression edm:Path" etc. (example path "/TEAMS/@com.sap.vocabularies.UI.v1.LineItem/0/Value/$Path/...".

Segments starting with an "@" character, for example "@com.sap.vocabularies.Common.v1.Label", address annotations at the current object. As the first segment, they refer to the single entity container. For objects which can only be annotated inline (see "14.3 Element edm:Annotation" minus "14.2.1 Attribute Target"), the object already contains the annotations as a property. For objects which can (only or also) be annotated via external targeting, the object does not contain any annotation as a property. Such annotations MUST be accessed via a path. Such objects include operations (that is, actions and functions) and their parameters, which can be annotated for a single overload or for all overloads at the same time.

Segments starting with an OData name followed by an "@" character, for example "/TEAMS@Org.OData.Capabilities.V1.TopSupported", address annotations at an entity set, singleton, or property, not at the corresponding type. In contrast, "/TEAMS/@com.sap.vocabularies.Common.v1.Deletable" (note the separating slash) addresses an annotation at the entity set's type. This is in line with the special rule of "14.5.12 Expression edm:Path" regarding annotations at a navigation property itself.

"@" can be used as a segment to address a map of all annotations of the current object. This is useful for iteration, for example via <code>&lt;template:repeat list="{entityType>@}" ...></code>.

Annotations of an annotation are addressed not by two separate segments, but by a single segment like "@com.sap.vocabularies.Common.v1.Text@com.sap.vocabularies.Common.v1.TextArrangement". Each annotation can have a qualifier, for example "@first#foo@second#bar". Note: If the first annotation's value is a record, a separate segment addresses an annotation of that record, not an annotation of the first annotation itself. In a similar way, annotations of "7.2 Element edm:ReferentialConstraint", "7.3 Element edm:OnDelete", "10.2 Element edm:Member" and "14.5.14.2 Element edm:PropertyValue" are addressed by segments like "&lt;7.2.1 Attribute Property>@...", "$OnDelete@...", "&lt;10.2.1 Attribute Name>@..." and "&lt;14.5.14.2.1 Attribute Property>@..." (where angle brackets denote a variable part and sections refer to specification "OData Version 4.0 Part 3: Common Schema Definition Language").

Annotations starting with "@@", for example "@@sap.ui.model.odata.v4.AnnotationHelper.isMultiple" or "@@.AH.isMultiple" or "@@.isMultiple", represent computed annotations. Their name without the "@@" prefix must refer to a function in <code>mParameters.scope</code> in case of a relative name starting with a dot, which is stripped before lookup; see the <code>&lt;template:alias></code> instruction for XML Templating. In case of an absolute name, it is searched in <code>mParameters.scope</code> first and then in the global namespace. The names "requestCurrencyCodes" and "requestUnitsOfMeasure" default to {@link #requestCurrencyCodes} and {@link #requestUnitsOfMeasure} resp. if not present in <code>mParameters.scope</code>. This function is called with the current object (or primitive value) and additional details and returns the result of this {@link #requestObject} call. The additional details are given as an object with the following properties: <ul> <li><code>{boolean} $$valueAsPromise</code> Whether the computed annotation may return a <code>Promise</code> resolving with its value (since 1.57.0) <li><code>{@link sap.ui.model.Context} context</code> Points to the current object <li><code>{object} overload</code> In case of annotations of an operation or a parameter, if filtering by binding parameter determines a single operation overload, that overload is passed (since 1.71.0), else <code>undefined</code> <li><code>{string} schemaChildName</code> The qualified name of the schema child where the computed annotation has been found </ul> Computed annotations cannot be iterated by "@". The path must not continue after a computed annotation. Since 1.77.0, arguments can be given to a computed annotation much like a JavaScript function call. The left parenthesis must immediately follow the name and no whitespace must follow the right parenthesis. In between, a comma separated list of JSON values may be given (see <code>JSON.parse</code>); string literals may be enclosed in single or double quotes; property names in object literals need not be quoted; curly brackets must be replaced by <code>$(</code> and <code>$)</code> respectively, no matter where they appear, and there is no escaping for <code>$(</code> and <code>$)</code> to prevent replacement back to curly brackets before parsing; as usual, <code>null</code> is supported while <code>undefined</code> is not. Example: "@@AH.format($(style : 'short'$)))" or "@@AH.format(null, $($$noPatch : true$)))".

A segment which represents an OData qualified name is looked up in the global scope ("scope lookup") and thus determines a schema child which is used later on. Unknown qualified names are invalid. This way, "/acme.DefaultContainer/EMPLOYEES" addresses the "EMPLOYEES" child of the schema child named "acme.DefaultContainer". This also works indirectly ("/$EntityContainer/EMPLOYEES") and implicitly ("/EMPLOYEES", see below).

A segment which represents an OData simple identifier (or the special names "$ReturnType", since 1.71.0, or "$Parameter", since 1.73.0) needs special preparations. The same applies to the empty segment after a trailing slash. <ol> <li> If the current object has a "$Action", "$Function" or "$Type" property, it is used for scope lookup first. This way, "/EMPLOYEES/ENTRYDATE" addresses the same object as "/EMPLOYEES/$Type/ENTRYDATE", namely the "ENTRYDATE" child of the entity type corresponding to the "EMPLOYEES" child of the entity container. The other cases jump from an operation import to the corresponding operation overloads. <li> Else if the segment is the first one within its path, the last schema child addressed via scope lookup is used instead of the current object. This can only happen indirectly as in "/TEAMS/$NavigationPropertyBinding/TEAM_2_EMPLOYEES/..." where the schema child is the entity container and the navigation property binding can contain the simple identifier of another entity set within the same container.

If the segment is the first one overall, "$EntityContainer" is inserted into the path implicitly. In other words, the entity container is used as the initial schema child. This way, "/EMPLOYEES" addresses the same object as "/$EntityContainer/EMPLOYEES", namely the "EMPLOYEES" child of the entity container. <li> Afterwards, if the current object is an array, it represents overloads for an operation. Annotations of an operation (since 1.71.0) or a parameter (since 1.66.0) can be immediately addressed, no matter if they apply for a single overload or for all overloads at the same time, for example "/TEAMS/acme.NewAction@" or "/TEAMS/acme.NewAction/Team_ID@". Annotations of an unbound operation overload can be addressed like "/OperationImport/@$ui5.overload@", while "/OperationImport/@" addresses annotations of the operation import itself. The special name "$ReturnType" can be used (since 1.71.0) like a parameter to address annotations of the return type instead, for example "/TEAMS/acme.NewAction/$ReturnType@".

Operation overloads are then filtered by binding parameter; multiple overloads after filtering are invalid except if addressing all overloads via the segment "@$ui5.overload", for example "/acme.NewAction/@$ui5.overload".

Once a single overload has been determined, its parameters can be immediately addressed, for example "/TEAMS/acme.NewAction/Team_ID", or the special name "$Parameter" can be used (since 1.73.0), for example "/TEAMS/acme.NewAction/$Parameter/Team_ID". The special name "$ReturnType" can be used (since 1.71.0) like a parameter to address the return type instead, for example "/TEAMS/acme.NewAction/$ReturnType". For all other names, the overload's "$ReturnType/$Type" is used for scope lookup. This way, "/GetOldestWorker/AGE" addresses the same object as "/GetOldestWorker/$ReturnType/AGE" or "/GetOldestWorker/$Function/0/$ReturnType/$Type/AGE", and "/TEAMS/acme.NewAction/MemberCount" (assuming "MemberCount" is not a parameter in this example) addresses the same object as "/TEAMS/acme.NewAction/$ReturnType/MemberCount" or "/TEAMS/acme.NewAction/@$ui5.overload/0/$ReturnType/$Type/MemberCount". In case a name can refer both to a parameter and to a property of the return type, an empty segment can be used instead of "@$ui5.overload/0/$ReturnType/$Type" or "$ReturnType" to force return type lookup, for example "/TEAMS/acme.NewAction//Team_ID".

For primitive return types, the special segment "value" can be used to refer to the return type itself (see {@link sap.ui.model.odata.v4.ODataContextBinding#execute}). This way, "/GetOldestAge/value" addresses the same object as "/GetOldestAge/$ReturnType" or "/GetOldestAge/$Function/0/$ReturnType" or "/GetOldestAge/@$ui5.overload/0/$ReturnType" (which is needed for automatic type determination, see {@link #requestUI5Type}). </ol>

A trailing slash can be used to continue a path and thus force scope lookup or OData simple identifier preparations, but then stay at the current object. This way, "/EMPLOYEES/$Type/" addresses the entity type itself corresponding to the "EMPLOYEES" child of the entity container. Although the empty segment is not an OData simple identifier, it can be used as a placeholder for one. In this way, "/EMPLOYEES/" addresses the same entity type as "/EMPLOYEES/$Type/". That entity type in turn is a map of all its OData children (that is, structural and navigation properties) and determines the set of possible child names that might be used after the trailing slash.

"$" can be used as the last segment to continue a path and thus force scope lookup, but no OData simple identifier preparations. In this way, it serves as a placeholder for a technical property. The path must not continue after "$", except for a computed annotation. Example: "/TEAMS/@com.sap.vocabularies.UI.v1.LineItem/0/Value/$Path/$" addresses the referenced property itself, not the corresponding type like "/TEAMS/@com.sap.vocabularies.UI.v1.LineItem/0/Value/$Path/" does. "/TEAMS/@com.sap.vocabularies.UI.v1.LineItem/0/Target/$NavigationPropertyPath/$@@.isMultiple" calls a computed annotation on the navigation property itself, not on the corresponding type.

Any other segment, including an OData simple identifier, is looked up as a property of the current object.
	* @param	sPath A relative or absolute path within the metadata model
	* @param	oContext The context to be used as a starting point in case of a relative path
	* @param	mParameters Optional (binding) parameters; if they are given, <code>oContext</code> cannot be omitted
	* @return	A promise which is resolved with the requested metadata value as soon as it is available; it is rejected if the requested metadata cannot be loaded
	*/
	public function requestObject( sPath:String, ?oContext:sap.ui.model.Context, ?mParameters:Dynamic):js.lib.Promise<ODataMetaModel>;

	/**
	* Requests the UI5 type for the given property path that formats and parses corresponding to the property's EDM type and constraints. The property's type must be a primitive type. Use {@link #getUI5Type} for synchronous access.
	* @param	sPath An absolute path to an OData property within the OData data model
	* @param	mFormatOptions Type-specific format options, since 1.81.0. The boolean format option "parseKeepsEmptyString" applies to {@link sap.ui.model.odata.type.String} only and is ignored for all other types. All other format options are passed "as is".
	* @return	A promise that gets resolved with the corresponding UI5 type from {@link sap.ui.model.odata.type}; if no specific type can be determined, a warning is logged and {@link sap.ui.model.odata.type.Raw} is used
	*/
	public function requestUI5Type( sPath:String, ?mFormatOptions:Dynamic):js.lib.Promise<ODataMetaModel>;

	/**
	* Request unit customizing based on the code list reference given in the entity container's <code>com.sap.vocabularies.CodeList.v1.UnitOfMeasure</code> annotation. The corresponding HTTP request uses the HTTP headers obtained via {@link sap.ui.model.odata.v4.ODataModel#getHttpHeaders} from this meta model's data model.
	* @param	vRawValue If present, it must be this meta model's root entity container
	* @param	oDetails The details object
	* @return	A promise resolving with the unit customizing which is a map from unit key to an object with the following properties: <ul> <li>StandardCode: The language-independent standard code (e.g. ISO) for the unit as referred to via the <code>com.sap.vocabularies.CodeList.v1.StandardCode</code> annotation on the unit's key, if present <li>Text: The language-dependent text for the unit as referred to via the <code>com.sap.vocabularies.Common.v1.Text</code> annotation on the unit's key <li>UnitSpecificScale: The decimals for the unit as referred to via the <code>com.sap.vocabularies.Common.v1.UnitSpecificScale</code> annotation on the unit's key; entries where this would be <code>null</code> are ignored, and an error is logged </ul> It resolves with <code>null</code>, if no <code>com.sap.vocabularies.CodeList.v1.UnitOfMeasure</code> annotation is found. It is rejected, if there is not exactly one unit key, or if the unit customizing cannot be loaded.
	*/
	public function requestUnitsOfMeasure( ?vRawValue:Dynamic, ?oDetails:Dynamic):js.lib.Promise<ODataMetaModel>;

	/**
	* Requests information to retrieve a value list for the property given by <code>sPropertyPath</code>.
	* @param	sPropertyPath An absolute path to an OData property within the OData data model or a (meta) path to an operation parameter, for example "/TEAMS(1)/acme.NewAction/Team_ID"
	* @param	bAutoExpandSelect The value of the parameter <code>autoExpandSelect</code> for value list models created by this method. If the value list model is the data model associated with this meta model, this flag has no effect. Supported since 1.68.0
	* @return	A promise which is resolved with a map of qualifier to value list mapping objects structured as defined by <code>com.sap.vocabularies.Common.v1.ValueListType</code>; the map entry with key "" represents the mapping without qualifier. Each entry has an additional property "$model" which is the {@link sap.ui.model.odata.v4.ODataModel} instance to read value list data via this mapping; that model is constructed with the HTTP headers obtained via {@link sap.ui.model.odata.v4.ODataModel#getHttpHeaders} from this meta model's data model. Since 1.80.0, that model's parameter "sharedRequests" is set automatically (see {@link sap.ui.model.odata.v4.ODataModel#constructor}). If the value list model is the data model associated with this meta model, use the binding-specific parameter "$$sharedRequest" instead, see {@link sap.ui.model.odata.v4.ODataModel#bindList}.

For fixed values, only one mapping is expected and the qualifier is ignored. The mapping is available with key "".

The promise is rejected with an error if there is no value list information available for the given property path. Use {@link #getValueListType} to determine if value list information exists. It is also rejected with an error if the value list metadata is inconsistent.

An inconsistency can result from one of the following reasons: <ul> <li> There is a reference, but the referenced service does not contain mappings for the property. <li> The referenced service contains annotation targets in the namespace of the data service that are not mappings for the property. <li> Two different referenced services contain a mapping using the same qualifier. <li> A service is referenced twice. <li> There are multiple mappings for a fixed value list. <li> A <code>com.sap.vocabularies.Common.v1.ValueList</code> annotation in a referenced service has the property <code>CollectionRoot</code> or <code>SearchSupported</code>. <li> A <code>com.sap.vocabularies.Common.v1.ValueList</code> annotation in the service itself has the property <code>SearchSupported</code> and additionally the annotation <code>com.sap.vocabularies.Common.v1.ValueListWithFixedValues</code> is defined. </ul>
	*/
	public function requestValueListInfo( sPropertyPath:String, ?bAutoExpandSelect:Bool):js.lib.Promise<ODataMetaModel>;

	/**
	* Determines which type of value list exists for the given property.
	* @param	sPropertyPath An absolute path to an OData property within the OData data model
	* @return	A promise that is resolved with the type of the value list, a constant of the enumeration {@link sap.ui.model.odata.v4.ValueListType}. The promise is rejected if the property cannot be found in the metadata.
	*/
	public function requestValueListType( sPropertyPath:String):js.lib.Promise<ODataMetaModel>;

	/**
	* Method not supported
	* @return	Void
	*/
	public function setLegacySyntax( ):Void;

	/**
	* Returns a string representation of this object including the URL to the $metadata document of the service.
	* @return	A string description of this model
	*/
	public function toString( ):String;
}

