package sap.ui.model;

@:native("sap.ui.model.FilterOperator")
@:enum extern abstract FilterOperator(String)
{
    /**
    * Used to filter a list based on filter criteria that are defined in a nested filter for dependent subitems. <code>All</code> returns a list of those items for which <b>all</b> dependent subitems match the filter criteria of the nested filter. For example, a list of customers can be filtered by filter criteria that are applied to the list of orders the customer placed in the past. The filter returns a list of those customers that <b>always</b> ordered a specific product.

This filter operator is only supported in OData V4 models.
    */
    var All= "All";
    /**
    * Used to filter a list based on filter criteria that are defined in a nested filter for dependent subitems. <code>Any</code> returns a list of those items for which <b>at least one</b> dependent subitem matches the filter criteria of the nested filter. For example, a list of customers can be filtered by filter criteria that are applied to the list of orders the customer placed in the past. The filter returns a list of those customers that <b>at least once</b> ordered a specific product.

This filter operator is only supported in OData V4 models.
    */
    var Any= "Any";
    /**
    * FilterOperator between

Used to filter all entries between the given boundaries. The filter result contains the boundaries, but no entries before or further. The order of the entries in the filter results is based on their occurence in the input list.

<b>Note, when used on strings:</b> The String comparison is based on lexicographical ordering. Characters are ranked in their alphabetical order. Words with the same preceding substring are ordered based on their length e.g. "Chris" comes before "Christian".

The filtering includes the right boundary, but no strings further in the lexicographical ordering. e.g. between "A" and "C" includes the string "C", but not "Chris".
    */
    var BT= "BT";
    /**
    * FilterOperator contains
    */
    var Contains= "Contains";
    /**
    * FilterOperator ends with
    */
    var EndsWith= "EndsWith";
    /**
    * FilterOperator equals
    */
    var EQ= "EQ";
    /**
    * FilterOperator greater or equals
    */
    var GE= "GE";
    /**
    * FilterOperator greater than
    */
    var GT= "GT";
    /**
    * FilterOperator less or equals
    */
    var LE= "LE";
    /**
    * FilterOperator less than
    */
    var LT= "LT";
    /**
    * FilterOperator "Not Between"

Used to filter all entries, which are not between the given boundaries. The filter result does not contains the boundaries, but only entries outside of the boundaries. The order of the entries in the filter results is based on their occurence in the input list.

<b>Note, when used on strings:</b> The String comparison is based on lexicographical ordering. Characters are ranked in their alphabetical order. Words with the same preceding substring are ordered based on their length e.g. "Chris" comes before "Christian".
    */
    var NB= "NB";
    /**
    * FilterOperator not equals
    */
    var NE= "NE";
    /**
    * FilterOperator not contains
    */
    var NotContains= "NotContains";
    /**
    * FilterOperator not ends with
    */
    var NotEndsWith= "NotEndsWith";
    /**
    * FilterOperator not starts with
    */
    var NotStartsWith= "NotStartsWith";
    /**
    * FilterOperator starts with
    */
    var StartsWith= "StartsWith";
}
