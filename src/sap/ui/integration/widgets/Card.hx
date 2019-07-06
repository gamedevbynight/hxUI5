package sap.ui.integration.widgets;

@:native("sap.ui.integration.widgets.Card")

/**
* A control that represents a container with a header and content.

<h3>Overview</h3> Cards are small user interface elements which provide the most important information from an app, related to a specific role or task. The information is represented in a compact manner, allowing for actions to be executed. Cards can be described as small representations of an app which can be integrated in different systems.

The integration card is defined in a declarative way, using a manifest.json to be: <ul> <li>Easily integrated into apps</li> <li>Easily reused across apps</li> <li>Understandable by other technologies</li> <li>Self-contained (without external configuration)</li> <li>Easily reconfigured in app layers (including backend)</li> <li>Easy to separate the roles of the card and the app developers</li> </ul>

The role of the card developer is to describe the card in a manifest.json file and define: <ul> <li>Header</li> <li>Content</li> <li>Data source</li> <li>Possible actions</li> </ul>

The role of the app developer is to integrate the card into the app and define: <ul> <li>The dimensions of the card inside a layout of choice, using the <code>width</code> and <code>height</code> properties</li> <li>The behavior for the actions described in the manifest.json file, using the action event</li> </ul>

<h3>Usage</h3>

The <code>"sap.app"</code> <code>type</code> property in the manifest file must be set to <code>"card"</code>. The namespace used to define a card is <code>"sap.card"</code>. Every card has a type which can be one of the following: List, Analytical, Timeline, Object, Table, Component (experimental)

An example of a manifest.json:

<pre>
<code>
{
  "sap.app": {
    "type": "card",
    ...
  },
  "sap.ui5": {
    ...
  },
  "sap.card": {
    "type": "List",
    "header": { ... },
    "content": { ... }
  }
}
</code>
</pre>

Examples of header sections:

The default header type can contain title, subtitle, icon, and status. <pre>
 <code>
{
  ...
  "sap.card": {
    "header": {
      "title": "An example title",
      "subTitle": "Some subtitle",
      "icon": {
        "src": "sap-icon://business-objects-experience"
      },
      "status": {
        "text": "5 of 20"
      }
    },
    ...
  }
}
 </code>
 </pre>

The numeric header type can contain title, subtitle, unitOfMeasurement, details, main indicator, and side indicators. <pre>
 <code>
{
  ...
  "sap.card": {
    "header": {
      "type": "Numeric",
      "title": "Project Cloud Transformation",
      "subTitle": "Revenue",
      "unitOfMeasurement": "EUR",
      "mainIndicator": {
        "number": "44",
        "unit": "%",
        "trend": "Down",
        "state": "Critical"
      },
      "details": "Some details",
      "sideIndicators": [
        {
          "title": "Target",
          "number": "17",
          "unit": "%"
        },
        {
          "title": "Deviation",
          "number": "5",
          "unit": "%"
        }
      ]
    },
    ...
  }
}
 </code>
 </pre>

The content of the card is created based on the card type. Possible card types: <ul> <li>List</li> <li>Object</li> <li>Timeline</li> <li>Analytical</li> <li>Table</li> <li>Component (experimental)</li> </ul>

List card contains a set of items. The <code>"item"</code> property defines the template for all the items of the list. The <code>"data"</code> property provides the displayed information.

Example: <pre>
{
  "sap.app": {
    "type": "card"
  },
  "sap.card": {
    "type": "List",
    "header": {
      ...
    },
    "content": {
      "data": {
        "json": [{
            "Name": "Comfort Easy",
            "Description": "A 32 GB Digital Assistant with a high-resolution color screen",
            "Highlight": "Error"
          },
          {
            "Name": "ITelO Vault",
            "Description": "A Digital Organizer with state-of-the-art Storage Encryption",
            "Highlight": "Warning"
          },
          {
            "Name": "Notebook Professional 15",
            "Description": "Notebook Professional 15 description",
            "Highlight": "Success"
          }
        ]
      },
      "item": {
        "title": {
          "label": "{{title_label}}",
          "value": "{Name}"
        },
        "description": {
          "label": "{{description_label}}",
          "value": "{Description}"
        },
        "highlight": "{Highlight}"
      }
    }
  }
}
</pre>

Analytical card contains a chart visualization configuration. Supported chart types are Line, StackedBar, StackedColumn, Donut.

Example: <pre>
<code>
{
  "sap.app": {
    "type": "card"
  },
  "sap.card": {
    "type": "Analytical",
    "header": {
      ...
    },
    "content": {
      "chartType": "Line",
      "legend": {
        "visible": true,
        "position": "Bottom",
        "alignment": "Left"
      },
      "plotArea": {
        "dataLabel": {
          "visible": true
        },
        "categoryAxisText": {
          "visible": false
        },
        "valueAxisText": {
          "visible": false
        }
      },
      "title": {
        "text": "Line chart",
        "visible": true,
        "alignment": "Left"
      },
      "measureAxis": "valueAxis",
      "dimensionAxis": "categoryAxis",
      "data": {
        "json": {
          "list": [
            {
              "Week": "CW14",
              "Revenue": 431000.22,
              "Cost": 230000.00,
              "Cost1": 24800.63,
              "Cost2": 205199.37,
              "Cost3": 199999.37,
              "Target": 500000.00,
              "Budget": 210000.00
            },
            {
              "Week": "CW15",
              "Revenue": 494000.30,
              "Cost": 238000.00,
              "Cost1": 99200.39,
              "Cost2": 138799.61,
              "Cost3": 200199.37,
              "Target": 500000.00,
              "Budget": 224000.00
            }
          ]
        },
        "path": "/list"
      },
      "dimensions": [
        {
          "label": "Weeks",
          "value": "{Week}"
        }
      ],
      "measures": [
        {
          "label": "Revenue",
          "value": "{Revenue}"
        },
        {
          "label": "Cost",
          "value": "{Cost}"
        }
      ]
    }
  }
}
</code>
</pre>

Object card contains information about an object. It is structured in groups. Every group can have a title and items. The items contain display name (label) and value.

Example: <pre>
<code>
{
  "sap.app": {
    "type": "card"
  },
  "sap.card": {
	    "type": "Object",
     "header": {
       ...
     },
     "content": {
       "groups": [
         {
           "title": "Group title",
           "items": [
             {
               "label": "Name",
               "value": "Ivan"
             },
             {
               "label": "Surname",
               "value": "Petrov"
             },
             {
               "label": "Phone",
               "value": "+1 1234 1234555"
             }
           ]
         },
         {
           "title": "Organization",
           "items": [
             {
               "label": "Company Name",
               "value": "Sap",
               "icon": {
                 "src": "../images/Woman_avatar_02.png"
               }
             }
           ]
         }
       ]
     }
  }
}
</code>
</pre>

Timeline card contains a set of timeline items. The "item" property defines the template for all the items of the timeline.

Example: <pre>
<code>
{
  "sap.app": {
    "type": "card"
  },
  "sap.card": {
    "type": "Timeline",
    "header": {
      ...
    },
    "content": {
      "data": {
        "json": [
          {
            "Title": "Weekly sync: Marketplace / Design Stream",
            "Description": "MRR WDF18 C3.2(GLASSBOX)",
            "Icon": "sap-icon://appointment-2",
            "Time": "10:00 - 10:30"
          },
          {
            "Title": "Video Conference for FLP@SF, S4,Hybris",
            "Icon": "sap-icon://my-view",
            "Time": "14:00 - 15:30"
          },
          {
            "Title": "Call 'Project Nimbus'",
            "Icon": "sap-icon://outgoing-call",
            "Time": "16:00 - 16:30"
          }
        ]
      },
      "item": {
        "dateTime": {
          "value": "{Time}"
        },
        "description" : {
          "value": "{Description}"
        },
        "title": {
          "value": "{Title}"
        },
        "icon": {
          "src": "{Icon}"
        }
      }
    }
  }
}
</code>
</pre>

Table card displays a set of items in a table format. The <code>"row"</code> property defines the template for all rows of the table.

Example: <pre>
<code>
{
  "sap.app": {
    "type": "card"
  },
  "sap.card": {
    "type": "Table",
    "header": {
      ...
    },
    "content": {
      "data": {
        "json": [
          {
           "salesOrder": "5000010050",
           "customerName": "Robert Brown Entertainment",
           "netAmount": "2K USD",
           "status": "Delivered",
           "statusState": "Success"
          },
          {
           "salesOrder": "5000010051",
           "customerName": "Entertainment Argentinia",
           "netAmount": "127k USD",
           "status": "Canceled",
           "statusState": "Error"
          },
          {
           "salesOrder": "5000010052",
           "customerName": "Brazil Technologies",
           "netAmount": "8K USD",
           "status": "In Progress",
           "statusState": "Warning"
          }
        ]
      },
      "row": {
        "columns": [{
           "title": "Sales Order",
           "value": "{salesOrder}",
           "identifier": true
          },
          {
            "title": "Customer",
            "value": "{customerName}"
          },
          {
             "title": "Net Amount",
             "value": "{netAmount}"
          },
          {
             "title": "Status",
             "value": "{status}",
             "state": "{statusState}"
          }
        ]
      }
    }
  }
}
</code>
</pre>

Component card can be used to display multiple controls (inside one Component). It is used as a custom approach for use cases, which do not fit in other card types and structures. It provides much more flexibility and responsibility to the Card’s authors. Reusability is achieved on Component level and this type of Card is usable in LOB products that are based on the SAPUI5 Framework.

Example: <pre>
<code>
{
	"sap.app": {
		"id": "sap.ui.integration.sample.ComponentCard.cardContent",
		"type": "card",
		"applicationVersion": {
		"version": "1.0.0"
		}
	},
	"sap.ui5": {
		"rootView": {
			"viewName": "sap.ui.integration.sample.ComponentCard.cardContent.View",
			"type": "XML",
			"async": true,
			"id": "app"
		},
		"dependencies": {
			"minUI5Version": "1.38",
			"libs": {
				"sap.m": {}
			}
		}
	},
	"sap.card": {
		"type": "Component",
		"header": {
			"title": "Visit our workshop"
		}
	}
}
</code>
</pre>

Item-based cards (Timeline and List) have an additional <code>"maxItems"</code> content property, which defines the maximum number of items the card can have.

<h3>Data Handling</h3> To add data to the card, you can add a data section, header or content. The card automatically creates an unnamed model which can be used to resolve binding syntaxes inside the card manifest.

Static data: <pre>
<code>
{
  ...
  "content": {
    "data": {
      "json": {
        "items": [
          {
            "Title": "Weekly sync: Marketplace / Design Stream",
            "Description": "MRR WDF18 C3.2(GLASSBOX)",
            "Icon": "sap-icon://appointment-2",
            "Time": "10:00 - 10:30"
          },
          {
            "Title": "Video Conference for FLP@SF, S4,Hybris",
            "Icon": "sap-icon://my-view",
            "Time": "14:00 - 15:30"
          }
        ]
      },
      "path": "/items"
    },
    ...
  }
}
</code>
</pre>

Requesting data: <pre>
<code>
{
  ...
  "content": {
    "data": {
      "request": {
        "url": "/path/to/data"
      },
      "path": "/items"
    },
    ...
  }
}
</code>
</pre>

<h3>Actions</h3>

Actions add behavior to the card. Actions have: <ul> <li>Type</li> <li>Parameters</li> <li>Enabled flag (true by default)</li> </ul>

The available action types are:

<ul> <li>Navigation</li> </ul>

To add a navigation action, you need to configure it inside the manifest and the action itself can be set on:

<ul> <li>Header</li> <li>Items of the list card</li> <li>Rows of the table card</li> <li>Analytical content</li> <li>Object content</li> </ul>

In the example below, a navigation action is added both to the header and the list items: <pre>
<code>
{
  "sap.app": {
    "type": "card"
  },
  "sap.card": {
    "type": "List",
    "header": {
      "title": "Request list content Card",
      "subTitle": "Card Subtitle",
      "icon": {
        "src": "sap-icon://accept"
      },
      "status": "100 of 200",
      "actions": [
        {
          "type": "Navigation",
          "parameters": {
            "url": "/some/relative/path"
          }
        }
      ]
    },
    "content": {
      "data": {
        "request": {
          "url": "./cardcontent/someitems_services2.json"
        },
        "path": "/items"
      },
      "item": {
        "icon": {
          "src": "{icon}"
        },
        "title": {
          "value": "{Name}"
        },
        "description": {
          "value": "{Description}"
        },
        "actions": [
          {
            "type": "Navigation",
            "enabled": "{= ${url}}",
            "parameters": {
              "url": "{url}"
            }
          }
        ]
      }
    }
  }
}
</code>
</pre>

In the example below, a navigation action is added on the Object content(same as Analytical content): <pre>
<code>
{
  "sap.app": {
    "type": "card"
  },
  "sap.card": {
    "type": "Object",
    ...
    "content": {
      "data": {
        "request": {
          "url": "./objectitems_services2.json"
        },
        "path": "/items"
      },
       "groups": {
         ...
       },
       "actions": [
         {
           "type": "Navigation",
           "enabled": "{= ${url}}",
           "parameters": {
            	"url": "{url}"
           }
        }
      ]
    }
  }
}
</code>
</pre>

<i>When to use</i> <ul> <li>When you want to reuse the card across apps.</li> <li>When you need easy integration and configuration.</li> </ul>

<i>When not to use</i> <ul> <li>When you need more header and content flexibility.</li> <li>When you have to achieve simple card visualization. For such cases, use: {@link sap.f.Card Card}.</li> <li>When you have to use an application model. For such cases, use: {@link sap.f.Card Card}.</li> <li>When you need complex behavior. For such cases, use: {@link sap.f.Card Card}.</li> </ul>
*/
extern class Card extends sap.ui.core.Control implements sap.f.ICard
{
	@:overload(function(?sId:String, ?mSettings:CardArgs):Void {})
	public function new(?mSettings:CardArgs):Void;

	/**
	* Attaches event handler <code>fnFunction</code> to the {@link #event:action action} event of this <code>sap.ui.integration.widgets.Card</code>.

When called, the context of the event handler (its <code>this</code>) will be bound to <code>oListener</code> if specified, otherwise it will be bound to this <code>sap.ui.integration.widgets.Card</code> itself.

Fired when an action is triggered on the card.
	* @param	oData An application-specific payload object that will be passed to the event handler along with the event object when firing the event
	* @param	fnFunction The function to be called when the event occurs
	* @param	oListener Context object to call the event handler with. Defaults to this <code>sap.ui.integration.widgets.Card</code> itself
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function attachAction( ?oData:Dynamic, fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Detaches event handler <code>fnFunction</code> from the {@link #event:action action} event of this <code>sap.ui.integration.widgets.Card</code>.

The passed function and listener object must match the ones used for event registration.
	* @param	fnFunction The function to be called, when the event occurs
	* @param	oListener Context object on which the given function had to be called
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function detachAction( fnFunction:()->Void, ?oListener:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Creates a new subclass of class sap.ui.integration.widgets.Card with name <code>sClassName</code> and enriches it with the information contained in <code>oClassInfo</code>.

<code>oClassInfo</code> might contain the same kind of information as described in {@link sap.ui.core.Control.extend}.
	* @param	sClassName Name of the class being created
	* @param	oClassInfo Object literal with information about the class
	* @param	FNMetaImpl Constructor function for the metadata object; if not given, it defaults to <code>sap.ui.core.ElementMetadata</code>
	* @return	Created class / constructor function
	*/
	public static function extend( sClassName:String, ?oClassInfo:Dynamic, ?FNMetaImpl:()->Void):()->Void;

	/**
	* Gets current value of property {@link #getDataMode dataMode}.

Defines the state of the <code>Card</code>. When set to <code>Inactive</code>, the <code>Card</code> doesn't make requests.

Default value is <code>Active</code>.
	* @return	Value of property <code>dataMode</code>
	*/
	public function getDataMode( ):sap.ui.integration.CardDataMode;

	/**
	* Gets current value of property {@link #getHeight height}.

Defines the height of the card.

Default value is <code>auto</code>.
	* @return	Value of property <code>height</code>
	*/
	public function getHeight( ):sap.ui.core.CSSSize;

	/**
	* ID of the element which is the current target of the association {@link #getHostConfigurationId hostConfigurationId}, or <code>null</code>.
	* @return	null
	*/
	public function getHostConfigurationId( ):sap.ui.core.ID;

	/**
	* Overwrites getter for card manifest.
	* @return	Cloned of the parameters.
	*/
	public function getManifest( ):Dynamic;

	/**
	* Returns a metadata object for class sap.ui.integration.widgets.Card.
	* @return	Metadata object describing this class
	*/
	public static function getMetadata( ):sap.ui.base.Metadata;

	/**
	* Overwrites getter for card parameters.
	* @return	A Clone of the parameters.
	*/
	public function getParameters( ):Dynamic;

	/**
	* Gets current value of property {@link #getWidth width}.

Defines the width of the card.

Default value is <code>100%</code>.
	* @return	Value of property <code>width</code>
	*/
	public function getWidth( ):sap.ui.core.CSSSize;

	/**
	* null
	* @return	If the card is ready or not.
	*/
	public function isReady( ):Bool;

	/**
	* Refreshes the card by re-applying the manifest settings and triggering all data requests.
	* @return	Void
	*/
	public function refresh( ):Void;

	/**
	* Sets a new value for the <code>dataMode</code> property.
	* @param	sMode The mode to set to the Card.
	* @return	Pointer to the control instance to allow method chaining.
	*/
	public function setDataMode( sMode:sap.ui.integration.CardDataMode):sap.ui.integration.widgets.Card;

	/**
	* Sets a new value for property {@link #getHeight height}.

Defines the height of the card.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>auto</code>.
	* @param	sHeight New value for property <code>height</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHeight( sHeight:sap.ui.core.CSSSize):sap.ui.integration.widgets.Card;
	@:overload( function(oHostConfigurationId:sap.ui.core.ID):sap.ui.integration.widgets.Card{ })

	/**
	* Sets the associated {@link #getHostConfigurationId hostConfigurationId}.
	* @param	oHostConfigurationId ID of an element which becomes the new target of this hostConfigurationId association; alternatively, an element instance may be given
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setHostConfigurationId( oHostConfigurationId:sap.ui.core.Control):sap.ui.integration.widgets.Card;
	@:overload( function(vValue:String):sap.ui.integration.widgets.Card{ })

	/**
	* Overwrites setter for card manifest.
	* @param	vValue The manifest object or its URL.
	* @return	Pointer to the control instance to allow method chaining.
	*/
	public function setManifest( vValue:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Overwrites setter for card params.
	* @param	vValue oParameters Parameters set in the card trough parameters property.
	* @return	Pointer to the control instance to allow method chaining.
	*/
	public function setParameters( vValue:Dynamic):sap.ui.integration.widgets.Card;

	/**
	* Sets a new value for property {@link #getWidth width}.

Defines the width of the card.

When called with a value of <code>null</code> or <code>undefined</code>, the default value of the property will be restored.

Default value is <code>100%</code>.
	* @param	sWidth New value for property <code>width</code>
	* @return	Reference to <code>this</code> in order to allow method chaining
	*/
	public function setWidth( sWidth:sap.ui.core.CSSSize):sap.ui.integration.widgets.Card;
}

typedef CardArgs = sap.ui.core.Control.ControlArgs & {

	/**
	* The URL of the manifest or an object.
	*/
	@:optional var manifest:Dynamic;

	/**
	* The parameters used in the manifest.
	*/
	@:optional var parameters:haxe.extern.EitherType<String,Dynamic>;

	/**
	* Defines the width of the card.
	*/
	@:optional var width:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the height of the card.
	*/
	@:optional var height:haxe.extern.EitherType<String,sap.ui.core.CSSSize>;

	/**
	* Defines the state of the <code>Card</code>. When set to <code>Inactive</code>, the <code>Card</code> doesn't make requests.
	*/
	@:optional var dataMode:haxe.extern.EitherType<String,sap.ui.integration.CardDataMode>;

    /**
    * Defines the header of the card.
    */
	@:optional var _header:haxe.extern.EitherType<String,sap.f.cards.IHeader>;

    /**
    * Defines the content of the card.
    */
	@:optional var _content:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* The ID of the host configuration.
	*/
	@:optional var hostConfigurationId:haxe.extern.EitherType<String,sap.ui.core.Control>;

	/**
	* Fired when an action is triggered on the card.
	*/
	@:optional var action:(oControlEvent:haxe.extern.EitherType<String,sap.ui.base.Event>)->Void;
}
