/**
* Set the quote text for the CommandBox startup banner.
*/
component {

	/**
	* @quote.hint The quote text to display in the banner, under the Commandbox logo
	*/	
	function run( required string quote ) {
		command( 'config set modules.commandbox-banner-hack.quote="#quote#"').run();
				
		print.yellowBoldLine( 'CommandBox banner quote set.' );
	}
}