package sap.ui;

@:native("sap.ui.loader")
extern class Loader
{
	@:overload( function(?cfg:Dynamic):Dynamic{ })

	/**
	* Sets the configuration for the UI5 loader. The configuration can be updated multiple times. Later changes do not impact modules that have been loaded before.

If no parameter is given, a partial copy of UI5 loader configuration in use is returned.

The configuration options are aligned with the "Common Config" draft of the AMD spec (https://github.com/amdjs/amdjs-api/blob/master/CommonConfig.md).

The following code shows an example of what a UI5 loader configuration might look like: <pre>

  sap.ui.loader.config({

    // location from where to load all modules by default
    baseUrl: '../../resources/',

    paths: {
      // load modules whose ID equals to or starts with 'my/module' from example.com
      'my/module': 'https://example.com/resources/my/module'
    },

    map: {
      // if any module requires 'sinon', load module 'sap/ui/thirdparty/sinon-4'
      '*': {
        'sinon': 'sap/ui/thirdparty/sinon-4'
      },
      // but if a module whose ID equals to or starts with 'app' requires 'sinon'
      // then load a legacy version instead
      "app": {
        'sinon': 'sap/ui/legacy/sinon'
      }
    },

    // activate real async loading and module definitions
    async: true,

    // provide dependency and export metadata for non-UI5 modules
    shim: {
      'sap/ui/thirdparty/blanket': {
        amd: true,
        exports: 'blanket'
      }
    }

  });

</pre>
	* @param	cfg The provided configuration gets merged with the UI5 loader configuration in use. If <code>cfg</code> is omitted or <code>undefined</code>, a copy of the current configuration gets returned, containing at least the properties <code>amd</code> and <code>async</code>.
	* @return	UI5 loader configuration in use.
	*/
	public static function config( ?cfg:Dynamic):Dynamic;
}

