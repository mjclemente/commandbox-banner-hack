/**
* Remove all banner hacks
*/
component {
	
	function run() {
		command( 'config clear modules.commandbox-banner-hack').run();
				
		print.yellowBoldLine( 'CommandBox banner hacks cleared.' );
	}
}