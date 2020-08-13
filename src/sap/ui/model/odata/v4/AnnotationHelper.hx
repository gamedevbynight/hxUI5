package sap.ui.model.odata.v4;

@:native("sap.ui.model.odata.v4.AnnotationHelper")
extern class AnnotationHelper
{

	/**
	* A function that helps to interpret OData V4 annotations.

Unsupported or incorrect values are turned into a string nevertheless, but are indicated as such. In such a case, an error describing the problem is logged to the console. Proper escaping is used to make sure that data binding syntax is not corrupted.

Example: <pre>
&lt;Text text="{meta>Value/@@sap.ui.model.odata.v4.AnnotationHelper.format}" />
</pre>

<h3>Supported Expressions</h3> <ul> <li>"14.4 Constant Expressions" for "edm:Bool", "edm:Date", "edm:DateTimeOffset", "edm:Decimal", "edm:Float", "edm:Guid", "edm:Int", "edm:TimeOfDay". <li>constant "14.4.11 Expression edm:String": This is turned into a fixed text (for example <code>"Width"</code>). String constants that contain a simple binding <code>"{@i18n>...}"</code> to the hard-coded model name "@i18n" with arbitrary path are not turned into a fixed text, but kept as a data binding expression; this allows local annotation files to refer to a resource bundle for internationalization. <li>dynamic "14.5.1 Comparison and Logical Operators": These are turned into expression bindings to perform the operations at runtime. <li>dynamic "14.5.3 Expression edm:Apply": <ul> <li>"14.5.3.1.1 Function odata.concat": This is turned into a data binding expression relative to an entity. <li>"14.5.3.1.2 Function odata.fillUriTemplate": This is turned into an expression binding to fill the template at runtime. <li>"14.5.3.1.3 Function odata.uriEncode": This is turned into an expression binding to encode the parameter at runtime. <li>Apply functions may be nested arbitrarily. </ul> <li>dynamic "14.5.6 Expression edm:If": This is turned into an expression binding to be evaluated at runtime. The expression is a conditional expression like <code>"{=condition ? expression1 : expression2}"</code>. <li>dynamic "14.5.10 Expression edm:Null": This is turned into a <code>null</code> value. It is ignored in <code>odata.concat</code>. <li>dynamic "14.5.12 Expression edm:Path" and "14.5.13 Expression edm:PropertyPath": These are turned into data bindings relative to an entity, including type information and constraints as available from metadata, for example <code>"{path : 'Name', type : 'sap.ui.model.odata.type.String', constraints : {'maxLength' : 255}, formatOptions : {'parseKeepsEmptyString' : true}}"</code>. Depending on the used type, some additional constraints and format options of this type are set: <ul> <li>Edm.DateTime: The "displayFormat" constraint is set to the value of the "sap:display-format" annotation of the referenced property. <li>Edm.Decimal: The "precision" and "scale" constraints are set to the values of the corresponding attributes of the referenced property. The "minimum", "maximum", "minimumExclusive", and "maximumExclusive" constraints are set to the values of the corresponding "Org.OData.Validation.V1" annotation of the referenced property; note that in this case only constant expressions are supported to determine the annotation value. <li>Edm.String: The "maxLength" constraint is set to the value of the corresponding attribute of the referenced property, and the "isDigitSequence" constraint is set to the value of the "com.sap.vocabularies.Common.v1.IsDigitSequence" annotation of the referenced property; note that in this case only constant expressions are supported to determine the annotation value. The "parseKeepsEmptyString" format option is set. </ul> Since 1.78.0, both "edm:Path" and "edm:PropertyPath" are also supported if <code>vRawValue</code> is the path itself, and not the object wrapping it. </ul>

<h3>$AnnotationPath and $Path</h3> If <code>oDetails.context.getPath()</code> contains a single "$AnnotationPath" or "$Path" segment, the value corresponding to that segment is considered as a data binding path prefix whenever a dynamic "14.5.12 Expression edm:Path" or "14.5.13 Expression edm:PropertyPath" is turned into a data binding. Use {@link sap.ui.model.odata.v4.AnnotationHelper.resolve$Path} to avoid these prefixes in cases where they are not applicable.

<h4>$AnnotationPath</h4> Example for "$AnnotationPath" in the context's path: <pre>
&lt;Annotations Target="com.sap.gateway.default.iwbep.tea_busi.v0001.EQUIPMENT">
	&lt;Annotation Term="com.sap.vocabularies.UI.v1.Facets">
		&lt;Collection>
			&lt;Record Type="com.sap.vocabularies.UI.v1.ReferenceFacet">
				&lt;PropertyValue Property="Target" AnnotationPath="EQUIPMENT_2_PRODUCT/@com.sap.vocabularies.Common.v1.QuickInfo" />
			&lt;/Record>
		&lt;/Collection>
	&lt;/Annotation>
&lt;/Annotations>
&lt;Annotations Target="com.sap.gateway.default.iwbep.tea_busi_product.v0001.Product">
	&lt;Annotation Term="com.sap.vocabularies.Common.v1.QuickInfo" Path="Name" />
&lt;/Annotations>
</pre> <pre>
&lt;Text text="{meta>/Equipments/@com.sap.vocabularies.UI.v1.Facets/0/Target/$AnnotationPath/@@sap.ui.model.odata.v4.AnnotationHelper.format}" />
</pre> <code>format</code> returns a binding with path "EQUIPMENT_2_PRODUCT/Name".

<h4>$Path</h4> Example for "$Path" in the context's path: <pre>
&lt;Annotations Target="com.sap.gateway.default.iwbep.tea_busi.v0001.EQUIPMENT">
	&lt;Annotation Term="com.sap.vocabularies.UI.v1.LineItem">
		&lt;Collection>
			&lt;Record Type="com.sap.vocabularies.UI.v1.DataField">
				&lt;PropertyValue Property="Value" Path="EQUIPMENT_2_PRODUCT/Name" />
			&lt;/Record>
		&lt;/Collection>
	&lt;/Annotation>
&lt;/Annotations>
&lt;Annotations Target="com.sap.gateway.default.iwbep.tea_busi_product.v0001.Product/Name">
	&lt;Annotation Term="com.sap.vocabularies.Common.v1.QuickInfo" Path="PRODUCT_2_SUPPLIER/Supplier_Name" />
&lt;/Annotations>
</pre> <pre>
&lt;Text text="{meta>/Equipments/@com.sap.vocabularies.UI.v1.LineItem/0/Value/$Path@com.sap.vocabularies.Common.v1.QuickInfo@@sap.ui.model.odata.v4.AnnotationHelper.format}" />
</pre> <code>format</code> returns a binding with path "EQUIPMENT_2_PRODUCT/PRODUCT_2_SUPPLIER/Supplier_Name".

<h3>Annotations on an Operation or a Parameter</h3> Since 1.71.0, for annotations on an operation or a parameter, the binding parameter's name is stripped off any dynamic "14.5.12 Expression edm:Path" and "14.5.13 Expression edm:PropertyPath" where it might be used as a first segment. Since 1.76.0 this does not apply to annotations on a parameter. In the former case, we assume that the resulting data binding is relative to the parent context of the operation binding, that is, to the context representing the binding parameter itself. In the latter case, we assume that the resulting data binding is relative to the parameter context of the operation binding (see {@link sap.ui.model.odata.v4.ODataContextBinding#getParameterContext}).

Example: <pre>
   &lt;Action Name="ShipProduct" EntitySetPath="_it" IsBound="true" >
       &lt;Parameter Name="_it" Type="name.space.Product" Nullable="false"/>
       &lt;Parameter Name="City" Type="Edm.String"/>
   &lt;/Action>
</pre> For the operation <code>ShipProduct</code> mentioned above, the following annotation targets an operation parameter and refers back to the binding parameter. <pre>
    &lt;Annotations Target="name.space.ShipProduct(name.space.Product)/City">
       &lt;Annotation Term="com.sap.vocabularies.Common.v1.Text" Path="_it/SupplierIdentifier"/>
    &lt;/Annotations>
</pre>

Using <code>AnnotationHelper.format</code> like <pre>
&lt;Text text="{meta>/Products/name.space.ShipProduct/$Parameter/City@com.sap.vocabularies.Common.v1.Text@@sap.ui.model.odata.v4.AnnotationHelper.format}" />
</pre> results in <pre>
&lt;Text text="{path:'_it/SupplierIdentifier',type:'sap.ui.model.odata.type.Int32'}" />
</pre> and the data binding evaluates to the <code>SupplierIdentifier</code> property of the entity the operation is called on.

<h3>Operation Parameters</h3> Since 1.73.0, this function can be used on action or function parameters and results in a relative data binding, just like a "14.5.12 Expression edm:Path".

Assume we have the following metadata for an unbound action "AcChangeTeamBudgetByID": <pre>
   &lt;Action Name="AcChangeTeamBudgetByID">
       &lt;Parameter Name="TeamID" Type="Edm.String" Nullable="false" MaxLength="10"/>
       &lt;Parameter Name="Budget" Type="Edm.Decimal" Nullable="false" Precision="16" Scale="variable"/>
   &lt;/Action>
</pre>

Let <code>ChangeTeamBudgetByID</code> be the action import of this action. Using <code>AnnotationHelper.format</code> for the <code>TeamID</code> like <pre>
&lt;Text text="{meta>/ChangeTeamBudgetByID/TeamID@@sap.ui.model.odata.v4.AnnotationHelper.format}" />
</pre> results in <pre>
&lt;Text text="{path:'TeamID',type:'sap.ui.model.odata.type.String',constraints:{'maxLength':10,'nullable':false},formatOptions:{'parseKeepsEmptyString':true}}" />
</pre>

<h3>Binding Parameters and Format Options</h3> Since 1.77.0, binding parameters and format options can be given. The usage <pre>
&lt;Input value="{meta>/ChangeTeamBudgetByID/Budget@@sap.ui.model.odata.v4.AnnotationHelper.format($($$noPatch : true$), $(groupingEnabled : false$))}" />
</pre> results in a data binding with the given binding parameters and format options. Note how, for an object notation, curly brackets must be replaced by <code>$(</code> and <code>$)</code> respectively. Use <code>null</code>, not <code>undefined</code>, in case no binding parameters are needed.

<h3>Structural Properties</h3> Since 1.78.0, this function can be used on a structural property and results in a relative data binding, just like a "14.5.12 Expression edm:Path". The usage <pre>
&lt;Input value="{meta>/Department/Name@@sap.ui.model.odata.v4.AnnotationHelper.format}"/>
</pre> results in <pre>
&lt; Input value="{path:'Name',type:'sap.ui.model.odata.type.String',constraints:{'maxLength':40,'nullable':false},formatOptions:{'parseKeepsEmptyString':true}}"/>
</pre>
	* @param	vRawValue The raw value from the meta model
	* @param	oDetails The details object
	* @return	A data binding, or a fixed text, or a sequence thereof, or a <code>Promise</code> resolving with that string, for example if not all type information is already available
	*/
	public static function format( vRawValue:Dynamic, oDetails:Dynamic):Dynamic;

	/**
	* Returns a data binding according to the result of {@link sap.ui.model.odata.v4.AnnotationHelper.getNavigationPath}.
	* @param	sPath The path value from the meta model, for example "ToSupplier/@com.sap.vocabularies.Communication.v1.Address" or "@com.sap.vocabularies.UI.v1.FieldGroup#Dimensions"
	* @return	A data binding according to the result of {@link sap.ui.model.odata.v4.AnnotationHelper.getNavigationPath}, for example "{ToSupplier}" or ""
	*/
	public static function getNavigationBinding( sPath:String):String;

	/**
	* A function that helps to interpret OData V4 annotations. It knows about the syntax of the path value used by the following dynamic expressions: <ul> <li>"14.5.2 Expression edm:AnnotationPath"</li> <li>"14.5.11 Expression edm:NavigationPropertyPath"</li> <li>"14.5.12 Expression edm:Path"</li> <li>"14.5.13 Expression edm:PropertyPath"</li> </ul> It returns the path of structural and navigation properties from the given path value, but removes "$count", types casts, term casts, and annotations on navigation properties.
	* @param	sPath The path value from the meta model, for example "ToSupplier/@com.sap.vocabularies.Communication.v1.Address" or "@com.sap.vocabularies.UI.v1.FieldGroup#Dimensions"
	* @return	The path of structural and navigation properties, for example "ToSupplier" or ""
	*/
	public static function getNavigationPath( sPath:String):String;

	/**
	* Determines which type of value list exists for the given property.
	* @param	vRawValue The raw value from the meta model; must be either a property or a path pointing to a property (relative to <code>oDetails.schemaChildName</code>)
	* @param	oDetails The details object
	* @return	The type of the value list or a <code>Promise</code> resolving with the type of the value list or rejected, if the property cannot be found in the metadata
	*/
	public static function getValueListType( vRawValue:Dynamic, oDetails:Dynamic):Dynamic;

	/**
	* A function that helps to interpret OData V4 annotations. It knows about the syntax of the path value used by the following dynamic expressions: <ul> <li>"14.5.2 Expression edm:AnnotationPath"</li> <li>"14.5.11 Expression edm:NavigationPropertyPath"</li> <li>"14.5.12 Expression edm:Path"</li> <li>"14.5.13 Expression edm:PropertyPath"</li> </ul> It returns the information whether the given path ends with "$count" or with a multi-valued structural or navigation property. Term casts and annotations on navigation properties are ignored.

Example: <pre>
&lt;template:if test="{facet>Target/$AnnotationPath@@sap.ui.model.odata.v4.AnnotationHelper.isMultiple}">
</pre>
	* @param	sPath The path value from the meta model, for example "ToSupplier/@com.sap.vocabularies.Communication.v1.Address" or "@com.sap.vocabularies.UI.v1.FieldGroup#Dimensions"
	* @param	oDetails The details object
	* @return	<code>true</code> if the given path ends with "$count" or with a multi-valued structural or navigation property, <code>false</code> otherwise. If <code>oDetails.$$valueAsPromise</code> is <code>true</code> a <code>Promise</code> may be returned resolving with the boolean value.
	*/
	public static function isMultiple( sPath:String, oDetails:Dynamic):Dynamic;

	/**
	* Returns the value for the label of a <code>com.sap.vocabularies.UI.v1.DataFieldAbstract</code> from the meta model. If no <code>Label</code> property is available, but the data field has a <code>Value</code> property with an <code>edm:Path</code> expression as value, the label will be taken from the <code>com.sap.vocabularies.Common.v1.Label</code> annotation of the path's target property.

Example: <pre>
&lt;Label text="{meta>@@sap.ui.model.odata.v4.AnnotationHelper.label}" />
</pre>
	* @param	vRawValue The raw value from the meta model
	* @param	oDetails The details object
	* @return	A data binding or a fixed text or a sequence thereof or <code>undefined</code>. If <code>oDetails.$$valueAsPromise</code> is <code>true</code> a <code>Promise</code> may be returned resolving with the value for the label.
	*/
	public static function label( vRawValue:Dynamic, oDetails:Dynamic):Dynamic;

	/**
	* Helper function for a <code>template:with</code> instruction that returns an equivalent to the given context's path, without "$AnnotationPath", "$NavigationPropertyPath", "$Path", and "$PropertyPath" segments.
	* @param	oContext A context which belongs to an {@link sap.ui.model.odata.v4.ODataMetaModel}
	* @return	An equivalent to the given context's path, without the mentioned segments
	*/
	public static function resolve$Path( oContext:sap.ui.model.Context):String;

	/**
	* A function that helps to interpret OData V4 annotations.

Unsupported or incorrect values are turned into a string nevertheless, but are indicated as such. In such a case, an error describing the problem is logged to the console.

Example: <pre>
&lt;Text text="{meta>Value/@@sap.ui.model.odata.v4.AnnotationHelper.value}" />
</pre>

<h3>Supported Expressions</h3> <ul> <li>"14.4 Constant Expressions" for "edm:Bool", "edm:Date", "edm:DateTimeOffset", "edm:Decimal", "edm:Float", "edm:Guid", "edm:Int", "edm:TimeOfDay". <li>constant "14.4.11 Expression edm:String": This is turned into a fixed text (for example <code>"Width"</code>). String constants that contain a simple binding <code>"{@i18n>...}"</code> to the hard-coded model name "@i18n" with arbitrary path are not turned into a fixed text, but kept as a data binding expression; this allows local annotation files to refer to a resource bundle for internationalization. <li>dynamic "14.5.1 Comparison and Logical Operators": These are turned into expression bindings to perform the operations at runtime. <li>dynamic "14.5.3 Expression edm:Apply": <ul> <li>"14.5.3.1.1 Function odata.concat": This is turned into a data binding expression. <li>"14.5.3.1.2 Function odata.fillUriTemplate": This is turned into an expression binding to fill the template at runtime. <li>"14.5.3.1.3 Function odata.uriEncode": This is turned into an expression binding to encode the parameter at runtime. <li>Apply functions may be nested arbitrarily. </ul> <li>dynamic "14.5.6 Expression edm:If": This is turned into an expression binding to be evaluated at runtime. The expression is a conditional expression like <code>"{=condition ? expression1 : expression2}"</code>. <li>dynamic "14.5.10 Expression edm:Null": This is turned into a <code>null</code> value. It is ignored in <code>odata.concat</code>. <li>dynamic "14.5.12 Expression edm:Path" and "14.5.13 Expression edm:PropertyPath": These are turned into simple data bindings, for example <code>"{Name}"</code>. Since 1.78.0, both are also supported if <code>vRawValue</code> is the path itself, and not the object wrapping it. </ul>

<h3>Annotations on an Operation or a Parameter</h3> Since 1.71.0, for annotations on an operation or a parameter, the binding parameter's name is stripped off any dynamic "14.5.12 Expression edm:Path" and "14.5.13 Expression edm:PropertyPath" where it might be used as a first segment. Since 1.76.0 this does not apply to annotations on a parameter. In the former case, we assume that the resulting data binding is relative to the parent context of the operation binding, that is, to the context representing the binding parameter itself. In the latter case, we assume that the resulting data binding is relative to the parameter context of the operation binding (see {@link sap.ui.model.odata.v4.ODataContextBinding#getParameterContext}).

Example: <pre>
   &lt;Action Name="ShipProduct" EntitySetPath="_it" IsBound="true" >
       &lt;Parameter Name="_it" Type="name.space.Product" Nullable="false"/>
       &lt;Parameter Name="City" Type="Edm.String"/>
   &lt;/Action>
</pre> For the operation <code>ShipProduct</code> mentioned above, the following annotation targets an operation parameter and refers back to the binding parameter. <pre>
    &lt;Annotations Target="name.space.ShipProduct(name.space.Product)/City">
       &lt;Annotation Term="com.sap.vocabularies.Common.v1.Text" Path="_it/SupplierIdentifier"/>
    &lt;/Annotations>
</pre>

Using <code>AnnotationHelper.value</code> like <pre>
&lt;Text text="{meta>/Products/name.space.ShipProduct/$Parameter/City@com.sap.vocabularies.Common.v1.Text@@sap.ui.model.odata.v4.AnnotationHelper.value}" />
</pre> results in <pre>
&lt;Text text="{_it/SupplierIdentifier}" />
</pre> and the data binding evaluates to the <code>SupplierIdentifier</code> property of the entity the operation is called on.

<h3>Operation Parameters</h3> Since 1.73.0, this function can be used on action or function parameters and results in a relative data binding, just like a "14.5.12 Expression edm:Path".

Assume we have the following metadata for an unbound action "AcChangeTeamBudgetByID": <pre>
   &lt;Action Name="AcChangeTeamBudgetByID">
       &lt;Parameter Name="TeamID" Type="Edm.String" Nullable="false" MaxLength="10"/>
       &lt;Parameter Name="Budget" Type="Edm.Decimal" Nullable="false" Precision="16" Scale="variable"/>
   &lt;/Action>
</pre>

Let <code>ChangeTeamBudgetByID</code> be the action import of this action. Using <code>AnnotationHelper.value</code> for the <code>TeamID</code> like <pre>
&lt;Text text="{meta>/ChangeTeamBudgetByID/TeamID@@sap.ui.model.odata.v4.AnnotationHelper.value}" />
</pre> results in <pre>
&lt;Text text="{TeamID}" />
</pre>

<h3>Binding Parameters</h3> Since 1.77.0, binding parameters can be given. The usage <pre>
&lt;Input value="{meta>/ChangeTeamBudgetByID/Budget@@sap.ui.model.odata.v4.AnnotationHelper.value($($$noPatch : true$))}" />
</pre> results in a data binding with the given binding parameters. Note how, for an object notation, curly brackets must be replaced by <code>$(</code> and <code>$)</code> respectively.

<h3>Structural Properties</h3> Since 1.78.0, this function can be used on a structural property and results in a relative data binding, just like a "14.5.12 Expression edm:Path". The usage <pre>
&lt;Input value="{meta>/Department/Name@@sap.ui.model.odata.v4.AnnotationHelper.value}"/>
</pre> results in <pre>
&lt; Input value="{Name}"/>
</pre>
	* @param	vRawValue The raw value from the meta model
	* @param	oDetails The details object
	* @return	A data binding or a fixed text or a sequence thereof
	*/
	public static function value( vRawValue:Dynamic, oDetails:Dynamic):String;
}

