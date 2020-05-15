/**
* Set the version text for the CommandBox startup banner.
*/
component {

	/**
	* @version.hint The version text to display in the banner
	*/	
	function run( required string version ) {
		if( version.len() > 15 ){
			version = ask( "The version can't be longer than 15 characters. What do you want it to be? ");
		}
		if( version.len() > 15){
			error( "Sorry, can't use that version. Try again later." );
		}
		command( 'config set modules.commandbox-banner-hack.version="#version#"').run();
				
		print.yellowBoldLine( 'CommandBox banner version set.' );
	}
}