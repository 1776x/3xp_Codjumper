// This file has been autogenerated using CoD4X 1.8 server. //
// If it contains wrong data, please create issue here:     //
//    https://github.com/callofduty4x/CoD4x_Server/issues   //
precache()
{

	//PRECACHE SHADERS
	precacheShader("black");
	precacheShader("white");
	precacheShader("damage_feedback");
	precacheShader("hud_advert");
	precacheShader("hud_website");
	precacheShader("hud_fps_333");
	preCacheShader("hud_bg_vote");
	preCacheShader("teamicon_spec");
	preCacheShader("teamicon_jump");

	//PRECACHE STANDARD WEAPONS
	precacheItem("frag_grenade_mp");
	precacheItem("rpg_mp");
	precacheItem("beretta_mp");
	precacheItem("deserteagle_mp");
	precacheItem("deserteaglegold_mp");
	precacheItem("colt45_mp");
	precacheItem("usp_mp");
	precacheItem("brick_blaster_mp");
	precacheItem("rpg_sustain_mp");

	//PRECACHE MENUS
	precacheMenu("clientcmd");
	precacheMenu( "ingame_controls" );
	precacheMenu( "ingame_options" );
	precacheMenu( "team_marinesopfor" );
	precacheMenu( "cj_vote" );
	precacheMenu( "cj_hudelement" );
	precacheMenu( "cj_graphic" );
	precacheMenu( "cj_endmapvote" );
	precacheMenu( "cj_controls" );
	precacheMenu( "cj_membercontrols" );
	precacheMenu( "cj_playerhelp" );
	precacheMenu( "cj_scoreboard" );
	precacheMenu( "cj_script" );
	precacheMenu( "quickcommands" );

	//PRECACHE PLAYER AND VIEWMODELS
	PreCacheModel("viewmodel_base_viewhands");
	PreCacheModel("head_mp_usmc_tactical_mich_stripes_nomex");
	precacheModel("body_mp_usmc_specops");
	precacheModel("body_mp_sas_urban_assault");
	precacheModel("viewhands_usmc");
	precacheModel("sonic");
	precacheModel("shadow");
	precacheModel("ratchet");

	precacheStatusIcon( "hud_status_connecting" );
	precacheStatusIcon( "hud_status_spectator" );
	/**
	precacheShader("cj_frame");
	precacheShader("ObjPoint_default");
	precacheShader("progress_bar_fill");
	precacheShader("progress_bar_bg");

	for ( i = 0; i <= 6; i++ )
	{
		precacheShader( tableLookup( "mp/rankIconTable.csv", 0, i, 1 ) );
		precacheString( tableLookupIString( "mp/rankTable.csv", 0, i, 16 ) );
	}

	precacheLocationSelector( "map_artillery_selector" );



	precacheHeadIcon( "talkingicon" );


	precacheMenu( "muteplayer" );
	precacheMenu( "scoreboard" );
	precacheMenu( "quickcommands" );
	precacheMenu("shop");

	precacheMenu("cj");
	precacheMenu("admin");
	precacheMenu("graphics");
	precacheMenu("cjvote");
	precacheMenu("poslog");

	precacheMenu("vip");

	precacheItem("gravitygun_mp");
	precacheItem("no_weapon_mp");
	precacheItem("frag_grenade_mp");
	precacheItem("rpg_mp");
	precacheItem("beretta_mp");
	precacheItem("deserteagle_mp");
	precacheItem("deserteaglegold_mp");
	precacheItem("deserteagle_tactical_mp");
	precacheItem("colt45_mp");
	precacheItem("usp_mp");
	precacheItem("brick_blaster_mp");




	precacheShellShock("flashbang");

	*/
}
