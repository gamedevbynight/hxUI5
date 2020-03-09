package sap.ui.model.odata;

@:native("sap.ui.model.odata.ODataMetaModel")

/**
* Implementation of an OData meta model which offers a unified access to both OData V2 metadata and V4 annotations. It uses the existing {@link sap.ui.model.odata.ODataMetadata} as a foundation and merges V4 annotations from the existing {@link sap.ui.model.odata.ODataAnnotations} directly into the corresponding model element.

Also, annotations from the "http://www.sap.com/Protocols/SAPData" namespace are lifted up from the <code>extensions</code> array and transformed from objects into simple properties with an "sap:" prefix for their name. Note that this happens in addition, thus the following example shows both representations. This way, such annotations can be addressed via a simple relative path instead of searching an array. <pre>
		{
			"name" : "BusinessPartnerID",
			"extensions" : [{
				"name" : "label",
				"value" : "Bus. Part. ID",
				"namespace" : "http://www.sap.com/Protocols/SAPData"
			}],
			"sap:label" : "Bus. Part. ID"
		}
</pre>

As of 1.29.0, the corresponding vocabulary-based annotations for the following "<a href="http://www.sap.com/Protocols/SAPData">SAP Annotations for OData Version 2.0</a>" are added, if they are not yet defined in the V4 annotations: <ul> <li><code>label</code>;</li> <li><code>schema-version</code> (since 1.53.0) on schemas;</li> <li><code>creatable</code>, <code>deletable</code>, <code>deletable-path</code>, <code>pageable</code>, <code>requires-filter</code>, <code>searchable</code>, <code>topable</code>, <code>updatable</code> and <code>updatable-path</code> on entity sets; </li> <li><code>creatable</code> (since 1.41.0), <code>creatable-path</code> (since 1.41.0) and <code>filterable</code> (since 1.39.0) on navigation properties;</li> <li><code>aggregation-role</code> ("dimension" and "measure", both since 1.45.0), <code>creatable</code>, <code>display-format</code> ("UpperCase" and "NonNegative"), <code>field-control</code>, <code>filterable</code>, <code>filter-restriction</code>, <code>heading</code>, <code>precision</code>, <code>quickinfo</code>, <code>required-in-filter</code>, <code>sortable</code>, <code>text</code>, <code>unit</code>, <code>updatable</code> and <code>visible</code> on properties;</li> <li><code>semantics</code>; the following values are supported: <ul> <li>"bday", "city", "country", "email" (including support for types, for example "email;type=home,pref"), "familyname", "givenname", "honorific", "middlename", "name", "nickname", "note", "org", "org-unit", "org-role", "photo", "pobox", "region", "street", "suffix", "tel" (including support for types, for example "tel;type=cell,pref"), "title" and "zip" (mapped to V4 annotation <code>com.sap.vocabularies.Communication.v1.Contact</code>); </li> <li>"class", "dtend", "dtstart", "duration", "fbtype", "location", "status", "transp" and "wholeday" (mapped to V4 annotation <code>com.sap.vocabularies.Communication.v1.Event</code>);</li> <li>"body", "from", "received", "sender" and "subject" (mapped to V4 annotation <code>com.sap.vocabularies.Communication.v1.Message</code>);</li> <li>"completed", "due", "percent-complete" and "priority" (mapped to V4 annotation <code>com.sap.vocabularies.Communication.v1.Task</code>);</li> <li>"fiscalyear", "fiscalyearperiod" (mapped to the corresponding V4 annotation <code>com.sap.vocabularies.Common.v1.IsFiscal(Year|YearPeriod)</code>);</li> <li>"year", "yearmonth", "yearmonthday", "yearquarter", "yearweek" (mapped to the corresponding V4 annotation <code>com.sap.vocabularies.Common.v1.IsCalendar(Year|YearMonth|Date|YearQuarter|YearWeek)</code>); </li> <li>"url" (mapped to V4 annotation <code>Org.OData.Core.V1.IsURL"</code>).</li> </ul> </ul> For example: <pre>
		{
			"name" : "BusinessPartnerID",
			...
			"sap:label" : "Bus. Part. ID",
			"com.sap.vocabularies.Common.v1.Label" : {
				"String" : "Bus. Part. ID"
			}
		}
</pre> <b>Note:</b> Annotation terms are not merged, but replaced as a whole ("PUT" semantics). That means, if you have, for example, an OData V2 annotation <code>sap:sortable=false</code> at a property <code>PropA</code>, the corresponding OData V4 annotation is added to each entity set to which this property belongs: <pre>
		"Org.OData.Capabilities.V1.SortRestrictions": {
			"NonSortableProperties" : [
				{"PropertyPath" : "BusinessPartnerID"}
			]
		}
</pre> If the same term <code>"Org.OData.Capabilities.V1.SortRestrictions"</code> targeting one of these entity sets is also contained in an annotation file, the complete OData V4 annotation converted from the OData V2 annotation is replaced by the one contained in the annotation file for the specified target. Converted annotations never use a qualifier and are only overwritten by the same annotation term without a qualifier.

This model is read-only and thus only supports {@link sap.ui.model.BindingMode.OneTime OneTime} binding mode. No events ({@link sap.ui.model.Model#event:parseError parseError}, {@link sap.ui.model.Model#event:requestCompleted requestCompleted}, {@link sap.ui.model.Model#event:requestFailed requestFailed}, {@link sap.ui.model.Model#event:requestSent requestSent}) are fired!

Within the meta model, the objects are arranged in arrays. <code>/dataServices/schema</code>, for example, is an array of schemas where each schema has an <code>entityType</code> property with an array of entity types, and so on. So, <code>/dataServices/schema/0/entityType/16</code> can be the path to the entity type with name "Order" in the schema with namespace "MySchema". However, these paths are not stable: If an entity type with lower index is removed from the schema, the path to <code>Order</code> changes to <code>/dataServices/schema/0/entityType/15</code>.

To avoid problems with changing indexes, {@link sap.ui.model.Model#getObject getObject} and {@link sap.ui.model.Model#getProperty getProperty} support XPath-like queries for the indexes (since 1.29.1). Each index can be replaced by a query in square brackets. You can, for example, address the schema using the path <code>/dataServices/schema/[${namespace}==='MySchema']</code> or the entity using <code>/dataServices/schema/[${namespace}==='MySchema']/entityType/[sap.ui.core==='Order']</code>.

The syntax inside the square brackets is the same as in expression binding. The query is executed for each object in the array until the result is true (truthy) for the first time. This object is then chosen.

<b>BEWARE:</b> Access to this OData meta model will fail before the promise returned by {@link #loaded loaded} has been resolved!
*/
extern class ODataMetaModel extends sap.ui.model.MetaModel
{

	/**
	* 
	* @param	oMetadata the OData model's metadata object
	* @param	oAnnotations the OData model's annotations object
	* @param	oODataModelInterface the private interface object of the OData model which provides friend access to selected methods
	* @return	Object
	*/
	public function new( ?oMetadata:sap.ui.model.odata.ODataMetadata, ?oAnnotations:sap.ui.model.odata.ODataAnnotations, ?oODataModelInterface:Dynamic):Void;

	/**
	* Creates a new subclass of class sap.ui.model.odata.ODataMetaModel with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.model.MetaModel.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to the metadata implementation used by this class
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Returns the OData meta model context corresponding to the given OData model path.
	* @param	sPath an absolute path pointing to an entity or property, e.g. "/ProductSet(1)/ToSupplier/BusinessPartnerID"; this equals the <a href="http://www.odata.org/documentation/odata-version-2-0/uri-conventions#ResourcePath"> resource path</a> component of a URI according to OData V2 URI conventions
	* @return	the context for the corresponding metadata object, i.e. an entity type or its property, or <code>null</code> in case no path is given
	*/
	public function getMetaContext( ?sPath:String):sap.ui.model.Context;

	/**
	* Returns a metadata object for class sap.ui.model.odata.ODataMetaModel.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Returns the OData association end corresponding to the given entity type's navigation property of given name.
	* @param	oEntityType an entity type as returned by {@link #getODataEntityType getODataEntityType}
	* @param	sName the name of a navigation property within this entity type
	* @return	the OData association end or <code>null</code> if no such association end is found
	*/
	public function getODataAssociationEnd( oEntityType:Dynamic, sName:String):Dynamic;

	/**
	* Returns the OData association <em>set</em> end corresponding to the given entity type's navigation property of given name.
	* @param	oEntityType an entity type as returned by {@link #getODataEntityType getODataEntityType}
	* @param	sName the name of a navigation property within this entity type
	* @return	the OData association set end or <code>null</code> if no such association set end is found
	*/
	public function getODataAssociationSetEnd( oEntityType:Dynamic, sName:String):Dynamic;

	/**
	* Returns the OData complex type with the given qualified name, either as a path or as an object, as indicated.
	* @param	sQualifiedName a qualified name, e.g. "ACME.Address"
	* @param	bAsPath determines whether the complex type is returned as a path or as an object
	* @return	(the path to) the complex type with the given qualified name; <code>undefined</code> (for a path) or <code>null</code> (for an object) if no such type is found
	*/
	public function getODataComplexType( sQualifiedName:String, ?bAsPath:Bool):Dynamic;

	/**
	* Returns the OData default entity container. If there is only a single schema with a single entity container, the entity container does not need to be marked as default explicitly.
	* @param	bAsPath determines whether the entity container is returned as a path or as an object
	* @return	(the path to) the default entity container; <code>undefined</code> (for a path) or <code>null</code> (for an object) if no such container is found
	*/
	public function getODataEntityContainer( ?bAsPath:Bool):Dynamic;

	/**
	* Returns the OData entity set with the given simple name from the default entity container.
	* @param	sName a simple name, e.g. "ProductSet"
	* @param	bAsPath determines whether the entity set is returned as a path or as an object
	* @return	(the path to) the entity set with the given simple name; <code>undefined</code> (for a path) or <code>null</code> (for an object) if no such set is found
	*/
	public function getODataEntitySet( sName:String, ?bAsPath:Bool):Dynamic;

	/**
	* Returns the OData entity type with the given qualified name, either as a path or as an object, as indicated.
	* @param	sQualifiedName a qualified name, e.g. "ACME.Product"
	* @param	bAsPath determines whether the entity type is returned as a path or as an object
	* @return	(the path to) the entity type with the given qualified name; <code>undefined</code> (for a path) or <code>null</code> (for an object) if no such type is found
	*/
	public function getODataEntityType( sQualifiedName:String, ?bAsPath:Bool):Dynamic;

	/**
	* Returns the OData function import with the given simple or qualified name from the default entity container or the respective entity container specified in the qualified name.
	* @param	sName a simple or qualified name, e.g. "Save" or "MyService.Entities/Save"
	* @param	bAsPath determines whether the function import is returned as a path or as an object
	* @return	(the path to) the function import with the given simple name; <code>undefined</code> (for a path) or <code>null</code> (for an object) if no such function import is found
	*/
	public function getODataFunctionImport( sName:String, ?bAsPath:Bool):Dynamic;
	@:overload( function(oType:Dynamic, vName:String, ?bAsPath:Bool):Dynamic{ })

	/**
	* Returns the given OData type's property (not navigation property!) of given name.

If an array is given instead of a single name, it is consumed (via <code>Array.prototype.shift</code>) piece by piece. Each element is interpreted as a property name of the current type, and the current type is replaced by that property's type. This is repeated until an element is encountered which cannot be resolved as a property name of the current type anymore; in this case, the last property found is returned and <code>vName</code> contains only the remaining names, with <code>vName[0]</code> being the one which was not found.

Examples: <ul> <li> Get address property of business partner: <pre>
var oEntityType = oMetaModel.getODataEntityType("GWSAMPLE_BASIC.BusinessPartner"),
    oAddressProperty = oMetaModel.getODataProperty(oEntityType, "Address");
oAddressProperty.name === "Address";
oAddressProperty.type === "GWSAMPLE_BASIC.CT_Address";
</pre> </li> <li> Get street property of address type: <pre>
var oComplexType = oMetaModel.getODataComplexType("GWSAMPLE_BASIC.CT_Address"),
    oStreetProperty = oMetaModel.getODataProperty(oComplexType, "Street");
oStreetProperty.name === "Street";
oStreetProperty.type === "Edm.String";
</pre> </li> <li> Get address' street property directly from business partner: <pre>
var aParts = ["Address", "Street"];
oMetaModel.getODataProperty(oEntityType, aParts) === oStreetProperty;
aParts.length === 0;
</pre> </li> <li> Trying to get address' foo property directly from business partner: <pre>
aParts = ["Address", "foo"];
oMetaModel.getODataProperty(oEntityType, aParts) === oAddressProperty;
aParts.length === 1;
aParts[0] === "foo";
</pre> </li> </ul>
	* @param	oType a complex type as returned by {@link #getODataComplexType getODataComplexType}, or an entity type as returned by {@link #getODataEntityType getODataEntityType}
	* @param	vName the name of a property within this type (e.g. "Address"), or an array of such names (e.g. <code>["Address", "Street"]</code>) in order to drill-down into complex types; <b>BEWARE</b> that this array is modified by removing each part which is understood!
	* @param	bAsPath determines whether the property is returned as a path or as an object
	* @return	(the path to) the last OData property found; <code>undefined</code> (for a path) or <code>null</code> (for an object) if no property was found at all
	*/
	public function getODataProperty( oType:Dynamic, vName:Array<String>, ?bAsPath:Bool):Dynamic;

	/**
	* Returns a <code>Promise</code> which is resolved with a map representing the <code>com.sap.vocabularies.Common.v1.ValueList</code> annotations of the given property or rejected with an error. The key in the map provided on successful resolution is the qualifier of the annotation or the empty string if no qualifier is defined. The value in the map is the JSON object for the annotation. The map is empty if the property has no <code>com.sap.vocabularies.Common.v1.ValueList</code> annotations.
	* @param	oPropertyContext a model context for a structural property of an entity type or a complex type, as returned by {@link #getMetaContext getMetaContext}
	* @return	a Promise that gets resolved as soon as the value lists as well as the required model elements have been loaded
	*/
	public function getODataValueLists( oPropertyContext:sap.ui.model.Context):js.lib.Promise<ODataMetaModel>;

	/**
	* Returns a promise which is fulfilled once the meta model data is loaded and can be used.
	* @return	a Promise
	*/
	public function loaded( ):js.lib.Promise<ODataMetaModel>;

	/**
	* Refresh not supported by OData meta model!
	* @return	Void
	*/
	public function refresh( ):Void;

	/**
	* Legacy syntax not supported by OData meta model!
	* @param	bLegacySyntax must not be true!
	* @return	Void
	*/
	public function setLegacySyntax( bLegacySyntax:Bool):Void;
}

