/**
* Set the welcome text for the CommandBox startup banner.
*/
component {

	/**
	* @welcome.hint The welcome text to display in the banner, under the quote
	*/	
	function run( required string welcome ) {
		command( 'config set modules.commandbox-banner-hack.welcome="#welcome#"').run();
				
		print.yellowBoldLine( 'CommandBox banner welcome text set.' );
	}
}