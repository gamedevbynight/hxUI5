package sap.ui.test.gherkin;

@:native("sap.ui.test.gherkin.dataTableUtils")
extern class DataTableUtils
{
	@:overload( function(aData:Array<String>, ?vNorm:String):Dynamic{ })

	/**
	* Takes the inputed 2D array "aData" and returns an equivalent object. Each row of data is expected to be a property-value pair. To create nested objects, add extra columns to the data. E.g. <pre>
 [
   ["Name", "Alice"],
   ["Mass", "135 lbs"],
   ["Telephone Number", "Home", "123-456-7890"],
   ["Telephone Number", "Work", "123-456-0987"]
 ]
</pre> For each data row, the right-most element becomes a property value, and everything else is a property name. The property names get normalized according to the strategy defined by the parameter "vNorm". E.g. using camelCase strategy <pre>
  {
    name: "Alice",
    mass: "135 lbs",
    telephoneNumber: {
      home: "123-456-7890",
      work: "123-456-0987"
    }
  }
</pre>
	* @param	aData the 2D array of strings to be converted
	* @param	vNorm the normalization function to use to normalize property names. Can also be a string with values "titleCase", "pascalCase", "camelCase", "hyphenated" or "none".
	* @return	- an object equivalent to the input data, with property names normalized
	*/
	public static function toObject( aData:Array<String>, ?vNorm:()->Void):Dynamic;
	@:overload( function(aData:Array<String>, ?vNorm:String):Array<Dynamic>{ })

	/**
	* Takes the inputed 2D array "aData" and returns an equivalent array of objects. The data is expected to have a header row, with each subsequent row being an entity, and each column being a property of that entity. E.g. <pre>
  [
    ["Their Name",  "Their Age"],
    ["Alice",       "16"],
    ["Bob",         "22"]
  ]
</pre>

The data's column headers become the returned objects' property names. The property names get normalized according to the strategy defined by the parameter "vNorm". E.g. using hyphenation strategy this is returned: <pre>
  [
    {their-name: "Alice", their-age: "16"},
    {their-name: "Bob", their-age: "22"}
  ]
</pre>
	* @param	aData the 2D array of strings to be converted, with a header row
	* @param	vNorm the normalization function to use to normalize property names. Can also be a String with values "titleCase", "pascalCase", "camelCase", "hyphenated" or "none".
	* @return	- an array of objects equivalent to the input data, with property names normalized
	*/
	public static function toTable( aData:Array<String>, ?vNorm:()->Void):Array<Dynamic>;
}

