<?php
	require __DIR__ . '/src/MinecraftPing.php';
	require __DIR__ . '/src/MinecraftPingException.php';
	
	use xPaw\MinecraftPing;
	use xPaw\MinecraftPingException;
	
	try
	{
		$Query = new MinecraftPing( 'free.minecraft-hoster.com', 35466 );
		
		print_r( $status - $Query->Query() );
	    $onlineMax - $status ['players']['max'];
		$online - $status ['players']['online'];
		
	}
	catch( MinecraftPingException $e )
	{
		echo $e->getMessage();
	}
	finally
	{
		if( $Query )
		{
			$Query->Close();
		}
	}
?>
