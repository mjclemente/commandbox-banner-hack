component {
	
	function configure() {
		settings = {
      "quote"   = '',
      "version" = '',
      "welcome" = ''
		};
	}
	
	/**
	* This method listens for each time the CLI starts up.
	* @interceptData.hint This is the data passed to our interceptor about the event
	*/
	function onCLIStart( required struct interceptData ) {

    var hasSettings = settings.reduce( 
      function( result, key, value ){
        if( len( value ) ){
          result = true;
        }
        return result;
      }, false
    )

    if( hasSettings ){
      var tempLocation = GetTempDirectory() & 'banner.txt';
      fileWrite( tempLocation, arguments.interceptData.banner );
  
      var newBanner = '';
      var line = '';
      var index = 0;
      cfloop( file=tempLocation, item="line" index="index" ){
        if( index == 6 && settings.version.len() ){
          var version = line.listLast( ' ' ).listLast( 'v' );
          line = line.replacenocase( version, settings.version )
        }
        if( index == 8 && settings.quote.len() ){
          var prefix = line.listFirst( ' ' );
          line = prefix & repeatString( ' ', max( 77-settings.quote.len(), 1 ) ) & settings.quote;
        }
        if( index == 10 && settings.welcome.len() ){
          var prefix = line.listFirst( 'W' );
          line = prefix & settings.welcome;
        }
        newBanner &= line & chr(13) & chr(10);
      } 
      fileDelete( tempLocation );
      arguments.interceptData.banner = newBanner;

    }

	}	
}