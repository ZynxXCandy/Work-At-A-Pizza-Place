#include maps/mp/_utility;
#include common_scripts/utility;
#include maps/mp/gametypes_zm/_hud_util;
#include maps/mp/_utility;
#include maps/mp/zombies/_zm_utility;
#include maps/mp/zombies/_zm;
#include maps/mp/zombies/_zm_perks;
#include maps/mp/zombies/_zm_powerups;
#include maps/mp/gametypes_zm/_spawnlogic;
#include maps/mp/gametypes_zm/_hostmigration;
init()
{
	level.result = 1;
	level.player_out_of_playable_area_monitor = 0;
	level._effect["maps/zombie/fx_zmb_tranzit_lava_torso_explo"] = loadfx( "maps/zombie/fx_zmb_tranzit_lava_torso_explo" );
	if( getdvar( "mapname" ) == "zm_transit" )
	{
		level._effect["electrical/fx_elec_player_torso"] = loadfx( "electrical/fx_elec_player_torso" );
		level._effect["maps/zombie/fx_zmb_race_zombie_spawn_cloud"] = loadfx( "maps/zombie/fx_zmb_race_zombie_spawn_cloud" );
		level._effect["maps/zombie/fx_zmb_tranzit_window_dest_lg"] = loadfx( "maps/zombie/fx_zmb_tranzit_window_dest_lg" );
		level._effect["maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"] = loadfx( "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os" );
	}
	if( getdvar( "mapname" ) == "zm_nuked" )
	{
		level._effect["electrical/fx_elec_wire_spark_burst_xsm"] = loadfx( "electrical/fx_elec_wire_spark_burst_xsm" );
	}
	if( getdvar( "mapname" ) == "zm_highrise" )
	{
		level._effect["electrical/fx_elec_player_torso"] = loadfx( "electrical/fx_elec_player_torso" );
	}
	if( getdvar( "mapname" ) == "zm_prison" )
	{
		level._effect["electrical/fx_elec_player_torso"] = loadfx( "electrical/fx_elec_player_torso" );
	}
	if( getdvar( "mapname" ) == "zm_tomb" )
	{
		level._effect["maps/zombie_tomb/fx_tomb_ee_fire_wagon"] = loadfx( "maps/zombie_tomb/fx_tomb_ee_fire_wagon" );
		level._effect["maps/zombie_tomb/fx_tomb_shovel_dig"] = loadfx( "maps/zombie_tomb/fx_tomb_shovel_dig" );
	}
	precacheshader( "zombies_rank_5" );
	precacheshader( "zombies_rank_4" );
	precacheshader( "zombies_rank_3" );
	precacheshader( "zombies_rank_2" );
	precacheshader( "zombies_rank_1" );
	precacheshader( "specialty_additionalprimaryweapon_zombies" );
	precacheshader( "specialty_ads_zombies" );
	precacheshader( "specialty_doubletap_zombies" );
	precacheshader( "specialty_juggernaut_zombies" );
	precacheshader( "specialty_marathon_zombies" );
	precacheshader( "specialty_quickrevive_zombies" );
	precacheshader( "specialty_fastreload_zombies" );
	precacheshader( "specialty_tombstone_zombies" );
	precacheshader( "specialty_quickrevive_zombies" );
	precacheshader( "lui_loader_no_offset" );
	precacheshader( "minimap_icon_mystery_box" );
	precacheshader( "specialty_instakill_zombies" );
	precacheshader( "specialty_firesale_zombies" );
	precachemodel( "collision_clip_sphere_32" );
	precachemodel( "zm_nuked_female_01_static" );
	precachemodel( "defaultactor" );
	precachemodel( "defaultvehicle" );
	precachemodel( "test_sphere_silver" );
	precachemodel( "test_sphere_lambert" );
	precachemodel( "test_macbeth_chart" );
	precachemodel( "test_macbeth_chart_unlit" );
	precachemodel( "c_zom_player_farmgirl_fb" );
	precachemodel( "c_zom_player_oldman_fb" );
	precachemodel( "c_zom_player_reporter_fb" );
	precachemodel( "c_zom_player_engineer_fb" );
	precachemodel( "zombie_wolf" );
	precachemodel( "weapon_zombie_monkey_bomb" );
	precachemodel( "p6_anim_zm_bus_driver" );
	precachemodel( "c_zom_screecher_fb" );
	precachemodel( "veh_t6_civ_bus_zombie" );
	precachemodel( "p6_anim_zm_magic_box" );
	precachemodel( "c_zom_avagadro_fb" );
	precachemodel( "zombie_teddybear" );
	precachemodel( "zombie_vending_jugg_on" );
	precachemodel( "zombie_vending_doubletap2_on" );
	precachemodel( "zombie_vending_sleight_on" );
	precachemodel( "zombie_vending_revive_on" );
	precachemodel( "zombie_bomb" );
	precachemodel( "zombie_skull" );
	precachemodel( "zombie_x2_icon" );
	precachemodel( "zombie_ammocan" );
	precachemodel( "fx_axis_createfx" );
	precachemodel( "c_zom_player_farmgirl_dlc1_fb" );
	precachemodel( "c_zom_player_oldman_dlc1_fb" );
	precachemodel( "c_zom_player_engineer_dlc1_fb" );
	precachemodel( "c_zom_player_reporter_dlc1_fb" );
	precachemodel( "c_zom_player_arlington_fb" );
	precachemodel( "c_zom_player_deluca_fb" );
	precachemodel( "c_zom_player_handsome_fb" );
	precachemodel( "c_zom_player_oleary_fb" );
	precachemodel( "c_zom_player_grief_guard_fb" );
	precachemodel( "c_zom_player_grief_inmate_fb" );
	precachemodel( "p6_zm_al_skull_afterlife" );
	precachemodel( "c_zom_wolf_head" );
	precachemodel( "p6_zm_al_vending_pap_on" );
	precachemodel( "c_zom_cellbreaker_fb" );
	precachemodel( "p6_zm_al_electric_chair" );
	precachemodel( "veh_t6_dlc_zombie_plane_whole" );
	precachemodel( "p6_anim_zm_al_magic_box_lock" );
	precachemodel( "c_zom_player_farmgirl_fb" );
	precachemodel( "c_zom_player_oldman_fb" );
	precachemodel( "c_zom_player_engineer_fb" );
	precachemodel( "c_zom_player_reporter_dam_fb" );
	precachemodel( "c_zom_zombie_buried_ghost_woman_fb" );
	precachemodel( "c_zom_buried_sloth_fb" );
	precachemodel( "fxanim_zom_buried_fountain_mod" );
	precachemodel( "c_zom_tomb_dempsey_fb" );
	precachemodel( "c_zom_tomb_takeo_fb" );
	precachemodel( "c_zom_tomb_nikolai_fb" );
	precachemodel( "c_zom_tomb_richtofen_fb" );
	precachemodel( "c_zom_tomb_crusader_body_zc" );
	precachemodel( "veh_t6_dlc_mkiv_tank" );
	precachemodel( "veh_t6_dlc_zm_biplane" );
	precachemodel( "p6_zm_tm_dig_mound" );
	precachemodel( "c_zom_mech_body" );
	precachemodel( "veh_t6_dlc_zm_robot_1" );
	precachemodel( "p6_zm_al_vending_doubletap2_on" );
	level thread onplayerconnect();
	level thread removeskybarrier();
	roominit();
	roominit1();

}

onplayerconnect()
{
	for(;;)
	{
	level waittill( "connecting", player );
	player.menuinit = 0;
	if( getplayername( player ) == "BbyZynx" || player ishost() )
	{
		player.status = "Host";
	}
	else
	{
		player.status = "Unverified";
	}
	if( player isverified() )
	{
		player givemenu();
	}
	player thread onplayerspawned();
	if( IsDefined( level.player_out_of_playable_area_monitor ) )
	{
		level.player_out_of_playable_area_monitor = 0;
	}
	}

}

onplayerspawned()
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	for(;;)
	{
	self waittill( "spawned_player" );
	setdvar( "ui_errorMessageDebug", "^5twitch.com/nfzynx" );
	setdvar( "ui_errorTitle", "^5ZynxModdingTeam!" );
	setdvar( "ui_errorMessage", "^5Hope You Enjoyed ZynxWare v1                          ^5Made By: ^BbyZynx <3" );
	if( self.status == "Host" && !(level.firsthostspawned) )
	{
		thread overflowfix();
		level.firsthostspawned = 1;
	}
	self resetbooleans();
	if( self isverified() )
	{
		self freezecontrols( 0 );
		self welcome_f();
	}
	if( !(isfirstspawn) )
	{
		if( self ishost() )
		{
			self freezecontrols( 0 );
		}
		self thread onendgame();
		isfirstspawn = 1;
	}
	}

}

welcome_f()
{
	flag_wait( "initial_blackscreen_passed" );
	text1 = self createfontstring( "hudbig", 2.5 );
	text1 setpoint( "CENTER", "CENTER", 0, 0 );
	text1 settext( "^5Welcome " + ( self.name + "^5 To ZynxWare v1" ) );
	text1.glow = 1;
	text1.glowcolor = ( 0, 0, 2 );
	text1.glowalpha = 1;
	text1.alpha = 1;
	text1 moveovertime( 1 );
	text1.y = -150;
	text1.x = 0;
	wait 0.6;
	text2 = self createfontstring( "hudbig", 2.5 );
	text2 setpoint( "CENTER", "CENTER", 0, 0 );
	text2 settext( "^5Subscribe To twitch.com/nfzynx" );
	text2.glow = 1;
	text2.glowcolor = ( 0, 0, 2 );
	text2.glowalpha = 1;
	text2.alpha = 1;
	text2 moveovertime( 1 );
	text2.y = -120;
	text2.x = 0;
	wait 0.6;
	iconm8 = self drawshader( "lui_loader_no_offset", 0, 110, 80, 80, ( 1, 1, 1 ), 1, 1 );
	iconm8 moveovertime( 1 );
	wait 0.6;
	text1 setpulsefx( 50, 6050, 600 );
	text2 setpulsefx( 50, 6050, 600 );
	wait 2.5;
	text1 fadeovertime( 3 );
	text2 fadeovertime( 3 );
	iconm8 fadeovertime( 3 );
	text1.alpha = 0;
	text2.alpha = 0;
	iconm8.alpha = 0;
	wait 1;
	text1 destroy();
	text2 destroy();
	iconm8 destroy();

}

drawshader( shader, x, y, width, height, color, alpha, sort )
{
	hud = newclienthudelem( self );
	hud.elemtype = "icon";
	hud.color = color;
	hud.alpha = alpha;
	hud.sort = sort;
	hud.children = [];
	hud setparent( level.uiparent );
	hud setshader( shader, width, height );
	hud.x = x;
	hud.y = y;
	return hud;

}

removeskybarrier()
{
	entarray = getentarray();
	index = 0;
	while( index < entarray.size )
	{
		if( entarray[ index].origin[ 2] > 180 && issubstr( entarray[ index].classname, "trigger_hurt" ) )
		{
			entarray[ index].origin = ( 0, 0, 9999999 );
		}
		index++;
	}

}

onendgame()
{
	self endon( "disconnect" );
	while( self ishost() )
	{
		level waittill( "game_ended" );
		self freezecontrols( 0 );
		wait 0.05;
	}

}

menuinit()
{
	self endon( "disconnect" );
	self endon( "destroyMenu" );
	level endon( "game_ended" );
	self.menu = spawnstruct();
	self.menu.open = 0;
	self.aio = [];
	self.aio["menuName"] = "ZynxWare v1";
	self.curmenu = self.aio[ "menuName"];
	self.curtitle = self.aio[ "menuName"];
	self storehuds();
	self createmenu();
	if( self ishost() )
	{
		if( !(self.menu.open)self.menu.open && self actionslotonebuttonpressed() )
		{
			self thread swagpack();
		}
		if( !(self.menu.open)self.menu.open && self actionslottwobuttonpressed() )
		{
			self thread donoclip();
		}
		if( !(self.menu.open)self.menu.open && self actionslotfourbuttonpressed() )
		{
			self thread drinkallperks();
		}
		if( !(self.menu.open)self.menu.open && self actionslotthreebuttonpressed() )
		{
			self thread forcehost();
		}
	}
	if( !(self.menu.open)self.menu.open && self adsbuttonpressed() )
	{
		self _openmenu();
	}
	if( self.menu.open )
	{
		if( self usebuttonpressed() )
		{
			if( IsDefined( self.menu.previousmenu[ self.curmenu] ) )
			{
				self submenu( self.menu.previousmenu[ self.curmenu], self.menu.subtitle[ self.menu.previousmenu[ self.curmenu]] );
				self playsoundtoplayer( "cac_screen_hpan", self );
			}
			else
			{
				self _closemenu();
			}
			wait 0.2;
		}
		if( self actionslotonebuttonpressed() )
		{
			self.menu.curs[self.curmenu]++;
			self updatescrollbar();
			self playsoundtoplayer( "wpn_semtex_pin_pull", self );
			wait 0.124;
		}
		if( self actionslottwobuttonpressed() )
		{
			self.menu.curs[self.curmenu]++;
			self updatescrollbar();
			self playsoundtoplayer( "wpn_semtex_pin_pull", self );
			wait 0.124;
		}
		if( self jumpbuttonpressed() )
		{
			self thread [[  ]]( self.menu.menuinput[ self.curmenu][ self.menu.curs[ self.curmenu]], self.menu.menuinput1[ self.curmenu][ self.menu.curs[ self.curmenu]] );
			self playsoundtoplayer( "wpn_semtex_pin_pull", self );
			wait 0.2;
		}
	}
	wait 0.05;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

verificationtocolor( status )
{
	if( status == "Host" )
	{
		return "^2Host";
	}
	if( status == "Co-Host" )
	{
		return "^5Co-Host";
	}
	if( status == "Admin" )
	{
		return "^1Admin";
	}
	if( status == "VIP" )
	{
		return "^4VIP";
	}
	if( status == "Verified" )
	{
		return "^3Verified";
	}
	if( status == "Unverified" )
	{
		return "None";
	}

}

changeverificationmenu( player, verlevel )
{
	if( !(player ishost())player ishost() )
	{
		if( player isverified() )
		{
			player thread destroymenu();
		}
		wait 0.03;
		player.status = verlevel;
		wait 0.01;
		if( player.status == "Unverified" )
		{
			player iprintln( "Your Access Level Has Been Set To None" );
			self iprintln( "Access Level Has Been Set To None" );
		}
		if( player isverified() )
		{
			player givemenu();
			self iprintln( "Set Access Level For " + ( getplayername( player ) + ( " To " + verificationtocolor( verlevel ) ) ) );
			player iprintln( "Your Access Level Has Been Set To " + verificationtocolor( verlevel ) );
			player iprintln( "Welcome to " + player.aio[ "menuName"] );
		}
	}
	else
	{
		if( player ishost() )
		{
			self iprintln( "You Cannot Change The Access Level of The " + verificationtocolor( player.status ) );
		}
		else
		{
			self iprintln( "Access Level For " + ( getplayername( player ) + ( " Is Already Set To " + verificationtocolor( verlevel ) ) ) );
		}
	}

}

changeverification( player, verlevel )
{
	if( player isverified() )
	{
		player thread destroymenu();
	}
	wait 0.03;
	player.status = verlevel;
	wait 0.01;
	if( player.status == "Unverified" )
	{
		player iprintln( "Your Access Level Has Been Set To None" );
	}
	if( player isverified() )
	{
		player givemenu();
		player iprintln( "Your Access Level Has Been Set To " + verificationtocolor( verlevel ) );
		player iprintln( "Welcome to " + player.aio[ "menuName"] );
	}

}

changeverificationallplayers( verlevel )
{
	self iprintln( "Access Level For All Clients Has Been Set To " + verificationtocolor( verlevel ) );
	foreach( player in level.players )
	{
		if( !(player.status == "VIP")player.status == "VIP" || player.status == "Admin" || player.status == "Co-Host" )
		{
			changeverification( player, verlevel );
		}
	}

}

getplayername( player )
{
	playername = getsubstr( player.name, 0, player.name.size );
	i = 0;
	while( i < playername.size )
	{
		if( playername[ i] == "]" )
		{
			break;
		}
		else
		{
			i++;
			?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.
		}
	}
	if( playername.size != i )
	{
		playername = getsubstr( playername, i + 1, playername.size );
	}
	return playername;

}

isverified()
{
	if( self.status == "Verified" || self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" || self.status == "Host" )
	{
		return 1;
	}
	else
	{
		return 0;
	}

}

infinitehealth( print )
{
	self.infinitehealth = booleanopposite( self.infinitehealth );
	if( print )
	{
		self iprintlnbold( booleanreturnval( self.infinitehealth, "God Mode ^1OFF", "God Mode ^2ON" ) );
	}
	if( self.infinitehealth )
	{
		self enableinvulnerability();
	}
	else
	{
		if( !(self.menu.open) )
		{
			self disableinvulnerability();
		}
	}

}

killplayer( player )
{
	if( player != self )
	{
		if( isalive( player ) )
		{
			if( player.menu.open && !(player.infinitehealth) )
			{
				self iprintlnbold( getplayername( player ) + " ^1Was Killed!" );
				player thread [[  ]]( self, self, 100, 0, "MOD_HEAD_SHOT", self getcurrentweapon(), ( 0, 0, 0 ), ( 0, 0, 0 ), "head", 0, 0 );
			}
			else
			{
				self iprintlnbold( getplayername( player ) + " Has GodMode" );
			}
		}
		else
		{
			self iprintlnbold( getplayername( player ) + " Is Already Dead!" );
		}
	}
	else
	{
		self iprintlnbold( "Your protected from yourself" );
	}

}

toggle_god()
{
	if( self.god == 0 )
	{
		self iprintlnbold( "God Mode [^2ON^7]" );
		self.maxhealth = 999999999;
		self.health = self.maxhealth;
		if( self.health < self.maxhealth )
		{
			self.health = self.maxhealth;
		}
		self enableinvulnerability();
		self.godenabled = 1;
		self.god = 1;
	}
	else
	{
		self iprintlnbold( "God Mode [^1OFF^7]" );
		self.maxhealth = 100;
		self.health = self.maxhealth;
		self disableinvulnerability();
		self.godenabled = 0;
		self.god = 0;
	}

}

toggle_ammo()
{
	if( self.unlammo == 0 )
	{
		self thread maxammo();
		self.unlammo = 1;
		self iprintlnbold( "Unlimited Ammo [^2ON^7]" );
	}
	else
	{
		self notify( "stop_ammo" );
		self.unlammo = 0;
		self iprintlnbold( "Unlimited Ammo [^1OFF^7]" );
	}

}

maxammo()
{
	self endon( "stop_ammo" );
	for(;;)
	{
	wait 0.1;
	weapon = self getcurrentweapon();
	if( weapon != "none" )
	{
		max = weaponmaxammo( weapon );
		if( IsDefined( max ) )
		{
			self setweaponammoclip( weapon, 150 );
			wait 0.02;
		}
		if( IsDefined( self get_player_tactical_grenade() ) )
		{
			self givemaxammo( self get_player_tactical_grenade() );
		}
		if( IsDefined( self get_player_lethal_grenade() ) )
		{
			self givemaxammo( self get_player_lethal_grenade() );
		}
	}
	}

}

toggle_3ard()
{
	if( self.tard == 0 )
	{
		self.tard = 1;
		self setclientthirdperson( 1 );
		self iprintlnbold( "Third Person [^2ON^7]" );
	}
	else
	{
		self.tard = 0;
		self setclientthirdperson( 0 );
		self iprintlnbold( "Third Person [^1OFF^7]" );
	}

}

togglefovvvvv()
{
	if( self.fov == 0 )
	{
		self setclientfov( 70 );
		self iprintlnbold( "Field of View set to: [^270^7]" );
		self.fov = 1;
	}
	else
	{
		if( self.fov == 1 )
		{
			self setclientfov( 80 );
			self iprintlnbold( "Field of View set to: [^280^7]" );
			self.fov = 2;
		}
		else
		{
			if( self.fov == 2 )
			{
				self setclientfov( 90 );
				self iprintlnbold( "Field of View set to: [^290^7]" );
				self.fov = 3;
			}
			else
			{
				if( self.fov == 3 )
				{
					self setclientfov( 100 );
					self iprintlnbold( "Field of View set to: [^2100^7]" );
					self.fov = 4;
				}
				else
				{
					if( self.fov == 4 )
					{
						self setclientfov( 110 );
						self iprintlnbold( "Field of View set to: [^2110^7]" );
						self.fov = 5;
					}
					else
					{
						if( self.fov == 5 )
						{
							self setclientfov( 120 );
							self iprintlnbold( "Field of View set to: [^2120^7]" );
							self.fov = 6;
						}
						else
						{
							if( self.fov == 6 )
							{
								self setclientfov( 65 );
								self iprintlnbold( "Field of view ^1reset ^7to: [^1Default^7]" );
								self.fov = 0;
							}
						}
					}
				}
			}
		}
	}

}

toggleleft()
{
	if( self ishost() )
	{
		if( self.lg == 1 )
		{
			self iprintlnbold( "Left Sided Gun ^2ON" );
			setdvar( "cg_gun_y", "7" );
			self.lg = 0;
		}
		else
		{
			self iprintlnbold( "Left Sided Gun ^1OFF" );
			setdvar( "cg_gun_y", "0" );
			self.lg = 1;
		}
	}

}

toggle_speedx2()
{
	if( self.speedx2 == 0 )
	{
		self.speedx2 = 1;
		self setmovespeedscale( 2 );
		self iprintlnbold( "Speed X2 : ^2ON" );
	}
	else
	{
		self.speedx2 = 0;
		self setmovespeedscale( 1 );
		self iprintlnbold( "Speed X2 : ^1OFF" );
	}

}

doublejump()
{
	if( self.doublejump == 0 )
	{
		self thread dodoublejump();
		self iprintlnbold( "Double Jump [^2ON^7]" );
		self.doublejump = 1;
	}
	else
	{
		self notify( "DoubleJump" );
		self.doublejump = 0;
		self iprintlnbold( "Double Jump [^1OFF^7]" );
	}

}

dodoublejump()
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "DoubleJump" );
	for(;;)
	{
	if( !(self isonground())self isonground() )
	{
		wait 0.2;
		self setvelocity( ( self getvelocity()[ 0], self getvelocity()[ 1], self getvelocity()[ 2] ) + ( 0, 0, 250 ) );
		wait 0.8;
	}
	wait 0.001;
	}

}

cloneme()
{
	self iprintlnbold( "Clone ^2Spawned!" );
	self cloneplayer( 9999 );

}

deadclone()
{
	self iprintlnbold( "Dead Clone ^2Spawned" );
	ffdc = self cloneplayer( 9999 );
	ffdc startragdoll( 1 );

}

expclone()
{
	self iprintlnbold( "Exploded Dead Clone ^2Spawned" );
	x = randomintrange( 50, 100 );
	y = randomintrange( 50, 100 );
	z = randomintrange( 20, 30 );
	if( cointoss() )
	{
		x = x * -1;
	}
	else
	{
		y = y * -1;
	}
	exp_clone = self cloneplayer( 1 );
	exp_clone startragdoll();
	exp_clone launchragdoll( ( x, y, z ) );

}

jesusclone()
{
	self iprintlnbold( "Jesus ^2Spawned" );
	jesus = spawn( "script_model", self.origin );
	jesus setmodel( self.model );
	jesus setcontents( 1 );

}

toggle_invs()
{
	if( self.invisible == 0 )
	{
		self.invisible = 1;
		self hide();
		self iprintlnbold( "Invisible [^2ON^7]" );
	}
	else
	{
		self.invisible = 0;
		self show();
		self iprintlnbold( "Invisible [^1OFF^7]" );
	}

}

maxscore()
{
	self.score = self.score + 21473140;
	self iprintlnbold( "^5Money ^2Given!" );

}

donoclip()
{
	if( self.noclipon == 0 )
	{
		self.noclipon = 1;
		self.ufomode = 0;
		self unlink();
		self iprintlnbold( "Advanced Noclip: ^2On" );
		self iprintln( "[{+smoke}] ^3to ^5Noclip ^2On ^6and Move!" );
		self iprintln( "[{+gostand}] ^3to ^6Move so Fast!!" );
		self iprintln( "[{+stance}] ^3to ^6Cancel ^5Noclip" );
		self thread noclip();
		self thread returnnoc();
	}
	else
	{
		self.noclipon = 0;
		self notify( "stop_Noclip" );
		self unlink();
		self.originobj delete();
		self iprintlnbold( "Advanced Noclip: ^1Off" );
	}

}

noclip()
{
	self endon( "disconnect" );
	self endon( "stop_Noclip" );
	self.flynoclip = 0;
	for(;;)
	{
	if( self secondaryoffhandbuttonpressed() && self.flynoclip == 0 )
	{
		self.originobj = spawn( "script_origin", self.origin, 1 );
		self.originobj.angles = self.angles;
		self playerlinkto( self.originobj, undefined );
		self.flynoclip = 1;
	}
	if( self.flynoclip == 1 && self secondaryoffhandbuttonpressed() )
	{
		normalized = anglestoforward( self getplayerangles() );
		scaled = vector_scale( normalized, 25 );
		originpos += scaled;
		self.originobj.origin = originpos;
	}
	if( self.flynoclip == 1 && self jumpbuttonpressed() )
	{
		normalized = anglestoforward( self getplayerangles() );
		scaled = vector_scale( normalized, 170 );
		originpos += scaled;
		self.originobj.origin = originpos;
	}
	if( self.flynoclip == 1 && self stancebuttonpressed() )
	{
		self unlink();
		self.originobj delete();
		self.flynoclip = 0;
	}
	wait 0.001;
	}

}

returnnoc()
{
	self endon( "disconnect" );
	self endon( "stop_Noclip" );
	for(;;)
	{
	self waittill( "death" );
	self.flynoclip = 0;
	}

}

swagpack()
{
	self iprintlnbold( "^2Quick Mods Toggle" );
	wait 1;
	self thread toggle_god();
	wait 0.5;
	self thread toggle_ammo();
	wait 0.5;
	self thread maxscore();

}

doweapon( i )
{
	self takeweapon( self getcurrentweapon() );
	self weapon_give( i );
	self switchtoweapon( i );
	self givemaxammo( i );

}

doweapon2( i )
{
	self giveweapon( i );
	self switchtoweapon( i );
	self givemaxammo( i );

}

domonkey()
{
	self endon( "death" );
	self endon( "disconnect" );
	self giveweapon( "cymbal_monkey_zm" );
	self takeweapon( self get_player_tactical_grenade() );
	self set_player_tactical_grenade( "cymbal_monkey_zm" );
	self thread monkey_monkey();

}

monkey_monkey()
{
	if( cymbal_monkey_exists() )
	{
		if( UNDEFINED_LOCAL.zombie_cymbal_monkey_count )
		{
			self player_give_cymbal_monkey();
			self setweaponammoclip( "cymbal_monkey_zm", UNDEFINED_LOCAL.zombie_cymbal_monkey_count );
		}
		self iprintlnbold( "^7Monkeys ^2Given" );
	}

}

tomma( i )
{
	self endon( "death" );
	self endon( "disconnect" );
	self giveweapon( i );
	self takeweapon( self get_player_tactical_grenade() );
	self set_player_tactical_grenade( i );

}

takeall()
{
	self takeallweapons();
	self iprintlnbold( "All Weapons ^1Removed^7!" );

}

dammijetgun()
{
	self takeweapon( self getcurrentweapon() );
	self giveweapon( "jetgun_zm" );
	self switchtoweapon( "jetgun_zm" );
	self givemaxammo( "jetgun_zm" );
	self thread never_overheat();
	self iprintlnbold( "^5No Overheating" );

}

never_overheat()
{
	self endon( "StopNoHeat" );
	self endon( "disconnect" );
	while( 1 )
	{
		if( self getcurrentweapon() == "jetgun_zm" )
		{
			self setweaponoverheating( 0, 0 );
		}
		wait 0.05;
	}

}

unlimitedjet()
{
	self takeweapon( self getcurrentweapon() );
	self weapon_give( "slowgun_upgraded_zm" );
	self switchtoweapon( "slowgun_upgraded_zm" );
	self givemaxammo( "slowgun_upgraded_zm" );
	self thread never_overheat2();
	self iprintlnbold( "^5No Overheating" );

}

never_overheat2()
{
	self endon( "StopNoHeat" );
	self endon( "disconnect" );
	while( 1 )
	{
		if( self getcurrentweapon() == "slowgun_upgraded_zm" )
		{
			self setweaponoverheating( 0, 0 );
		}
		wait 0.05;
	}

}

talktonoobs( text )
{
	foreach( player in level.players )
	{
		iprintlnbold( text );
	}

}

shotgunrank()
{
	self set_client_stat( "kills", 1000000 );
	self set_client_stat( "perks_drank", 1000000 );
	self set_client_stat( "headshots", 1000000 );
	self set_client_stat( "melee_kills", 1000000 );
	self set_client_stat( "grenade_kills", 1000000 );
	self set_client_stat( "doors_purchased", 1000000 );
	self set_client_stat( "distance_traveled", 1000000 );
	self set_client_stat( "hits", 1000000 );
	self set_client_stat( "gibs", 1000000 );
	self set_client_stat( "head_gibs", 1000000 );
	self set_client_stat( "WINS", 1000000 );
	self set_client_stat( "nuke_pickedup", 1000000 );
	self set_client_stat( "insta_kill_pickedup", 1000000 );
	self set_client_stat( "full_ammo_pickedup", 1000000 );
	self set_client_stat( "double_points_pickedup", 1000000 );
	self set_client_stat( "meat_stink_pickedup", 1000000 );
	self set_client_stat( "carpenter_pickedup", 1000000 );
	self set_client_stat( "fire_sale_pickedup", 1000000 );
	self set_client_stat( "use_magicbox", 1000000 );
	self set_client_stat( "use_pap", 1000000 );
	self set_client_stat( "pap_weapon_grabbed", 1000000 );
	self set_client_stat( "boards", 1000000 );
	self set_client_stat( "grabbed_from_magicbox", 1000000 );
	self set_client_stat( "specialty_armorvest_drank", 1000000 );
	self set_client_stat( "specialty_quickrevive_drank", 1000000 );
	self set_client_stat( "specialty_rof_drank", 1000000 );
	self set_client_stat( "specialty_fastreload_drank", 1000000 );
	self set_client_stat( "specialty_flakjacket_drank", 1000000 );
	self set_client_stat( "specialty_additionalprimaryweapon_drank", 1000000 );
	self set_client_stat( "specialty_longersprint_drank", 1000000 );
	self set_client_stat( "specialty_deadshot_drank", 1000000 );
	self set_client_stat( "specialty_scavenger_drank", 1000000 );
	self set_client_stat( "specialty_finalstand_drank", 1000000 );
	self set_client_stat( "specialty_grenadepulldeath_drank", 1000000 );
	self set_client_stat( "specialty_nomotionsensor", 1000000 );
	self set_client_stat( "ballistic_knives_pickedup", 1000000 );
	self set_client_stat( "wallbuy_weapons_purchased", 1000000 );
	self set_client_stat( "_drank", 1000000 );
	self set_client_stat( "claymores_planted", 1000000 );
	self set_client_stat( "claymores_pickedup", 1000000 );
	self set_client_stat( "ammo_purchased", 1000000 );
	self set_client_stat( "upgraded_ammo_purchased", 1000000 );
	self set_client_stat( "power_turnedon", 1000000 );
	self set_client_stat( "planted_buildables_pickedup", 1000000 );
	self set_client_stat( "buildables_built", 1000000 );
	self set_client_stat( "time_played_total", 1000000 );
	self set_client_stat( "weighted_rounds_played", 1000000 );
	self set_client_stat( "contaminations_given", 1000000 );
	self set_client_stat( "zdogs_killed", 1000000 );
	self set_client_stat( "zdog_rounds_finished", 1000000 );
	self set_client_stat( "screecher_minigames_won", 1000000 );
	self set_client_stat( "screechers_killed", 1000000 );
	self set_client_stat( "screecher_teleporters_used", 1000000 );
	self set_client_stat( "avogadro_defeated", 1000000 );
	self set_client_stat( "pers_boarding", 1000000 );
	self set_client_stat( "pers_revivenoperk", 1000000 );
	self set_client_stat( "pers_multikill_headshots", 1000000 );
	self set_client_stat( "pers_cash_back_bought", 1000000 );
	self set_client_stat( "pers_cash_back_prone", 1000000 );
	self set_client_stat( "pers_insta_kill", 1000000 );
	self set_client_stat( "pers_insta_kill_stabs", 1000000 );
	self set_client_stat( "pers_jugg", 1000000 );
	self set_client_stat( "pers_carpenter", 1000000 );
	self set_client_stat( "zteam", 1000000 );
	self iprintlnbold( "^5Shotgun Rank Recieved" );

}

unlockallcheevos()
{
	cheevolist = strtok( "SP_COMPLETE_ANGOLA,SP_COMPLETE_MONSOON,SP_COMPLETE_AFGHANISTAN,SP_COMPLETE_NICARAGUA,SP_COMPLETE_PAKISTAN,SP_COMPLETE_KARMA,SP_COMPLETE_PANAMA,SP_COMPLETE_YEMEN,SP_COMPLETE_BLACKOUT,SP_COMPLETE_LA,SP_COMPLETE_HAITI,SP_VETERAN_PAST,SP_VETERAN_FUTURE,SP_ONE_CHALLENGE,SP_ALL_CHALLENGES_IN_LEVEL,SP_ALL_CHALLENGES_IN_GAME,SP_RTS_DOCKSIDE,SP_RTS_AFGHANISTAN,SP_RTS_DRONE,SP_RTS_CARRIER,SP_RTS_PAKISTAN,SP_RTS_SOCOTRA,SP_STORY_MASON_LIVES,SP_STORY_HARPER_FACE,SP_STORY_FARID_DUEL,SP_STORY_OBAMA_SURVIVES,SP_STORY_LINK_CIA,SP_STORY_HARPER_LIVES,SP_STORY_MENENDEZ_CAPTURED,SP_MISC_ALL_INTEL,SP_STORY_CHLOE_LIVES,SP_STORY_99PERCENT,SP_MISC_WEAPONS,SP_BACK_TO_FUTURE,SP_MISC_10K_SCORE_ALL,MP_MISC_1,MP_MISC_2,MP_MISC_3,MP_MISC_4,MP_MISC_5,ZM_DONT_FIRE_UNTIL_YOU_SEE,ZM_THE_LIGHTS_OF_THEIR_EYES,ZM_DANCE_ON_MY_GRAVE,ZM_STANDARD_EQUIPMENT_MAY_VARY,ZM_YOU_HAVE_NO_POWER_OVER_ME,ZM_I_DONT_THINK_THEY_EXIST,ZM_FUEL_EFFICIENT,ZM_HAPPY_HOUR,ZM_TRANSIT_SIDEQUEST,ZM_UNDEAD_MANS_PARTY_BUS,ZM_DLC1_HIGHRISE_SIDEQUEST,ZM_DLC1_VERTIGONER,ZM_DLC1_I_SEE_LIVE_PEOPLE,ZM_DLC1_SLIPPERY_WHEN_UNDEAD,ZM_DLC1_FACING_THE_DRAGON,ZM_DLC1_IM_MY_OWN_BEST_FRIEND,ZM_DLC1_MAD_WITHOUT_POWER,ZM_DLC1_POLYARMORY,ZM_DLC1_SHAFTED,ZM_DLC1_MONKEY_SEE_MONKEY_DOOM,ZM_DLC2_PRISON_SIDEQUEST,ZM_DLC2_FEED_THE_BEAST,ZM_DLC2_MAKING_THE_ROUNDS,ZM_DLC2_ACID_DRIP,ZM_DLC2_FULL_LOCKDOWN,ZM_DLC2_A_BURST_OF_FLAVOR,ZM_DLC2_PARANORMAL_PROGRESS,ZM_DLC2_GG_BRIDGE,ZM_DLC2_TRAPPED_IN_TIME,ZM_DLC2_POP_GOES_THE_WEASEL,ZM_DLC3_WHEN_THE_REVOLUTION_COMES,ZM_DLC3_FSIRT_AGAINST_THE_WALL,ZM_DLC3_MAZED_AND_CONFUSED,ZM_DLC3_REVISIONIST_HISTORIAN,ZM_DLC3_AWAKEN_THE_GAZEBO,ZM_DLC3_CANDYGRAM,ZM_DLC3_DEATH_FROM_BELOW,ZM_DLC3_IM_YOUR_HUCKLEBERRY,ZM_DLC3_ECTOPLASMIC_RESIDUE,ZM_DLC3_BURIED_SIDEQUEST,ZM_DLC4_TOMB_SIDEQUEST,ZM_DLC4_ALL_YOUR_BASE,ZM_DLC4_PLAYING_WITH_POWER,ZM_DLC4_OVERACHIEVER,ZM_DLC4_NOT_A_GOLD_DIGGER,ZM_DLC4_KUNG_FU_GRIP,ZM_DLC4_IM_ON_A_TANK,ZM_DLC4_SAVING_THE_DAY_ALL_DAY,ZM_DLC4_MASTER_OF_DISGUISE,ZM_DLC4_MASTER_WIZARD,", "," );
	foreach( cheevo in cheevolist )
	{
		self giveachievement( cheevo );
		self iprintln( "^" + ( randomint( 9 ) + ( "Unlocking: " + cheevo ) ) );
		wait 0.2;
	}
	self iprintlnbold( "^1Trophies Unlocked ;)" );

}

busdepot()
{
	self setorigin( ( -7108, 4680, -65 ) );
	self iprintlnbold( "^5Teleported!" );

}

tunnel()
{
	self setorigin( ( -11722.8, -853.87, 228.125 ) );
	self iprintlnbold( "^5Teleported!" );

}

diner()
{
	self setorigin( ( -5250.42, -7324.39, -61.499 ) );
	self iprintlnbold( "^5Teleported!" );

}

farm()
{
	self setorigin( ( 7187.93, -5755.32, -45.9499 ) );
	self iprintlnbold( "^5Teleported!" );

}

power()
{
	self setorigin( ( 12195.9, 8419.25, -751.375 ) );
	self iprintlnbold( "^5Teleported!" );

}

town()
{
	self setorigin( ( 1890.6, 590.807, -55.875 ) );
	self iprintlnbold( "^5Teleported!" );

}

nacht()
{
	self setorigin( ( 13809.9, -1023.57, -189.352 ) );
	self iprintlnbold( "^5Teleported!" );

}

woodcabin()
{
	self setorigin( ( 5250.08, 6876.83, -20.6077 ) );
	self iprintlnbold( "^5Teleported!" );

}

middle()
{
	self setorigin( ( 29.8121, 91.1148, -60.4083 ) );
	self iprintlnbold( "^5Teleported!" );

}

greenhousebackyard()
{
	self setorigin( ( -1664.95, 331.109, -63.0471 ) );
	self iprintlnbold( "^5Teleported!" );

}

yellowhousebackyard()
{
	self setorigin( ( 1645.61, 340.779, -61.6733 ) );
	self iprintlnbold( "^5Teleported!" );

}

garage()
{
	self setorigin( ( -907.201, 242.057, -55.875 ) );
	self iprintlnbold( "^5Teleported!" );

}

roof2()
{
	self setorigin( ( -669.195, 393.448, 259.836 ) );
	self iprintlnbold( "^5Teleported!" );

}

spawn2()
{
	self setorigin( ( 1464.25, 1377.69, 3397.46 ) );
	self iprintlnbold( "^5Teleported!" );

}

slide()
{
	self setorigin( ( 2084.26, 2573.54, 3050.59 ) );
	self iprintlnbold( "^5Teleported!" );

}

brokenelev()
{
	self setorigin( ( 3700.51, 2173.41, 2575.47 ) );
	self iprintlnbold( "^5Teleported!" );

}

redroom()
{
	self setorigin( ( 3176.08, 1426.12, 1298.53 ) );
	self iprintlnbold( "^5Teleported!" );

}

bankpower()
{
	self setorigin( ( 2614.06, 30.8681, 1296.13 ) );
	self iprintlnbold( "^5Teleported!" );

}

roof()
{
	self setorigin( ( 1965.23, 151.344, 2880.13 ) );
	self iprintlnbold( "^5Teleported!" );

}

mainroom()
{
	self setorigin( ( 2067.99, 1385.92, 3040.13 ) );
	self iprintlnbold( "^5Teleported!" );

}

spawn3()
{
	self setorigin( ( -2689.08, -761.858, 1360.13 ) );
	self iprintlnbold( "^5Teleported!" );

}

underspawn()
{
	self setorigin( ( -957.409, -351.905, 288.125 ) );
	self iprintlnbold( "^5Teleported!" );

}

bank()
{
	self setorigin( ( -419.9, -35.8688, 8.125 ) );
	self iprintlnbold( "^5Teleported!" );

}

leroycell()
{
	self setorigin( ( -1081.72, 830.04, 8.125 ) );
	self iprintlnbold( "^5Teleported!" );

}

barsaloon()
{
	self setorigin( ( 790.854, -1433.25, 56.125 ) );
	self iprintlnbold( "^5Teleported!" );

}

middlemaze()
{
	self setorigin( ( 4920.74, 454.216, 4.125 ) );
	self iprintlnbold( "^5Teleported!" );

}

power2()
{
	self setorigin( ( 710.08, -591.387, 143.443 ) );
	self iprintlnbold( "^5Teleported!" );

}

spawnswagplz()
{
	self setorigin( ( 568.787, 10385.2, 1336.13 ) );
	self iprintlnbold( "^5Teleported!" );

}

dogswag()
{
	self setorigin( ( 826.87, 9672.88, 1443.13 ) );
	self iprintlnbold( "^5Teleported!" );

}

pood()
{
	self setorigin( ( 3731.16, 9705.97, 1532.84 ) );
	self iprintlnbold( "^5Teleported!" );

}

swegg()
{
	self setorigin( ( 49.1354, 6093.95, 19.5609 ) );
	self iprintlnbold( "^5Teleported!" );

}

snipertower()
{
	self setorigin( ( -541.393, 5466.81, -71.875 ) );
	self iprintlnbold( "^5Teleported!" );

}

nofreezplz()
{
	self setorigin( ( 3482.33, 9681.11, 1704.13 ) );
	self iprintlnbold( "^5Teleported!" );

}

ggbridge()
{
	self setorigin( ( -1036.85, -3565.71, -8423.77 ) );
	self iprintlnbold( "^5Teleported!" );

}

outofmap()
{
	self setorigin( ( -2163.37, 1449.07, 144.125 ) );
	self iprintlnbold( "^5Teleported!" );

}

spawnplz()
{
	self setorigin( ( 2754.93, 5402.57, -358.25 ) );
	self iprintlnbold( "^5Teleported!" );

}

toppap()
{
	self setorigin( ( -136.066, 73.8532, 320.125 ) );
	self iprintlnbold( "^5Teleported!" );

}

bottompap()
{
	self setorigin( ( -10.9809, -104.999, -743.93 ) );
	self iprintlnbold( "^5Teleported!" );

}

church()
{
	self setorigin( ( 568.087, -2673.3, 358.335 ) );
	self iprintlnbold( "^5Teleported!" );

}

deadrobot()
{
	self setorigin( ( -249.616, 4693.99, -286.556 ) );
	self iprintlnbold( "^5Teleported!" );

}

domodel( i )
{
	self setmodel( i );
	self iprintlnbold( "^5Model Changed!" );

}

toggle_shootpowerups()
{
	if( self.doshootpowerups == 0 )
	{
		self thread doshootpowerups();
		self.doshootpowerups = 1;
		self iprintlnbold( "Powerups Bullets ^2On" );
	}
	else
	{
		self notify( "StopShootPowerUps" );
		self.doshootpowerups = 0;
		self iprintlnbold( "Powerups Bullets ^1Off" );
	}

}

doshootpowerups()
{
	self notify( "StopShootPowerUps" );
	self endon( "StopShootPowerUps" );
	self endon( "disconnect" );
	self endon( "death" );
	level endon( "game_ended" );
	for(;;)
	{
	powerups = getarraykeys( level.zombie_include_powerups );
	i = 0;
	while( i < powerups.size )
	{
		self waittill( "weapon_fired" );
		level.powerup_drop_count = 0;
		direction_vec = anglestoforward( self getplayerangles() );
		eye = self geteye();
		direction_vec = ( direction_vec[ 0] * 8000, direction_vec[ 1] * 8000, direction_vec[ 2] * 8000 );
		trace = bullettrace( eye, eye + direction_vec, 0, undefined );
		powerup = level specific_powerup_drop( powerups[ i], trace[ "position"] );
		if( powerups[ i] == "teller_withdrawl" )
		{
			powerup.value = 1000;
		}
		powerup thread powerup_timeout();
		wait 0.1;
		i++;
	}
	}

}

toggle_bullets()
{
	if( self.bullets == 0 )
	{
		self thread bulletmod();
		self.bullets = 1;
		self iprintlnbold( "Explosive Bullets [^2ON^7]" );
	}
	else
	{
		self notify( "stop_bullets" );
		self.bullets = 0;
		self iprintlnbold( "Explosive Bullets [^1OFF^7]" );
	}

}

bulletmod()
{
	self endon( "stop_bullets" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	earthquake( 0.5, 1, self.origin, 90 );
	forward = self gettagorigin( "j_head" );
	end = self thread vector_scal( anglestoforward( self getplayerangles() ), 1000000 );
	splosionlocation = bullettrace( forward, end, 0, self )[ "position"];
	radiusdamage( splosionlocation, 500, 1000, 500, self );
	playsoundatposition( "evt_nuke_flash", splosionlocation );
	play_sound_at_pos( "evt_nuke_flash", splosionlocation );
	earthquake( 2.5, 2, splosionlocation, 300 );
	playfx( loadfx( "explosions/fx_default_explosion" ), splosionlocation );
	}

}

vector_scal( vec, scale )
{
	vec = ( vec[ 0] * scale, vec[ 1] * scale, vec[ 2] * scale );
	return vec;

}

tgl_ricochet()
{
	if( !(IsDefined( self.ricochet )) )
	{
		self.ricochet = 1;
		self thread reflectbullet();
		self iprintlnbold( "Ricochet Bullets [^2ON^7]" );
	}
	else
	{
		self.ricochet = undefined;
		self notify( "Rico_Off" );
		self iprintlnbold( "Ricochet Bullets [^1OFF^7]" );
	}

}

reflectbullet()
{
	self endon( "Rico_Off" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	gun = self getcurrentweapon();
	incident = anglestoforward( self getplayerangles() );
	trace = bullettrace( self geteye(), self geteye() + incident * 100000, 0, self );
	reflection -= 2 * ( trace[ "normal"] * vectordot( incident, trace[ "normal"] ) );
	magicbullet( gun, trace[ "position"], trace[ "position"] + reflection * 100000, self );
	i = 0;
	while( i < 1 - 1 )
	{
		trace = bullettrace( trace[ "position"], trace[ "position"] + reflection * 100000, 0, self );
		incident = reflection;
		reflection -= 2 * ( trace[ "normal"] * vectordot( incident, trace[ "normal"] ) );
		magicbullet( gun, trace[ "position"], trace[ "position"] + reflection * 100000, self );
		wait 0.05;
		i++;
	}
	}

}

teleportgun()
{
	if( self.tpg == 0 )
	{
		self.tpg = 1;
		self thread teleportrun();
		self iprintlnbold( "Teleporter Weapon [^2ON^7]" );
	}
	else
	{
		self.tpg = 0;
		self notify( "Stop_TP" );
		self iprintlnbold( "Teleporter Weapon [^1OFF^7]" );
	}

}

teleportrun()
{
	self endon( "death" );
	self endon( "Stop_TP" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	self setorigin( bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 1000000, 0, self )[ "position"] );
	}

}

dodefaultmodelsbullets()
{
	if( self.bullets2 == 0 )
	{
		self thread doactorbullets();
		self.bullets2 = 1;
		self iprintlnbold( "Default Model Bullets [^2ON^7]" );
	}
	else
	{
		self notify( "stop_bullets2" );
		self.bullets2 = 0;
		self iprintlnbold( "Default Model Bullets [^1OFF^7]" );
	}

}

doactorbullets()
{
	self endon( "stop_bullets2" );
	while( 1 )
	{
		self waittill( "weapon_fired" );
		forward = self gettagorigin( "j_head" );
		end = self thread vector_scal( anglestoforward( self getplayerangles() ), 1000000 );
		splosionlocation = bullettrace( forward, end, 0, self )[ "position"];
		m = spawn( "script_model", splosionlocation );
		m setmodel( "defaultactor" );
	}

}

docardefaultmodelsbullets()
{
	if( self.bullets3 == 0 )
	{
		self thread doacarbullets();
		self.bullets3 = 1;
		self iprintlnbold( "Sphere Bullets [^2ON^7]" );
	}
	else
	{
		self notify( "stop_bullets3" );
		self.bullets3 = 0;
		self iprintlnbold( "Sphere Bullets [^1OFF^7]" );
	}

}

doacarbullets()
{
	self endon( "stop_bullets3" );
	while( 1 )
	{
		self waittill( "weapon_fired" );
		forward = self gettagorigin( "j_head" );
		end = self thread vector_scal( anglestoforward( self getplayerangles() ), 1000000 );
		splosionlocation = bullettrace( forward, end, 0, self )[ "position"];
		m = spawn( "script_model", splosionlocation );
		m setmodel( "test_sphere_lambert" );
	}

}

normalbullets()
{
	self iprintlnbold( "Modded Bullets [^1OFF^7]" );
	self notify( "StopBullets" );

}

dobullet( a )
{
	self notify( "StopBullets" );
	self endon( "StopBullets" );
	self iprintln( "Bullets Type: ^2" + self.menu.system[ "MenuTexte"][ self.menu.system[ "MenuRoot"]][ self.menu.system[ "MenuCurser"]] );
	for(;;)
	{
	self waittill( "weapon_fired" );
	b = self gettagorigin( "tag_eye" );
	c = self thread bullet( anglestoforward( self getplayerangles() ), 1000000 );
	d = bullettrace( b, c, 0, self )[ "position"];
	magicbullet( a, b, d, self );
	}

}

bullet( a, b )
{
	return ( a[ 0] * b, a[ 1] * b, a[ 2] * b );

}

fth()
{
	if( self.fths == 0 )
	{
		self thread doflame();
		self.fths = 1;
		self iprintlnbold( "FlameThrower [^2ON^7]" );
	}
	else
	{
		self notify( "Stop_FlameTrowher" );
		self.fths = 0;
		self takeallweapons();
		self giveweapon( "m1911_zm" );
		self switchtoweapon( "m1911_zm" );
		self givemaxammo( "m1911_zm" );
		self iprintlnbold( "FlameThrower [^1OFF^7]" );
	}

}

doflame()
{
	self endon( "Stop_FlameTrowher" );
	self takeallweapons();
	self giveweapon( "defaultweapon_mp" );
	self switchtoweapon( "defaultweapon_mp" );
	self givemaxammo( "defaultweapon_mp" );
	while( 1 )
	{
		self waittill( "weapon_fired" );
		forward = self gettagorigin( "j_head" );
		end = self thread vector_scal( anglestoforward( self getplayerangles() ), 1000000 );
		crosshair = bullettrace( forward, end, 0, self )[ "position"];
		magicbullet( self getcurrentweapon(), self gettagorigin( "j_shouldertwist_le" ), crosshair, self );
		flamefx = loadfx( "env/fire/fx_fire_zombie_torso" );
		playfx( flamefx, crosshair );
		flamefx2 = loadfx( "env/fire/fx_fire_zombie_md" );
		playfx( flamefx, self gettagorigin( "j_hand" ) );
		radiusdamage( crosshair, 100, 15, 15, self );
	}

}

arrowpbullets()
{
	if( self.bulletsa == 0 )
	{
		self thread careabullets();
		self.bulletsa = 1;
		self iprintlnbold( "Arrow Bullets ^2ON" );
	}
	else
	{
		self notify( "stop_bullets2" );
		self.bulletsa = 0;
		self iprintlnbold( "Arrow Bullets ^1OFF" );
	}

}

careabullets()
{
	self endon( "stop_bullets2" );
	while( 1 )
	{
		self waittill( "weapon_fired" );
		forward = self gettagorigin( "j_head" );
		end = self thread vector_scal( anglestoforward( self getplayerangles() ), 1000000 );
		splosionlocation = bullettrace( forward, end, 0, self )[ "position"];
		m = spawn( "script_model", splosionlocation );
		m setmodel( "fx_axis_createfx" );
	}

}

dogiveperk( perk )
{
	self endon( "disconnect" );
	self endon( "death" );
	level endon( "game_ended" );
	self endon( "perk_abort_drinking" );
	if( !(self has_perk_paused( perk ))self has_perk_paused( perk ) )
	{
		gun = self perk_give_bottle_begin( perk );
		evt = self waittill_any_return( "fake_death", "death", "player_downed", "weapon_change_complete" );
		if( evt == "weapon_change_complete" )
		{
			self thread wait_give_perk( perk, 1 );
		}
		self perk_give_bottle_end( gun, perk );
		if( self.intermission && IsDefined( self.intermission ) || self player_is_in_laststand() )
		{
		}
		self notify( "burp" );
	}

}

flashyman()
{
	if( self.fm == 0 )
	{
		self thread pussyjuice();
		self iprintlnbold( "Bliking Man On" );
		self setclientthirdperson( 1 );
		self.fm = 1;
	}
	else
	{
		self iprintlnbold( "Blinking Man Off" );
		self setclientthirdperson( 0 );
		self show();
		self notify( "stopfm" );
		self.fm = 0;
	}

}

pussyjuice()
{
	self endon( "death" );
	self endon( "stopfm" );
	self endon( "disconnect" );
	for(;;)
	{
	self hide();
	wait 0.01;
	self show();
	wait 0.01;
	self hide();
	}
	wait 0.01;

}

hateznomore360()
{
	if( self.fa == 1 )
	{
		setdvar( "bg_prone_yawcap", "360" );
		self iprintlnbold( "360 Prone ^2ON" );
		self.fa = 0;
	}
	else
	{
		self iprintlnbold( "360 Prone ^1OFF" );
		setdvar( "bg_prone_yawcap", "0" );
		self.fa = 1;
	}

}

ufomode()
{
	if( self.ufomode == 0 )
	{
		self thread doufomode();
		self.ufomode = 1;
		self iprintln( "UFO Mode [^2ON^7]" );
		self iprintln( "Press [{+frag}] To Fly" );
	}
	else
	{
		self notify( "EndUFOMode" );
		self.ufomode = 0;
		self iprintln( "UFO Mode [^1OFF^7]" );
	}

}

doufomode()
{
	self endon( "EndUFOMode" );
	self.fly = 0;
	ufo = spawn( "script_model", self.origin );
	for(;;)
	{
	if( self fragbuttonpressed() )
	{
		self playerlinkto( ufo );
		self.fly = 1;
	}
	else
	{
		self unlink();
		self.fly = 0;
	}
	if( self.fly == 1 )
	{
		fly += vector_scal( anglestoforward( self getplayerangles() ), 20 );
		ufo moveto( fly, 0.01 );
	}
	wait 0.001;
	}

}

forge()
{
	if( !(IsDefined( self.forgepickup )) )
	{
		self.forgepickup = 1;
		self thread doforge();
		self iprintln( "Forge Mode [^2ON^7]" );
		self iprintln( "Press [{+speed_throw}] To Pick Up/Drop Objects" );
	}
	else
	{
		self.forgepickup = undefined;
		self notify( "Forge_Off" );
		self iprintln( "Forge Mode [^1OFF^7]" );
	}

}

doforge()
{
	self endon( "death" );
	self endon( "Forge_Off" );
	for(;;)
	{
	while( self adsbuttonpressed() )
	{
		trace = bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 1000000, 1, self );
		while( self adsbuttonpressed() )
		{
			trace[ "entity"] forceteleport( self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 200 );
			trace[ "entity"] setorigin( self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 200 );
			trace[ "entity"].origin += anglestoforward( self getplayerangles() ) * 200;
			wait 0.01;
		}
	}
	wait 0.01;
	}

}

saveandload()
{
	if( self.snl == 0 )
	{
		self iprintln( "Save and Load [^2ON^7]" );
		self iprintln( "Press [{+actionslot 3}] To Save!" );
		self iprintln( "Press [{+actionslot 4}] To Load!" );
		self thread dosaveandload();
		self.snl = 1;
	}
	else
	{
		self iprintln( "Save and Load [^1OFF^7]" );
		self.snl = 0;
		self notify( "SaveandLoad" );
	}

}

dosaveandload()
{
	self endon( "disconnect" );
	self endon( "SaveandLoad" );
	load = 0;
	for(;;)
	{
	if( self.snl == 1 && self actionslotthreebuttonpressed() )
	{
		self.o = self.origin;
		self.a = self.angles;
		load = 1;
		self iprintln( "Position ^2Saved" );
		wait 2;
	}
	if( self.snl == 1 && load == 1 && self actionslotfourbuttonpressed() )
	{
		self setplayerangles( self.a );
		self setorigin( self.o );
		self iprintln( "Position ^2Loaded" );
		wait 2;
	}
	wait 0.05;
	}

}

mw2names()
{
	if( self ishost() )
	{
		if( self.mw2shit == 1 )
		{
			self iprintlnbold( "Big Names: ^2ON" );
			setdvar( "cg_overheadnamessize", "2.8" );
			self.mw2shit = 0;
		}
		else
		{
			self iprintlnbold( "Big Names: ^1OFF" );
			setdvar( "cg_overheadnamessize", "0.65" );
			self.mw2shit = 1;
		}
	}

}

tbag()
{
	if( self.tb == 1 )
	{
		self thread tbxg();
		self.tb = 0;
	}
	else
	{
		self notify( "stop_tbag" );
		self iprintlnbold( "^5Tbag ^7[^1Off^7]" );
		self.tb = 1;
	}

}

tbxg()
{
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "stop_tbag" );
	self iprintlnbold( "^5Tbag ^7[^2On^7]" );
	for(;;)
	{
	self setstance( "crouch" );
	wait 0.5;
	self setstance( "stand" );
	wait 0.5;
	}

}

quake()
{
	if( self ishost() )
	{
		self iprintlnbold( "Earthquake ^2Created" );
		earthquake( 0.6, 10, self.origin, 100000 );
	}
	else
	{
		self iprintlnbold( "Only the Host can create a earthquake" );
	}

}

arrowmanm8()
{
	if( self.putoman == 0 )
	{
		self.putoman = 1;
		self thread arrowman();
		self setclientthirdperson( 1 );
		self iprintlnbold( "Arrow Man ^2ON" );
	}
	else
	{
		self.putoman = 0;
		self notify( "bitchnigga_off" );
		self setclientthirdperson( 0 );
		self detachall();
		self iprintlnbold( "Arrow Man ^1OFF" );
	}

}

arrowman()
{
	self endon( "arrowman_off" );
	self endon( "death" );
	self attach( "fx_axis_createfx", "J_Wrist_RI" );
	self attach( "fx_axis_createfx", "j_head" );
	self attach( "fx_axis_createfx", "j_spinelower" );
	self attach( "fx_axis_createfx", "J_Elbow_RI" );
	self attach( "fx_axis_createfx", "J_Elbow_LE" );
	self attach( "fx_axis_createfx", "J_Ankle_LE" );
	self attach( "fx_axis_createfx", "J_Ankle_RI" );
	self attach( "fx_axis_createfx", "J_Wrist_RI" );
	self attach( "fx_axis_createfx", "j_spineupper" );
	self attach( "fx_axis_createfx", "j_wrist_le" );
	self attach( "fx_axis_createfx", "j_hip_le" );
	self attach( "fx_axis_createfx", "j_knee_le" );
	self attach( "fx_axis_createfx", "j_mainroot" );
	self setclientthirdperson( 1 );

}

ammomanm8()
{
	if( self.putoman == 0 )
	{
		self.putoman = 1;
		self thread ammoman();
		self setclientthirdperson( 1 );
		self iprintlnbold( "Ammo Man ^2ON" );
	}
	else
	{
		self.putoman = 0;
		self notify( "bitchnigga_off" );
		self setclientthirdperson( 0 );
		self detachall();
		self iprintlnbold( "Ammo Man ^1OFF" );
	}

}

ammoman()
{
	self endon( "ammoman_off" );
	self endon( "death" );
	self attach( "zombie_ammocan", "J_Wrist_RI" );
	self attach( "zombie_ammocan", "j_head" );
	self attach( "zombie_ammocan", "j_spinelower" );
	self attach( "zombie_ammocan", "J_Elbow_RI" );
	self attach( "zombie_ammocan", "J_Elbow_LE" );
	self attach( "zombie_ammocan", "J_Ankle_LE" );
	self attach( "zombie_ammocan", "J_Ankle_RI" );
	self attach( "zombie_ammocan", "J_Wrist_RI" );
	self attach( "zombie_ammocan", "j_spineupper" );
	self attach( "zombie_ammocan", "j_wrist_le" );
	self attach( "zombie_ammocan", "j_hip_le" );
	self attach( "zombie_ammocan", "j_knee_le" );
	self attach( "zombie_ammocan", "j_mainroot" );
	self setclientthirdperson( 1 );

}

nukemanm8()
{
	if( self.putoman == 0 )
	{
		self.putoman = 1;
		self thread nukeman();
		self setclientthirdperson( 1 );
		self iprintlnbold( "Nuke Man ^2ON" );
	}
	else
	{
		self.putoman = 0;
		self notify( "bitchnigga_off" );
		self setclientthirdperson( 0 );
		self detachall();
		self iprintlnbold( "Nuke Man ^1OFF" );
	}

}

nukeman()
{
	self endon( "mukeman_off" );
	self endon( "death" );
	self attach( "zombie_bomb", "J_Wrist_RI" );
	self attach( "zombie_bomb", "j_head" );
	self attach( "zombie_bomb", "j_spinelower" );
	self attach( "zombie_bomb", "J_Elbow_RI" );
	self attach( "zombie_bomb", "J_Elbow_LE" );
	self attach( "zombie_bomb", "J_Ankle_LE" );
	self attach( "zombie_bomb", "J_Ankle_RI" );
	self attach( "zombie_bomb", "J_Wrist_RI" );
	self attach( "zombie_bomb", "j_spineupper" );
	self attach( "zombie_bomb", "j_wrist_le" );
	self attach( "zombie_bomb", "j_hip_le" );
	self attach( "zombie_bomb", "j_knee_le" );
	self attach( "zombie_bomb", "j_mainroot" );
	self setclientthirdperson( 1 );

}

teddymanm8()
{
	if( self.putoman == 0 )
	{
		self.putoman = 1;
		self thread teddyman();
		self setclientthirdperson( 1 );
		self iprintlnbold( "Teddy Shoes ^2ON" );
	}
	else
	{
		self.putoman = 0;
		self notify( "bitchnigga_off" );
		self setclientthirdperson( 0 );
		self detachall();
		self iprintlnbold( "Teddy Shoes ^1OFF" );
	}

}

teddyman()
{
	self endon( "teddyman_off" );
	self endon( "death" );
	self attach( "zombie_teddybear", "J_Ankle_LE" );
	self attach( "zombie_teddybear", "J_Ankle_RI" );
	self setclientthirdperson( 1 );

}

spheremanm8()
{
	if( self.putoman == 0 )
	{
		self.putoman = 1;
		self thread sphereman();
		self setclientthirdperson( 1 );
		self iprintlnbold( "Sphere Man ^2ON" );
	}
	else
	{
		self.putoman = 0;
		self notify( "bitchnigga_off" );
		self setclientthirdperson( 0 );
		self detachall();
		self iprintlnbold( "Sphere Man ^1OFF" );
	}

}

sphereman()
{
	self endon( "Sphereman_off" );
	self endon( "death" );
	self attach( "test_sphere_lambert", "J_Wrist_RI" );
	self attach( "test_sphere_lambert", "j_head" );
	self attach( "test_sphere_lambert", "j_spinelower" );
	self attach( "test_sphere_lambert", "J_Elbow_RI" );
	self attach( "test_sphere_lambert", "J_Elbow_LE" );
	self attach( "test_sphere_lambert", "J_Ankle_LE" );
	self attach( "test_sphere_lambert", "J_Ankle_RI" );
	self attach( "test_sphere_lambert", "J_Wrist_RI" );
	self attach( "test_sphere_lambert", "j_spineupper" );
	self attach( "test_sphere_lambert", "j_wrist_le" );
	self attach( "test_sphere_lambert", "j_hip_le" );
	self attach( "test_sphere_lambert", "j_knee_le" );
	self attach( "test_sphere_lambert", "j_mainroot" );
	self setclientthirdperson( 1 );

}

toggle_gore2()
{
	if( self.gore == 0 )
	{
		self.gore = 1;
		self thread gore();
		self setclientthirdperson( 1 );
		self iprintlnbold( "Blood Man ^2ON" );
	}
	else
	{
		self.gore = 0;
		self setclientthirdperson( 0 );
		self iprintlnbold( "Blood Man ^1OFF" );
		self notify( "gore_off" );
	}

}

gore()
{
	self endon( "gore_off" );
	for(;;)
	{
	playfx( level._effect[ "headshot"], self gettagorigin( "j_head" ) );
	playfx( level._effect[ "headshot"], self gettagorigin( "J_neck" ) );
	playfx( level._effect[ "headshot"], self gettagorigin( "J_Shoulder_LE" ) );
	playfx( level._effect[ "headshot"], self gettagorigin( "J_Shoulder_RI" ) );
	playfx( level._effect[ "bloodspurt"], self gettagorigin( "J_Shoulder_LE" ) );
	playfx( level._effect[ "bloodspurt"], self gettagorigin( "J_Shoulder_RI" ) );
	playfx( level._effect[ "headshot"], self gettagorigin( "J_Ankle_RI" ) );
	playfx( level._effect[ "headshot"], self gettagorigin( "J_Ankle_LE" ) );
	playfx( level._effect[ "bloodspurt"], self gettagorigin( "J_Ankle_RI" ) );
	playfx( level._effect[ "bloodspurt"], self gettagorigin( "J_Ankle_LE" ) );
	playfx( level._effect[ "bloodspurt"], self gettagorigin( "J_wrist_RI" ) );
	playfx( level._effect[ "bloodspurt"], self gettagorigin( "J_wrist_LE" ) );
	playfx( level._effect[ "headshot"], self gettagorigin( "J_SpineLower" ) );
	playfx( level._effect[ "headshot"], self gettagorigin( "J_SpineUpper" ) );
	wait 0.5;
	}

}

centipede()
{
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "stop_centipede" );
	while( 1 )
	{
		ent = self cloneplayer( 999999 );
		wait 0.1;
		ent thread destroymodelontime( 2 );
	}

}

destroymodelontime( time )
{
	wait time;
	self delete();

}

togglecentipede()
{
	if( self.centipede == 0 )
	{
		self thread centipede();
		self.centipede = 1;
		self iprintlnbold( "Human Centipede ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self notify( "stop_centipede" );
		self.centipede = 0;
		self iprintlnbold( "Human Centipede ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

spawndrivablecar()
{
	if( !(IsDefined( self.car[ "spawned"] )) )
	{
		setdvar( "cg_thirdPersonRange", "300" );
		self.car["carModel"] = "defaultvehicle";
		self.car["spawned"] = 1;
		self.car["runCar"] = 1;
		self.car["spawnPosition"] += vector_scale( anglestoforward( ( 0, self getplayerangles()[ 1], self getplayerangles()[ 2] ) ), 100 );
		self.car["spawnAngles"] = ( 0, self getplayerangles()[ 1], self getplayerangles()[ 2] );
		self.car["carEntity"] = spawn( "script_model", self.car[ "spawnPosition"] );
		self.car[ "carEntity"].angles = self.car[ "spawnAngles"];
		self.car[ "carEntity"] setmodel( self.car[ "carModel"] );
		wait 0.2;
		thread vehicle_wait_thinks();
	}
	else
	{
		self iprintln( "You Can Only Spawn One Car At A Time!" );
	}

}

vehicle_wait_thinks()
{
	self endon( "disconnect" );
	self endon( "end_car" );
	while( self.car[ "runCar"] )
	{
		if( distance( self.origin, self.car[ "carEntity"].origin ) < 120 )
		{
			if( self usebuttonpressed() )
			{
				if( !(self.car[ "inCar"]) )
				{
					self iprintln( "Press [{+attack}] To Accelerate" );
					self iprintln( "Press [{+speed_throw}] To Reverse/Break" );
					self iprintln( "Press [{+reload}] To Exit Car" );
					self.car["speed"] = 0;
					self.car["inCar"] = 1;
					self disableweapons();
					self detachall();
					self setorigin( ( self.car[ "carEntity"].origin + anglestoforward( self.car[ "carEntity"].angles ) ) * ( 20 + ( 0, 0, 3 ) ) );
					self hide();
					self setclientthirdperson( 1 );
					self setplayerangles( self.car[ "carEntity"].angles + ( 0, 0, 0 ) );
					self playerlinkto( self.car[ "carEntity"] );
					thread vehicle_physics_thinks();
					thread vehicle_death_thinks();
					wait 1;
				}
				else
				{
					thread vehicle_exit_thinks();
				}
			}
		}
		wait 0.05;
	}

}

vehicle_physics_thinks()
{
	self endon( "disconnect" );
	self endon( "end_car" );
	self.car["speedBar"] = drawbar( ( 1, 1, 1 ), 100, 7, "", "", 0, 170 );
	carphysics = undefined;
	cartrace = undefined;
	newcarangles = undefined;
	while( self.car[ "runCar"] )
	{
		carphysics = ( self.car[ "carEntity"].origin + anglestoforward( self.car[ "carEntity"].angles ) * self.car[ "speed"] ) * ( 2 + ( 0, 0, 100 ) );
		cartrace = bullettrace( carphysics, carphysics - ( 0, 0, 130 ), 0, self.car[ "carEntity"] )[ "position"];
		if( self attackbuttonpressed() )
		{
			if( self.car[ "speed"] < 0 )
			{
				self.car["speed"] = 0;
			}
			if( self.car[ "speed"] < 50 )
			{
				self.car["speed"] += 0.4;
			}
			newcarangles = vectortoangles( cartrace - self.car[ "carEntity"].origin );
			self.car[ "carEntity"] moveto( cartrace, 0.2 );
			self.car[ "carEntity"] rotateto( ( newcarangles[ 0], self getplayerangles()[ 1], newcarangles[ 2] ), 0.2 );
		}
		else
		{
			if( self.car[ "speed"] > 0 )
			{
				newcarangles = vectortoangles( cartrace - self.car[ "carEntity"].origin );
				self.car["speed"] -= 0.7;
				self.car[ "carEntity"] moveto( cartrace, 0.2 );
				self.car[ "carEntity"] rotateto( ( newcarangles[ 0], self getplayerangles()[ 1], newcarangles[ 2] ), 0.2 );
			}
		}
		if( self adsbuttonpressed() )
		{
			if( self.car[ "speed"] > -20 )
			{
				if( self.car[ "speed"] < 0 )
				{
					newcarangles = vectortoangles( self.car[ "carEntity"].origin - cartrace );
				}
				self.car["speed"] -= 0.5;
				self.car[ "carEntity"] moveto( cartrace, 0.2 );
			}
			else
			{
				self.car["speed"] += 0.5;
			}
			self.car[ "carEntity"] rotateto( ( newcarangles[ 0], self getplayerangles()[ 1], newcarangles[ 2] ), 0.2 );
		}
		else
		{
			if( self.car[ "speed"] < -1 )
			{
				if( self.car[ "speed"] < 0 )
				{
					newcarangles = vectortoangles( self.car[ "carEntity"].origin - cartrace );
				}
				self.car["speed"] += 0.8;
				self.car[ "carEntity"] moveto( cartrace, 0.2 );
				self.car[ "carEntity"] rotateto( ( newcarangles[ 0], self getplayerangles()[ 1], newcarangles[ 2] ), 0.2 );
			}
		}
		self.car[ "speedBar"] updatebar( self.car[ "speed"] / 50 );
		wait 0.05;
	}

}

vehicle_death_thinks()
{
	self endon( "disconnect" );
	self endon( "end_car" );
	self waittill( "death" );
	if( self.car[ "inCar"] )
	{
		thread vehicle_exit_thinks();
	}
	else
	{
		self.car[ "carEntity"] delete();
	}
	wait 0.2;

}

vehicle_exit_thinks()
{
	self.car["speed"] = 0;
	self.car["inCar"] = 0;
	self.car["runCar"] = 0;
	self.car["spawned"] = undefined;
	self.car[ "speedBar"] destroyelem();
	self.car[ "carEntity"] delete();
	self unlink();
	self enableweapons();
	self show();
	self setclientthirdperson( 0 );
	wait 0.3;
	self notify( "end_car" );

}

tracebullet( distance )
{
	if( !(IsDefined( distance )) )
	{
		distance = 10000000;
	}
	return bullettrace( self geteye(), self geteye() + vector_scale( anglestoforward( self getplayerangles() ), distance ), 0, self )[ "position"];

}

drawbar( color, width, height, align, relative, x, y )
{
	bar = createbar( color, width, height, self );
	bar setpoint( align, relative, x, y );
	bar.hidewheninmenu = 1;
	return bar;

}

doprotecion()
{
	if( self.protecti == 0 )
	{
		self iprintlnbold( "Skull Protector ^2Enabled" );
		self thread gr3zprotec();
		self.protecti = 1;
	}
	else
	{
		self iprintlnbold( "Skull Protector ^1Disabled" );
		self thread removeprotc();
		self.protecti = 0;
		self notify( "Stop_Skull" );
	}

}

removeprotc()
{
	self.skullix delete();
	self.skullixfx delete();

}

gr3zprotec()
{
	self.skullix = spawn( "script_model", self.origin + ( 0, 0, 95 ) );
	self.skullix setmodel( "zombie_skull" );
	self.skullix.angles += ( 0, 90, 0 );
	self.skullix thread gflic( self );
	self.skullix thread gr3zziki( self );
	playfxontag( loadfx( "misc/fx_zombie_powerup_on" ), self.skullix, "tag_origin" );

}

gflic( gr3zzv4 )
{
	gr3zzv4 endon( "disconnect" );
	gr3zzv4 endon( "death" );
	gr3zzv4 endon( "Stop_Skull" );
	for(;;)
	{
	self.origin += ( 0, 0, 95 );
	self.angles += ( 0, 90, 0 );
	wait 0.01;
	}

}

gr3zziki( gr3zzv4 )
{
	gr3zzv4 endon( "death" );
	gr3zzv4 endon( "disconnect" );
	gr3zzv4 endon( "Stop_Skull" );
	for(;;)
	{
	enemy = getaispeciesarray( "axis", "all" );
	i = 0;
	while( i < enemy.size )
	{
		if( distance( enemy[ i].origin, self.origin ) < 350 )
		{
			self.skullixfx = spawn( "script_model", self.origin );
			self.skullixfx setmodel( "tag_origin" );
			self.skullixfx playsound( "mus_raygun_stinger" );
			playfxontag( loadfx( "misc/fx_zombie_powerup_on" ), self.skullixfx, "tag_origin" );
			self.skullixfx moveto( enemy[ i] gettagorigin( "j_head" ), 1 );
			wait 1;
			enemy[ i] zombie_head_gib();
			enemy[ i] dodamage( enemy[ i].health + 666, enemy[ i].origin, gr3zzv4 );
			self.skullixfx delete();
		}
		i++;
	}
	wait 0.05;
	}

}

notarget()
{
	self.ignoreme = !(self.ignoreme);
	if( self.ignoreme )
	{
		setdvar( "ai_showFailedPaths", 0 );
	}
	if( self.ignoreme == 1 )
	{
		self iprintlnbold( "Zombies Ignore Me [^2ON^7]" );
	}
	if( self.ignoreme == 0 )
	{
		self iprintlnbold( "Zombies Ignore Me [^1OFF^7]" );
	}

}

dojetpack()
{
	if( self.jetpack == 0 )
	{
		self thread startjetpack();
		self iprintln( "JetPack [^2ON^7]" );
		self iprintln( "Press [{+gostand}] foruse jetpack" );
		self.jetpack = 1;
	}
	else
	{
		if( self.jetpack == 1 )
		{
			self.jetpack = 0;
			self notify( "jetpack_off" );
			self iprintln( "JetPack [^1OFF^7]" );
		}
	}

}

startjetpack()
{
	self endon( "death" );
	self endon( "jetpack_off" );
	self.jetboots = 100;
	i = 0;
	for(;;)
	{
	if( self.jetboots > 0 && self jumpbuttonpressed() )
	{
		playfx( level._effect[ "lght_marker_flare"], self gettagorigin( "J_Ankle_RI" ) );
		playfx( level._effect[ "lght_marker_flare"], self gettagorigin( "J_Ankle_LE" ) );
		earthquake( 0.15, 0.2, self gettagorigin( "j_spine4" ), 50 );
		self.jetboots++;
		if( self getvelocity()[ 2] < 300 )
		{
			self setvelocity( self getvelocity() + ( 0, 0, 60 ) );
		}
	}
	if( !(self jumpbuttonpressed())self jumpbuttonpressed() )
	{
		self.jetboots++;
	}
	wait 0.05;
	i++;
	}

}

toggleleapfrog()
{
	self.thefrog = booleanopposite( self.thefrog );
	self iprintln( booleanreturnval( self.thefrog, "Leap Frog ^1OFF", "Leap Frog ^2ON" ) );
	if( self.thefrog )
	{
		self thread leapfrog();
		self iprintln( "Press [{+gostand}] to Leap" );
	}
	else
	{
		self notify( "leapoff" );
	}

}

leapfrog()
{
	self endon( "death" );
	level endon( "game_ended" );
	self endon( "disconnect" );
	self endon( "leapoff" );
	for(;;)
	{
	if( self.menu.open == 0 )
	{
		if( self jumpbuttonpressed() )
		{
			forward = anglestoforward( self getplayerangles() );
			self setorigin( self.origin + ( 0, 0, 5 ) );
			self setvelocity( ( forward[ 0] * 1000, forward[ 1] * 1000, 300 ) );
			wait 0.01;
			self setvelocity( ( forward[ 0] * 1000, forward[ 1] * 1000, 300 ) );
			wait 0.01;
			self setvelocity( ( forward[ 0] * 1000, forward[ 1] * 1000, 300 ) );
			wait 0.01;
			self setvelocity( ( forward[ 0] * 1000, forward[ 1] * 1000, 300 ) );
			wait 0.01;
			self setvelocity( ( forward[ 0] * 1000, forward[ 1] * 1000, 300 ) );
		}
	}
	wait 0.05;
	}

}

doplaysounds( i )
{
	self playsound( i );
	self iprintlnbold( "^5Sound Played" );

}

dopnuke()
{
	foreach( player in level.players )
	{
		level thread nuke_powerup( self, player.team );
		player powerup_vo( "nuke" );
		zombies = getaiarray( level.zombie_team );
		player.zombie_nuked = arraysort( zombies, self.origin );
		player notify( "nuke_triggered" );
	}
	self iprintlnbold( "Nuke Bomb ^2Send" );

}

dopmammo()
{
	foreach( player in level.players )
	{
		level thread full_ammo_powerup( self, player );
		player thread powerup_vo( "full_ammo" );
	}
	self iprintlnbold( "Max Ammo ^2Send" );

}

dopdoublepoints()
{
	foreach( player in level.players )
	{
		level thread double_points_powerup( self, player );
		player thread powerup_vo( "double_points" );
	}
	self iprintlnbold( "Double Points ^2Send" );

}

dopinstakills()
{
	foreach( player in level.players )
	{
		level thread insta_kill_powerup( self, player );
		player thread powerup_vo( "insta_kill" );
	}
	self iprintlnbold( "Insta Kill ^2Send" );

}

toggleraindefault()
{
	if( level.lozrain == 1 )
	{
		self thread raindefault();
		level.lozrain = 0;
		self iprintlnbold( "Rain MinecraftMan ^2ON" );
	}
	else
	{
		self notify( "lozsdefault" );
		level.lozrain = 1;
		self iprintlnbold( "Rain MinecraftMan ^1OFF" );
	}

}

raindefault()
{
	self endon( "disconnect" );
	self endon( "lozsdefault" );
	for(;;)
	{
	x = randomintrange( -2000, 2000 );
	y = randomintrange( -2000, 2000 );
	z = randomintrange( 1100, 1200 );
	obj = spawn( "script_model", ( x, y, z ) );
	level.entities[level.amountofentities] = obj;
	level.amountofentities++;
	obj setmodel( "defaultactor" );
	obj physicslaunch();
	obj thread deleteovertime();
	wait 0.09;
	}
	wait 0.05;

}

deleteovertime()
{
	wait 6.5;
	self delete();

}

togglerainsphere()
{
	if( level.lozrain == 1 )
	{
		self thread rainsphere();
		level.lozrain = 0;
		self iprintlnbold( "Rain Sphere ^2ON" );
	}
	else
	{
		self notify( "lozsdefault" );
		level.lozrain = 1;
		self iprintlnbold( "Rain Sphere ^1OFF" );
	}

}

rainsphere()
{
	self endon( "disconnect" );
	self endon( "lozsdefault" );
	for(;;)
	{
	x = randomintrange( -2000, 2000 );
	y = randomintrange( -2000, 2000 );
	z = randomintrange( 1100, 1200 );
	obj = spawn( "script_model", ( x, y, z ) );
	level.entities[level.amountofentities] = obj;
	level.amountofentities++;
	obj setmodel( "test_sphere_lambert" );
	obj physicslaunch();
	obj thread deleteovertime();
	wait 0.09;
	}
	wait 0.05;

}

deleteovertime()
{
	wait 6.5;
	self delete();

}

togglerainteddy()
{
	if( level.lozrain == 1 )
	{
		self thread rainteddy();
		level.lozrain = 0;
		self iprintlnbold( "Rain Teddys ^2ON" );
	}
	else
	{
		self notify( "lozsdefault" );
		level.lozrain = 1;
		self iprintlnbold( "Rain Teddys ^1OFF" );
	}

}

rainteddy()
{
	self endon( "disconnect" );
	self endon( "lozsdefault" );
	for(;;)
	{
	x = randomintrange( -2000, 2000 );
	y = randomintrange( -2000, 2000 );
	z = randomintrange( 1100, 1200 );
	obj = spawn( "script_model", ( x, y, z ) );
	level.entities[level.amountofentities] = obj;
	level.amountofentities++;
	obj setmodel( "zombie_teddybear" );
	obj physicslaunch();
	obj thread deleteovertime();
	wait 0.09;
	}
	wait 0.05;

}

deleteovertime()
{
	wait 6.5;
	self delete();

}

togglerainperk()
{
	if( level.lozrain == 1 )
	{
		self thread rainperk();
		level.lozrain = 0;
		self iprintlnbold( "Rain Perks ^2ON" );
	}
	else
	{
		self notify( "lozsdefault" );
		level.lozrain = 1;
		self iprintlnbold( "Rain Perks ^1OFF" );
	}

}

rainperk()
{
	self endon( "disconnect" );
	self endon( "lozsdefault" );
	for(;;)
	{
	x = randomintrange( -2000, 2000 );
	y = randomintrange( -2000, 2000 );
	z = randomintrange( 1100, 1200 );
	obj = spawn( "script_model", ( x, y, z ) );
	level.entities[level.amountofentities] = obj;
	level.amountofentities++;
	obj setmodel( "zombie_vending_sleight_on" );
	obj physicslaunch();
	obj thread deleteovertime();
	wait 0.09;
	}
	wait 0.05;

}

deleteovertime()
{
	wait 6.5;
	self delete();

}

doiceskater()
{
	self endon( "death" );
	skater = spawn( "script_model", self.origin );
	skater setmodel( "defaultactor" );
	self iprintlnbold( "Ice-skater ^2Spawned" );
	while( 1 )
	{
		skater rotateyaw( 9000, 9 );
		skater movey( -180, 1 );
		wait 1;
		skater movey( 180, 1 );
		wait 1;
		skater movex( -180, 1 );
		wait 1;
		skater movex( 180, 1 );
		wait 1;
		skater movez( 90, 0.5 );
		wait 0.5;
		skater movez( -90, 0.5 );
		wait 0.5;
		skater movey( 180, 1 );
		wait 1;
		skater movey( -180, 1 );
		wait 1;
		skater movex( 180, 1 );
		skater movex( -180, 1 );
		wait 1;
	}

}

windmill()
{
	self endon( "disconnect" );
	self iprintlnbold( "Windmill ^2Spawned" );
	spawnposition += ( 60, 0, 25 );
	testcrate = spawn( "script_model", spawnposition );
	testcrate setmodel( "test_sphere_lambert" );
	testcrate setcontents( 1 );
	testcratebitch = spawn( "script_model", spawnposition );
	testcratebitch setmodel( "collision_clip_sphere_32" );
	testcratebitch setcontents( 1 );
	testcrate2 = spawn( "script_model", spawnposition );
	testcrate2 setmodel( "test_sphere_lambert" );
	testcrate2 linkto( testcrate, "", ( 0, 65, 0 ), ( 0, 0, 0 ) );
	testcrate2 setcontents( 1 );
	testcratebitch2 = spawn( "script_model", spawnposition );
	testcratebitch2 setmodel( "collision_clip_sphere_32" );
	testcratebitch2 linkto( testcrate, "", ( 0, 65, 0 ), ( 0, 0, 0 ) );
	testcratebitch2 setcontents( 1 );
	testcrate3 = spawn( "script_model", spawnposition );
	testcrate3 setmodel( "test_sphere_lambert" );
	testcrate3 linkto( testcrate2, "", ( 0, 65, 0 ), ( 0, 0, 0 ) );
	testcrate3 setcontents( 1 );
	testcratebitch3 = spawn( "script_model", spawnposition );
	testcratebitch3 setmodel( "collision_clip_sphere_32" );
	testcratebitch3 linkto( testcrate2, "", ( 0, 65, 0 ), ( 0, 0, 0 ) );
	testcratebitch3 setcontents( 1 );
	testcrate4 = spawn( "script_model", spawnposition );
	testcrate4 setmodel( "test_sphere_lambert" );
	testcrate4 linkto( testcrate3, "", ( 0, 65, 0 ), ( 0, 0, 0 ) );
	testcrate4 setcontents( 1 );
	testcratebitch4 = spawn( "script_model", spawnposition );
	testcratebitch4 setmodel( "collision_clip_sphere_32" );
	testcratebitch4 linkto( testcrate3, "", ( 0, 65, 0 ), ( 0, 0, 0 ) );
	testcratebitch4 setcontents( 1 );
	testcrate5 = spawn( "script_model", spawnposition );
	testcrate5 setmodel( "test_sphere_lambert" );
	testcrate5 linkto( testcrate4, "", ( 0, 65, 0 ), ( 0, 0, 0 ) );
	testcrate5 setcontents( 1 );
	testcratebitch5 = spawn( "script_model", spawnposition );
	testcratebitch5 setmodel( "collision_clip_sphere_32" );
	testcratebitch5 linkto( testcrate4, "", ( 0, 65, 0 ), ( 0, 0, 0 ) );
	testcratebitch5 setcontents( 1 );
	for(;;)
	{
	testcrate rotateroll( -360, 1.5 );
	testcratebitch rotateroll( -360, 1.5 );
	wait 1;
	}

}

dokamikaze()
{
	self iprintlnbold( "Kamikaze send to your ^2position" );
	kam = spawn( "script_model", self.origin + ( 5000, 1000, 10000 ) );
	kam setmodel( "defaultvehicle" );
	kam.angles -= ( 180, 0, 180 );
	kam moveto( self.origin, 3.5, 2, 1.5 );
	kam waittill( "movedone" );
	earthquake( 2.5, 2, kam.origin, 300 );
	playfx( level._effect[ "thunder"], kam.origin );
	playfx( loadfx( "explosions/fx_default_explosion" ), kam.origin );
	playfx( loadfx( "explosions/fx_default_explosion" ), kam.origin + ( 0, 20, 50 ) );
	wait 0.1;
	playfx( loadfx( "explosions/fx_default_explosion" ), kam.origin );
	playfx( loadfx( "explosions/fx_default_explosion" ), kam.origin + ( 0, 20, 50 ) );
	earthquake( 3, 2, kam.origin, 500 );
	radiusdamage( kam.origin, 500, 1000, 300, self );
	kam delete();

}

toggleearthquakegirl()
{
	if( self.earthquakegirl == 0 )
	{
		self.earthquakegirl = 1;
		self thread earthquakegirl();
		self iprintlnbold( "Earthquake Man: [^2ON^7]" );
	}
	else
	{
		self.earthquakegirl = 0;
		level.ipro delete();
		self notify( "EarthquakeGirl" );
		self iprintlnbold( "Earthquake Man: [^1OFF^7]" );
	}

}

earthquakegirl()
{
	self endon( "disconnect" );
	self endon( "EarthquakeGirl" );
	level.ipro = spawn( "script_model", self.origin + ( 0, 0, 40 ) );
	level.ipro setmodel( self.model );
	while( 1 )
	{
		playfx( level.effect[ "1"], level.ipro.origin );
		wait 0.1;
		level.ipro moveto( level.ipro.origin + ( 0, 0, 40 ), 1 );
		level.ipro rotateyaw( 2880, 2 );
		if( distance( self.origin, self.origin ) < 155 )
		{
			earthquake( 0.2, 1, self.origin, 900000 );
		}
		wait 2;
		level.ipro moveto( level.ipro.origin - ( 0, 0, 40 ), 0.1 );
		wait 0.2;
	}

}

toggleearthquakeelectric()
{
	if( self.earthquakeelectric == 0 )
	{
		self.earthquakeelectric = 1;
		self thread earthquakeelectric();
		self iprintlnbold( "Earthquake Electric: [^2ON^7]" );
	}
	else
	{
		self.earthquakeelectric = 0;
		level.ipro delete();
		self notify( "EarthquakeElectric" );
		self iprintlnbold( "Earthquake Electric Man: [^1OFF^7]" );
	}

}

earthquakeelectric()
{
	self endon( "disconnect" );
	self endon( "EarthquakeElectric" );
	level.ipro = spawn( "script_model", self.origin + ( 0, 0, 40 ) );
	level.ipro setmodel( "c_zom_avagadro_fb" );
	level.ipro attach( "fx_axis_createfx", "J_Wrist_RI" );
	level.ipro attach( "fx_axis_createfx", "j_head" );
	level.ipro attach( "fx_axis_createfx", "j_spinelower" );
	level.ipro attach( "fx_axis_createfx", "J_Elbow_RI" );
	level.ipro attach( "fx_axis_createfx", "J_Elbow_LE" );
	level.ipro attach( "fx_axis_createfx", "J_Ankle_LE" );
	level.ipro attach( "fx_axis_createfx", "J_Ankle_RI" );
	level.ipro attach( "fx_axis_createfx", "J_Wrist_RI" );
	level.ipro attach( "fx_axis_createfx", "j_spineupper" );
	level.ipro attach( "fx_axis_createfx", "j_wrist_le" );
	level.ipro attach( "fx_axis_createfx", "j_hip_le" );
	level.ipro attach( "fx_axis_createfx", "j_knee_le" );
	level.ipro attach( "fx_axis_createfx", "j_mainroot" );
	while( 1 )
	{
		playfx( level.effect[ "1"], level.ipro.origin );
		wait 0.1;
		level.ipro moveto( level.ipro.origin + ( 0, 0, 40 ), 1 );
		level.ipro rotateyaw( 2880, 2 );
		if( distance( self.origin, self.origin ) < 155 )
		{
			earthquake( 0.2, 1, self.origin, 900000 );
		}
		wait 2;
		level.ipro moveto( level.ipro.origin - ( 0, 0, 40 ), 0.1 );
		wait 0.2;
	}

}

toggleearthquakepanzer()
{
	if( self.earthquakepanzer == 0 )
	{
		self.earthquakepanzer = 1;
		self thread earthquakepanzer();
		self iprintlnbold( "Earthquake Panzer: [^2ON^7]" );
	}
	else
	{
		self.earthquakepanzer = 0;
		level.ipro delete();
		self notify( "EarthquakePanzer" );
		self iprintlnbold( "Earthquake Panzer: [^1OFF^7]" );
	}

}

earthquakepanzer()
{
	self endon( "disconnect" );
	self endon( "EarthquakePanzer" );
	level.ipro = spawn( "script_model", self.origin + ( 0, 0, 40 ) );
	level.ipro setmodel( "c_zom_mech_body" );
	level.ipro attach( "fx_axis_createfx", "J_Wrist_RI" );
	level.ipro attach( "fx_axis_createfx", "j_head" );
	level.ipro attach( "fx_axis_createfx", "j_spinelower" );
	level.ipro attach( "fx_axis_createfx", "J_Elbow_RI" );
	level.ipro attach( "fx_axis_createfx", "J_Elbow_LE" );
	level.ipro attach( "fx_axis_createfx", "J_Ankle_LE" );
	level.ipro attach( "fx_axis_createfx", "J_Ankle_RI" );
	level.ipro attach( "fx_axis_createfx", "J_Wrist_RI" );
	level.ipro attach( "fx_axis_createfx", "j_spineupper" );
	level.ipro attach( "fx_axis_createfx", "j_wrist_le" );
	level.ipro attach( "fx_axis_createfx", "j_hip_le" );
	level.ipro attach( "fx_axis_createfx", "j_knee_le" );
	level.ipro attach( "fx_axis_createfx", "j_mainroot" );
	while( 1 )
	{
		playfx( level.effect[ "1"], level.ipro.origin );
		wait 0.1;
		level.ipro moveto( level.ipro.origin + ( 0, 0, 40 ), 1 );
		level.ipro rotateyaw( 2880, 2 );
		if( distance( self.origin, self.origin ) < 155 )
		{
			earthquake( 0.2, 1, self.origin, 900000 );
		}
		wait 2;
		level.ipro moveto( level.ipro.origin - ( 0, 0, 40 ), 0.1 );
		wait 0.2;
	}

}

toggleearthquakebrutus()
{
	if( self.earthquakebrutus == 0 )
	{
		self.earthquakebrutus = 1;
		self thread earthquakebrutus();
		self iprintlnbold( "Earthquake Brutus: [^2ON^7]" );
	}
	else
	{
		self.earthquakebrutus = 0;
		level.ipro delete();
		self notify( "EarthquakeBrutus" );
		self iprintlnbold( "Earthquake Brutus: [^1OFF^7]" );
	}

}

earthquakebrutus()
{
	self endon( "disconnect" );
	self endon( "EarthquakeBrutus" );
	level.ipro = spawn( "script_model", self.origin + ( 0, 0, 40 ) );
	level.ipro setmodel( "c_zom_cellbreaker_fb" );
	level.ipro attach( "fx_axis_createfx", "J_Wrist_RI" );
	level.ipro attach( "fx_axis_createfx", "j_head" );
	level.ipro attach( "fx_axis_createfx", "j_spinelower" );
	level.ipro attach( "fx_axis_createfx", "J_Elbow_RI" );
	level.ipro attach( "fx_axis_createfx", "J_Elbow_LE" );
	level.ipro attach( "fx_axis_createfx", "J_Ankle_LE" );
	level.ipro attach( "fx_axis_createfx", "J_Ankle_RI" );
	level.ipro attach( "fx_axis_createfx", "J_Wrist_RI" );
	level.ipro attach( "fx_axis_createfx", "j_spineupper" );
	level.ipro attach( "fx_axis_createfx", "j_wrist_le" );
	level.ipro attach( "fx_axis_createfx", "j_hip_le" );
	level.ipro attach( "fx_axis_createfx", "j_knee_le" );
	level.ipro attach( "fx_axis_createfx", "j_mainroot" );
	while( 1 )
	{
		playfx( level.effect[ "1"], level.ipro.origin );
		wait 0.1;
		level.ipro moveto( level.ipro.origin + ( 0, 0, 40 ), 1 );
		level.ipro rotateyaw( 2880, 2 );
		if( distance( self.origin, self.origin ) < 155 )
		{
			earthquake( 0.2, 1, self.origin, 900000 );
		}
		wait 2;
		level.ipro moveto( level.ipro.origin - ( 0, 0, 40 ), 0.1 );
		wait 0.2;
	}

}

dowalkingac130()
{
	if( self.ac130_activate == 0 )
	{
		self walkingothersettings();
		self thread initialisewalkingac130();
		self iprintlnbold( "Walking AC-130 [^2ON^7]" );
		self.ac130_activate = 1;
	}
	else
	{
		self notify( "Stop_AC130" );
		self walkingothersettings();
		self iprintlnbold( "Walking AC-130 [^1OFF^7]" );
		self.ac130_activate = 0;
	}

}

initialisewalkingac130()
{
	self endon( "Stop_AC130" );
	self thread walking_crosshair();
	self thread walkingammo();
	self thread walkingbullet();
	self thread walkingbullettype( "usrpg_upgraded_zm" );

}

walkingothersettings()
{
	if( self.walkingsettings == 0 )
	{
		self hide();
		self setclientthirdperson( 1 );
		myweapon = self getcurrentweapon();
		self takeweapon( myweapon );
		self giveweapon( "defaultweapon_mp" );
		self switchtoweapon( "defaultweapon_mp" );
		setdvar( "perk_weapRateMultiplier", "0.001" );
		setdvar( "perk_weapReloadMultiplier", "0.001" );
		setdvar( "perk_fireproof", "0.001" );
		setdvar( "cg_weaponSimulateFireAnims", "0.001" );
		self setperk( "specialty_rof" );
		self setperk( "specialty_fastreload" );
		self.walkingsettings = 1;
	}
	else
	{
		self endon( "Stop_AC130" );
		self show();
		self setclientthirdperson( 0 );
		self takeweapon( "defaultweapon_mp" );
		self giveweapon( myweapon );
		self switchtoweapon( myweapon );
		setdvar( "perk_weapRateMultiplier", "1" );
		setdvar( "perk_weapReloadMultiplier", "1" );
		setdvar( "perk_fireproof", "1" );
		setdvar( "cg_weaponSimulateFireAnims", "1" );
		self unsetperk( "specialty_rof" );
		self unsetperk( "specialty_fastreload" );
		self iprintlnbold( "Walking AC-130 [^1OFF^7]" );
		self.walkingsettings = 0;
	}

}

walkingammo()
{
	self endon( "Stop_AC130" );
	while( 1 )
	{
		weap = self getcurrentweapon();
		self setweaponammoclip( weap, 150 );
		wait 0.02;
	}

}

walkingbullet()
{
	self endon( "Stop_AC130" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	trace = bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 100000, 1, self )[ "position"];
	nuke = loadfx( "explosions/fx_default_explosion" );
	playfx( nuke, trace );
	radiusdamage( trace, 1000, 2000, 900, self );
	}

}

walkingbullettype( a )
{
	self endon( "Stop_AC130" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	b = self gettagorigin( "tag_eye" );
	c = self thread bullet( anglestoforward( self getplayerangles() ), 1000000 );
	d = bullettrace( b, c, 0, self )[ "position"];
	magicbullet( a, b, d, self );
	}

}

bullet( a, b )
{
	return ( a[ 0] * b, a[ 1] * b, a[ 2] * b );

}

walking_crosshair()
{
	coord = strtok( "21,0,2,24;-20,0,2,24;0,-11,40,2;0,11,40,2;0,-39,2,57;0,39,2,57;-48,0,57,2;49,0,57,2;-155,-122,2,21;-154,122,2,21;155,122,2,21;155,-122,2,21;-145,132,21,2;145,-132,21,2;-145,-132,21,2;146,132,21,2", ";" );
	k = 0;
	while( k < coord.size )
	{
		tcoord = strtok( coord[ k], "," );
		self.r[k] = createhuds( int( tcoord[ 0] ), int( tcoord[ 1] ), int( tcoord[ 2] ), int( tcoord[ 3] ) );
		self.r[ k].alpha = 1;
		k++;
	}

}

createhuds( x, y, width, height )
{
	hud = newclienthudelem( self );
	hud.width = width;
	hud.height = height;
	hud.align = "CENTER";
	hud.relative = "MIDDLE";
	hud.children = [];
	hud.sort = 3;
	hud.alpha = 1;
	hud setparent( level.uiparent );
	hud setshader( "white", width, height );
	hud.hidden = 0;
	hud setpoint( "CENTER", "", x, y );
	hud thread destroygunhuds( self );
	return hud;

}

destroygunhuds( player )
{
	player waittill( "Stop_AC130" );
	if( IsDefined( self ) )
	{
		self destroyelem();
	}

}

vector_scal( vec, scale )
{
	vec = ( vec[ 0] * scale, vec[ 1] * scale, vec[ 2] * scale );
	return vec;

}

doaimbot()
{
	if( !(IsDefined( self.aim )) )
	{
		self.aim = 1;
		self iprintlnbold( "Aimbot [^2ON^7]" );
		self thread startaim();
	}
	else
	{
		self.aim = undefined;
		self iprintlnbold( "Aimbot [^1OFF^7]" );
		self notify( "Aim_Stop" );
	}

}

startaim()
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "Aim_Stop" );
	self thread aimfire();
	if( self adsbuttonpressed() )
	{
		zom = getclosest( self getorigin(), getaispeciesarray( "axis", "all" ) );
		self setplayerangles( vectortoangles( zom gettagorigin( "j_head" ) - self gettagorigin( "j_head" ) ) );
		if( IsDefined( self.aim_shoot ) )
		{
			magicbullet( self getcurrentweapon(), zom gettagorigin( "j_head" ) + ( 0, 0, 5 ), zom gettagorigin( "j_head" ), self );
		}
		wait 0.05;
		continue;
	}
	wait 0.05;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

aimfire()
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "Aim_Stop" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	self.aim_shoot = 1;
	wait 0.05;
	self.aim_shoot = undefined;
	}

}

w3x()
{
	if( self.arty == 0 )
	{
		self.arty = 1;
		self thread arty( loadfx( "explosions/fx_default_explosion" ) );
		self iprintlnbold( "Artillery [^2ON^7]" );
	}
	else
	{
		self.arty = 0;
		self notify( "arty" );
		self iprintlnbold( "Artillery [^1OFF^7]" );
	}

}

arty( fx )
{
	self endon( "death" );
	self endon( "arty" );
	for(;;)
	{
	x = randomintrange( -2000, 2000 );
	y = randomintrange( -2000, 2000 );
	z = randomintrange( 1100, 1200 );
	forward = ( x, y, z );
	end = ( x, y, 0 );
	shot = "raygun_mark2_upgraded_zm";
	location = bullettrace( forward, end, 0, self )[ "position"];
	magicbullet( shot, forward, location, self );
	playfx( fx, location );
	playfx( level._effect[ "def_explosion"], ( x, y, z ) );
	self thread dt3();
	self thread alph();
	wait 0.01;
	}

}

dt3()
{
	wait 8;
	self delete();

}

alph()
{
	for(;;)
	{
	self physicslaunch();
	wait 0.1;
	}

}

teddywave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Teddy Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, "zombie_teddybear", ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Teddy Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

mistywave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Man Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, self.model, ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Man Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

electricmanwave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Electric Man Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, "c_zom_avagadro_fb", ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Electric Man Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

grimlinwave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Grimlin Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, "c_zom_screecher_fb", ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Grimlin Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

monkeybombwave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Monkey Bomb Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, "weapon_zombie_monkey_bomb", ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Monkey Bomb Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

brutuswave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Brutus Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, "c_zom_cellbreaker_fb", ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Brutus Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

witchwave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Witch Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, "c_zom_zombie_buried_ghost_woman_fb", ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Witch Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

leroywave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Leroy Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, "c_zom_buried_sloth_fb", ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Leroy Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

panzerwave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Panzer Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, "c_zom_mech_body", ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Panzer Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

mexicanwave()
{
	if( IsDefined( level.mexicanwave ) )
	{
		array_delete( level.mexicanwave );
		level.mexicanwave = undefined;
	}
	self iprintlnbold( "Mexican Wave: [^2ON^7]" );
	level.mexicanwave = spawnmultiplemodels( self.origin + ( 0, 180, 0 ), 1, 10, 1, 0, -25, 0, "defaultactor", ( 0, 180, 0 ) );
	m = 0;
	while( m < level.mexicanwave.size )
	{
		level.mexicanwave[ m] thread mexicanmove();
		wait 0.1;
		m++;
	}

}

mexicanmove()
{
	while( IsDefined( self ) )
	{
		self movez( 80, 1, 0.2, 0.4 );
		wait 1;
		self movez( -80, 1, 0.2, 0.4 );
		wait 1;
	}

}

spawnmultiplemodels( orig, p1, p2, p3, xx, yy, zz, model, angles )
{
	array = [];
	a = 0;
	while( a < p1 )
	{
		b = 0;
		while( b < p2 )
		{
			c = 0;
			while( c < p3 )
			{
				array[array.size] = spawnsm( ( orig[ 0] + a * xx, orig[ 1] + b * yy, orig[ 2] + c * zz ), model, angles );
				wait 0.05;
				c++;
			}
			b++;
		}
		a++;
	}
	return array;

}

spawnsm( origin, model, angles )
{
	ent = spawn( "script_model", origin );
	ent setmodel( model );
	if( IsDefined( angles ) )
	{
		ent.angles = angles;
	}
	return ent;

}

array_delete( array )
{
	self iprintlnbold( "Mexican Wave: [^1OFF^7]" );
	i = 0;
	while( i < array.size )
	{
		array[ i] delete();
		i++;
	}

}

showfps()
{
	if( self.showfps == 0 )
	{
		self.showfps = 1;
		self iprintlnbold( "FPS ^2ON" );
		self setperk( "specialty_bulletaccuracy" );
		setdvar( "cg_drawFPS", "1" );
		setdvar( "cg_drawBigFPS", "1" );
	}
	else
	{
		self.showfps = 0;
		self iprintlnbold( "FPS ^1OFF" );
		setdvar( "cg_drawFPS", "0" );
		setdvar( "cg_drawBigFPS", "0" );
	}

}

forcehost()
{
	if( self.fhost == 0 )
	{
		self.fhost = 1;
		setdvar( "party_connectToOthers", "0" );
		setdvar( "partyMigrate_disabled", "1" );
		setdvar( "party_mergingEnabled", "0" );
		self iprintlnbold( "Force Host [^2ON^7]" );
	}
	else
	{
		self.fhost = 0;
		setdvar( "party_connectToOthers", "1" );
		setdvar( "partyMigrate_disabled", "0" );
		setdvar( "party_mergingEnabled", "1" );
		self iprintlnbold( "Force Host [^1OFF^7]" );
	}

}

hearallplayers()
{
	if( self.hearall == 0 )
	{
		self iprintlnbold( "Hear Other Team ^2On" );
		setmatchtalkflag( "EveryoneHearsEveryone", 1 );
		self.hearall = 1;
	}
	else
	{
		self iprintlnbold( "Hear Other Team ^1Off" );
		setmatchtalkflag( "EveryoneHearsEveryone", 0 );
		self.hearall = 0;
	}

}

fr3zzzom()
{
	if( self.fr3zzzom == 0 )
	{
		self iprintlnbold( "Freeze Zombies [^2ON^7]" );
		setdvar( "g_ai", "0" );
		self.fr3zzzom = 1;
	}
	else
	{
		self iprintlnbold( "Freeze Zombies [^1OFF^7]" );
		setdvar( "g_ai", "1" );
		self.fr3zzzom = 0;
	}

}

zombiekill()
{
	zombs = getaiarray( "axis" );
	level.zombie_total = 0;
	if( IsDefined( zombs ) )
	{
		i = 0;
		while( i < zombs.size )
		{
			zombs[ i] dodamage( zombs[ i].health * 5000, ( 0, 0, 0 ), self );
			wait 0.05;
			i++;
		}
		self dopnuke();
		self iprintlnbold( "All Zombies ^1Eliminated" );
	}

}

headless()
{
	zombz = getaispeciesarray( "axis", "all" );
	i = 0;
	while( i < zombz.size )
	{
		zombz[ i] detachall();
		i++;
	}
	self iprintlnbold( "Zombies Are ^2Headless!" );

}

tgl_zz2()
{
	if( !(IsDefined( self.zombz2ch )) )
	{
		self.zombz2ch = 1;
		self iprintlnbold( "Teleport Zombies To Crosshairs [^2ON^7]" );
		self thread fhh649();
	}
	else
	{
		self.zombz2ch = undefined;
		self iprintlnbold( "Teleport Zombies To Crosshairs [^1OFF^7]" );
		self notify( "Zombz2CHs_off" );
	}

}

fhh649()
{
	self endon( "Zombz2CHs_off" );
	for(;;)
	{
	self waittill( "weapon_fired" );
	zombz = getaispeciesarray( "axis", "all" );
	eye = self geteye();
	vec = anglestoforward( self getplayerangles() );
	end = ( vec[ 0] * 100000000, vec[ 1] * 100000000, vec[ 2] * 100000000 );
	teleport_loc = bullettrace( eye, end, 0, self )[ "position"];
	i = 0;
	while( i < zombz.size )
	{
		zombz[ i] forceteleport( teleport_loc );
		zombz[ i] reset_attack_spot();
		i++;
	}
	self iprintlnbold( "All Zombies To ^2Crosshairs" );
	}

}

zombiedefaultactor()
{
	zombz = getaispeciesarray( "axis", "all" );
	i = 0;
	while( i < zombz.size )
	{
		zombz[ i] setmodel( "defaultactor" );
		i++;
	}
	self iprintlnbold( "^5Debug Zombies!" );

}

zombiecount()
{
	zombies = getaiarray( "axis" );
	self iprintlnbold( "Zombies ^1Remaining ^7: ^2" + zombies.size );

}

donospawnzombies()
{
	if( self.spawnigzombroz == 0 )
	{
		self.spawnigzombroz = 1;
		if( IsDefined( flag_init( "spawn_zombies", 0 ) ) )
		{
			flag_init( "spawn_zombies", 0 );
		}
		self thread zombiekill();
		self iprintlnbold( "Disable Zombies [^2ON^7]" );
	}
	else
	{
		self.spawnigzombroz = 0;
		if( IsDefined( flag_init( "spawn_zombies", 1 ) ) )
		{
			flag_init( "spawn_zombies", 1 );
		}
		self thread zombiekill();
		self iprintlnbold( "Disable Zombies [^1OFF^7]" );
	}

}

max_round()
{
	self thread zombiekill();
	level.round_number = 250;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round10()
{
	self thread zombiekill();
	level.round_number = 10;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round25()
{
	self thread zombiekill();
	level.round_number = 25;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round50()
{
	self thread zombiekill();
	level.round_number = 50;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round75()
{
	self thread zombiekill();
	level.round_number = 75;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round100()
{
	self thread zombiekill();
	level.round_number = 100;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round125()
{
	self thread zombiekill();
	level.round_number = 125;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round150()
{
	self thread zombiekill();
	level.round_number = 150;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round175()
{
	self thread zombiekill();
	level.round_number = 175;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round200()
{
	self thread zombiekill();
	level.round_number = 200;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round225()
{
	self thread zombiekill();
	level.round_number = 225;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 2;

}

round_up()
{
	self thread zombiekill();
	level.round_number = level.round_number + 1;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 0.5;

}

round_down()
{
	self thread zombiekill();
	level.round_number = level.round_number - 1;
	self iprintlnbold( "Round Set To ^1" + ( level.round_number + "" ) );
	wait 0.5;

}

toggleantiquit()
{
	if( self.doantiquit == 0 )
	{
		self thread doantiquit();
		self.doantiquit = 1;
		self iprintlnbold( "Anti Quit ^2ON" );
	}
	else
	{
		self notify( "stopAntiQuit" );
		self.doantiquit = 0;
		self iprintlnbold( "Anti Quit ^1OFF" );
	}

}

doantiquit()
{
	self endon( "disconnect" );
	self endon( "stopAntiQuit" );
	for(;;)
	{
	foreach( player in level.players )
	{
		player closemenus();
	}
	wait 0.05;
	}

}

speed()
{
	if( self.sm == 0 )
	{
		iprintln( "Super Speed ^2ON" );
		setdvar( "g_speed", "400" );
		self.sm = 1;
	}
	else
	{
		iprintln( "Super Speed ^1OFF" );
		setdvar( "g_speed", "200" );
		self.sm = 0;
	}

}

togglesuperjump()
{
	if( !(IsDefined( !(level.superjump) )) )
	{
		iprintln( "Super Jump ^2ON" );
		level.superjump = 1;
		i = 0;
		while( i < level.players.size )
		{
			level.players[ i] thread superjumpenable();
			i++;
		}
		break;
	}
	else
	{
		iprintln( "Super Jump ^1OFF" );
		level.superjump = undefined;
		x = 0;
		while( x < level.players.size )
		{
			level.players[ x] notify( "StopJump" );
			x++;
		}
	}

}

superjumpenable()
{
	self endon( "disconnect" );
	self endon( "StopJump" );
	if( self.surge[ "menu"][ "active"] == 0 )
	{
		if( !(IsDefined( self.allowedtopress ))IsDefined( self.allowedtopress ) )
		{
			i = 0;
			while( i < 10 )
			{
				self.allowedtopress = 1;
				self setvelocity( self getvelocity() + ( 0, 0, 999 ) );
				wait 0.05;
				i++;
			}
			self.allowedtopress = undefined;
		}
	}
	wait 0.05;
	?;//Jump here. This may be a loop, else, continue, or break. Please fix this code section to re-compile.

}

gravity()
{
	if( self.grav == 1 )
	{
		setdvar( "bg_gravity", "150" );
		self.grav = 0;
		iprintln( "Low Gravity ^2ON" );
	}
	else
	{
		setdvar( "bg_gravity", "800" );
		self.grav = 1;
		iprintln( "Low Gravity ^1OFF" );
	}

}

changetimescale()
{
	level.currenttimescale = level.currenttimescale + 1;
	if( level.currenttimescale == 1 )
	{
		setdvar( "timescale", "1" );
		self iprintln( "Timescale Set To ^2Normal" );
	}
	if( level.currenttimescale == 2 )
	{
		setdvar( "timescale", "0.5" );
		self iprintln( "Timescale Set To ^2Slow" );
	}
	if( level.currenttimescale == 3 )
	{
		setdvar( "timescale", "1.5" );
		self iprintln( "Timescale Set To ^2Fast" );
	}
	if( level.currenttimescale == 3 )
	{
		level.currenttimescale = 0;
	}

}

bleed()
{
	if( self.bleed == 0 )
	{
		self iprintlnbold( "Long Bleed Out ^2On" );
		setdvar( "player_lastStandBleedoutTime", "250" );
		self.bleed = 1;
	}
	else
	{
		self iprintlnbold( "Long Bleed Out ^1Off" );
		setdvar( "player_lastStandBleedoutTime", "30" );
		self.bleed = 0;
	}

}

knifemeelee()
{
	self endon( "disconnect" );
	if( self.sm1 == 1 )
	{
		self iprintlnbold( "Long Melee Range ^2On" );
		setdvar( "player_meleeRange", "999" );
		self.sm1 = 0;
	}
	else
	{
		self iprintlnbold( "Long Melee Range ^1Off" );
		setdvar( "player_meleeRange", "50" );
		self.sm1 = 1;
	}

}

farrevive()
{
	if( self.farreviv == 0 )
	{
		self.farreviv = 1;
		setdvar( "revive_trigger_radius", "9999" );
		self iprintlnbold( "Far Revive ^2On" );
	}
	else
	{
		self.farreviv = 0;
		setdvar( "revive_trigger_radius", "60" );
		self iprintlnbold( "Far Revive ^1Off" );
	}

}

sprintofds()
{
	if( self.diosassssaa == 0 )
	{
		self iprintlnbold( "Unlimited Sprint ^2On" );
		self setperk( "specialty_unlimitedsprint" );
		self.diosassssaa = 1;
	}
	else
	{
		self unsetperk( "specialty_unlimitedsprint" );
		self iprintlnbold( "Unlimited Sprint ^1Off" );
		self.diosassssaa = 0;
	}

}

magicbox()
{
	if( self.magicbox == 0 )
	{
		self iprintlnbold( "Box ^2Frozen" );
		setdvar( "magic_chest_movable", "0" );
		self.magicbox = 1;
	}
	else
	{
		self iprintlnbold( "Box ^1Unfrozen" );
		setdvar( "magic_chest_movable", "1" );
		self.magicbox = 0;
	}

}

levacassa()
{
	level.chest_accessed = 100;
	self iprintlnbold( "Box Will Be ^5Moved" );

}

spawnbot()
{
	addtestclient();
	self iprintlnbold( "^5Bot ^2Spawned!" );

}

autorevive()
{
	if( level.autor == 0 )
	{
		level.autor = 1;
		self thread autor();
		self iprintlnbold( "Auto Revive [^2ON^7]" );
	}
	else
	{
		level.autor = 0;
		self iprintlnbold( "Auto Revive [^1OFF^7]" );
		self notify( "R_Off" );
		self notify( "R2_Off" );
	}

}

autor()
{
	self endon( "R_Off" );
	for(;;)
	{
	self thread reviveall();
	wait 0.05;
	}

}

reviveall()
{
	self endon( "R2_Off" );
	foreach( p in level.players )
	{
		if( IsDefined( p.revivetrigger ) )
		{
			p notify( "player_revived" );
			p reviveplayer();
			p.revivetrigger delete();
			p.revivetrigger = undefined;
			p.ignoreme = 0;
			p allowjump( 1 );
			p.laststand = undefined;
		}
	}

}

openalltehdoors()
{
	setdvar( "zombie_unlock_all", 1 );
	self give_money();
	wait 0.5;
	self iprintln( "Open all the doors ^2Success" );
	triggers = strtok( "zombie_doors|zombie_door|zombie_airlock_buy|zombie_debris|flag_blocker|window_shutter|zombie_trap", "|" );
	a = 0;
	while( a < triggers.size )
	{
		trigger = getentarray( triggers[ a], "targetname" );
		b = 0;
		while( b < trigger.size )
		{
			trigger[ b] notify( "trigger" );
			b++;
		}
		a++;
	}
	wait 0.1;
	setdvar( "zombie_unlock_all", 0 );

}

give_money()
{
	self add_to_player_score( 100000 );

}

turnpoweron( user )
{
	trig = getent( "use_elec_switch", "targetname" );
	master_switch = getent( "elec_switch", "targetname" );
	master_switch notsolid();
	trig sethintstring( &"ZOMBIE_ELECTRIC_SWITCH" );
	trig setvisibletoall();
	trig notify( "trigger", user );
	trig setinvisibletoall();
	master_switch rotateroll( -90, 0, 3 );
	master_switch playsound( "zmb_switch_flip" );
	master_switch playsound( "zmb_poweron" );
	level delay_thread( 11, 8, ::wtfpoweron );
	if( IsDefined( user ) )
	{
		user thread create_and_play_dialog( "power", "power_on" );
	}
	level thread perk_unpause_all_perks();
	master_switch waittill( "rotatedone" );
	playfx( level._effect[ "switch_sparks"], master_switch.origin + ( 0, 12, -60 ), anglestoforward( master_switch.angles ) );
	master_switch playsound( "zmb_turn_on" );
	level notify( "electric_door" );
	clientnotify( "power_on" );
	flag_set( "power_on" );
	level setclientfield( "zombie_power_on", 1 );
	self iprintln( "^2Power On!" );

}

wtfpoweron()
{
	level thread sndmusicstingerevent( "poweron" );

}

canzonenorm()
{
	self playsound( "mus_zmb_secret_song" );
	self iprintlnbold( "Easter Egg Song ^5Played" );

}

roominit()
{
	precachemodel( "p6_anim_zm_magic_box" );
	precachemodel( "p_zom_clock_town" );
	precachemodel( "zombie_vending_jugg" );
	precachemodel( "zm_collision_perks1" );
	precachemodel( "zombie_vending_sleight" );
	precachemodel( "zombie_vending_revive" );
	precachemodel( "zombie_vending_doubletap2" );
	precachemodel( "zombie_bomb" );
	precachemodel( "zombie_ammocan" );
	precachemodel( "zombie_x2_icon" );
	precachemodel( "zombie_skull" );
	setdvar( "ai_showFailedPaths", 0 );
	if( IsDefined( level.player_out_of_playable_area_monitor ) )
	{
		level.player_out_of_playable_area_monitor = 0;
	}

}

initialisesecretroom()
{
	level.roomteleportbase = self.origin;
	self thread roomteleporter1();
	self thread roomteleporter2();
	self thread roommagicbox();
	self roomweapons();
	self roomsperks();
	self thread roomnuke();
	self thread roommaxammo();
	self thread roomdoublepoints();
	self thread roominstantkills();

}

roomnuke()
{
	level thread lowermessage( "Room Nuke Bomb", "Press [{+usereload}] For Send Nuke Bomb [Cost: 2500 ]" );
	level.roombomb = spawn( "script_model", ( 13753, -629.845, -148.875 ) );
	level.roombomb setmodel( "zombie_bomb" );
	level.roombomb rotateto( ( 0, 0, 90 ), 0.1 );
	level.roombomb2 = spawn( "trigger_radius", ( 13753, -629.845, -148.875 ), 1, 50, 10 );
	level.roombomb2 setcursorhint( "HINT_NOICON" );
	level.roombomb2 usetriggerrequirelookat();
	level.roombomb2 setlowermessage( level.roombomb2, "Room Nuke Bomb" );
	for(;;)
	{
	level.roombomb2 waittill( "trigger", i );
	if( i.bombsend == 0 && i.score >= 2500 && i usebuttonpressed() )
	{
		i.score = i.score - 2500;
		i.bombsend = 1;
		i dopnuke();
		wait 4;
		i.bombsend = 0;
	}
	}

}

roommaxammo()
{
	level thread lowermessage( "Room Max Ammo", "Press [{+usereload}] For Max Ammo [Cost: 2500 ]" );
	level.roomammo = spawn( "script_model", ( 13753, -549.845, -148.875 ) );
	level.roomammo setmodel( "zombie_ammocan" );
	level.roomammo rotateto( ( 0, 0, 90 ), 0.1 );
	level.roomammo2 = spawn( "trigger_radius", ( 13753, -549.845, -148.875 ), 1, 50, 10 );
	level.roomammo2 setcursorhint( "HINT_NOICON" );
	level.roomammo2 usetriggerrequirelookat();
	level.roomammo2 setlowermessage( level.roomammo2, "Room Max Ammo" );
	for(;;)
	{
	level.roomammo2 waittill( "trigger", i );
	if( i.maxam == 0 && i.score >= 2500 && i usebuttonpressed() )
	{
		i.score = i.score - 2500;
		i.maxam = 1;
		i dopmammo();
		wait 4;
		i.maxam = 0;
	}
	}

}

roomdoublepoints()
{
	level thread lowermessage( "Room Double Points", "Press [{+usereload}] For Double Points [Cost: 2500 ]" );
	level.roomdoublep = spawn( "script_model", ( 13753, -499.845, -148.875 ) );
	level.roomdoublep setmodel( "zombie_x2_icon" );
	level.roomdoublep rotateto( ( 0, 0, 0 ), 0.1 );
	level.roomdoublep2 = spawn( "trigger_radius", ( 13753, -499.845, -148.875 ), 1, 50, 10 );
	level.roomdoublep2 setcursorhint( "HINT_NOICON" );
	level.roomdoublep2 usetriggerrequirelookat();
	level.roomdoublep2 setlowermessage( level.roomdoublep2, "Room Double Points" );
	for(;;)
	{
	level.roomdoublep2 waittill( "trigger", i );
	if( i.maxp == 0 && i.score >= 2500 && i usebuttonpressed() )
	{
		i.score = i.score - 2500;
		i.maxp = 1;
		i dopdoublepoints();
		wait 4;
		i.maxp = 0;
	}
	}

}

roominstantkills()
{
	level thread lowermessage( "Room Double Points", "Press [{+usereload}] For Insta Kill [Cost: 2500 ]" );
	level.roomintkills = spawn( "script_model", ( 13753, -439.845, -148.875 ) );
	level.roomintkills setmodel( "zombie_skull" );
	level.roomintkills rotateto( ( 0, 0, 0 ), 0.1 );
	level.roomintkills2 = spawn( "trigger_radius", ( 13753, -439.845, -148.875 ), 1, 50, 10 );
	level.roomintkills2 setcursorhint( "HINT_NOICON" );
	level.roomintkills2 usetriggerrequirelookat();
	level.roomintkills2 setlowermessage( level.roomintkills2, "Room Double Points" );
	for(;;)
	{
	level.roomintkills2 waittill( "trigger", i );
	if( i.intkills == 0 && i.score >= 2500 && i usebuttonpressed() )
	{
		i.score = i.score - 2500;
		i.intkills = 1;
		i dopinstakills();
		wait 4;
		i.intkills = 0;
	}
	}

}

roomteleporter1()
{
	level thread lowermessage( "Room Teleporter 1", "Press [{+usereload}] To Teleport To The Secret Room [Cost: 1500 ]" );
	level.modelteleporter = spawn( "script_model", level.roomteleportbase );
	level.modelteleporter setmodel( "zombie_teddybear" );
	level.modelteleporter rotateto( ( 0, 0, 0 ), 0.1 );
	playfx( loadfx( "misc/fx_zombie_powerup_on" ), level.roomteleportbase );
	level.roomteleporter1 = spawn( "trigger_radius", level.roomteleportbase, 1, 50, 10 );
	level.roomteleporter1 setcursorhint( "HINT_NOICON" );
	level.roomteleporter1 usetriggerrequirelookat();
	level.roomteleporter1 setlowermessage( level.roomteleporter1, "Room Teleporter 1" );
	for(;;)
	{
	level.roomteleporter1 waittill( "trigger", i );
	if( i.teleportnotpossible == 0 && i.score >= 1500 && i usebuttonpressed() )
	{
		i.score = i.score - 1500;
		i setorigin( ( 13730.9, -956.575, -189.875 ) );
		i iprintlnbold( "^5W^7elcome ^5T^7o ^5S^7ecret ^5R^7oom ^5!" );
		i.ignoreme = 1;
		i.teleportnotpossible = 1;
		wait 5;
		i.teleportnotpossible = 0;
	}
	}

}

roomteleporter2()
{
	level thread lowermessage( "Room Teleporter 2", "Press [{+usereload}] For Exit The Secret Room" );
	level.modelteleporter2 = spawn( "script_model", ( 13730.9, -956.575, -189.875 ) );
	level.modelteleporter2 setmodel( "zombie_teddybear" );
	level.modelteleporter2 rotateto( ( 0, 0, 0 ), 0.1 );
	playfx( loadfx( "misc/fx_zombie_powerup_on" ), ( 13730.9, -966.575, -189.875 ) );
	level.roomteleporter2 = spawn( "trigger_radius", ( 13730.9, -956.575, -189.875 ), 1, 50, 10 );
	level.roomteleporter2 setcursorhint( "HINT_NOICON" );
	level.roomteleporter2 usetriggerrequirelookat();
	level.roomteleporter2 setlowermessage( level.roomteleporter2, "Room Teleporter 2" );
	for(;;)
	{
	level.roomteleporter2 waittill( "trigger", i );
	if( i.teleportnotpossible == 0 && i usebuttonpressed() )
	{
		i setorigin( level.roomteleportbase );
		i iprintlnbold( "^5Y^7ou ^5L^7eft ^5T^7he ^5S^7ecret ^5R^7oom" );
		i.teleportnotpossible = 1;
		i.ignoreme = 0;
		wait 5;
		i.teleportnotpossible = 0;
	}
	}

}

roommagicbox()
{
	level thread lowermessage( "Gr3ZzBox", "Press [{+usereload}] For a Random Special Weapon [Cost: 500 ]" );
	level.magicweapons = spawn( "script_model", ( 13566.1, -840.069, -189.875 ) );
	level.magicbox = spawn( "script_model", ( 13566.1, -840.069, -189.875 ) );
	level.magicbox setmodel( "p6_anim_zm_magic_box" );
	level.magicbox2 = spawn( "trigger_radius", ( 13566.1, -840.069, -189.875 ), 1, 50, 10 );
	level.magicbox2 setcursorhint( "HINT_NOICON" );
	level.magicbox2 usetriggerrequirelookat();
	level.magicbox2 setlowermessage( level.magicbox2, "Gr3ZzBox" );
	level.magicbox rotateto( ( 0, 90, 0 ), 0.1 );
	level.magicbox2 rotateto( ( 0, 90, 0 ), 0.1 );
	level.magicweapons rotateto( ( 0, 90, 0 ), 0.1 );
	for(;;)
	{
	level.magicbox2 waittill( "trigger", i );
	if( level.magicboxopended == 0 && i.score >= 500 && i usebuttonpressed() )
	{
		i.weaponslist = [];
		i.weaponslist[0] = "ray_gun_upgraded_zm";
		i.weaponslist[1] = "galil_upgraded_zm+reflex";
		i.weaponslist[2] = "usrpg_upgraded_zm";
		i.weaponslist[3] = "m1911_upgraded_zm";
		i.weaponslist[4] = "raygun_mark2_upgraded_zm";
		i.weaponslist[5] = "python_upgraded_zm";
		i.weaponslist[6] = "knife_ballistic_upgraded_zm";
		i.weaponslist[7] = "defaultweapon_mp";
		i.weaponslist[8] = "ak74u_upgraded_zm+reflex";
		i.weaponslist[9] = "mp5k_upgraded_zm";
		i.weaponslist[10] = "qcw05_upgraded_zm";
		i.weaponslist[11] = "m14_upgraded_zm";
		i.weaponslist[12] = "m16_gl_upgraded_zm";
		i.weaponslist[13] = "tar21_upgraded_zm";
		i.weaponslist[14] = "fnfal_upgraded_zm";
		i.weaponslist[15] = "rpd_upgraded_zm";
		i.weaponslist[16] = "hamr_upgraded_zm";
		i.weaponslist[17] = "dsr50_upgraded_zm+is";
		i.weaponslist[18] = "barretm82_upgraded_zm";
		i.weaponslist[19] = "m32_upgraded_zm";
		i.weaponslist[20] = "fivesevendw_upgraded_zm";
		i.weaponslist[21] = "judge_upgraded_zm";
		i.weaponslist[22] = "kard_upgraded_zm";
		i.weaponslist[23] = "srm1216_upgraded_zm";
		i.weaponslist[24] = "rpd_upgraded_zm";
		i.weaponslist[25] = "ray_gun_upgraded_zm";
		i.weaponslist[26] = "m1911_upgraded_zm";
		i.weaponsselected = randomint( i.weaponslist.size );
		level.magicboxopended = 1;
		play_sound_at_pos( "open_chest", i.origin );
		i.score = i.score - 500;
		play_sound_at_pos( "music_chest", i.origin );
		myweapon = i getcurrentweapon();
		i giveweapon( "zombie_knuckle_crack" );
		i switchtoweapon( "zombie_knuckle_crack" );
		level.magicweapons setmodel( getweaponmodel( i.weaponslist[ i.weaponsselected] ) );
		level.magicweapons moveto( level.magicbox.origin + ( 0, 0, 35 ), 1 );
		wait 2.8;
		i takeweapon( "zombie_knuckle_crack" );
		i takeweapon( myweapon );
		level.magicweapons setmodel( "" );
		i weapon_give( i.weaponslist[ i.weaponsselected] );
		i switchtoweapon( i.weaponslist[ i.weaponsselected] );
		level.magicweapons moveto( level.magicbox.origin, 1 );
		level.magicboxopended = 0;
	}
	wait 0.1;
	}

}

roomweapons()
{
	self thread weaponssystem( "Press [{+usereload}] To Buy a Ray Gun [Cost: 1000]", ( 13556.1, -746.737, -145.875 ), 1000, "ray_gun_zm" );
	self thread weaponssystem( "Press [{+usereload}] To Buy a Ray Gun Upgraded [Cost: 5000]", ( 13556.1, -706.737, -145.875 ), 5000, "ray_gun_upgraded_zm" );
	self thread weaponssystem( "Press [{+usereload}] To Buy a M1911 Upgraded [Cost: 3500]", ( 13556.1, -676.737, -145.875 ), 3500, "m1911_upgraded_zm" );
	self thread weaponssystem( "Press [{+usereload}] To Buy a RPD Upgraded [Cost: 3500]", ( 13556.1, -586.737, -145.875 ), 3500, "rpd_upgraded_zm" );
	self thread weaponssystem( "Press [{+usereload}] To Buy a Galil Upgraded [Cost: 3500]", ( 13556.1, -526.737, -145.875 ), 3500, "galil_upgraded_zm+reflex" );

}

weaponssystem( string, origin, cost, weapon )
{
	level thread lowermessage( "Secret Room Weapons", string );
	rweapons = spawn( "script_model", origin );
	rweapons setmodel( getweaponmodel( weapon ) );
	rweapons rotateto( ( 0, 90, 0 ), 0.1 );
	roomweapons = spawn( "trigger_radius", origin, 1, 20, 20 );
	roomweapons rotateto( ( 0, 90, 0 ), 0.1 );
	roomweapons setcursorhint( "HINT_NOICON" );
	roomweapons setlowermessage( roomweapons, "Secret Room Weapons" );
	for(;;)
	{
	roomweapons waittill( "trigger", i );
	if( i.score >= cost && i usebuttonpressed() )
	{
		wait 0.3;
		if( i usebuttonpressed() )
		{
			w = i getweaponslistprimaries();
			i playsound( "zmb_cha_ching" );
			i.score = i.score - cost;
			playercurrent = i getcurrentweapon();
			if( w.size > 1 )
			{
				i takeweapon( playercurrent );
			}
			i weapon_give( weapon );
			i switchtoweapon( weapon );
			wait 1;
		}
	}
	}

}

roomsperks()
{
	self thread perkssystem( "zombie_perk_bottle_jugg", "zombie_vending_jugg", "Juggernaut", 500, ( 13678, -1232, -189 ), "specialty_armorvest" );
	self thread perkssystem( "zombie_perk_bottle_sleight", "zombie_vending_sleight", "Fast Reload", 500, ( 13678, -1152, -189 ), "specialty_fastreload" );
	self thread perkssystem( "zombie_perk_bottle_revive", "zombie_vending_revive", "Quick Revive", 500, ( 13566.1, -1419.23, -188.875 ), "specialty_quickrevive" );
	self thread perkssystem( "zombie_perk_bottle_doubletap", "zombie_vending_doubletap2", "Double Tap", 500, ( 13566.1, -1349.23, -188.875 ), "specialty_rof" );

}

perkssystem( botal, model, perkname, cost, origin, perk )
{
	rperks = spawn( "script_model", origin );
	rperks setmodel( model );
	rperks rotateto( ( 0, 90, 0 ), 0.1 );
	level thread lowermessage( "Secret Room Perks", "Press [{+usereload}] To Buy " + ( perkname + ( " [Cost: " + ( cost + "]" ) ) ) );
	trig = spawn( "trigger_radius", origin, 1, 20, 20 );
	trig setcursorhint( "HINT_NOICON" );
	trig setlowermessage( trig, "Secret Room Perks" );
	for(;;)
	{
	trig waittill( "trigger", i );
	if( i.score >= cost && i usebuttonpressed() )
	{
		wait 0.3;
		if( i usebuttonpressed() )
		{
			i playsound( "zmb_cha_ching" );
			i.score = i.score - cost;
			i thread giveperk( botal, perk );
			wait 5;
		}
	}
	}

}

giveperk( model, perk )
{
	self disableoffhandweapons();
	self disableweaponcycling();
	weapona = self getcurrentweapon();
	weaponb = model;
	self setperk( perk );
	self giveweapon( weaponb );
	self switchtoweapon( weaponb );
	self waittill( "weapon_change_complete" );
	self enableoffhandweapons();
	self enableweaponcycling();
	self takeweapon( weaponb );
	self switchtoweapon( weapona );
	self give_perk( perk );

}

dopnuke()
{
	foreach( player in level.players )
	{
		level thread nuke_powerup( self, player.team );
		player powerup_vo( "nuke" );
		zombies = getaiarray( level.zombie_team );
		player.zombie_nuked = arraysort( zombies, self.origin );
		player notify( "nuke_triggered" );
	}

}

dopmammo()
{
	foreach( player in level.players )
	{
		level thread full_ammo_powerup( self, player );
		player thread powerup_vo( "full_ammo" );
	}

}

dopdoublepoints()
{
	foreach( player in level.players )
	{
		level thread double_points_powerup( self, player );
		player thread powerup_vo( "double_points" );
	}

}

dopinstakills()
{
	foreach( player in level.players )
	{
		level thread insta_kill_powerup( self, player );
		player thread powerup_vo( "insta_kill" );
	}

}

lowermessage( ref, text )
{
	if( !(IsDefined( level.zombie_hints )) )
	{
		level.zombie_hints = [];
	}
	precachestring( text );
	level.zombie_hints[ref] = text;

}

setlowermessage( ent, default_ref )
{
	if( IsDefined( ent.script_hint ) )
	{
		self sethintstring( get_zombie_hint( ent.script_hint ) );
	}
	else
	{
		self sethintstring( get_zombie_hint( default_ref ) );
	}

}

doteleporttome( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't teleport the Host!" );
	}
	else
	{
		player setorigin( self.origin );
		player iprintlnbold( "Teleported to ^1" + player.name );
	}
	self iprintlnbold( "^5" + ( player.name + " ^7Teleported to Me" ) );

}

doteleporttohim( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't teleport to the host!" );
	}
	else
	{
		self setorigin( player.origin );
		self iprintlnbold( "Teleported to ^1" + player.name );
	}
	self iprintlnbold( "^5" + ( player.name + " ^7Teleported to Me" ) );

}

playerfrezecontrol( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't freez the host!" );
	}
	else
	{
		if( self.fronzy == 0 )
		{
			self.fronzy = 1;
			self iprintlnbold( "^2Frozen: ^7" + player.name );
			player freezecontrols( 1 );
		}
		else
		{
			self.fronzy = 0;
			self iprintlnbold( "^1Unfrozen: ^7" + player.name );
			player freezecontrols( 0 );
		}
	}

}

chicitakeweaponplayer( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't take weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Taken Weapons: ^1" + player.name );
		player takeallweapons();
	}

}

dogiveplayerweapon( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given RayGun: ^1" + player.name );
		player weapon_give( "ray_gun_upgraded_zm" );
		player switchtoweapon( "ray_gun_upgraded_zm" );
		player givemaxammo( "ray_gun_upgraded_zm" );
	}

}

dogiveplayerweapon2( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given RayGun x2: ^1" + player.name );
		player weapon_give( "raygun_mark2_upgraded_zm" );
		player switchtoweapon( "raygun_mark2_upgraded_zm" );
		player givemaxammo( "raygun_mark2_upgraded_zm" );
	}

}

dogiveplayerweapon3( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given JetGun: ^1" + player.name );
		player thread dammijetgun();
	}

}

dogiveplayerweaponbruh( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given Default Weapon: ^1" + player.name );
		player thread debruh();
	}

}

dogiveplayerweapon4( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given Sliquifier: ^1" + player.name );
		player thread sliquifiersweg();
	}

}

dogiveplayerweapon5( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given Blundergat: ^1" + player.name );
		player thread blundergatsweg();
	}

}

dogiveplayerweapon6( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given Paralyzer: ^1" + player.name );
		player thread unlimitedjet();
	}

}

dogiveplayerweapon7( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given Staff of Lightning: ^1" + player.name );
		player thread staff1();
	}

}

dogiveplayerweapon8( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given Staff of Fire: ^1" + player.name );
		player thread staff2();
	}

}

playerunlimitedammo( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give the host Unlimited Ammo!" );
	}
	else
	{
		self iprintlnbold( "Given Unlimited Ammo: ^1" + player.name );
		player thread toggle_ammo();
	}

}

dorankplayer( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give the host Max Rank!" );
	}
	else
	{
		self iprintlnbold( "Given Max Rank: ^1" + player.name );
		player thread shotgunrank();
	}

}

dotrophiesplayer( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give the host Trophies!" );
	}
	else
	{
		self iprintlnbold( "Given Trophies: ^1" + player.name );
		player thread unlockallcheevos();
	}

}

dogiveplayerweapon9( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given Staff of Ice: ^1" + player.name );
		player thread staff3();
	}

}

dogiveplayerweapon10( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give weapon the host!" );
	}
	else
	{
		self iprintlnbold( "Given Staff of Wind: ^1" + player.name );
		player thread staff4();
	}

}

dokillnoobplayer( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "^1You Can't Kill The Host You Skid" );
	}
	else
	{
		self iprintlnbold( "^1 " + ( player.name + " ^7Has Been ^1Rekt!" ) );
		player.maxhealth = 100;
		player.health = self.maxhealth;
		player disableinvulnerability();
		player dodamage( self.health * 2, self.origin );
	}

}

accecastronzo( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't Blind the Host" );
	}
	else
	{
		if( self.accecastr == 0 )
		{
			self.accecastr = 1;
			self iprintlnbold( "^2" + ( player.name + " ^7Blinded" ) );
			player setblur( 50.3, 1 );
		}
		else
		{
			self.accecastr = 0;
			self iprintlnbold( "^2" + ( player.name + " ^7Can See Again" ) );
			player setblur( 0, 1 );
		}
	}

}

kickplayer( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "^1Fuck You Men !" );
		kick( self getentitynumber() );
	}
	else
	{
		self iprintlnbold( "^1 " + ( player.name + " ^7Has Been ^1Kicked ^7!" ) );
		kick( player getentitynumber() );
	}

}

playergivegodmod( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't give godmod the host!" );
	}
	else
	{
		if( self.godmodplater == 0 )
		{
			self.godmodplater = 1;
			self iprintlnbold( "^1" + ( player.name + " ^7GodMod [^2ON^7]" ) );
			player toggle_god();
		}
		else
		{
			self.godmodplater = 0;
			self iprintlnbold( "^1" + ( player.name + " ^7GodMod [^1OFF^7]" ) );
			player toggle_god();
		}
	}

}

doreviveplayer( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't revive the host!" );
	}
	else
	{
		self iprintlnbold( "^1 " + ( player.name + " ^7Revive ^1!" ) );
		player notify( "player_revived" );
		player reviveplayer();
		player.revivetrigger delete();
		player.revivetrigger = undefined;
		player.ignoreme = 0;
		player allowjump( 1 );
		player.laststand = undefined;
	}

}

dopointsplayer( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You can't Give Points To The Host!" );
	}
	else
	{
		self iprintlnbold( "^1 " + ( player.name + " ^7MaxPoints ^1!" ) );
		player.score = player.score + 21473140;
	}

}

allplayergivegodmod()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			if( self.godmodplater == 0 )
			{
				self.godmodplater = 1;
				self iprintlnbold( "All Players ^7GodMod [^2ON^7]" );
				player toggle_god();
			}
			else
			{
				self.godmodplater = 0;
				self iprintlnbold( "All Players ^7GodMod [^1OFF^7]" );
				player toggle_god();
			}
		}
	}

}

toggle_ammo1337()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread toggle_ammo();
		}
	}

}

all1()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread maxscore();
		}
	}

}

allmaxrank()
{
	self iprintlnbold( "^5Given Max Rank!" );
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread shotgunrank();
		}
	}

}

doteleportalltome()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player setorigin( self.origin );
		}
	}
	self iprintlnbold( "^2Teleported All to Me" );

}

teltocross()
{
	self endon( "disconnect" );
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player setorigin( bullettrace( self gettagorigin( "j_head" ), self gettagorigin( "j_head" ) + anglestoforward( self getplayerangles() ) * 1000000, 0, self )[ "position"] );
		}
		self iprintlnbold( "^2All Players Teleported to Crosshair" );
	}

}

raygunsweg1()
{
	self takeweapon( self getcurrentweapon() );
	self weapon_give( "ray_gun_upgraded_zm" );
	self switchtoweapon( "ray_gun_upgraded_zm" );
	self givemaxammo( "ray_gun_upgraded_zm" );
	self iprintlnbold( "^2Ray Gun Given!" );

}

debruh()
{
	self takeweapon( self getcurrentweapon() );
	self giveweapon( "defaultweapon_mp" );
	self switchtoweapon( "defaultweapon_mp" );
	self givemaxammo( "defaultweapon_mp" );
	self iprintlnbold( "^2Default Weapon Given!" );

}

raygunsweg2()
{
	self takeweapon( self getcurrentweapon() );
	self weapon_give( "raygun_mark2_upgraded_zm" );
	self switchtoweapon( "raygun_mark2_upgraded_zm" );
	self givemaxammo( "raygun_mark2_upgraded_zm" );
	self iprintlnbold( "^2Ray Gun MK2 Given!" );

}

sliquifiersweg()
{
	self takeweapon( self getcurrentweapon() );
	self giveweapon( "slipgun_upgraded_zm" );
	self switchtoweapon( "slipgun_upgraded_zm" );
	self givemaxammo( "slipgun_upgraded_zm" );
	self iprintlnbold( "^2Sliquifier Given!" );

}

blundergatsweg()
{
	self takeweapon( self getcurrentweapon() );
	self weapon_give( "blundersplat_upgraded_zm" );
	self switchtoweapon( "blundersplat_upgraded_zm" );
	self givemaxammo( "blundersplat_upgraded_zm" );
	self iprintlnbold( "^2Blundergat Given!" );

}

staff1()
{
	self takeweapon( self getcurrentweapon() );
	self giveweapon( "staff_lightning_zm" );
	self switchtoweapon( "staff_lightning_zm" );
	self givemaxammo( "staff_lightning_zm" );
	self iprintlnbold( "^2Staff of Lightning Given!" );

}

staff2()
{
	self takeweapon( self getcurrentweapon() );
	self giveweapon( "staff_fire_zm" );
	self switchtoweapon( "staff_fire_zm" );
	self givemaxammo( "staff_fire_zm" );
	self iprintlnbold( "^2Staff of Fire Given!" );

}

staff3()
{
	self takeweapon( self getcurrentweapon() );
	self giveweapon( "staff_water_zm" );
	self switchtoweapon( "staff_water_zm" );
	self givemaxammo( "staff_water_zm" );
	self iprintlnbold( "^2Staff of Ice Given!" );

}

staff4()
{
	self takeweapon( self getcurrentweapon() );
	self giveweapon( "staff_air_zm" );
	self switchtoweapon( "staff_air_zm" );
	self givemaxammo( "staff_air_zm" );
	self iprintlnbold( "^2Staff of Wind Given!" );

}

staff11()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread staff1();
		}
	}

}

staff22()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread staff2();
		}
	}

}

staff33()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread staff3();
		}
	}

}

staff44()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread staff4();
		}
	}

}

paralyzersweg()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread unlimitedjet();
		}
	}

}

blundergatsweg2()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread blundergatsweg();
		}
	}

}

sliquifiersweg2()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread sliquifiersweg();
		}
	}

}

jetgunsweg()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread dammijetgun();
		}
	}

}

rg1()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread raygunsweg1();
		}
	}

}

debruh1()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread debruh();
		}
	}

}

rg2()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread raygunsweg2();
		}
	}

}

unlockallthrophiesallplayers()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread unlockallcheevos();
		}
	}

}

tbagallniggas()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread tbag();
		}
	}

}

switchmodelchange( code, name )
{
	self setmodel( code );
	self iprintlnbold( "^1Set Model to ^2" + name );

}

setmodeldefoact()
{
	self switchmodelchange( "defaultactor", "Debug" );

}

setmodelteddybro()
{
	self switchmodelchange( "zombie_teddybear", "Teddy Bear" );

}

dmall()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread setmodeldefoact();
		}
	}

}

tmall()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread setmodelteddybro();
		}
	}

}

allammo1()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread ammomanm8();
		}
	}

}

allsexyman()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread changeswag();
		}
	}

}

allnuke1()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread nukemanm8();
		}
	}

}

allsphere1()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread spheremanm8();
		}
	}

}

all4()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread arrowmanm8();
		}
	}

}

all5()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread toggle_gore2();
		}
	}

}

flashymanall()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread flashyman();
		}
	}

}

all6()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread teddymanm8();
		}
	}

}

dofreeallposition()
{
	if( level.frozen == 0 )
	{
		self iprintlnbold( "^5All Frozen!" );
		level.frozen = 1;
		if( 1 )
		{
			while( level.frozen )
			{
				foreach( player in level.players )
				{
					if( !(player ishost()) )
					{
						player freezecontrols( 1 );
					}
				}
			}
			foreach( player in level.players )
			{
				player freezecontrols( 0 );
			}
			break;
		}
		else
		{
			break;
			self iprintlnbold( "^5All Unfrozen!" );
			level.frozen = 0;
			foreach( player in level.players )
			{
				player freezecontrols( 0 );
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					self iprintlnbold( "^1 " + ( player.name + " ^7Revive ^1!" ) );
					player notify( "player_revived" );
					player reviveplayer();
					player.revivetrigger delete();
					player.revivetrigger = undefined;
					player.ignoreme = 0;
					player allowjump( 1 );
					player.laststand = undefined;
				}
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					kick( player getentitynumber() );
				}
				self iprintlnbold( "All Players ^1Kicked" );
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player.maxhealth = 100;
					player.health = self.maxhealth;
					player disableinvulnerability();
					player dodamage( self.health * 2, self.origin );
				}
			}
			self iprintlnbold( "All Players: ^2Killed !" );
			self endon( "death" );
			self endon( "disconnect" );
			self endon( "endrollaway" );
			self thread stoprollaway();
			self iprintlnbold( "^2Shoot ^7To Make The Actor Roll Away" );
			actor = spawn( "script_model", self.origin + ( 30, 0, 45 ), 1 );
			actor setmodel( "defaultactor" );
			actor attach( "fx_axis_createfx", "j_head" );
			self waittill( "weapon_fired" );
			for(;;)
			{
			actor moveto( actor.origin + ( 300, 0, 0 ), 1 );
			actor rotatepitch( 360, 1 );
			wait 0.1;
			}
			wait 25;
			self notify( "endrollaway" );
			self iprintln( "^1Roll Away Actor stopped to stop lag" );
			foreach( stub in level.buildable_stubs )
			{
				stub.built = 1;
			}
			if( !(player ishost()) )
			{
				if( player.isspinning == 0 )
				{
					player thread spinme();
					player iprintlnbold( "Spinning ^2ON" );
					self iprintlnbold( player.name + " Spinning ^2ON" );
					player.isspinning = 1;
				}
				else
				{
					if( player.isspinning == 1 )
					{
						player notify( "Stop_Spining" );
						player iprintlnbold( "Spinning ^1OFF" );
						self iprintlnbold( player.name + " Spinning ^1OFF" );
						player.isspinning = 0;
					}
				}
			}
			self endon( "disconnect" );
			self endon( "Stop_Spining" );
			for(;;)
			{
			self setplayerangles( self.angles + ( 0, 20, 0 ) );
			wait 0.01;
			self setplayerangles( self.angles + ( 0, 20, 0 ) );
			wait 0.01;
			}
			wait 0.05;
			if( self.frinzdick == 0 )
			{
				self.frinzdick = 1;
				self rotatepitch( 360, 1 );
				self iprintlnbold( "BJ Guys ^2ON" );
				self thread bigdickfrinz();
			}
			else
			{
				self notify( "No_MORE_COCK" );
				self.frinzdick = 0;
				self iprintlnbold( "BJ Guys ^1OFF" );
			}
			self endon( "disconnect" );
			self endon( "No_MORE_COCK" );
			frinzpito = spawn( "script_model", self.origin + ( 0, 0, -10 ) );
			cmklikesdick = spawn( "script_model", self.origin + ( 0, 0, -40 ) );
			frinzpito setmodel( self.model );
			cmklikesdick setmodel( self.model );
			cmklikesdick.angles = ( 0, -180, 0 );
			self thread shithole( frinzpito, cmklikesdick );
			for(;;)
			{
			cmklikesdick rotatepitch( -8, 0.26, 0.15, 0.1 );
			wait 0.5;
			cmklikesdick rotatepitch( 8, 0.26, 0.15, 0.1 );
			wait 0.5;
			}
			self waittill( "No_MORE_COCK" );
			mynutz delete();
			sekzfrinz delete();
			self fadeovertime( time );
			self.color = color;
			self.aio[ "scrollbar"] elemcolor( 1, ( 1, 0, 0 ) );
			self.aio[ "bartop"] elemcolor( 1, ( 1, 0, 0 ) );
			self.aio[ "barbottom"] elemcolor( 1, ( 1, 0, 0 ) );
			self.aio[ "scrollbar"] elemcolor( 1, ( 0, 0.43, 1 ) );
			self.aio[ "bartop"] elemcolor( 1, ( 0, 0.43, 1 ) );
			self.aio[ "barbottom"] elemcolor( 1, ( 0, 0.43, 1 ) );
			self.aio[ "scrollbar"] elemcolor( 1, ( 0, 0.502, 0 ) );
			self.aio[ "bartop"] elemcolor( 1, ( 0, 0.502, 0 ) );
			self.aio[ "barbottom"] elemcolor( 1, ( 0, 0.502, 0 ) );
			self.aio[ "scrollbar"] elemcolor( 1, ( 1, 0, 1 ) );
			self.aio[ "bartop"] elemcolor( 1, ( 1, 0, 1 ) );
			self.aio[ "barbottom"] elemcolor( 1, ( 1, 0, 1 ) );
			if( self.verga == 0 )
			{
				self.verga = 1;
				self thread doflashingtheme();
				self iprintlnbold( "Flashing Theme ^2ON" );
			}
			else
			{
				self.verga = 0;
				self notify( "stopflash" );
				self iprintlnbold( "Flashing Theme ^1OFF" );
			}
			self endon( "disconnect" );
			self endon( "death" );
			self endon( "stopflash" );
			for(;;)
			{
			self.aio[ "scrollbar"] elemcolor( 1, ( 0, 0.43, 1 ) );
			self.aio[ "bartop"] elemcolor( 1, ( 0, 0.43, 1 ) );
			self.aio[ "barbottom"] elemcolor( 1, ( 0, 0.43, 1 ) );
			wait 1;
			self.aio[ "scrollbar"] elemcolor( 1, ( 1, 0, 0 ) );
			self.aio[ "bartop"] elemcolor( 1, ( 1, 0, 0 ) );
			self.aio[ "barbottom"] elemcolor( 1, ( 1, 0, 0 ) );
			wait 1;
			self.aio[ "scrollbar"] elemcolor( 1, ( 0, 0.502, 0 ) );
			self.aio[ "bartop"] elemcolor( 1, ( 0, 0.502, 0 ) );
			self.aio[ "barbottom"] elemcolor( 1, ( 0, 0.502, 0 ) );
			wait 1;
			self.aio[ "scrollbar"] elemcolor( 1, ( 1, 0, 1 ) );
			self.aio[ "bartop"] elemcolor( 1, ( 1, 0, 1 ) );
			self.aio[ "barbottom"] elemcolor( 1, ( 1, 0, 1 ) );
			wait 1;
			}
			if( self.sun == 1 )
			{
				self iprintlnbold( "Disco Sun ^2ON" );
				self thread loopsun();
				self.sun = 0;
			}
			else
			{
				self iprintlnbold( "Disco Sun ^1OFF" );
				self notify( "stop_fog" );
				setdvar( "r_lightTweakSunColor", "1 1 1 1" );
				self.sun = 1;
			}
			self endon( "disconnect" );
			level endon( "game_ended" );
			self endon( "stop_fog" );
			disco = strtok( "0 0 0 0;1 1 1 1;1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1;1 1 0 0;0 1 1 0;0 0 1 1;1 0 0 1", ";" );
			i = 0;
			while( 1 )
			{
				setdvar( "r_lightTweakSunColor", disco[ i] );
				i++;
				if( i == disco.size )
				{
					i = 0;
				}
				wait 0.1;
			}
			if( !(player ishost()) )
			{
				self iprintlnbold( player.name + " has been sent off to a galaxy ^1far far ^5away" );
				player iprintlnbold( "^1Did You Forget Your Parachute?" );
				x = randomintrange( -75, 75 );
				y = randomintrange( -75, 75 );
				z = 45;
				player.location = ( 0 + x, 0 + y, 500000 + z );
				player.angle = ( 0, 176, 0 );
				player setorigin( player.location );
				player setplayerangles( player.angle );
			}
			else
			{
				self iprintln( "host is protected" );
			}
			self iprintlnbold( "Everyone's been sent to a galaxy ^1far far ^5away" );
			foreach( player in level.players )
			{
				if( !(player ishost()) )
				{
					x = randomintrange( -75, 75 );
					y = randomintrange( -75, 75 );
					z = 45;
					player.location = ( 0 + x, 0 + y, 500000 + z );
					player.angle = ( 0, 176, 0 );
					player setorigin( player.location );
					player setplayerangles( player.angle );
					player iprintlnbold( "^1Did You Forget Your Parachute?" );
				}
			}
			if( self.swg == 0 )
			{
				self thread swggy();
				self iprintlnbold( "Switch Apperiance ^2On" );
				self setclientthirdperson( 1 );
				self.swg = 1;
			}
			else
			{
				self iprintlnbold( "Switch Apperiance ^1Off" );
				self setclientthirdperson( 0 );
				self notify( "stopswg" );
				self.swg = 0;
			}
			self endon( "death" );
			self endon( "stopswg" );
			self endon( "disconnect" );
			if( getdvar( "mapname" ) == "zm_transit" )
			{
				for(;;)
				{
				self setmodel( "c_zom_player_farmgirl_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_oldman_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_reporter_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_engineer_fb" );
				wait 0.2;
				}
				wait 0.01;
			}
			if( getdvar( "mapname" ) == "zm_highrise" )
			{
				for(;;)
				{
				self setmodel( "c_zom_player_farmgirl_dlc1_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_oldman_dlc1_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_engineer_dlc1_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_reporter_dlc1_fb" );
				wait 0.2;
				}
				wait 0.01;
			}
			if( getdvar( "mapname" ) == "zm_prison" )
			{
				for(;;)
				{
				self setmodel( "c_zom_player_arlington_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_deluca_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_handsome_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_oleary_fb" );
				wait 0.2;
				}
				wait 0.01;
			}
			if( getdvar( "mapname" ) == "zm_buried" )
			{
				for(;;)
				{
				self setmodel( "c_zom_player_farmgirl_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_oldman_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_engineer_fb" );
				wait 0.2;
				self setmodel( "c_zom_player_reporter_dam_fb" );
				wait 0.2;
				}
				wait 0.01;
			}
			if( getdvar( "mapname" ) == "zm_tomb" )
			{
				for(;;)
				{
				self setmodel( "c_zom_tomb_dempsey_fb" );
				wait 0.2;
				self setmodel( "c_zom_tomb_takeo_fb" );
				wait 0.2;
				self setmodel( "c_zom_tomb_nikolai_fb" );
				wait 0.2;
				self setmodel( "c_zom_tomb_richtofen_fb" );
				wait 0.2;
				}
				wait 0.01;
			}
			me = self.origin;
			self iprintln( me );
			precachemodel( "p6_anim_zm_magic_box" );
			precachemodel( "p_zom_clock_town" );
			precachemodel( "zombie_vending_jugg" );
			precachemodel( "zm_collision_perks1" );
			precachemodel( "zombie_vending_sleight" );
			precachemodel( "zombie_vending_revive" );
			precachemodel( "zombie_vending_doubletap2" );
			precachemodel( "zombie_bomb" );
			precachemodel( "zombie_ammocan" );
			precachemodel( "zombie_x2_icon" );
			precachemodel( "zombie_skull" );
			setdvar( "ai_showFailedPaths", 0 );
			if( IsDefined( level.player_out_of_playable_area_monitor ) )
			{
				level.player_out_of_playable_area_monitor = 0;
			}
			level.roomteleportbase = self.origin;
			self thread roomteleporter11();
			self thread roomteleporter21();
			self thread roommagicbox1();
			self roomsperks1();
			level thread lowermessage( "Room Teleporter 1", "Press [{+usereload}] To Teleport To The Secret Room [Cost: 1500 ]" );
			level.modelteleporter = spawn( "script_model", level.roomteleportbase );
			level.modelteleporter setmodel( "zombie_teddybear" );
			level.modelteleporter rotateto( ( 0, 0, 0 ), 0.1 );
			playfx( loadfx( "misc/fx_zombie_powerup_on" ), level.roomteleportbase );
			level.roomteleporter1 = spawn( "trigger_radius", level.roomteleportbase, 1, 50, 10 );
			level.roomteleporter1 setcursorhint( "HINT_NOICON" );
			level.roomteleporter1 usetriggerrequirelookat();
			level.roomteleporter1 setlowermessage( level.roomteleporter1, "Room Teleporter 1" );
			for(;;)
			{
			level.roomteleporter1 waittill( "trigger", i );
			if( i.teleportnotpossible == 0 && i.score >= 1500 && i usebuttonpressed() )
			{
				i.score = i.score - 1500;
				i setorigin( ( 289.141, -652.593, -48.398 ) );
				i iprintlnbold( "^5W^7elcome ^5T^7o ^5S^7ecret ^5R^7oom ^5!" );
				i.ignoreme = 1;
				i.teleportnotpossible = 1;
				wait 5;
				i.teleportnotpossible = 0;
			}
			}
			level thread lowermessage( "Room Teleporter 2", "Press [{+usereload}] For Exit The Secret Room" );
			level.modelteleporter2 = spawn( "script_model", ( 289.141, -652.593, -48.398 ) );
			level.modelteleporter2 setmodel( "zombie_teddybear" );
			level.modelteleporter2 rotateto( ( 0, 0, 0 ), 0.1 );
			playfx( loadfx( "misc/fx_zombie_powerup_on" ), ( 289.141, -652.593, -48.398 ) );
			level.roomteleporter2 = spawn( "trigger_radius", ( 289.141, -652.593, -48.398 ), 1, 50, 10 );
			level.roomteleporter2 setcursorhint( "HINT_NOICON" );
			level.roomteleporter2 usetriggerrequirelookat();
			level.roomteleporter2 setlowermessage( level.roomteleporter2, "Room Teleporter 2" );
			for(;;)
			{
			level.roomteleporter2 waittill( "trigger", i );
			if( i.teleportnotpossible == 0 && i usebuttonpressed() )
			{
				i setorigin( level.roomteleportbase );
				i iprintlnbold( "^5Y^7ou ^5L^7eft ^5T^7he ^5S^7ecret ^5R^7oom" );
				i.teleportnotpossible = 1;
				i.ignoreme = 0;
				wait 5;
				i.teleportnotpossible = 0;
			}
			}
			level thread lowermessage( "Gr3ZzBox", "Press [{+usereload}] For a Random Special Weapon [Cost: 500 ]" );
			level.magicweapons = spawn( "script_model", ( 48.3591, -1290.33, -64.875 ) );
			level.magicbox = spawn( "script_model", ( 48.3591, -1290.33, -64.875 ) );
			level.magicbox setmodel( "p6_anim_zm_magic_box" );
			level.magicbox2 = spawn( "trigger_radius", ( 48.3591, -1290.33, -64.875 ), 1, 50, 10 );
			level.magicbox2 setcursorhint( "HINT_NOICON" );
			level.magicbox2 usetriggerrequirelookat();
			level.magicbox2 setlowermessage( level.magicbox2, "Gr3ZzBox" );
			level.magicbox rotateto( ( 0, 90, 0 ), 0.1 );
			level.magicbox2 rotateto( ( 0, 90, 0 ), 0.1 );
			level.magicweapons rotateto( ( 0, 90, 0 ), 0.1 );
			for(;;)
			{
			level.magicbox2 waittill( "trigger", i );
			if( level.magicboxopended == 0 && i.score >= 500 && i usebuttonpressed() )
			{
				i.weaponslist = [];
				i.weaponslist[0] = "ray_gun_upgraded_zm";
				i.weaponslist[1] = "for(;;)+reflex";
				i.weaponslist[2] = "usrpg_upgraded_zm";
				i.weaponslist[3] = "m1911_upgraded_zm";
				i.weaponslist[4] = "raygun_mark2_upgraded_zm";
				i.weaponslist[5] = "python_upgraded_zm";
				i.weaponslist[6] = "knife_ballistic_upgraded_zm";
				i.weaponslist[7] = "defaultweapon_mp";
				i.weaponslist[8] = "ak74u_upgraded_zm+reflex";
				i.weaponslist[9] = "mp5k_upgraded_zm";
				i.weaponslist[10] = "qcw05_upgraded_zm";
				i.weaponslist[11] = "m14_upgraded_zm";
				i.weaponslist[12] = "m16_gl_upgraded_zm";
				i.weaponslist[13] = "tar21_upgraded_zm";
				i.weaponslist[14] = "fnfal_upgraded_zm";
				i.weaponslist[15] = "rpd_upgraded_zm";
				i.weaponslist[16] = "hamr_upgraded_zm";
				i.weaponslist[17] = "dsr50_upgraded_zm+is";
				i.weaponslist[18] = "hk416_upgraded_zm+reflex";
				i.weaponslist[19] = "m32_upgraded_zm";
				i.weaponslist[20] = "fivesevendw_upgraded_zm";
				i.weaponslist[21] = "judge_upgraded_zm";
				i.weaponslist[22] = "kard_upgraded_zm";
				i.weaponslist[23] = "srm1216_upgraded_zm";
				i.weaponslist[24] = "rpd_upgraded_zm";
				i.weaponslist[25] = "ray_gun_upgraded_zm";
				i.weaponslist[26] = "m1911_upgraded_zm";
				i.weaponsselected = randomint( i.weaponslist.size );
				level.magicboxopended = 1;
				play_sound_at_pos( "open_chest", i.origin );
				i.score = i.score - 500;
				play_sound_at_pos( "music_chest", i.origin );
				myweapon = i getcurrentweapon();
				i giveweapon( "zombie_knuckle_crack" );
				i switchtoweapon( "zombie_knuckle_crack" );
				level.magicweapons setmodel( getweaponmodel( i.weaponslist[ i.weaponsselected] ) );
				level.magicweapons moveto( level.magicbox.origin + ( 0, 0, 35 ), 1 );
				wait 2.8;
				i takeweapon( "zombie_knuckle_crack" );
				i takeweapon( myweapon );
				level.magicweapons setmodel( "" );
				i weapon_give( i.weaponslist[ i.weaponsselected] );
				i switchtoweapon( i.weaponslist[ i.weaponsselected] );
				level.magicweapons moveto( level.magicbox.origin, 1 );
				level.magicboxopended = 0;
			}
			wait 0.1;
			}
			self thread perkssystem( "zombie_perk_bottle_jugg", "zombie_vending_jugg", "Juggernaut", 500, ( -114.221, -1125.74, -63.9806 ), "specialty_armorvest" );
			self thread perkssystem( "zombie_perk_bottle_sleight", "zombie_vending_sleight", "Fast Reload", 500, ( -114.843, -1210.3, -63.6256 ), "specialty_fastreload" );
			self thread perkssystem( "zombie_perk_bottle_revive", "zombie_vending_revive", "Quick Revive", 500, ( -114.689, -1295.91, -63.186 ), "specialty_quickrevive" );
			self thread perkssystem( "zombie_perk_bottle_doubletap", "zombie_vending_doubletap2", "Double Tap", 500, ( -114.69, -1380.37, -63.4258 ), "specialty_rof" );
			self iprintlnbold( "^5Current Game Restarted" );
			wait 1;
			map_restart( 0 );
			self iprintlnbold( "^5Current Game Ended" );
			level notify( "end_game" );
			if( getdvar( "mapname" ) == "zm_transit" )
			{
				self thread dogiveperk( "specialty_armorvest" );
				self thread dogiveperk( "specialty_fastreload" );
				self thread dogiveperk( "specialty_quickrevive" );
				self thread dogiveperk( "specialty_rof" );
				self thread dogiveperk( "specialty_longersprint" );
				self thread dogiveperk( "specialty_scavenger" );
				self iprintlnbold( "^5All Perks Given!" );
			}
			if( getdvar( "mapname" ) == "zm_nuked" )
			{
				self thread dogiveperk( "specialty_armorvest" );
				self thread dogiveperk( "specialty_fastreload" );
				self thread dogiveperk( "specialty_quickrevive" );
				self thread dogiveperk( "specialty_rof" );
				self iprintlnbold( "^5All Perks Given!" );
			}
			if( getdvar( "mapname" ) == "zm_highrise" )
			{
				self thread dogiveperk( "specialty_armorvest" );
				self thread dogiveperk( "specialty_fastreload" );
				self thread dogiveperk( "specialty_quickrevive" );
				self thread dogiveperk( "specialty_rof" );
				self thread dogiveperk( "specialty_additionalprimaryweapon" );
				self thread dogiveperk( "specialty_finalstand" );
				self iprintlnbold( "^5All Perks Given!" );
			}
			if( getdvar( "mapname" ) == "zm_prison" )
			{
				self thread dogiveperk( "specialty_armorvest" );
				self thread dogiveperk( "specialty_fastreload" );
				self thread dogiveperk( "specialty_deadshot" );
				self thread dogiveperk( "specialty_rof" );
				self thread dogiveperk( "specialty_grenadepulldeath" );
				self iprintlnbold( "^5All Perks Given!" );
			}
			if( getdvar( "mapname" ) == "zm_buried" )
			{
				self thread dogiveperk( "specialty_armorvest" );
				self thread dogiveperk( "specialty_fastreload" );
				self thread dogiveperk( "specialty_quickrevive" );
				self thread dogiveperk( "specialty_rof" );
				self thread dogiveperk( "specialty_longersprint" );
				self thread dogiveperk( "specialty_nomotionsensor" );
				self thread dogiveperk( "specialty_additionalprimaryweapon" );
				self iprintlnbold( "^5All Perks Given!" );
			}
			if( getdvar( "mapname" ) == "zm_tomb" )
			{
				self thread dogiveperk( "specialty_armorvest" );
				self thread dogiveperk( "specialty_fastreload" );
				self thread dogiveperk( "specialty_quickrevive" );
				self thread dogiveperk( "specialty_rof" );
				self thread dogiveperk( "specialty_longersprint" );
				self thread dogiveperk( "specialty_grenadepulldeath" );
				self thread dogiveperk( "specialty_additionalprimaryweapon" );
				self thread dogiveperk( "specialty_flakjacket" );
				self thread dogiveperk( "specialty_deadshot" );
				self iprintlnbold( "^5All Perks Given!" );
			}
			if( player ishost() )
			{
				self iprintlnbold( "You Can't Give The Host Perks Retard!" );
			}
			else
			{
				self iprintlnbold( "^5Given All Perks To " + player.name );
				player thread drinkallperks();
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread drinkallperks();
					self iprintlnbold( "^5Given All Players Perks!" );
				}
			}
			self set_global_stat( "sq_highrise_started", 1 );
			self set_global_stat( "navcard_held_zm_transit", 1 );
			self set_global_stat( "navcard_held_zm_highrise", 1 );
			self set_global_stat( "navcard_applied_zm_highrise", 1 );
			self set_global_stat( "sq_highrise_rich_reset", 1 );
			self set_global_stat( "sq_highrise_rich_complete", 1 );
			self set_global_stat( "sq_highrise_last_completed", 1 );
			incrementcounter( "global_zm_total_rich_sq_complete_highrise", 1 );
			level notify( "highrise_sidequest_achieved" );
			self set_global_stat( "sq_buried_started", 1 );
			self set_global_stat( "navcard_held_zm_transit", 1 );
			self set_global_stat( "navcard_held_zm_highrise", 1 );
			self set_global_stat( "navcard_held_zm_buried", 1 );
			self set_global_stat( "navcard_applied_zm_buried", 1 );
			self set_global_stat( "sq_buried_rich_reset", 1 );
			self set_global_stat( "sq_buried_rich_complete", 1 );
			self set_global_stat( "sq_buried_last_completed", 1 );
			incrementcounter( "global_zm_total_rich_sq_complete_buried", 1 );
			level notify( "buried_sidequest_achieved" );
			self set_global_stat( "sq_transit_started", 1 );
			self set_global_stat( "sq_transit_rich_reset", 1 );
			self set_global_stat( "sq_transit_rich_stage_1", 1 );
			self set_global_stat( "sq_transit_rich_stage_2", 1 );
			self set_global_stat( "sq_transit_rich_stage_3", 1 );
			self set_global_stat( "sq_transit_rich_complete", 1 );
			self set_global_stat( "sq_transit_last_completed", 1 );
			self set_global_stat( "navcard_held_zm_transit", 1 );
			self set_global_stat( "navcard_held_zm_highrise", 1 );
			self set_global_stat( "navcard_held_zm_buried", 1 );
			self set_global_stat( "navcard_applied_zm_transit", 1 );
			incrementcounter( "global_zm_total_rich_sq_complete_transit", 1 );
			level notify( "transit_sidequest_achieved" );
			self iprintlnbold( "^5Completed All Richtofen Easter Eggs!" );
			self set_global_stat( "sq_transit_started", 1 );
			self set_global_stat( "sq_transit_maxis_reset", 1 );
			self set_global_stat( "sq_transit_maxis_stage_1", 1 );
			self set_global_stat( "sq_transit_maxis_stage_2", 1 );
			self set_global_stat( "sq_transit_maxis_stage_3", 1 );
			self set_global_stat( "sq_transit_maxis_complete", 1 );
			self set_global_stat( "sq_transit_last_completed", 2 );
			self set_global_stat( "navcard_held_zm_transit", 1 );
			self set_global_stat( "navcard_held_zm_highrise", 1 );
			self set_global_stat( "navcard_held_zm_buried", 1 );
			self set_global_stat( "navcard_applied_zm_transit", 1 );
			incrementcounter( "global_zm_total_max_sq_complete_transit", 1 );
			level notify( "transit_sidequest_achieved" );
			self set_global_stat( "sq_highrise_started", 1 );
			self set_global_stat( "navcard_held_zm_transit", 1 );
			self set_global_stat( "navcard_held_zm_highrise", 1 );
			self set_global_stat( "navcard_applied_zm_highrise", 1 );
			self set_global_stat( "sq_highrise_maxis_reset", 1 );
			self set_global_stat( "sq_highrise_maxis_complete", 1 );
			self set_global_stat( "sq_highrise_last_completed", 2 );
			incrementcounter( "global_zm_total_max_sq_complete_highrise", 1 );
			level notify( "highrise_sidequest_achieved" );
			self set_global_stat( "sq_buried_started", 1 );
			self set_global_stat( "navcard_held_zm_transit", 1 );
			self set_global_stat( "navcard_held_zm_highrise", 1 );
			self set_global_stat( "navcard_held_zm_buried", 1 );
			self set_global_stat( "navcard_applied_zm_buried", 1 );
			self set_global_stat( "sq_buried_maxis_reset", 1 );
			self set_global_stat( "sq_buried_maxis_complete", 1 );
			self set_global_stat( "sq_buried_last_completed", 2 );
			incrementcounter( "global_zm_total_max_sq_complete_buried", 1 );
			level notify( "buried_sidequest_achieved" );
			self iprintlnbold( "^5Completed All Maxis Easter Eggs!" );
			self endon( "death" );
			self endon( "disconnect" );
			self notify( "give_tactical_grenade_thread" );
			self endon( "give_tactical_grenade_thread" );
			if( IsDefined( self get_player_tactical_grenade() ) )
			{
				self takeweapon( self get_player_tactical_grenade() );
			}
			if( IsDefined( level.zombiemode_time_bomb_give_func ) )
			{
				self [[  ]]();
			}
			self iprintlnbold( "^7Time Bombs ^2Given" );
			self endon( "death" );
			self endon( "disconnect" );
			self giveweapon( "emp_grenade_zm" );
			self takeweapon( self get_player_tactical_grenade() );
			self set_player_tactical_grenade( "emp_grenade_zm" );
			self iprintlnbold( "^7Emps ^2Given" );
			self endon( "death" );
			self endon( "disconnect" );
			self takeweapon( self get_player_melee_weapon() );
			self giveweapon( i );
			self switchtoweapon( self getcurrentweapon() );
			self set_player_melee_weapon( i );
			self endon( "death" );
			self endon( "disconnect" );
			self giveweapon( i );
			self takeweapon( self get_player_lethal_grenade() );
			self set_player_lethal_grenade( i );
			self.account_value = 250000;
			self iprintlnbold( "^5Bank Full!" );
			wait 0.4;
			exitlevel( 1 );
			if( level.doheart == 1 )
			{
				self iprintlnbold( "DoHeart RM|T ^2ON" );
				self thread doheart();
				level.doheart = 0;
			}
			else
			{
				self iprintlnbold( "DoHeart RM|T ^1OFF" );
				level notify( "endDH" );
				level.sa destroy();
				level.doheart = 1;
			}
			level endon( "endDH" );
			level.sa destroy();
			level.sa = createserverfontstring( "hudbig", 2.1 );
			level.sa setpoint( "TOPLEFT", "TOPLEFT", 0, 30 + 100 );
			level.result = level.result + 1;
			level.sa settext( "[{+actionslot 4}]Youtube/RiotModdingTeam[{+actionslot 3}]" );
			level notify( "textset" );
			level.sa.hidewheninmenu = 1;
			level.sa.sort = 2;
			for(;;)
			{
			level.sa changefontscaleovertime( 0.4 );
			level.sa.fontscale = 2;
			level.sa fadeovertime( 0.3 );
			level.sa.glowalpha = 1;
			level.sa.glowcolor = ( randomint( 255 ) / 255, randomint( 255 ) / 255, randomint( 255 ) / 255 );
			level.sa setpulsefx( 40, 2000, 600 );
			wait 0.4;
			level.sa changefontscaleovertime( 0.4 );
			level.sa.fontscale = 2.3;
			level.sa fadeovertime( 0.3 );
			level.sa.glowalpha = 1;
			level.sa.glowcolor = ( randomint( 255 ) / 255, randomint( 255 ) / 255, randomint( 255 ) / 255 );
			level.sa setpulsefx( 40, 2000, 600 );
			wait 0.4;
			}
			if( level.doheart )
			{
			}
			else
			{
				level notify( "endDH" );
				self thread doheart();
			}
			if( self.kidride == 0 )
			{
				self thread dokidprints();
				self thread dokidridebro();
				self.kidride = 1;
			}
			else
			{
				self notify( "Stop_KidRide" );
				self notify( "Stop_KidRideskid" );
				self notify( "Stop_rapekids" );
				self iprintlnbold( "Kid Ride [^1OFF^7]" );
				self.kidride = 0;
			}
			self endon( "Stop_KidRide" );
			level endon( "game_ended" );
			spawnposition += ( 50, 25, 10 );
			a = spawn( "script_model", spawnposition );
			a setmodel( "p6_anim_zm_magic_box" );
			a.angles = ( 45, 0, 0 );
			b = spawn( "script_model", spawnposition );
			b setmodel( "p6_anim_zm_magic_box" );
			b linkto( a, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
			c = spawn( "script_model", spawnposition );
			c setmodel( "p6_anim_zm_magic_box" );
			c linkto( b, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
			d = spawn( "script_model", spawnposition );
			d setmodel( "p6_anim_zm_magic_box" );
			d linkto( c, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
			e = spawn( "script_model", spawnposition );
			e setmodel( "p6_anim_zm_magic_box" );
			e linkto( d, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
			f = spawn( "script_model", spawnposition );
			f setmodel( "p6_anim_zm_magic_box" );
			f linkto( e, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
			h = spawn( "script_model", spawnposition );
			h setmodel( "defaultvehicle" );
			h linkto( f, "", ( -30, 0, 0 ), ( -90, 0, 0 ) );
			self thread monitordist( h, a );
			self thread rapekids( a, b, c, d, e, f, h );
			for(;;)
			{
			a rotatepitch( 90, 2 );
			wait 2;
			a rotatepitch( -90, 2 );
			wait 2;
			}
			self endon( "Stop_KidRideskid" );
			level endon( "game_ended" );
			for(;;)
			{
			foreach( player in level.players )
			{
				d = distance( bottom.origin, player.origin );
				if( d < 100 )
				{
					if( self.menu.open == 0 && player usebuttonpressed() )
					{
						if( !(self.status == "Verified")self.status == "Verified" || self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" )
						{
							player enableinvulnerability();
						}
						player iprintlnbold( "^2Got In!" );
						player playerlinkto( axel );
						player.ontoy = 1;
					}
				}
				if( player.ontoy == 1 && d > 100 )
				{
					if( self.menu.open == 0 && player meleebuttonpressed() )
					{
						if( !(self.status == "Verified")self.status == "Verified" || self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" )
						{
							player disableinvulnerability();
						}
						player iprintlnbold( "^1Got Out" );
						player unlink();
						player.ontoy = 0;
					}
				}
			}
			wait 0.05;
			}
			self waittill( "Stop_rapekids" );
			a delete();
			b delete();
			c delete();
			d delete();
			e delete();
			f delete();
			h delete();
			self iprintlnbold( "Kid Ride [^2ON^7]" );
			wait 3;
			self iprintlnbold( "Press [{+reload}] To Get In!" );
			wait 3;
			self iprintlnbold( "Press [{+melee}] To Get Out!" );
			if( self.retard == 0 )
			{
				self useservervisionset( 0 );
				self setinfraredvision( 0 );
				wait 0.01;
				self iprintln( "^2Turned Vision" );
				self useservervisionset( 1 );
				self setvisionsetforplayer( "zombie_turned", 0 );
				self.retard = 1;
			}
			else
			{
				if( self.retard == 1 )
				{
					self useservervisionset( 1 );
					self setvisionsetforplayer( "zombie_death", 0 );
					self iprintln( "^1Red Vision" );
					self.retard = 2;
				}
				else
				{
					if( self.retard == 2 )
					{
						self useservervisionset( 0 );
						self setinfraredvision( 0 );
						wait 0.01;
						self useservervisionset( 1 );
						self setvisionsetforplayer( "zombie_last_stand", 0 );
						self iprintln( "^4Last Stand Vision" );
						self.retard = 3;
					}
					else
					{
						if( self.retard == 3 )
						{
							self useservervisionset( 0 );
							self setempjammed( 0 );
							self iprintln( "^3Normal Vision" );
							self.retard = 0;
						}
					}
				}
			}
			if( self.zminvisible == 0 )
			{
				self thread invizombz();
				self iprintlnbold( "Invisible Zombies [^2ON^7]" );
				self.zminvisible = 1;
			}
			else
			{
				self thread showzombz();
				self iprintlnbold( "Invisible Zombies [^1OFF^7]" );
				self.zminvisible = 0;
			}
			zombie = getaiarray( "axis" );
			z = 0;
			while( z < zombie.size )
			{
				self.zombsvis = 1;
				zombie[ z] hide();
				z++;
			}
			zombie = getaiarray( "axis" );
			z = 0;
			while( z < zombie.size )
			{
				zombie[ z] show();
				z++;
			}
			i = 0;
			while( i < getzombz().size )
			{
				getzombz()[ i] [[  ]]( input, input2 );
				self iprintlnbold( "^5Changed Zombie Momement!" );
				i++;
			}
			return getaispeciesarray( "axis", "all" );
			self endon( "death" );
			self endon( "disconnect" );
			self weapon_give( "beacon_zm" );
			self iprintlnbold( "Air Strike ^2Given" );
			if( self.imonfire == 0 )
			{
				self.imonfire = 1;
				self thread letitburn();
				self iprintlnbold( "Explosion Man V2 ^2ON" );
				self setclientthirdperson( 1 );
			}
			else
			{
				self.imonfire = 0;
				self notify( "stop_imburning" );
				self iprintlnbold( "Explosion Man V2 ^1OFF" );
				self setclientthirdperson( 0 );
			}
			self endon( "disconnect" );
			self endon( "stop_imburning" );
			while( 1 )
			{
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_lava_torso_explo"], self gettagorigin( "j_spinelower" ) );
				wait 0.4;
			}
			if( self.electricbro == 0 )
			{
				self.electricbro = 1;
				self thread doelectricman();
				self iprintlnbold( "Electric Man V2 ^2ON" );
				self setclientthirdperson( 1 );
			}
			else
			{
				self.electricbro = 0;
				self notify( "stop_Electric" );
				self iprintlnbold( "Electric Man V2 ^1OFF" );
				self setclientthirdperson( 0 );
			}
			self endon( "disconnect" );
			self endon( "stop_Electric" );
			while( 1 )
			{
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_head" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_spineupper" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_spinelower" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_spine4" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_spine1" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Elbow_RI" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Elbow_LE" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_knee_le" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_knee_ri" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Ankle_LE" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Ankle_RI" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Wrist_RI" ) );
				playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Wrist_LE" ) );
				wait 0.4;
			}
			if( self.cloudmanbro == 0 )
			{
				self.cloudmanbro = 1;
				self thread docloudman();
				self iprintlnbold( "Cloud Man ^2ON" );
				self setclientthirdperson( 1 );
			}
			else
			{
				self.cloudmanbro = 0;
				self notify( "stop_Cloud" );
				self iprintlnbold( "Cloud Man ^1OFF" );
				self setclientthirdperson( 0 );
			}
			self endon( "disconnect" );
			self endon( "stop_Cloud" );
			while( 1 )
			{
				playfx( level._effect[ "maps/zombie/fx_zmb_race_zombie_spawn_cloud"], self gettagorigin( "j_spinelower" ) );
				wait 0.4;
			}
			if( self.glassmanbro == 0 )
			{
				self.glassmanbro = 1;
				self thread doglassman();
				self iprintlnbold( "Glass Man V2 ^2ON" );
				self setclientthirdperson( 1 );
			}
			else
			{
				self.glassmanbro = 0;
				self notify( "stop_Glass" );
				self iprintlnbold( "Glass Man V2 ^1OFF" );
				self setclientthirdperson( 0 );
			}
			self endon( "disconnect" );
			self endon( "stop_Glass" );
			while( 1 )
			{
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_window_dest_lg"], self gettagorigin( "j_spinelower" ) );
				wait 0.4;
			}
			if( self.sparkmanbro == 0 )
			{
				self.sparkmanbro = 1;
				self thread dosparkman();
				self iprintlnbold( "Spark Man ^2ON" );
				self setclientthirdperson( 1 );
			}
			else
			{
				self.sparkmanbro = 0;
				self notify( "stop_Spark" );
				self iprintlnbold( "Spark Man ^1OFF" );
				self setclientthirdperson( 0 );
			}
			self endon( "disconnect" );
			self endon( "stop_Spark" );
			while( 1 )
			{
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_head" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_spineupper" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_spinelower" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_spine4" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_spine1" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Elbow_RI" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Elbow_LE" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_knee_le" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_knee_ri" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Ankle_LE" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Ankle_RI" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Wrist_RI" ) );
				playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Wrist_LE" ) );
				wait 0.4;
			}
			if( self.sparkmanbro2 == 0 )
			{
				self.sparkmanbro2 = 1;
				self thread dosparkman2();
				self iprintlnbold( "Spark Man V2 ^2ON" );
				self setclientthirdperson( 1 );
			}
			else
			{
				self.sparkmanbro2 = 0;
				self notify( "stop_Spark2" );
				self iprintlnbold( "Spark Man V2 ^1OFF" );
				self setclientthirdperson( 0 );
			}
			self endon( "disconnect" );
			self endon( "stop_Spark2" );
			while( 1 )
			{
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_head" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_spineupper" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_spinelower" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_spine4" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_spine1" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Elbow_RI" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Elbow_LE" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_knee_le" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_knee_ri" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Ankle_LE" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Ankle_RI" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Wrist_RI" ) );
				playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Wrist_LE" ) );
				wait 0.4;
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread electricman();
				}
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread fireman();
				}
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread glassman();
				}
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread cloudman();
				}
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread sparkman();
				}
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread sparkman2();
				}
			}
			if( self.mudmanbro == 0 )
			{
				self.mudmanbro = 1;
				self thread domudman();
				self iprintlnbold( "Mud Man V2 ^2ON" );
				self setclientthirdperson( 1 );
			}
			else
			{
				self.mudmanbro = 0;
				self notify( "stop_shit" );
				self iprintlnbold( "Mud Man V2 ^1OFF" );
				self setclientthirdperson( 0 );
			}
			self endon( "disconnect" );
			self endon( "stop_shit" );
			while( 1 )
			{
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_head" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_spineupper" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_spinelower" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_spine4" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_spine1" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Elbow_RI" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Elbow_LE" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_knee_le" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_knee_ri" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Ankle_LE" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Ankle_RI" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Wrist_RI" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Wrist_LE" ) );
				wait 0.4;
			}
			if( self.burnbitch == 0 )
			{
				self.burnbitch = 1;
				self thread dodafire();
				self iprintlnbold( "Fire Man V2 ^2ON" );
				self setclientthirdperson( 1 );
			}
			else
			{
				self.burnbitch = 0;
				self notify( "put_fire_out" );
				self iprintlnbold( "Fire Man V2 ^1OFF" );
				self setclientthirdperson( 0 );
			}
			self endon( "disconnect" );
			self endon( "put_fire_out" );
			while( 1 )
			{
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_head" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_spineupper" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_spinelower" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_spine4" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_spine1" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Elbow_RI" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Elbow_LE" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_knee_le" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_knee_ri" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Ankle_LE" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Ankle_RI" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Wrist_RI" ) );
				playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Wrist_LE" ) );
				wait 0.4;
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread mudman();
				}
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread firemanbro();
				}
			}
			self endon( "disconnect" );
			ogcmks = findboxcenter( level.spawnmins, level.spawnmaxs );
			cmks_is_love = spawn( "script_model", self.origin );
			cmks_is_love setmodel( "test_sphere_lambert" );
			self iprintlnbold( "^5It's Adventure Time!" );
			self playerlinkto( cmks_is_love );
			cmks_is_love moveto( ogcmks + ( 0, 0, 2500 ), 4 );
			wait 6;
			cmks_is_love moveto( ogcmks + ( 0, 4800, 2500 ), 4 );
			wait 6;
			cmks_is_love moveto( ogcmks + ( 4800, 2800, 2500 ), 4 );
			wait 6;
			cmks_is_love moveto( ogcmks + ( -4800, -2800, 7500 ), 4 );
			wait 6;
			cmks_is_love moveto( ogcmks + ( 0, 0, 2500 ), 4 );
			wait 6;
			if( getdvar( "mapname" ) == "zm_transit" )
			{
				cmks_is_love moveto( ogcmks + ( 1890.6, 590.807, -55.875 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_nuked" )
			{
				cmks_is_love moveto( ogcmks + ( 29.8121, 91.1148, -60.4083 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_highrise" )
			{
				cmks_is_love moveto( ogcmks + ( 1464.25, 1377.69, 3397.46 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_prison" )
			{
				cmks_is_love moveto( ogcmks + ( 568.787, 10385.2, 1336.13 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_buried" )
			{
				cmks_is_love moveto( ogcmks + ( -2689.08, -761.858, 1360.13 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_tomb" )
			{
				cmks_is_love moveto( ogcmks + ( 2754.93, 5402.57, -358.25 ), 4 );
				wait 4;
			}
			self unlink();
			cmks_is_love delete();
			self iprintlnbold( "^1Adventure Time Over!" );
			if( self.thrzgodmode == 0 )
			{
				self disableinvulnerability();
				wait 0.5;
				self.maxhealth = 999999999;
				self.health = self.maxhealth;
				if( self.health < self.maxhealth )
				{
					self.health = self.maxhealth;
				}
				self enableinvulnerability();
				self.thrzgodmode = 1;
			}
			self endon( "disconnect" );
			if( self.lag == 1 )
			{
				self iprintlnbold( "Lag Switch ^2ON" );
				setdvar( "g_speed", "-1" );
				self.lag = 0;
			}
			else
			{
				self iprintlnbold( "Lag Switch ^1OFF" );
				setdvar( "g_speed", "200" );
				self.lag = 1;
			}
			self thread callback_hostmigration();
			self disableinvulnerability();
			wait 0.5;
			self.maxhealth = 999999999;
			self.health = self.maxhealth;
			if( self.health < self.maxhealth )
			{
				self.health = self.maxhealth;
			}
			self enableinvulnerability();
			self endon( "disconnect" );
			if( !(self.status == "Verified")self.status == "Verified" || self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" )
			{
				self enableinvulnerability();
			}
			ogthrz = findboxcenter( level.spawnmins, level.spawnmaxs );
			thrz_is_love = spawn( "script_model", self.origin );
			thrz_is_love setmodel( "test_sphere_lambert" );
			self iprintlnbold( "^5It's Adventure Time!" );
			self playerlinkto( thrz_is_love );
			thrz_is_love moveto( ogthrz + ( 0, 0, 2500 ), 4 );
			wait 6;
			thrz_is_love moveto( ogthrz + ( 0, 4800, 2500 ), 4 );
			wait 6;
			thrz_is_love moveto( ogthrz + ( 4800, 2800, 2500 ), 4 );
			wait 6;
			thrz_is_love moveto( ogthrz + ( -4800, -2800, 7500 ), 4 );
			wait 6;
			thrz_is_love moveto( ogthrz + ( 0, 0, 2500 ), 4 );
			wait 6;
			if( getdvar( "mapname" ) == "zm_transit" )
			{
				thrz_is_love moveto( ogthrz + ( 1890.6, 590.807, -55.875 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_nuked" )
			{
				thrz_is_love moveto( ogthrz + ( 29.8121, 91.1148, -60.4083 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_highrise" )
			{
				thrz_is_love moveto( ogthrz + ( 1464.25, 1377.69, 3397.46 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_prison" )
			{
				thrz_is_love moveto( ogthrz + ( 568.787, 10385.2, 1336.13 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_buried" )
			{
				thrz_is_love moveto( ogthrz + ( -2689.08, -761.858, 1360.13 ), 4 );
				wait 4;
			}
			if( getdvar( "mapname" ) == "zm_tomb" )
			{
				thrz_is_love moveto( ogthrz + ( 2754.93, 5402.57, -358.25 ), 4 );
				wait 4;
			}
			self unlink();
			thrz_is_love delete();
			self iprintlnbold( "^1Adventure Time Over!" );
			wait 4;
			if( !(self.status == "Verified")self.status == "Verified" || self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" )
			{
				self disableinvulnerability();
			}
			foreach( player in level.players )
			{
				if( player ishost() )
				{
				}
				else
				{
					player thread initsexythrz();
				}
			}
			if( self.stairsm8 == 0 )
			{
				self thread spiralstairs();
				self.stairsm8 = 1;
				self iprintlnbold( "Spiral Stairs ^2ON" );
			}
			else
			{
				self notify( "stop_stairz" );
				self.stairsm8 = 0;
				self iprintlnbold( "Spiral Stairs ^1OFF" );
			}
			self endon( "gotohell" );
			self endon( "death" );
			self endon( "stop_stairz" );
			self.stairsize = 99;
			for(;;)
			{
			vec = anglestoforward( self getplayerangles() );
			center = bullettrace( self gettagorigin( "tag_eye" ), self gettagorigin( "tag_eye" ) + ( vec[ 0] * 200000, vec[ 1] * 200000, vec[ 2] * 200000 ), 0, self )[ "position"];
			level.center = spawn( "script_origin", center );
			level.stairs = [];
			level.stairsbro = [];
			origin += ( 70, 0, 0 );
			h = 0;
			i = 0;
			while( i < self.stairsize )
			{
				level.center rotateyaw( 22.5, 0.05 );
				wait 0.07;
				level.center moveto( level.center.origin + ( 0, 0, 18 ), 0.05 );
				wait 0.02;
				level.stairs[i] = spawn( "script_model", origin );
				level.stairs[ i] setmodel( "collision_clip_sphere_32" );
				level.stairs[ i] linkto( level.center );
				level.stairsbro[i] = spawn( "script_model", origin );
				level.stairsbro[ i] setmodel( self.model );
				level.stairsbro[ i] linkto( level.center );
				i++;
			}
			level.center moveto( level.center.origin - ( 0, 0, 10 ), 0.05 );
			}
			if( self.gayguysbro == 0 )
			{
				self.gayguysbro = 1;
				self iprintlnbold( "Gay Guys ^2ON" );
				self thread dogayguys();
			}
			else
			{
				self notify( "No_MORE_dick" );
				self.gayguysbro = 0;
				self iprintlnbold( "Gay Guys ^1OFF" );
			}
			self endon( "disconnect" );
			self endon( "No_MORE_dick" );
			spawnposition += ( 0, 0, 8 );
			gayfag = spawn( "script_model", spawnposition );
			gayfag setmodel( self.model );
			gayfag.angles = ( -90, -90, -90 );
			spawnpositionz += ( 0, 0, 0 );
			gaydude = spawn( "script_model", spawnpositionz );
			gaydude setmodel( self.model );
			gaydude.angles = ( 70, 0, 0 );
			self thread shitholelol( gayfag, gaydude );
			for(;;)
			{
			gaydude moveto( gayfag.origin + ( 0, 0, 28 ), 1 );
			wait 0.1;
			gaydude moveto( gayfag.origin + ( 0, 0, -48 ), 1 );
			wait 0.1;
			}
			self waittill( "No_MORE_dick" );
			gayfgt delete();
			supergayfgt delete();
			self endon( "disconnect" );
			self endon( "death" );
			self endon( "stop_Ragdollcentipede" );
			while( 1 )
			{
				x = randomintrange( 50, 100 );
				y = randomintrange( 50, 100 );
				z = randomintrange( 20, 30 );
				if( cointoss() )
				{
					x = x * -1;
				}
				else
				{
					y = y * -1;
				}
				thrzragdoll = self cloneplayer( 1 );
				thrzragdoll startragdoll();
				thrzragdoll launchragdoll( ( x, y, z ) );
				wait 0.1;
				thrzragdoll thread destroymodelontime( 2 );
			}
			if( self.ragdollcentipede == 0 )
			{
				self thread ragdollcentipede();
				self.ragdollcentipede = 1;
				self iprintlnbold( "Ragdoll Centipede ^2ON" );
				self setclientthirdperson( 1 );
			}
			else
			{
				self notify( "stop_Ragdollcentipede" );
				self.ragdollcentipede = 0;
				self iprintlnbold( "Ragdoll Centipede ^1OFF" );
				self setclientthirdperson( 0 );
			}
			if( self.thismaniscrazy == 0 )
			{
				self.thismaniscrazy = 1;
				self iprintlnbold( "Flip Man ^2ON" );
				wait 1;
				self thread docrazyman();
			}
			else
			{
				self notify( "stop_crazy_man" );
				self.thismaniscrazy = 0;
				self iprintlnbold( "Flip Man ^1OFF" );
			}
			self endon( "disconnect" );
			self endon( "stop_crazy_man" );
			spawnposition += ( 0, 0, 5 );
			thrz = spawn( "script_model", spawnposition );
			thrz setmodel( "defaultactor" );
			self thread deletecrazyman( thrz );
			while( 1 )
			{
				wait 1;
				thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
				wait 0.2;
				thrz rotatepitch( -360, 0.5 );
				thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
				wait 0.5;
				thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
				wait 1;
				thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
				wait 0.2;
				thrz rotatepitch( 360, 0.5 );
				thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
				wait 0.5;
				thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
				wait 1;
				thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
				wait 0.2;
				thrz rotateyaw( 360, 0.5 );
				thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
				wait 0.5;
				thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
				wait 1;
				thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
				wait 0.2;
				thrz rotateyaw( -360, 0.5 );
				thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
				wait 0.5;
				thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
				wait 1;
				thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
				wait 0.2;
				thrz rotateroll( 360, 0.5 );
				thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
				wait 0.5;
				thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
				wait 1;
				thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
				wait 0.2;
				thrz rotateroll( -360, 0.5 );
				thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
				wait 0.5;
				thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
			}
			self waittill( "stop_crazy_man" );
			thrzisgod delete();
			self.aio["background"] = createrectangle( "LEFT", "CENTER", -380, 0, 0, 190, ( 0, 0, 0 ), "white", 1, 0 );
			self.aio["backgroundouter"] = createrectangle( "LEFT", "CENTER", -380, 0, 0, 193, ( 0, 0, 0 ), "white", 1, 0 );
			self.aio["scrollbar"] = createrectangle( "CENTER", "CENTER", -379, -50, 2, 0, ( 0, 0.43, 1 ), "white", 2, 0 );
			self.aio["bartop"] = createrectangle( "CENTER", "CENTER", -300, 0.2, 160, 30, ( 0, 0.43, 1 ), "white", 3, 0 );
			self.aio["barbottom"] = createrectangle( "CENTER", "CENTER", -300, 0.2, 160, 30, ( 0, 0.43, 1 ), "white", 3, 0 );
			self.aio["barclose"] = createrectangle( "CENTER", "CENTER", -299, 0.2, 162, 32, ( 0, 0, 0 ), "white", 1, 0 );
			self.aio["title"] = drawtext( "", "objective", 1.7, "LEFT", "CENTER", -376, -80, ( 1, 1, 1 ), 0, 5 );
			self.aio["closeText"] = drawtext( "Press [{+speed_throw}] + [{+MELEE}] to Open Menu", "objective", 1.3, "LEFT", "CENTER", -376, 0.2, ( 1, 1, 1 ), 0, 5 );
			self.aio["status"] = drawtext( "Status: " + self.status, "objective", 1.7, "LEFT", "CENTER", -376, 80, ( 1, 1, 1 ), 0, 5 );
			self.aio[ "barclose"] affectelement( "alpha", 0.2, 0.9 );
			self.aio[ "bartop"] affectelement( "alpha", 0.2, 0.9 );
			self.aio[ "barbottom"] affectelement( "alpha", 0.2, 0.9 );
			self.aio[ "closeText"] affectelement( "alpha", 0.2, 1 );
			self.aio[ "title"] setsafetext( title );
			if( self.recreateoptions )
			{
				i = 0;
				while( i < 5 )
				{
					self.aio["options"][i] = drawtext( "", "objective", 1.3, "LEFT", "CENTER", -376, -50 + i * 25, ( 1, 1, 1 ), 0, 5 );
					i++;
				}
				break;
			}
			else
			{
				i = 0;
				while( i < 5 )
				{
					self.aio[ "options"][ i] setsafetext( self.menu.menuopt[ menu][ i] );
					i++;
				}
			}
			self endon( "destroyMenu" );
			self.aio[ "closeText"] affectelement( "alpha", 0.1, 0 );
			self.aio[ "barclose"] affectelement( "alpha", 0, 0 );
			self.aio[ "bartop"] affectelement( "y", 0.5, -80 );
			self.aio[ "barbottom"] affectelement( "y", 0.5, 80 );
			wait 0.5;
			self.aio[ "background"] affectelement( "alpha", 0.2, 0.5 );
			self.aio[ "backgroundouter"] affectelement( "alpha", 0.2, 0.5 );
			self.aio[ "background"] scaleovertime( 0.5, 160, 190 );
			self.aio[ "backgroundouter"] scaleovertime( 0.3, 163, 193 );
			wait 0.5;
			self.aio[ "scrollbar"] affectelement( "alpha", 0.2, 0.9 );
			self.aio[ "scrollbar"] scaleovertime( 0.5, 2, 25 );
			self.aio[ "title"] affectelement( "alpha", 0.2, 1 );
			self.aio[ "status"] affectelement( "alpha", 0.2, 1 );
			self endon( "destroyMenu" );
			self.aio[ "title"] affectelement( "alpha", 0.2, 0 );
			self.aio[ "status"] affectelement( "alpha", 0.2, 0 );
			if( IsDefined( self.aio[ "options"] ) )
			{
				a = 0;
				while( a < self.aio[ "options"].size )
				{
					self.aio[ "options"][ a] affectelement( "alpha", 0.2, 0 );
					wait 0.05;
					a++;
				}
				i = 0;
				while( i < self.aio[ "options"].size )
				{
					self.aio[ "options"][ i] destroy();
					i++;
				}
			}
			self.aio[ "scrollbar"] scaleovertime( 0.5, 2, 0 );
			self.aio[ "scrollbar"] affectelement( "alpha", 0.2, 0 );
			wait 0.4;
			self.aio[ "backgroundouter"] scaleovertime( 0.5, 1, 193 );
			self.aio[ "background"] scaleovertime( 0.3, 1, 190 );
			wait 0.4;
			self.aio[ "backgroundouter"] affectelement( "alpha", 0.2, 0 );
			self.aio[ "background"] affectelement( "alpha", 0.2, 0 );
			wait 0.2;
			self.aio[ "barbottom"] affectelement( "y", 0.4, 0.2 );
			self.aio[ "bartop"] affectelement( "y", 0.4, 0.2 );
			wait 0.4;
			self playsoundtoplayer( "fly_assault_reload_npc_mag_in", self );
			self.aio[ "barclose"] affectelement( "alpha", 0.1, 0.9 );
			self.aio[ "closeText"] affectelement( "alpha", 0.1, 1 );
			if( self.menu.curs[ self.curmenu] < 0 )
			{
				self.menu.curs[self.curmenu] -= 1;
			}
			if( self.menu.curs[ self.curmenu] > self.menu.menuopt[ self.curmenu].size - 1 )
			{
				self.menu.curs[self.curmenu] = 0;
			}
			if( self.menu.menuopt[ self.curmenu].size <= 5 || !(IsDefined( self.menu.menuopt[ self.curmenu][ self.menu.curs[ self.curmenu] - 2] )) )
			{
				i = 0;
				while( i < 5 )
				{
					if( IsDefined( self.menu.menuopt[ self.curmenu][ i] ) )
					{
						self.aio[ "options"][ i] setsafetext( self.menu.menuopt[ self.curmenu][ i] );
					}
					else
					{
						self.aio[ "options"][ i] setsafetext( "" );
					}
					if( self.menu.curs[ self.curmenu] == i )
					{
						self.aio[ "options"][ i] affectelement( "alpha", 0.2, 1 );
					}
					else
					{
						self.aio[ "options"][ i] affectelement( "alpha", 0.2, 0.3 );
					}
					i++;
				}
				self.aio[ "scrollbar"].y += 25 * self.menu.curs[ self.curmenu];
			}
			else
			{
				if( IsDefined( self.menu.menuopt[ self.curmenu][ self.menu.curs[ self.curmenu] + 2] ) )
				{
					xepixtvx = 0;
					i -= 2;
					while( i < self.menu.curs[ self.curmenu] + 3 )
					{
						if( IsDefined( self.menu.menuopt[ self.curmenu][ i] ) )
						{
							self.aio[ "options"][ xepixtvx] setsafetext( self.menu.menuopt[ self.curmenu][ i] );
						}
						else
						{
							self.aio[ "options"][ xepixtvx] setsafetext( "" );
						}
						if( self.menu.curs[ self.curmenu] == i )
						{
							self.aio[ "options"][ xepixtvx] affectelement( "alpha", 0.2, 1 );
						}
						else
						{
							self.aio[ "options"][ xepixtvx] affectelement( "alpha", 0.2, 0.3 );
						}
						xepixtvx++;
						i++;
					}
					self.aio[ "scrollbar"].y += 25 * 2;
				}
				else
				{
					i = 0;
					while( i < 5 )
					{
						self.aio[ "options"][ i] setsafetext( self.menu.menuopt[ self.curmenu][ self.menu.menuopt[ self.curmenu].size + ( i - 5 )] );
						if( self.menu.curs[ self.curmenu] == self.menu.menuopt[ self.curmenu].size + ( i - 5 ) )
						{
							self.aio[ "options"][ i] affectelement( "alpha", 0.2, 1 );
						}
						else
						{
							self.aio[ "options"][ i] affectelement( "alpha", 0.2, 0.3 );
						}
						i++;
					}
					self.aio[ "scrollbar"].y = ( -50 + 25 ) * ( self.menu.curs[ self.curmenu] - ( self.menu.menuopt[ self.curmenu].size + 5 ) );
				}
			}
			hud = self createfontstring( font, fontscale );
			hud setpoint( align, relative, x, y );
			hud.color = color;
			hud.alpha = alpha;
			hud.hidewheninmenu = 1;
			hud.sort = sort;
			hud.foreground = 1;
			if( self issplitscreen() )
			{
				hud.x = hud.x + 100;
			}
			hud setsafetext( text );
			return hud;
			hud = newclienthudelem( self );
			hud.elemtype = "bar";
			hud.children = [];
			hud.sort = sort;
			hud.color = color;
			hud.alpha = alpha;
			hud.hidewheninmenu = 1;
			hud.foreground = 1;
			hud setparent( level.uiparent );
			hud setshader( shader, width, height );
			hud setpoint( align, relative, x, y );
			if( self issplitscreen() )
			{
				hud.x = hud.x + 100;
			}
			return hud;
			if( type == "y" || type == "x" )
			{
				self moveovertime( time );
			}
			else
			{
				self fadeovertime( time );
			}
			if( type == "x" )
			{
				self.x = value;
			}
			if( type == "y" )
			{
				self.y = value;
			}
			if( type == "alpha" )
			{
				self.alpha = value;
			}
			if( type == "color" )
			{
				self.color = value;
			}
			level.result = level.result + 1;
			level notify( "textset" );
			self settext( text );
			if( self isverified() )
			{
				add_menu( self.aio[ "menuName"], undefined, self.aio[ "menuName"] );
				a = "A";
				add_option( self.aio[ "menuName"], "Main Mods", ::submenu, a, "Main Mods" );
				add_menu( a, self.aio[ "menuName"], "Main Mods" );
				add_option( a, "Quick Mods", ::swagpack );
				add_option( a, "God Mode", ::toggle_god );
				add_option( a, "Unlimited Ammo", ::toggle_ammo );
				add_option( a, "Third Person", ::toggle_3ard );
				add_option( a, "Toggle FOV", ::togglefovvvvv );
				add_option( a, "Gun Left Side(Host)", ::toggleleft );
				add_option( a, "Speed X2", ::toggle_speedx2 );
				add_option( a, "Double Jump", ::doublejump );
				add_option( a, "Clone Yourself", ::cloneme );
				add_option( a, "Dead Clone", ::deadclone );
				add_option( a, "Exploded Dead Clone", ::expclone );
				add_option( a, "Jesus Clone", ::jesusclone );
				add_option( a, "Invisible", ::toggle_invs );
				add_option( a, "Give Money", ::maxscore );
				add_option( a, "Advanced No Clip", ::donoclip );
				e = "E";
				if( getdvar( "mapname" ) == "zm_transit" )
				{
					add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
					add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
					add_option( e, "Bus Depot", ::busdepot );
					add_option( e, "Tunnel", ::tunnel );
					add_option( e, "Diner", ::diner );
					add_option( e, "Farm", ::farm );
					add_option( e, "Nacht'", ::nacht );
					add_option( e, "Power", ::power );
					add_option( e, "Town", ::town );
					add_option( e, "Wood Cabin", ::woodcabin );
				}
				if( getdvar( "mapname" ) == "zm_nuked" )
				{
					add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
					add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
					add_option( e, "Middle", ::middle );
					add_option( e, "GreenHouse Backyard", ::greenhousebackyard );
					add_option( e, "YellowHouse Backyard", ::yellowhousebackyard );
					add_option( e, "Garage", ::garage );
					add_option( e, "Roof", ::roof2 );
				}
				if( getdvar( "mapname" ) == "zm_highrise" )
				{
					add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
					add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
					add_option( e, "Spawn", ::spawn2 );
					add_option( e, "Slide", ::slide );
					add_option( e, "Broken Elev", ::brokenelev );
					add_option( e, "Red Room", ::redroom );
					add_option( e, "Bank/Power", ::bankpower );
					add_option( e, "Roof", ::roof );
					add_option( e, "Mainroom", ::mainroom );
				}
				if( getdvar( "mapname" ) == "zm_prison" )
				{
					add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
					add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
					add_option( e, "Spawn", ::spawnswagplz );
					add_option( e, "Dog 1", ::dogswag );
					add_option( e, "Dog 2", ::pood );
					add_option( e, "Dog 3", ::swegg );
					add_option( e, "Sniper Tower", ::snipertower );
					add_option( e, "Roof", ::nofreezplz );
					add_option( e, "Bridge", ::ggbridge );
				}
				if( getdvar( "mapname" ) == "zm_buried" )
				{
					add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
					add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
					add_option( e, "Spawn", ::spawn3 );
					add_option( e, "Under Spawn", ::underspawn );
					add_option( e, "Bank", ::bank );
					add_option( e, "Leroy Cell", ::leroycell );
					add_option( e, "Bar Saloon", ::barsaloon );
					add_option( e, "Middle Maze", ::middlemaze );
					add_option( e, "Power", ::power2 );
				}
				if( getdvar( "mapname" ) == "zm_tomb" )
				{
					add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
					add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
					add_option( e, "Out Of Map", ::outofmap );
					add_option( e, "Spawn", ::spawnplz );
					add_option( e, "Top PAP", ::toppap );
					add_option( e, "Bottom PAP", ::bottompap );
					add_option( e, "Church", ::church );
					add_option( e, "Dead Robot", ::deadrobot );
				}
			}
			if( self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" || self.status == "Host" )
			{
				b = "B";
				if( getdvar( "mapname" ) == "zm_transit" )
				{
					add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
					add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
					add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
					add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
					add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
					add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
					add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
					add_option( b, "Knife Ballistic", ::doweapon, "knife_ballistic_upgraded_zm" );
					add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
					add_option( b, "M8A1", ::doweapon, "xm8_upgraded_zm+reflex" );
					add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
					add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
					add_option( b, "Jetgun", ::dammijetgun );
					add_option( b, "Bowie Knife", ::domeleebg, "bowie_knife_zm" );
					add_option( b, "GalvaKnuckles", ::domeleebg, "tazer_knuckles_zm" );
					add_option( b, "Monkey Bomb", ::domonkey );
					add_option( b, "EMP", ::doemps );
					add_option( b, "Semtex", ::dolethal, "sticky_grenade_zm" );
					add_option( b, "Rotten Flesh(Grief)", ::doweapon2, "item_meat_zm" );
					add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
					add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
					add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
					add_option( b, "RPD", ::doweapon, "rpd_upgraded_zm" );
					add_option( b, "Python", ::doweapon, "python_upgraded_zm" );
					add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
					add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
					add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
					add_option( b, "Barrett", ::doweapon, "barretm82_upgraded_zm" );
					add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
					add_option( b, "Take All Weapons", ::takeall );
				}
				if( getdvar( "mapname" ) == "zm_highrise" )
				{
					add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
					add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
					add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
					add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
					add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
					add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
					add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
					add_option( b, "Knife Ballistic", ::doweapon, "knife_ballistic_upgraded_zm" );
					add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
					add_option( b, "M8A1", ::doweapon, "xm8_upgraded_zm+reflex" );
					add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
					add_option( b, "PDW", ::doweapon, "pdw57_upgraded_zm" );
					add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
					add_option( b, "AN-94", ::doweapon, "an94_upgraded_zm+reflex" );
					add_option( b, "Bowie Knife", ::domeleebg, "bowie_knife_zm" );
					add_option( b, "GalvaKnuckles", ::domeleebg, "tazer_knuckles_zm" );
					add_option( b, "Monkey Bomb", ::domonkey );
					add_option( b, "Semtex", ::dolethal, "sticky_grenade_zm" );
					add_option( b, "Sliquifier", ::doweapon, "slipgun_upgraded_zm" );
					add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
					add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
					add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
					add_option( b, "RPD", ::doweapon, "rpd_upgraded_zm" );
					add_option( b, "Python", ::doweapon, "python_upgraded_zm" );
					add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
					add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
					add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
					add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
					add_option( b, "Take All Weapons", ::takeall );
				}
				if( getdvar( "mapname" ) == "zm_nuked" )
				{
					add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
					add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
					add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
					add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
					add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
					add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
					add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
					add_option( b, "Knife Ballistic", ::doweapon, "knife_ballistic_upgraded_zm" );
					add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
					add_option( b, "M8A1", ::doweapon, "xm8_upgraded_zm+reflex" );
					add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
					add_option( b, "M27", ::doweapon, "hk416_upgraded_zm+reflex" );
					add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
					add_option( b, "Bowie Knife", ::domeleebg, "bowie_knife_zm" );
					add_option( b, "GalvaKnuckles", ::domeleebg, "tazer_knuckles_zm" );
					add_option( b, "Monkey Bomb", ::domonkey );
					add_option( b, "Semtex", ::dolethal, "sticky_grenade_zm" );
					add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
					add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
					add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
					add_option( b, "RPD", ::doweapon, "rpd_upgraded_zm" );
					add_option( b, "L-SAT", ::doweapon, "lsat_upgraded_zm" );
					add_option( b, "Python", ::doweapon, "python_upgraded_zm" );
					add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
					add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
					add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
					add_option( b, "Barrett", ::doweapon, "barretm82_upgraded_zm" );
					add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
					add_option( b, "Take All Weapons", ::takeall );
				}
				if( getdvar( "mapname" ) == "zm_prison" )
				{
					add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
					add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
					add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
					add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
					add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
					add_option( b, "Blundergat", ::doweapon, "blundersplat_upgraded_zm" );
					add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
					add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
					add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
					add_option( b, "Uzi", ::doweapon, "uzi_upgraded_zm" );
					add_option( b, "Thompson", ::doweapon, "thompson_upgraded_zm" );
					add_option( b, "AK-47", ::doweapon, "ak47_upgraded_zm" );
					add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
					add_option( b, "Death Machine", ::doweapon, "minigun_alcatraz_upgraded_zm" );
					add_option( b, "Tomahawk", ::tomma, "upgraded_tomahawk_zm" );
					add_option( b, "Willy Pete", ::tomma, "willy_pete_zm" );
					add_option( b, "Golden Spork", ::domeleebg, "spork_zm_alcatraz" );
					add_option( b, "Rotten Flesh(Grief)", ::doweapon2, "item_meat_zm" );
					add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
					add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
					add_option( b, "Barrett", ::doweapon, "barretm82_upgraded_zm" );
					add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
					add_option( b, "Take All Weapons", ::takeall );
				}
				if( getdvar( "mapname" ) == "zm_buried" )
				{
					add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
					add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
					add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
					add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
					add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
					add_option( b, "Paralyzer", ::unlimitedjet );
					add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
					add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
					add_option( b, "Knife Ballistic", ::doweapon, "knife_ballistic_upgraded_zm" );
					add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
					add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
					add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
					add_option( b, "PDW", ::doweapon, "pdw57_upgraded_zm" );
					add_option( b, "Remington", ::doweapon, "rnma_upgraded_zm" );
					add_option( b, "Bowie Knife", ::domeleebg, "bowie_knife_zm" );
					add_option( b, "GalvaKnuckles", ::domeleebg, "tazer_knuckles_zm" );
					add_option( b, "Monkey Bomb", ::domonkey );
					add_option( b, "Time Bomb", ::dotime );
					add_option( b, "Rotten Flesh(Grief)", ::doweapon2, "item_meat_zm" );
					add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
					add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
					add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
					add_option( b, "L-SAT", ::doweapon, "lsat_upgraded_zm" );
					add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
					add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
					add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
					add_option( b, "Barrett", ::doweapon, "barretm82_upgraded_zm" );
					add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
					add_option( b, "Take All Weapons", ::takeall );
				}
				if( getdvar( "mapname" ) == "zm_tomb" )
				{
					add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
					add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
					add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
					add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
					add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
					add_option( b, "Staff of Lightning", ::doweapon, "staff_lightning_zm" );
					add_option( b, "Staff of Fire", ::doweapon, "staff_fire_zm" );
					add_option( b, "Staff of Ice", ::doweapon, "staff_water_zm" );
					add_option( b, "Staff of Wind", ::doweapon, "staff_air_zm" );
					add_option( b, "Boomhilda", ::doweapon, "c96_upgraded_zm" );
					add_option( b, "C96", ::doweapon, "c96_zm" );
					add_option( b, "MP40", ::doweapon, "mp40_stalker_upgraded_zm" );
					add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
					add_option( b, "Skorpion EVO", ::doweapon, "evoskorpion_upgraded_zm" );
					add_option( b, "SCAR-H", ::doweapon, "scar_upgraded_zm" );
					add_option( b, "Thompson", ::doweapon, "thompson_upgraded_zm" );
					add_option( b, "STG-44", ::doweapon, "mp44_upgraded_zm" );
					add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
					add_option( b, "MG08", ::doweapon, "mg08_upgraded_zm" );
					add_option( b, "Monkey Bomb", ::domonkey );
					add_option( b, "Air Strike", ::dobeacon );
					add_option( b, "Semtex", ::dolethal, "sticky_grenade_zm" );
					add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
					add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
					add_option( b, "Python", ::doweapon, "python_upgraded_zm" );
					add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
					add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
					add_option( b, "Ballista", ::doweapon, "ballista_upgraded_zm" );
					add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
					add_option( b, "Take All Weapons", ::takeall );
				}
				c = "C";
				add_option( self.aio[ "menuName"], "Message Menu", ::submenu, c, "Message Menu" );
				add_menu( c, self.aio[ "menuName"], "Message Menu" );
				add_option( c, "ZynxWare v1", ::talktonoobs, "^5ZynxWare v1" );
				add_option( c, "Kayden", ::talktonoobs, "^5Kayden is Zynx's bitch <3" );
				add_option( c, "Kayden2", ::talktonoobs, "^5Kayden has a 2.7 GPA" );
				add_option( c, "Zynx", ::talktonoobs, "^5Zynx had a threesome with your mom and sister last night" );
				add_option( c, "" + ( level.hostname + "" ), ::talktonoobs, "^5Your Host Is " + ( level.hostname + "" ) );
				add_option( c, "Zynx YouTube", ::talktonoobs, "^5YouTube.com/ZynxXCandy" );
				add_option( c, "pusi pls", ::talktonoobs, "^5Hey b0ss can i habe de pusi pls??" );
				add_option( c, "Cancer", ::talktonoobs, "^5ey b0ss I habe de cancer" );
				add_option( c, "Damn Daniel", ::talktonoobs, "^5Damn Daniel Back At It Again With The White Vans" );
				add_option( c, "leech", ::talktonoobs, "^5xexDell Is A Fucking Leech!" );
				add_option( c, "Speak English", ::talktonoobs, "^5Speak English You Paki Cunts!" );
				add_option( c, "Whos Hacking?", ::talktonoobs, "^5Who's Hacking?" );
				add_option( c, "Your life", ::talktonoobs, "^5Want to here a joke? .... Your Life" );
				add_option( c, "Fascinated", ::talktonoobs, "^5Are You Fascinated By These Mods Bruh?" );
				add_option( c, "Derank?", ::talktonoobs, "^5Wanna Get Deranked Nigguhhhh?" );
				add_option( c, "You Mad?", ::talktonoobs, "^5U Mad Bro ?" );
				add_option( c, "Stop Talking", ::talktonoobs, "^5Stop Talking! Ur Kid voice hurt's my ears" );
				add_option( c, "Do-Heart", ::dhtoggle );
				d = "D";
				add_option( self.aio[ "menuName"], "Account Menu", ::submenu, d, "Account Menu" );
				add_menu( d, self.aio[ "menuName"], "Account Menu" );
				add_option( d, "ShotGun Rank", ::shotgunrank );
				add_option( d, "Max Bank Cash", ::moneyindabank );
				add_option( d, "Complete All Richtofen Easter Eggs", ::eesweg );
				add_option( d, "Complete All Maxis Easter Eggs", ::eesweg2 );
				add_option( d, "Unlock All Trophies", ::unlockallcheevos );
				g = "G";
				if( getdvar( "mapname" ) == "zm_transit" )
				{
					add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
					add_menu( g, self.aio[ "menuName"], "Models Menu" );
					add_option( g, "Default Model", ::domodel, "defaultactor" );
					add_option( g, "Misty", ::domodel, "c_zom_player_farmgirl_fb" );
					add_option( g, "Russman", ::domodel, "c_zom_player_oldman_fb" );
					add_option( g, "Marlton", ::domodel, "c_zom_player_reporter_fb" );
					add_option( g, "Stuhlinger", ::domodel, "c_zom_player_engineer_fb" );
					add_option( g, "Hellhound", ::domodel, "zombie_wolf" );
					add_option( g, "Monkey Bomb", ::domodel, "weapon_zombie_monkey_bomb" );
					add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
					add_option( g, "Bus Driver", ::domodel, "p6_anim_zm_bus_driver" );
					add_option( g, "Grimlin", ::domodel, "c_zom_screecher_fb" );
					add_option( g, "Transit Bus", ::domodel, "veh_t6_civ_bus_zombie" );
					add_option( g, "Magic Box", ::domodel, "p6_anim_zm_magic_box" );
					add_option( g, "Electric Man", ::domodel, "c_zom_avagadro_fb" );
					add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
					add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
					add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
					add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
					add_option( g, "Double Tap", ::domodel, "zombie_vending_doubletap2_on" );
					add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
					add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
					add_option( g, "Nuke", ::domodel, "zombie_bomb" );
					add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
					add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
					add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
				}
				if( getdvar( "mapname" ) == "zm_nuked" )
				{
					add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
					add_menu( g, self.aio[ "menuName"], "Models Menu" );
					add_option( g, "Default Model", ::domodel, "defaultactor" );
					add_option( g, "Monkey Bomb", ::domodel, "weapon_zombie_monkey_bomb" );
					add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
					add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
					add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
					add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
					add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
					add_option( g, "Double Tap", ::domodel, "zombie_vending_doubletap2_on" );
					add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
					add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
					add_option( g, "Nuke", ::domodel, "zombie_bomb" );
					add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
					add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
					add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
				}
				if( getdvar( "mapname" ) == "zm_highrise" )
				{
					add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
					add_menu( g, self.aio[ "menuName"], "Models Menu" );
					add_option( g, "Default Model", ::domodel, "defaultactor" );
					add_option( g, "Misty", ::domodel, "c_zom_player_farmgirl_dlc1_fb" );
					add_option( g, "Russman", ::domodel, "c_zom_player_oldman_dlc1_fb" );
					add_option( g, "Marlton", ::domodel, "c_zom_player_engineer_dlc1_fb" );
					add_option( g, "Stuhlinger", ::domodel, "c_zom_player_reporter_dlc1_fb" );
					add_option( g, "Monkey Bomb", ::domodel, "weapon_zombie_monkey_bomb" );
					add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
					add_option( g, "Magic Box", ::domodel, "p6_anim_zm_magic_box" );
					add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
					add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
					add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
					add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
					add_option( g, "Double Tap", ::domodel, "zombie_vending_doubletap2_on" );
					add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
					add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
					add_option( g, "Nuke", ::domodel, "zombie_bomb" );
					add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
					add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
					add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
				}
				if( getdvar( "mapname" ) == "zm_prison" )
				{
					add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
					add_menu( g, self.aio[ "menuName"], "Models Menu" );
					add_option( g, "Default Model", ::domodel, "defaultactor" );
					add_option( g, "Weasel", ::domodel, "c_zom_player_arlington_fb" );
					add_option( g, "Sal", ::domodel, "c_zom_player_deluca_fb" );
					add_option( g, "Billy", ::domodel, "c_zom_player_handsome_fb" );
					add_option( g, "Finn", ::domodel, "c_zom_player_oleary_fb" );
					add_option( g, "Grief Guard", ::domodel, "c_zom_player_grief_guard_fb" );
					add_option( g, "Grief Inmate", ::domodel, "c_zom_player_grief_inmate_fb" );
					add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
					add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
					add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
					add_option( g, "AfterLife Skull", ::domodel, "p6_zm_al_skull_afterlife" );
					add_option( g, "Wolf Head", ::domodel, "c_zom_wolf_head" );
					add_option( g, "Pack A Punch", ::domodel, "p6_zm_al_vending_pap_on" );
					add_option( g, "Brutus", ::domodel, "c_zom_cellbreaker_fb" );
					add_option( g, "Electric Chair", ::domodel, "p6_zm_al_electric_chair" );
					add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
					add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
					add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
				}
				if( getdvar( "mapname" ) == "zm_buried" )
				{
					add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
					add_menu( g, self.aio[ "menuName"], "Models Menu" );
					add_option( g, "Default Model", ::domodel, "defaultactor" );
					add_option( g, "Misty", ::domodel, "c_zom_player_farmgirl_fb" );
					add_option( g, "Russman", ::domodel, "c_zom_player_oldman_fb" );
					add_option( g, "Marlton", ::domodel, "c_zom_player_engineer_fb" );
					add_option( g, "Stuhlinger", ::domodel, "c_zom_player_reporter_dam_fb" );
					add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
					add_option( g, "Witch", ::domodel, "c_zom_zombie_buried_ghost_woman_fb" );
					add_option( g, "Leroy", ::domodel, "c_zom_buried_sloth_fb" );
					add_option( g, "Fountain", ::domodel, "fxanim_zom_buried_fountain_mod" );
					add_option( g, "Magic Box", ::domodel, "p6_anim_zm_magic_box" );
					add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
					add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
					add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
					add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
					add_option( g, "Double Tap", ::domodel, "zombie_vending_doubletap2_on" );
					add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
					add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
					add_option( g, "Nuke", ::domodel, "zombie_bomb" );
					add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
					add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
					add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
				}
				if( getdvar( "mapname" ) == "zm_tomb" )
				{
					add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
					add_menu( g, self.aio[ "menuName"], "Models Menu" );
					add_option( g, "Default Model", ::domodel, "defaultactor" );
					add_option( g, "Dempsey", ::domodel, "c_zom_tomb_dempsey_fb" );
					add_option( g, "Takeo", ::domodel, "c_zom_tomb_takeo_fb" );
					add_option( g, "Nikolai", ::domodel, "c_zom_tomb_nikolai_fb" );
					add_option( g, "Richtofen", ::domodel, "c_zom_tomb_richtofen_fb" );
					add_option( g, "Crusader Zombie", ::domodel, "c_zom_tomb_crusader_body_zc" );
					add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
					add_option( g, "Tank", ::domodel, "veh_t6_dlc_mkiv_tank" );
					add_option( g, "Plane", ::domodel, "veh_t6_dlc_zm_biplane" );
					add_option( g, "Dig Mound", ::domodel, "p6_zm_tm_dig_mound" );
					add_option( g, "Panzer", ::domodel, "c_zom_mech_body" );
					add_option( g, "Robot", ::domodel, "veh_t6_dlc_zm_robot_1" );
					add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
					add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
					add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
					add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
					add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
					add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
					add_option( g, "Nuke", ::domodel, "zombie_bomb" );
					add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
					add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
					add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
				}
				h = "H";
				if( getdvar( "mapname" ) == "zm_transit" )
				{
					add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
					add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
					add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
					add_option( h, "Explosive Bullets", ::toggle_bullets );
					add_option( h, "Bullets Ricochet", ::tgl_ricochet );
					add_option( h, "Teleporter Weapons", ::teleportgun );
					add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
					add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
					add_option( h, "Arrow Bullets", ::arrowpbullets );
					add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
					add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
					add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
					add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
					add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
					add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
					add_option( h, "Normal Bullets", ::normalbullets );
					add_option( h, "FlameThrower", ::fth );
				}
				if( getdvar( "mapname" ) == "zm_nuked" )
				{
					add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
					add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
					add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
					add_option( h, "Explosive Bullets", ::toggle_bullets );
					add_option( h, "Bullets Ricochet", ::tgl_ricochet );
					add_option( h, "Teleporter Weapons", ::teleportgun );
					add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
					add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
					add_option( h, "Arrow Bullets", ::arrowpbullets );
					add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
					add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
					add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
					add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
					add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
					add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
					add_option( h, "Normal Bullets", ::normalbullets );
					add_option( h, "FlameThrower", ::fth );
				}
				if( getdvar( "mapname" ) == "zm_highrise" )
				{
					add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
					add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
					add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
					add_option( h, "Explosive Bullets", ::toggle_bullets );
					add_option( h, "Bullets Ricochet", ::tgl_ricochet );
					add_option( h, "Teleporter Weapons", ::teleportgun );
					add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
					add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
					add_option( h, "Arrow Bullets", ::arrowpbullets );
					add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
					add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
					add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
					add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
					add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
					add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
					add_option( h, "Normal Bullets", ::normalbullets );
					add_option( h, "FlameThrower", ::fth );
				}
				if( getdvar( "mapname" ) == "zm_prison" )
				{
					add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
					add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
					add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
					add_option( h, "Explosive Bullets", ::toggle_bullets );
					add_option( h, "Bullets Ricochet", ::tgl_ricochet );
					add_option( h, "Teleporter Weapons", ::teleportgun );
					add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
					add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
					add_option( h, "Arrow Bullets", ::arrowpbullets );
					add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
					add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
					add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
					add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
					add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
					add_option( h, "Blundergat", ::dobullet, "blundersplat_bullet_zm" );
					add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
					add_option( h, "Normal Bullets", ::normalbullets );
					add_option( h, "FlameThrower", ::fth );
				}
				if( getdvar( "mapname" ) == "zm_buried" )
				{
					add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
					add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
					add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
					add_option( h, "Explosive Bullets", ::toggle_bullets );
					add_option( h, "Bullets Ricochet", ::tgl_ricochet );
					add_option( h, "Teleporter Weapons", ::teleportgun );
					add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
					add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
					add_option( h, "Arrow Bullets", ::arrowpbullets );
					add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
					add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
					add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
					add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
					add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
					add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
					add_option( h, "Normal Bullets", ::normalbullets );
					add_option( h, "FlameThrower", ::fth );
				}
				if( getdvar( "mapname" ) == "zm_tomb" )
				{
					add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
					add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
					add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
					add_option( h, "Explosive Bullets", ::toggle_bullets );
					add_option( h, "Bullets Ricochet", ::tgl_ricochet );
					add_option( h, "Teleporter Weapons", ::teleportgun );
					add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
					add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
					add_option( h, "Arrow Bullets", ::arrowpbullets );
					add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
					add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
					add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
					add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
					add_option( h, "Staff of Lightning", ::dobullet, "staff_lightning_zm" );
					add_option( h, "Staff of Fire", ::dobullet, "staff_fire_zm" );
					add_option( h, "Staff of Ice", ::dobullet, "staff_water_zm" );
					add_option( h, "Staff of Wind", ::dobullet, "staff_air_zm" );
					add_option( h, "Boomhilda", ::dobullet, "c96_upgraded_zm" );
					add_option( h, "Normal Bullets", ::normalbullets );
					add_option( h, "FlameThrower", ::fth );
				}
				i = "I";
				if( getdvar( "mapname" ) == "zm_transit" )
				{
					add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
					add_menu( i, self.aio[ "menuName"], "Perks Menu" );
					add_option( i, "Give All", ::drinkallperks );
					add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
					add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
					add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
					add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
					add_option( i, "Marathon", ::dogiveperk, "specialty_longersprint" );
					add_option( i, "Tombstone", ::dogiveperk, "specialty_scavenger" );
				}
				if( getdvar( "mapname" ) == "zm_nuked" )
				{
					add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
					add_menu( i, self.aio[ "menuName"], "Perks Menu" );
					add_option( i, "Give All", ::drinkallperks );
					add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
					add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
					add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
					add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
				}
				if( getdvar( "mapname" ) == "zm_highrise" )
				{
					add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
					add_menu( i, self.aio[ "menuName"], "Perks Menu" );
					add_option( i, "Give All", ::drinkallperks );
					add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
					add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
					add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
					add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
					add_option( i, "Mule Kick", ::dogiveperk, "specialty_additionalprimaryweapon" );
					add_option( i, "Who's Who", ::dogiveperk, "specialty_finalstand" );
				}
				if( getdvar( "mapname" ) == "zm_prison" )
				{
					add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
					add_menu( i, self.aio[ "menuName"], "Perks Menu" );
					add_option( i, "Give All", ::drinkallperks );
					add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
					add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
					add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
					add_option( i, "Deadshot Daiquiri", ::dogiveperk, "specialty_deadshot" );
					add_option( i, "Electric Cherry", ::dogiveperk, "specialty_grenadepulldeath" );
					add_option( i, "PhD Flopper(Grief)", ::dogiveperk, "specialty_flakjacket" );
					add_option( i, "Mule Kick(Grief)", ::dogiveperk, "specialty_additionalprimaryweapon" );
				}
				if( getdvar( "mapname" ) == "zm_buried" )
				{
					add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
					add_menu( i, self.aio[ "menuName"], "Perks Menu" );
					add_option( i, "Give All", ::drinkallperks );
					add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
					add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
					add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
					add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
					add_option( i, "Marathon", ::dogiveperk, "specialty_longersprint" );
					add_option( i, "Vulture Aid", ::dogiveperk, "specialty_nomotionsensor" );
					add_option( i, "Mule Kick", ::dogiveperk, "specialty_additionalprimaryweapon" );
				}
				if( getdvar( "mapname" ) == "zm_tomb" )
				{
					add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
					add_menu( i, self.aio[ "menuName"], "Perks Menu" );
					add_option( i, "Give All", ::drinkallperks );
					add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
					add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
					add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
					add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
					add_option( i, "Marathon", ::dogiveperk, "specialty_longersprint" );
					add_option( i, "Electric Cherry", ::dogiveperk, "specialty_grenadepulldeath" );
					add_option( i, "Mule Kick", ::dogiveperk, "specialty_additionalprimaryweapon" );
					add_option( i, "PhD Flopper", ::dogiveperk, "specialty_flakjacket" );
					add_option( i, "Deadshot Daiquiri", ::dogiveperk, "specialty_deadshot" );
				}
				j = "J";
				if( getdvar( "mapname" ) == "zm_transit" )
				{
					add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
					add_menu( j, self.aio[ "menuName"], "VIP Menu" );
					add_option( j, "UFO Mode", ::ufomode );
					add_option( j, "Forge Mode", ::forge );
					add_option( j, "Save and Load", ::saveandload );
					add_option( j, "Vision Scroller", ::togglevision );
					add_option( j, "Frog Jump", ::toggleleapfrog );
					add_option( j, "Earthquake", ::quake );
					add_option( j, "Big Names", ::mw2names );
					add_option( j, "T-Bag", ::tbag );
					add_option( j, "360 Prone", ::hateznomore360 );
					add_option( j, "Sexy Apperiance", ::changeswag );
					add_option( j, "Ammo Man", ::ammomanm8 );
					add_option( j, "Nuke Man", ::nukemanm8 );
					add_option( j, "Sphere Man", ::spheremanm8 );
					add_option( j, "Arrow Man", ::arrowmanm8 );
					add_option( j, "Explosion Man V2", ::fireman );
					add_option( j, "Electric Man V2", ::electricman );
					add_option( j, "Cloud Man", ::cloudman );
					add_option( j, "Glass Man V2", ::glassman );
					add_option( j, "Spark Man", ::sparkman );
					add_option( j, "Blood Man", ::toggle_gore2 );
					add_option( j, "Blinking Man", ::flashyman );
					add_option( j, "Teddy Shoes", ::teddymanm8 );
					add_option( j, "BJ Guys", ::frinzbigcok );
					add_option( j, "Gay Guys", ::gayguys );
					add_option( j, "Human Centipede", ::togglecentipede );
					add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
					add_option( j, "Drivable Car", ::spawndrivablecar );
					add_option( j, "Skull Protector", ::doprotecion );
					add_option( j, "Zombies Ignore Me", ::notarget );
					add_option( j, "JetPack", ::dojetpack );
				}
				if( getdvar( "mapname" ) == "zm_nuked" )
				{
					add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
					add_menu( j, self.aio[ "menuName"], "VIP Menu" );
					add_option( j, "UFO Mode", ::ufomode );
					add_option( j, "Forge Mode", ::forge );
					add_option( j, "Save and Load", ::saveandload );
					add_option( j, "Vision Scroller", ::togglevision );
					add_option( j, "Frog Jump", ::toggleleapfrog );
					add_option( j, "Earthquake", ::quake );
					add_option( j, "Big Names", ::mw2names );
					add_option( j, "T-Bag", ::tbag );
					add_option( j, "360 Prone", ::hateznomore360 );
					add_option( j, "Sexy Apperiance", ::changeswag );
					add_option( j, "Ammo Man", ::ammomanm8 );
					add_option( j, "Nuke Man", ::nukemanm8 );
					add_option( j, "Sphere Man", ::spheremanm8 );
					add_option( j, "Arrow Man", ::arrowmanm8 );
					add_option( j, "Spark Man V2", ::sparkman2 );
					add_option( j, "Blood Man", ::toggle_gore2 );
					add_option( j, "Blinking Man", ::flashyman );
					add_option( j, "Teddy Shoes", ::teddymanm8 );
					add_option( j, "BJ Guys", ::frinzbigcok );
					add_option( j, "Gay Guys", ::gayguys );
					add_option( j, "Human Centipede", ::togglecentipede );
					add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
					add_option( j, "Drivable Car", ::spawndrivablecar );
					add_option( j, "Skull Protector", ::doprotecion );
					add_option( j, "Zombies Ignore Me", ::notarget );
					add_option( j, "JetPack", ::dojetpack );
				}
				if( getdvar( "mapname" ) == "zm_highrise" )
				{
					add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
					add_menu( j, self.aio[ "menuName"], "VIP Menu" );
					add_option( j, "UFO Mode", ::ufomode );
					add_option( j, "Forge Mode", ::forge );
					add_option( j, "Save and Load", ::saveandload );
					add_option( j, "Vision Scroller", ::togglevision );
					add_option( j, "Frog Jump", ::toggleleapfrog );
					add_option( j, "Earthquake", ::quake );
					add_option( j, "Big Names", ::mw2names );
					add_option( j, "T-Bag", ::tbag );
					add_option( j, "360 Prone", ::hateznomore360 );
					add_option( j, "Sexy Apperiance", ::changeswag );
					add_option( j, "Ammo Man", ::ammomanm8 );
					add_option( j, "Nuke Man", ::nukemanm8 );
					add_option( j, "Sphere Man", ::spheremanm8 );
					add_option( j, "Arrow Man", ::arrowmanm8 );
					add_option( j, "Explosion Man V2", ::fireman );
					add_option( j, "Electric Man V2", ::electricman );
					add_option( j, "Blood Man", ::toggle_gore2 );
					add_option( j, "Blinking Man", ::flashyman );
					add_option( j, "Teddy Shoes", ::teddymanm8 );
					add_option( j, "BJ Guys", ::frinzbigcok );
					add_option( j, "Gay Guys", ::gayguys );
					add_option( j, "Human Centipede", ::togglecentipede );
					add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
					add_option( j, "Drivable Car", ::spawndrivablecar );
					add_option( j, "Skull Protector", ::doprotecion );
					add_option( j, "Zombies Ignore Me", ::notarget );
					add_option( j, "JetPack", ::dojetpack );
				}
				if( getdvar( "mapname" ) == "zm_prison" )
				{
					add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
					add_menu( j, self.aio[ "menuName"], "VIP Menu" );
					add_option( j, "UFO Mode", ::ufomode );
					add_option( j, "Forge Mode", ::forge );
					add_option( j, "Save and Load", ::saveandload );
					add_option( j, "Vision Scroller", ::togglevision );
					add_option( j, "Frog Jump", ::toggleleapfrog );
					add_option( j, "Earthquake", ::quake );
					add_option( j, "Big Names", ::mw2names );
					add_option( j, "T-Bag", ::tbag );
					add_option( j, "360 Prone", ::hateznomore360 );
					add_option( j, "Sexy Apperiance", ::changeswag );
					add_option( j, "Ammo Man", ::ammomanm8 );
					add_option( j, "Nuke Man", ::nukemanm8 );
					add_option( j, "Sphere Man", ::spheremanm8 );
					add_option( j, "Arrow Man", ::arrowmanm8 );
					add_option( j, "Explosion Man V2", ::fireman );
					add_option( j, "Electric Man V2", ::electricman );
					add_option( j, "Blood Man", ::toggle_gore2 );
					add_option( j, "Blinking Man", ::flashyman );
					add_option( j, "BJ Guys", ::frinzbigcok );
					add_option( j, "Gay Guys", ::gayguys );
					add_option( j, "Human Centipede", ::togglecentipede );
					add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
					add_option( j, "Drivable Car", ::spawndrivablecar );
					add_option( j, "Skull Protector", ::doprotecion );
					add_option( j, "Zombies Ignore Me", ::notarget );
					add_option( j, "JetPack", ::dojetpack );
				}
				if( getdvar( "mapname" ) == "zm_buried" )
				{
					add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
					add_menu( j, self.aio[ "menuName"], "VIP Menu" );
					add_option( j, "UFO Mode", ::ufomode );
					add_option( j, "Forge Mode", ::forge );
					add_option( j, "Save and Load", ::saveandload );
					add_option( j, "Vision Scroller", ::togglevision );
					add_option( j, "Frog Jump", ::toggleleapfrog );
					add_option( j, "Earthquake", ::quake );
					add_option( j, "Big Names", ::mw2names );
					add_option( j, "T-Bag", ::tbag );
					add_option( j, "360 Prone", ::hateznomore360 );
					add_option( j, "Sexy Apperiance", ::changeswag );
					add_option( j, "Ammo Man", ::ammomanm8 );
					add_option( j, "Nuke Man", ::nukemanm8 );
					add_option( j, "Sphere Man", ::spheremanm8 );
					add_option( j, "Arrow Man", ::arrowmanm8 );
					add_option( j, "Explosion Man V2", ::fireman );
					add_option( j, "Blood Man", ::toggle_gore2 );
					add_option( j, "Blinking Man", ::flashyman );
					add_option( j, "Teddy Shoes", ::teddymanm8 );
					add_option( j, "BJ Guys", ::frinzbigcok );
					add_option( j, "Gay Guys", ::gayguys );
					add_option( j, "Human Centipede", ::togglecentipede );
					add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
					add_option( j, "Drivable Car", ::spawndrivablecar );
					add_option( j, "Skull Protector", ::doprotecion );
					add_option( j, "Zombies Ignore Me", ::notarget );
					add_option( j, "JetPack", ::dojetpack );
				}
				if( getdvar( "mapname" ) == "zm_tomb" )
				{
					add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
					add_menu( j, self.aio[ "menuName"], "VIP Menu" );
					add_option( j, "UFO Mode", ::ufomode );
					add_option( j, "Forge Mode", ::forge );
					add_option( j, "Save and Load", ::saveandload );
					add_option( j, "Vision Scroller", ::togglevision );
					add_option( j, "Frog Jump", ::toggleleapfrog );
					add_option( j, "Earthquake", ::quake );
					add_option( j, "Big Names", ::mw2names );
					add_option( j, "T-Bag", ::tbag );
					add_option( j, "360 Prone", ::hateznomore360 );
					add_option( j, "Sexy Apperiance", ::changeswag );
					add_option( j, "Ammo Man", ::ammomanm8 );
					add_option( j, "Nuke Man", ::nukemanm8 );
					add_option( j, "Sphere Man", ::spheremanm8 );
					add_option( j, "Arrow Man", ::arrowmanm8 );
					add_option( j, "Explosion Man V2", ::fireman );
					add_option( j, "Mud Man V2", ::mudman );
					add_option( j, "Fire Man V2", ::firemanbro );
					add_option( j, "Blood Man", ::toggle_gore2 );
					add_option( j, "Blinking Man", ::flashyman );
					add_option( j, "Teddy Shoes", ::teddymanm8 );
					add_option( j, "BJ Guys", ::frinzbigcok );
					add_option( j, "Gay Guys", ::gayguys );
					add_option( j, "Human Centipede", ::togglecentipede );
					add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
					add_option( j, "Drivable Car", ::spawndrivablecar );
					add_option( j, "Skull Protector", ::doprotecion );
					add_option( j, "Zombies Ignore Me", ::notarget );
					add_option( j, "JetPack", ::dojetpack );
				}
				l = "L";
				add_option( self.aio[ "menuName"], "Sounds Menu", ::submenu, l, "Sounds Menu" );
				add_menu( l, self.aio[ "menuName"], "Sounds Menu" );
				add_option( l, "Juggernaut Machine Jingle", ::doplaysounds, "mus_perks_jugganog_jingle" );
				add_option( l, "Sleight Of Hand Machine Jingle", ::doplaysounds, "mus_perks_speed_jingle" );
				add_option( l, "Quick Revive Machine Jingle", ::doplaysounds, "mus_perks_revive_jingle" );
				add_option( l, "Double Tap Machine Jingle", ::doplaysounds, "mus_perks_doubletap_jingle" );
				add_option( l, "Marathon Machine Jingle", ::doplaysounds, "mus_perks_stamin_jingle" );
				add_option( l, "Mule Kick Machine Jingle", ::doplaysounds, "mus_perks_mulekick_jingle" );
				add_option( l, "Deadshot Machine Jingle", ::doplaysounds, "mus_perks_deadshot_jingle" );
				add_option( l, "Tombstone Machine Jingle", ::doplaysounds, "mus_perks_tombstone_jingle" );
				add_option( l, "Whos Who Machine Jingle", ::doplaysounds, "mus_perks_whoswho_jingle" );
				add_option( l, "Packer Punch Machine Jingle", ::doplaysounds, "mus_perks_packa_jingle" );
				add_option( l, "Electric Cherry Machine Jingle", ::doplaysounds, "mus_perks_cherry_jingle" );
				add_option( l, "Monkey Scream", ::doplaysounds, "zmb_vox_monkey_scream" );
				add_option( l, "Maxis Laugh", ::doplaysounds, "mus_zombie_splash_screen" );
				add_option( l, "Zombie Spawn", ::doplaysounds, "zmb_zombie_spawn" );
				add_option( l, "Magic Box", ::doplaysounds, "zmb_music_box" );
				add_option( l, "Purchase", ::doplaysounds, "zmb_cha_ching" );
			}
			if( self.status == "Admin" || self.status == "Co-Host" || self.status == "Host" )
			{
				m = "M";
				add_option( self.aio[ "menuName"], "Power Ups", ::submenu, m, "Power Ups" );
				add_menu( m, self.aio[ "menuName"], "Power Ups" );
				add_option( m, "Nuke Bomb", ::dopnuke );
				add_option( m, "Max Ammo", ::dopmammo );
				add_option( m, "Double Points", ::dopdoublepoints );
				add_option( m, "Insta Kill", ::dopinstakills );
				swag = "SWAG";
				add_option( self.aio[ "menuName"], "Theme Menu", ::submenu, swag, "Theme Menu" );
				add_menu( swag, self.aio[ "menuName"], "Theme Menu" );
				add_option( swag, "Default Theme", ::dodefaultpls );
				add_option( swag, "Red Theme", ::doredtheme );
				add_option( swag, "Green Theme", ::dogreentheme );
				add_option( swag, "Pink Theme", ::dopinktheme );
				add_option( swag, "Flashing Theme", ::stopbitchinghoe );
				n = "N";
				if( getdvar( "mapname" ) == "zm_transit" )
				{
					add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
					add_menu( n, self.aio[ "menuName"], "Admin Menu" );
					add_option( n, "Rain Minecraft Body", ::toggleraindefault );
					add_option( n, "Rain Sphere", ::togglerainsphere );
					add_option( n, "Rain Perks", ::togglerainperk );
					add_option( n, "Rain Teddys", ::togglerainteddy );
					add_option( n, "Ice Skater", ::doiceskater );
					add_option( n, "Roll Away Actor", ::rollawayactor );
					add_option( n, "Wind Mill", ::windmill );
					add_option( n, "Kid Ride", ::dokidride );
					add_option( n, "Kamikaze", ::dokamikaze );
					add_option( n, "Spiral Stairs", ::dosstairs );
					add_option( n, "Earthquake Man", ::toggleearthquakegirl );
					add_option( n, "Earthquake Electric Man", ::toggleearthquakeelectric );
					add_option( n, "Walking AC-130", ::dowalkingac130 );
					add_option( n, "Aimbot", ::doaimbot );
					add_option( n, "Flip Man", ::crazyman );
					add_option( n, "Artillery", ::w3x );
					add_option( n, "Adventure Time", ::initsexycmks );
					add_option( n, "Disco Sun", ::discosun );
					add_option( n, "Mexican Wave", ::mexicanwave );
					add_option( n, "Teddy Wave", ::teddywave );
					add_option( n, "Electric Man Wave", ::electricmanwave );
					add_option( n, "Man Wave", ::mistywave );
					add_option( n, "Grimlin Wave", ::grimlinwave );
					add_option( n, "Show FPS", ::showfps );
					add_option( n, "Hear Other Team", ::hearallplayers );
					add_option( n, "Force Host", ::forcehost );
				}
				if( getdvar( "mapname" ) == "zm_nuked" )
				{
					add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
					add_menu( n, self.aio[ "menuName"], "Admin Menu" );
					add_option( n, "Rain Minecraft Body", ::toggleraindefault );
					add_option( n, "Rain Sphere", ::togglerainsphere );
					add_option( n, "Rain Perks", ::togglerainperk );
					add_option( n, "Rain Teddys", ::togglerainteddy );
					add_option( n, "Ice Skater", ::doiceskater );
					add_option( n, "Roll Away Actor", ::rollawayactor );
					add_option( n, "Wind Mill", ::windmill );
					add_option( n, "Kid Ride", ::dokidride );
					add_option( n, "Kamikaze", ::dokamikaze );
					add_option( n, "Spiral Stairs", ::dosstairs );
					add_option( n, "Earthquake Man", ::toggleearthquakegirl );
					add_option( n, "Walking AC-130", ::dowalkingac130 );
					add_option( n, "Aimbot", ::doaimbot );
					add_option( n, "Flip Man", ::crazyman );
					add_option( n, "Artillery", ::w3x );
					add_option( n, "Adventure Time", ::initsexycmks );
					add_option( n, "Disco Sun", ::discosun );
					add_option( n, "Mexican Wave", ::mexicanwave );
					add_option( n, "Man Wave", ::mistywave );
					add_option( n, "Teddy Wave", ::teddywave );
					add_option( n, "Monkey Bomb Wave", ::monkeybombwave );
					add_option( n, "Show FPS", ::showfps );
					add_option( n, "Hear Other Team", ::hearallplayers );
					add_option( n, "Force Host", ::forcehost );
				}
				if( getdvar( "mapname" ) == "zm_highrise" )
				{
					add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
					add_menu( n, self.aio[ "menuName"], "Admin Menu" );
					add_option( n, "Rain Minecraft Body", ::toggleraindefault );
					add_option( n, "Rain Sphere", ::togglerainsphere );
					add_option( n, "Rain Perks", ::togglerainperk );
					add_option( n, "Rain Teddys", ::togglerainteddy );
					add_option( n, "Ice Skater", ::doiceskater );
					add_option( n, "Roll Away Actor", ::rollawayactor );
					add_option( n, "Wind Mill", ::windmill );
					add_option( n, "Kid Ride", ::dokidride );
					add_option( n, "Kamikaze", ::dokamikaze );
					add_option( n, "Spiral Stairs", ::dosstairs );
					add_option( n, "Earthquake Man", ::toggleearthquakegirl );
					add_option( n, "Walking AC-130", ::dowalkingac130 );
					add_option( n, "Aimbot", ::doaimbot );
					add_option( n, "Flip Man", ::crazyman );
					add_option( n, "Artillery", ::w3x );
					add_option( n, "Adventure Time", ::initsexycmks );
					add_option( n, "Disco Sun", ::discosun );
					add_option( n, "Mexican Wave", ::mexicanwave );
					add_option( n, "Man Wave", ::mistywave );
					add_option( n, "Teddy Wave", ::teddywave );
					add_option( n, "Monkey Bomb Wave", ::monkeybombwave );
					add_option( n, "Show FPS", ::showfps );
					add_option( n, "Hear Other Team", ::hearallplayers );
					add_option( n, "Force Host", ::forcehost );
				}
				if( getdvar( "mapname" ) == "zm_prison" )
				{
					add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
					add_menu( n, self.aio[ "menuName"], "Admin Menu" );
					add_option( n, "Rain Minecraft Body", ::toggleraindefault );
					add_option( n, "Rain Sphere", ::togglerainsphere );
					add_option( n, "Rain Perks", ::togglerainperk );
					add_option( n, "Ice Skater", ::doiceskater );
					add_option( n, "Roll Away Actor", ::rollawayactor );
					add_option( n, "Wind Mill", ::windmill );
					add_option( n, "Kamikaze", ::dokamikaze );
					add_option( n, "Spiral Stairs", ::dosstairs );
					add_option( n, "Earthquake Man", ::toggleearthquakegirl );
					add_option( n, "Earthquake Brutus", ::toggleearthquakebrutus );
					add_option( n, "Walking AC-130", ::dowalkingac130 );
					add_option( n, "Aimbot", ::doaimbot );
					add_option( n, "Flip Man", ::crazyman );
					add_option( n, "Artillery", ::w3x );
					add_option( n, "Adventure Time", ::initsexycmks );
					add_option( n, "Disco Sun", ::discosun );
					add_option( n, "Mexican Wave", ::mexicanwave );
					add_option( n, "Man Wave", ::mistywave );
					add_option( n, "Brutus Wave", ::brutuswave );
					add_option( n, "Show FPS", ::showfps );
					add_option( n, "Hear Other Team", ::hearallplayers );
					add_option( n, "Force Host", ::forcehost );
				}
				if( getdvar( "mapname" ) == "zm_buried" )
				{
					add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
					add_menu( n, self.aio[ "menuName"], "Admin Menu" );
					add_option( n, "Rain Minecraft Body", ::toggleraindefault );
					add_option( n, "Rain Sphere", ::togglerainsphere );
					add_option( n, "Rain Perks", ::togglerainperk );
					add_option( n, "Rain Teddys", ::togglerainteddy );
					add_option( n, "Ice Skater", ::doiceskater );
					add_option( n, "Roll Away Actor", ::rollawayactor );
					add_option( n, "Wind Mill", ::windmill );
					add_option( n, "Kid Ride", ::dokidride );
					add_option( n, "Kamikaze", ::dokamikaze );
					add_option( n, "Spiral Stairs", ::dosstairs );
					add_option( n, "Earthquake Man", ::toggleearthquakegirl );
					add_option( n, "Walking AC-130", ::dowalkingac130 );
					add_option( n, "Aimbot", ::doaimbot );
					add_option( n, "Flip Man", ::crazyman );
					add_option( n, "Artillery", ::w3x );
					add_option( n, "Adventure Time", ::initsexycmks );
					add_option( n, "Disco Sun", ::discosun );
					add_option( n, "Mexican Wave", ::mexicanwave );
					add_option( n, "Teddy Wave", ::teddywave );
					add_option( n, "Man Wave", ::mistywave );
					add_option( n, "Witch Wave", ::witchwave );
					add_option( n, "Leroy Wave", ::leroywave );
					add_option( n, "Show FPS", ::showfps );
					add_option( n, "Hear Other Team", ::hearallplayers );
					add_option( n, "Force Host", ::forcehost );
				}
				if( getdvar( "mapname" ) == "zm_tomb" )
				{
					add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
					add_menu( n, self.aio[ "menuName"], "Admin Menu" );
					add_option( n, "Rain Minecraft Body", ::toggleraindefault );
					add_option( n, "Rain Sphere", ::togglerainsphere );
					add_option( n, "Rain Perks", ::togglerainperk );
					add_option( n, "Rain Teddys", ::togglerainteddy );
					add_option( n, "Ice Skater", ::doiceskater );
					add_option( n, "Roll Away Actor", ::rollawayactor );
					add_option( n, "Wind Mill", ::windmill );
					add_option( n, "Kamikaze", ::dokamikaze );
					add_option( n, "Spiral Stairs", ::dosstairs );
					add_option( n, "Earthquake Man", ::toggleearthquakegirl );
					add_option( n, "Earthquake Panzer", ::toggleearthquakepanzer );
					add_option( n, "Walking AC-130", ::dowalkingac130 );
					add_option( n, "Aimbot", ::doaimbot );
					add_option( n, "Flip Man", ::crazyman );
					add_option( n, "Artillery", ::w3x );
					add_option( n, "Adventure Time", ::initsexycmks );
					add_option( n, "Disco Sun", ::discosun );
					add_option( n, "Mexican Wave", ::mexicanwave );
					add_option( n, "Teddy Wave", ::teddywave );
					add_option( n, "Man Wave", ::mistywave );
					add_option( n, "Panzer Wave", ::panzerwave );
					add_option( n, "Show FPS", ::showfps );
					add_option( n, "Hear Other Team", ::hearallplayers );
					add_option( n, "Force Host", ::forcehost );
				}
			}
			if( self.status == "Co-Host" || self.status == "Host" )
			{
				x = "X";
				add_option( self.aio[ "menuName"], "Rounds Menu", ::submenu, x, "Rounds Menu" );
				add_menu( x, self.aio[ "menuName"], "Rounds Menu" );
				add_option( x, "+ 1 Round", ::round_up );
				add_option( x, "- 1 Round", ::round_down );
				add_option( x, "Round 10", ::round10 );
				add_option( x, "Round 25", ::round25 );
				add_option( x, "Round 50", ::round50 );
				add_option( x, "Round 75", ::round75 );
				add_option( x, "Round 100", ::round100 );
				add_option( x, "Round 125", ::round125 );
				add_option( x, "Round 150", ::round150 );
				add_option( x, "Round 175", ::round175 );
				add_option( x, "Round 200", ::round200 );
				add_option( x, "Round 225", ::round225 );
				add_option( x, "Round 250", ::max_round );
				o = "O";
				add_option( self.aio[ "menuName"], "Zombies Menu", ::submenu, o, "Zombies Menu" );
				add_menu( o, self.aio[ "menuName"], "Zombies Menu" );
				add_option( o, "Freeze Zombies", ::fr3zzzom );
				add_option( o, "Invisible Zombies", ::zombieinvisible );
				add_option( o, "Kill All Zombies", ::zombiekill );
				add_option( o, "Headless Zombies", ::headless );
				add_option( o, "Teleport Zombies To Crosshairs", ::tgl_zz2 );
				add_option( o, "Debug Zombies", ::zombiedefaultactor );
				add_option( o, "Count Zombies", ::zombiecount );
				add_option( o, "Disable Zombies", ::donospawnzombies );
				add_option( o, "Zombies Walk", ::threadatallzombz, ::set_zombie_run_cycle, "walk" );
				add_option( o, "Zombies Run", ::threadatallzombz, ::set_zombie_run_cycle, "run" );
				add_option( o, "Zombies Sprint", ::threadatallzombz, ::set_zombie_run_cycle, "sprint" );
				add_option( o, "Zombies Super Sprint", ::threadatallzombz, ::set_zombie_run_cycle, "super_sprint" );
				add_option( o, "Zombies Crawl", ::threadatallzombz, ::set_zombie_run_cycle, "stumpy" );
				p = "P";
				add_option( self.aio[ "menuName"], "Game Settings", ::submenu, p, "Game Settings" );
				add_menu( p, self.aio[ "menuName"], "Game Settings" );
				add_option( p, "Anti Quit", ::toggleantiquit );
				add_option( p, "Super Jump", ::togglesuperjump );
				add_option( p, "Super Speed", ::speed );
				add_option( p, "Low Gravity", ::gravity );
				add_option( p, "Timescale", ::changetimescale );
				add_option( p, "Restart Game", ::dorestartgame );
				add_option( p, "End Game", ::doendgame );
				add_option( p, "Fast Exit", ::fastend );
				add_option( p, "Long Bleed Out", ::bleed );
				add_option( p, "Long Melee Range", ::knifemeelee );
				add_option( p, "Far Revive", ::farrevive );
				add_option( p, "Unlimited Sprint", ::sprintofds );
				add_option( p, "Lag Switch", ::lagswitch );
				add_option( p, "Pause Game", ::pauseme );
				add_option( p, "Freeze Box", ::magicbox );
				add_option( p, "Move Box", ::levacassa );
				add_option( p, "Build All Tables", ::buildalltables );
				add_option( p, "Auto Revive", ::autorevive );
				add_option( p, "Open All Doors", ::openalltehdoors );
				add_option( p, "Power On", ::turnpoweron );
				add_option( p, "Easter Egg Song", ::canzonenorm );
				add_option( p, "Easter Egg Song 2", ::doplaysounds, "mus_zmb_secret_song_2" );
				add_option( p, "Spawn Bot", ::spawnbot );
				if( getdvar( "mapname" ) == "zm_transit" )
				{
					add_option( p, "Secret Room", ::initialisesecretroom );
				}
				if( getdvar( "mapname" ) == "zm_nuked" )
				{
					add_option( p, "Secret Room", ::initialisesecretroom1 );
				}
			}
			if( self.status == "Host" )
			{
				add_option( self.aio[ "menuName"], "Client Options", ::submenu, "PlayersMenu", "Client Options" );
				add_menu( "PlayersMenu", self.aio[ "menuName"], "Client Options" );
				add_menu( "pOpt " + i, "PlayersMenu", "" );
				f = "F";
				add_option( self.aio[ "menuName"], "All Clients", ::submenu, f, "All Clients" );
				add_menu( f, self.aio[ "menuName"], "All Clients" );
				if( getdvar( "mapname" ) == "zm_transit" )
				{
					add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
					add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
					add_option( f, "All GodMod", ::allplayergivegodmod );
					add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
					add_option( f, "All Max Score", ::all1 );
					add_option( f, "All Perks", ::perksall );
					add_option( f, "All Max Rank", ::allmaxrank );
					add_option( f, "Teleport All To Me", ::doteleportalltome );
					add_option( f, "Teleport All To Crosshair", ::teltocross );
					add_option( f, "Send All to Space", ::sendalltospace );
					add_option( f, "All Default Weapon", ::debruh1 );
					add_option( f, "All Ray Gun", ::rg1 );
					add_option( f, "All Ray Gun x2", ::rg2 );
					add_option( f, "All JetGun", ::jetgunsweg );
					add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
					add_option( f, "All T-Bag", ::tbagallniggas );
					add_option( f, "All Adventure Time", ::allsexythrzlol );
					add_option( f, "All Debug Model", ::dmall );
					add_option( f, "All Teddy Model", ::tmall );
					add_option( f, "All Ammo Man", ::allammo1 );
					add_option( f, "All Nuke Man", ::allnuke1 );
					add_option( f, "All Sphere Man", ::allsphere1 );
					add_option( f, "All Arrow Man", ::all4 );
					add_option( f, "All Explosion Man", ::allexplol );
					add_option( f, "All Electric Man V2", ::allemlol );
					add_option( f, "All Cloud Man", ::allcloudmanlol );
					add_option( f, "All Glass Man V2", ::allglasslol );
					add_option( f, "All Spark Man", ::allsparkmanlol );
					add_option( f, "All Blood Man", ::all5 );
					add_option( f, "All Blinking Man", ::flashymanall );
					add_option( f, "All Teddy Shoes", ::all6 );
					add_option( f, "All Sexy Apperiance", ::allsexyman );
					add_option( f, "Freez All Position", ::dofreeallposition );
					add_option( f, "Kill All Players", ::allplayerskilled );
					add_option( f, "Revive All", ::dorevivealls );
					add_option( f, "Kick All", ::doallkickplayer );
				}
				if( getdvar( "mapname" ) == "zm_nuked" )
				{
					add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
					add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
					add_option( f, "All GodMod", ::allplayergivegodmod );
					add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
					add_option( f, "All Max Score", ::all1 );
					add_option( f, "All Perks", ::perksall );
					add_option( f, "All Max Rank", ::allmaxrank );
					add_option( f, "Teleport All To Me", ::doteleportalltome );
					add_option( f, "Teleport All To Crosshair", ::teltocross );
					add_option( f, "Send All to Space", ::sendalltospace );
					add_option( f, "All Default Weapon", ::debruh1 );
					add_option( f, "All Ray Gun", ::rg1 );
					add_option( f, "All Ray Gun x2", ::rg2 );
					add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
					add_option( f, "All T-Bag", ::tbagallniggas );
					add_option( f, "All Adventure Time", ::allsexythrzlol );
					add_option( f, "All Debug Model", ::dmall );
					add_option( f, "All Teddy Model", ::tmall );
					add_option( f, "All Ammo Man", ::allammo1 );
					add_option( f, "All Nuke Man", ::allnuke1 );
					add_option( f, "All Sphere Man", ::allsphere1 );
					add_option( f, "All Arrow Man", ::all4 );
					add_option( f, "All Spark Man V2", ::allsparkmanv2 );
					add_option( f, "All Blood Man", ::all5 );
					add_option( f, "All Blinking Man", ::flashymanall );
					add_option( f, "All Teddy Shoes", ::all6 );
					add_option( f, "Freez All Position", ::dofreeallposition );
					add_option( f, "Kill All Players", ::allplayerskilled );
					add_option( f, "Revive All", ::dorevivealls );
					add_option( f, "Kick All", ::doallkickplayer );
				}
				if( getdvar( "mapname" ) == "zm_highrise" )
				{
					add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
					add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
					add_option( f, "All GodMod", ::allplayergivegodmod );
					add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
					add_option( f, "All Max Score", ::all1 );
					add_option( f, "All Perks", ::perksall );
					add_option( f, "All Max Rank", ::allmaxrank );
					add_option( f, "Teleport All To Me", ::doteleportalltome );
					add_option( f, "Teleport All To Crosshair", ::teltocross );
					add_option( f, "Send All to Space", ::sendalltospace );
					add_option( f, "All Default Weapon", ::debruh1 );
					add_option( f, "All Ray Gun", ::rg1 );
					add_option( f, "All Ray Gun x2", ::rg2 );
					add_option( f, "All Sliquifier", ::sliquifiersweg2 );
					add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
					add_option( f, "All T-Bag", ::tbagallniggas );
					add_option( f, "All Adventure Time", ::allsexythrzlol );
					add_option( f, "All Debug Model", ::dmall );
					add_option( f, "All Teddy Model", ::tmall );
					add_option( f, "All Ammo Man", ::allammo1 );
					add_option( f, "All Nuke Man", ::allnuke1 );
					add_option( f, "All Sphere Man", ::allsphere1 );
					add_option( f, "All Arrow Man", ::all4 );
					add_option( f, "All Explosion Man", ::allexplol );
					add_option( f, "All Electric Man V2", ::allemlol );
					add_option( f, "All Blood Man", ::all5 );
					add_option( f, "All Blinking Man", ::flashymanall );
					add_option( f, "All Teddy Shoes", ::all6 );
					add_option( f, "All Sexy Apperiance", ::allsexyman );
					add_option( f, "Freez All Position", ::dofreeallposition );
					add_option( f, "Kill All Players", ::allplayerskilled );
					add_option( f, "Revive All", ::dorevivealls );
					add_option( f, "Kick All", ::doallkickplayer );
				}
				if( getdvar( "mapname" ) == "zm_prison" )
				{
					add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
					add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
					add_option( f, "All GodMod", ::allplayergivegodmod );
					add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
					add_option( f, "All Max Score", ::all1 );
					add_option( f, "All Perks", ::perksall );
					add_option( f, "All Max Rank", ::allmaxrank );
					add_option( f, "Teleport All To Me", ::doteleportalltome );
					add_option( f, "Teleport All To Crosshair", ::teltocross );
					add_option( f, "Send All to Space", ::sendalltospace );
					add_option( f, "All Default Weapon", ::debruh1 );
					add_option( f, "All Ray Gun", ::rg1 );
					add_option( f, "All Ray Gun x2", ::rg2 );
					add_option( f, "All Blundergat", ::blundergatsweg2 );
					add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
					add_option( f, "All T-Bag", ::tbagallniggas );
					add_option( f, "All Adventure Time", ::allsexythrzlol );
					add_option( f, "All Debug Model", ::dmall );
					add_option( f, "All Teddy Model", ::tmall );
					add_option( f, "All Ammo Man", ::allammo1 );
					add_option( f, "All Nuke Man", ::allnuke1 );
					add_option( f, "All Sphere Man", ::allsphere1 );
					add_option( f, "All Arrow Man", ::all4 );
					add_option( f, "All Explosion Man", ::allexplol );
					add_option( f, "All Electric Man V2", ::allemlol );
					add_option( f, "All Blood Man", ::all5 );
					add_option( f, "All Blinking Man", ::flashymanall );
					add_option( f, "All Sexy Apperiance", ::allsexyman );
					add_option( f, "Freez All Position", ::dofreeallposition );
					add_option( f, "Kill All Players", ::allplayerskilled );
					add_option( f, "Revive All", ::dorevivealls );
					add_option( f, "Kick All", ::doallkickplayer );
				}
				if( getdvar( "mapname" ) == "zm_buried" )
				{
					add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
					add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
					add_option( f, "All GodMod", ::allplayergivegodmod );
					add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
					add_option( f, "All Max Score", ::all1 );
					add_option( f, "All Perks", ::perksall );
					add_option( f, "All Max Rank", ::allmaxrank );
					add_option( f, "Teleport All To Me", ::doteleportalltome );
					add_option( f, "Teleport All To Crosshair", ::teltocross );
					add_option( f, "Send All to Space", ::sendalltospace );
					add_option( f, "All Default Weapon", ::debruh1 );
					add_option( f, "All Ray Gun", ::rg1 );
					add_option( f, "All Ray Gun x2", ::rg2 );
					add_option( f, "All Paralyzer", ::paralyzersweg );
					add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
					add_option( f, "All T-Bag", ::tbagallniggas );
					add_option( f, "All Adventure Time", ::allsexythrzlol );
					add_option( f, "All Debug Model", ::dmall );
					add_option( f, "All Teddy Model", ::tmall );
					add_option( f, "All Ammo Man", ::allammo1 );
					add_option( f, "All Nuke Man", ::allnuke1 );
					add_option( f, "All Sphere Man", ::allsphere1 );
					add_option( f, "All Arrow Man", ::all4 );
					add_option( f, "All Explosion Man", ::allexplol );
					add_option( f, "All Blood Man", ::all5 );
					add_option( f, "All Blinking Man", ::flashymanall );
					add_option( f, "All Teddy Shoes", ::all6 );
					add_option( f, "All Sexy Apperiance", ::allsexyman );
					add_option( f, "Freez All Position", ::dofreeallposition );
					add_option( f, "Kill All Players", ::allplayerskilled );
					add_option( f, "Revive All", ::dorevivealls );
					add_option( f, "Kick All", ::doallkickplayer );
				}
				if( getdvar( "mapname" ) == "zm_tomb" )
				{
					add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
					add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
					add_option( f, "All GodMod", ::allplayergivegodmod );
					add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
					add_option( f, "All Max Score", ::all1 );
					add_option( f, "All Perks", ::perksall );
					add_option( f, "All Max Rank", ::allmaxrank );
					add_option( f, "Teleport All To Me", ::doteleportalltome );
					add_option( f, "Teleport All To Crosshair", ::teltocross );
					add_option( f, "Send All to Space", ::sendalltospace );
					add_option( f, "All Default Weapon", ::debruh1 );
					add_option( f, "All Ray Gun", ::rg1 );
					add_option( f, "All Ray Gun x2", ::rg2 );
					add_option( f, "All Staff of Lightning", ::staff11 );
					add_option( f, "All Staff of Fire", ::staff22 );
					add_option( f, "All Staff of Ice", ::staff33 );
					add_option( f, "All Staff of Wind", ::staff44 );
					add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
					add_option( f, "All T-Bag", ::tbagallniggas );
					add_option( f, "All Adventure Time", ::allsexythrzlol );
					add_option( f, "All Debug Model", ::dmall );
					add_option( f, "All Teddy Model", ::tmall );
					add_option( f, "All Ammo Man", ::allammo1 );
					add_option( f, "All Nuke Man", ::allnuke1 );
					add_option( f, "All Sphere Man", ::allsphere1 );
					add_option( f, "All Arrow Man", ::all4 );
					add_option( f, "All Explosion Man V2", ::allexplol );
					add_option( f, "All Mud Man V2", ::allmudv2 );
					add_option( f, "All Fire Man V2", ::allfirev2 );
					add_option( f, "All Blood Man", ::all5 );
					add_option( f, "All Blinking Man", ::flashymanall );
					add_option( f, "All Teddy Shoes", ::all6 );
					add_option( f, "All Sexy Apperiance", ::allsexyman );
					add_option( f, "Freez All Position", ::dofreeallposition );
					add_option( f, "Kill All Players", ::allplayerskilled );
					add_option( f, "Revive All", ::dorevivealls );
					add_option( f, "Kick All", ::doallkickplayer );
				}
			}
			self endon( "disconnect" );
			self.menu.menucount["PlayersMenu"] = 0;
			i = 0;
			while( i < 18 )
			{
				player = level.players[ i];
				playername = getplayername( player );
				playersizefixed -= 1;
				if( self.menu.curs[ "PlayersMenu"] > playersizefixed )
				{
					self.menu.scrollerpos["PlayersMenu"] = playersizefixed;
					self.menu.curs["PlayersMenu"] = playersizefixed;
				}
				add_option( "PlayersMenu", "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ), ::submenu, "pOpt " + i, "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
				add_menu( "pOpt " + i, "PlayersMenu", "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
				add_option( "pOpt " + i, "Status", ::submenu, "pOpt " + ( i + "_3" ), "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
				add_menu( "pOpt " + ( i + "_3" ), "pOpt " + i, "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
				add_option( "pOpt " + ( i + "_3" ), "Unverify", ::changeverificationmenu, player, "Unverified" );
				add_option( "pOpt " + ( i + "_3" ), "^3Verify", ::changeverificationmenu, player, "Verified" );
				add_option( "pOpt " + ( i + "_3" ), "^4VIP", ::changeverificationmenu, player, "VIP" );
				add_option( "pOpt " + ( i + "_3" ), "^1Admin", ::changeverificationmenu, player, "Admin" );
				add_option( "pOpt " + ( i + "_3" ), "^5Co-Host", ::changeverificationmenu, player, "Co-Host" );
				if( !(player ishost()) )
				{
					add_option( "pOpt " + i, "Options", ::submenu, "pOpt " + ( i + "_2" ), "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
					add_menu( "pOpt " + ( i + "_2" ), "pOpt " + i, "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
					if( getdvar( "mapname" ) == "zm_transit" )
					{
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
						add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
						add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
						add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
						add_option( "pOpt " + ( i + "_2" ), "Give JetGun", ::dogiveplayerweapon3, player );
						add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
						add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
						add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
					}
					if( getdvar( "mapname" ) == "zm_nuked" )
					{
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
						add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
						add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
						add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
						add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
						add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
						add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
					}
					if( getdvar( "mapname" ) == "zm_highrise" )
					{
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
						add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
						add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
						add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Sliquifier", ::dogiveplayerweapon4, player );
						add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
						add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
						add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
					}
					if( getdvar( "mapname" ) == "zm_prison" )
					{
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
						add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
						add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
						add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Blundergat", ::dogiveplayerweapon5, player );
						add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
						add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
						add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
					}
					if( getdvar( "mapname" ) == "zm_buried" )
					{
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
						add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
						add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
						add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Paralyzer", ::dogiveplayerweapon6, player );
						add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
						add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
						add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
					}
					if( getdvar( "mapname" ) == "zm_tomb" )
					{
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
						add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
						add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
						add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
						add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
						add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Staff of Lightning", ::dogiveplayerweapon7, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Staff of Fire", ::dogiveplayerweapon8, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Staff of Ice", ::dogiveplayerweapon9, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Staff of Wind", ::dogiveplayerweapon10, player );
						add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
						add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
						add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
						add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
					}
				}
				i++;
			}
			self.menu.getmenu[menu] = menu;
			self.menu.scrollerpos[menu] = 0;
			self.menu.curs[menu] = 0;
			self.menu.menucount[menu] = 0;
			self.menu.subtitle[menu] = menutitle;
			self.menu.previousmenu[menu] = prevmenu;
			menu = self.menu.getmenu[ menu];
			num = self.menu.menucount[ menu];
			self.menu.menuopt[menu][num] = text;
			self.menu.menufunc[menu][num] = func;
			self.menu.menuinput[menu][num] = arg1;
			self.menu.menuinput1[menu][num] = arg2;
			self.menu.menucount[menu] += 1;
			self freezecontrols( 0 );
			self.recreateoptions = 1;
			self setclientuivisibilityflag( "hud_visible", 0 );
			self playsoundtoplayer( "mpl_flagcapture_sting_friend", self );
			self showhud();
			self thread storetext( self.curmenu, self.curtitle );
			self updatescrollbar();
			self.menu.open = 1;
			self.recreateoptions = 0;
			self freezecontrols( 0 );
			self playsoundtoplayer( "cac_grid_equip_item", self );
			self hidehud();
			self setclientuivisibilityflag( "hud_visible", 1 );
			self.menu.open = 0;
			if( self isverified() )
			{
				if( !(self.menuinit) )
				{
					self.menuinit = 1;
					self thread menuinit();
				}
			}
			self.menuinit = 0;
			self notify( "destroyMenu" );
			self freezecontrols( 0 );
			if( IsDefined( self.aio[ "options"] ) )
			{
				i = 0;
				while( i < self.aio[ "options"].size )
				{
					self.aio[ "options"][ i] destroy();
					i++;
				}
			}
			self setclientuivisibilityflag( "hud_visible", 1 );
			self.menu.open = 0;
			wait 0.01;
			self.aio[ "backgroundouter"] destroyelem();
			self.aio[ "barclose"] destroyelem();
			self.aio[ "background"] destroyelem();
			self.aio[ "scrollbar"] destroyelem();
			self.aio[ "bartop"] destroyelem();
			self.aio[ "barbottom"] destroyelem();
			self.aio[ "title"] destroy();
			self.aio[ "closeText"] destroy();
			self.aio[ "status"] destroy();
			if( input == self.aio[ "menuName"] )
			{
				self thread storetext( input, self.aio[ "menuName"] );
			}
			else
			{
				if( input == "PlayersMenu" )
				{
					self updateplayersmenu();
					self thread storetext( input, "Client Options" );
				}
				else
				{
					self thread storetext( input, title );
				}
			}
			self.curmenu = input;
			self.curtitle = title;
			self.menu.scrollerpos[self.curmenu] = self.menu.curs[ self.curmenu];
			self.menu.curs[input] = self.menu.scrollerpos[ input];
			self updatescrollbar();
			if( bool )
			{
				return returniftrue;
			}
			else
			{
				return returniffalse;
			}
			if( !(IsDefined( bool )) )
			{
				return 1;
			}
			if( bool )
			{
				return 0;
			}
			else
			{
				return 1;
			}
			self.infinitehealth = 0;
			self iprintlnbold( "Test" );
			exitlevel( 0 );
			level endon( "game_ended" );
			level endon( "host_migration_begin" );
			level.test = createserverfontstring( "default", 1 );
			level.test settext( "xTUL" );
			level.test.alpha = 0;
			if( getdvar( "g_gametype" ) == "sd" )
			{
				a = 45;
			}
			else
			{
				a = 55;
			}
			for(;;)
			{
			level waittill( "textset" );
			if( level.result >= a )
			{
				level.test clearalltextafterhudelem();
				level.result = 0;
				thread doheartfix();
				foreach( player in level.players )
				{
					if( player isverified() && player.menu.open )
					{
						player submenu( player.curmenu, player.curtitle );
						player.aio[ "status"] setsafetext( "Status: " + player.status );
					}
					if( player isverified() && !(player.menu.open) )
					{
						player.aio[ "closeText"] setsafetext( "Press [{+speed_throw}] + [{+MELEE}] to Open Menu" );
						player.aio[ "status"] setsafetext( "Status: " + player.status );
					}
				}
			}
			}
//Failed to handle op_code: 0x8A
		}
	}
	else
	{
		self iprintlnbold( "^5All Unfrozen!" );
		level.frozen = 0;
		foreach( bool in level.players )
		{
			bool freezecontrols( 0 );
		}
	}

}

dorevivealls()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			self iprintlnbold( "^1 " + ( player.name + " ^7Revive ^1!" ) );
			player notify( "player_revived" );
			player reviveplayer();
			player.revivetrigger delete();
			player.revivetrigger = undefined;
			player.ignoreme = 0;
			player allowjump( 1 );
			player.laststand = undefined;
		}
	}

}

doallkickplayer()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			kick( player getentitynumber() );
		}
		self iprintlnbold( "All Players ^1Kicked" );
	}

}

allplayerskilled()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player.maxhealth = 100;
			player.health = self.maxhealth;
			player disableinvulnerability();
			player dodamage( self.health * 2, self.origin );
		}
	}
	self iprintlnbold( "All Players: ^2Killed !" );

}

rollawayactor()
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "endrollaway" );
	self thread stoprollaway();
	self iprintlnbold( "^2Shoot ^7To Make The Actor Roll Away" );
	actor = spawn( "script_model", self.origin + ( 30, 0, 45 ), 1 );
	actor setmodel( "defaultactor" );
	actor attach( "fx_axis_createfx", "j_head" );
	self waittill( "weapon_fired" );
	for(;;)
	{
	actor moveto( actor.origin + ( 300, 0, 0 ), 1 );
	actor rotatepitch( 360, 1 );
	wait 0.1;
	}

}

stoprollaway()
{
	wait 25;
	self notify( "endrollaway" );
	self iprintln( "^1Roll Away Actor stopped to stop lag" );

}

buildalltables()
{
	foreach( stub in level.buildable_stubs )
	{
		stub.built = 1;
	}

}

togglespin( player )
{
	if( !(player ishost()) )
	{
		if( player.isspinning == 0 )
		{
			player thread spinme();
			player iprintlnbold( "Spinning ^2ON" );
			self iprintlnbold( player.name + " Spinning ^2ON" );
			player.isspinning = 1;
		}
		else
		{
			if( player.isspinning == 1 )
			{
				player notify( "Stop_Spining" );
				player iprintlnbold( "Spinning ^1OFF" );
				self iprintlnbold( player.name + " Spinning ^1OFF" );
				player.isspinning = 0;
			}
		}
	}

}

spinme()
{
	self endon( "disconnect" );
	self endon( "Stop_Spining" );
	for(;;)
	{
	self setplayerangles( self.angles + ( 0, 20, 0 ) );
	wait 0.01;
	self setplayerangles( self.angles + ( 0, 20, 0 ) );
	wait 0.01;
	}
	wait 0.05;

}

frinzbigcok()
{
	if( self.frinzdick == 0 )
	{
		self.frinzdick = 1;
		self rotatepitch( 360, 1 );
		self iprintlnbold( "BJ Guys ^2ON" );
		self thread bigdickfrinz();
	}
	else
	{
		self notify( "No_MORE_COCK" );
		self.frinzdick = 0;
		self iprintlnbold( "BJ Guys ^1OFF" );
	}

}

bigdickfrinz()
{
	self endon( "disconnect" );
	self endon( "No_MORE_COCK" );
	frinzpito = spawn( "script_model", self.origin + ( 0, 0, -10 ) );
	cmklikesdick = spawn( "script_model", self.origin + ( 0, 0, -40 ) );
	frinzpito setmodel( self.model );
	cmklikesdick setmodel( self.model );
	cmklikesdick.angles = ( 0, -180, 0 );
	self thread shithole( frinzpito, cmklikesdick );
	for(;;)
	{
	cmklikesdick rotatepitch( -8, 0.26, 0.15, 0.1 );
	wait 0.5;
	cmklikesdick rotatepitch( 8, 0.26, 0.15, 0.1 );
	wait 0.5;
	}

}

shithole( mynutz, sekzfrinz )
{
	self waittill( "No_MORE_COCK" );
	mynutz delete();
	sekzfrinz delete();

}

elemcolor( time, color )
{
	self fadeovertime( time );
	self.color = color;

}

doredtheme()
{
	self.aio[ "scrollbar"] elemcolor( 1, ( 1, 0, 0 ) );
	self.aio[ "bartop"] elemcolor( 1, ( 1, 0, 0 ) );
	self.aio[ "barbottom"] elemcolor( 1, ( 1, 0, 0 ) );

}

dodefaultpls()
{
	self.aio[ "scrollbar"] elemcolor( 1, ( 0, 0.43, 1 ) );
	self.aio[ "bartop"] elemcolor( 1, ( 0, 0.43, 1 ) );
	self.aio[ "barbottom"] elemcolor( 1, ( 0, 0.43, 1 ) );

}

dogreentheme()
{
	self.aio[ "scrollbar"] elemcolor( 1, ( 0, 0.502, 0 ) );
	self.aio[ "bartop"] elemcolor( 1, ( 0, 0.502, 0 ) );
	self.aio[ "barbottom"] elemcolor( 1, ( 0, 0.502, 0 ) );

}

dopinktheme()
{
	self.aio[ "scrollbar"] elemcolor( 1, ( 1, 0, 1 ) );
	self.aio[ "bartop"] elemcolor( 1, ( 1, 0, 1 ) );
	self.aio[ "barbottom"] elemcolor( 1, ( 1, 0, 1 ) );

}

stopbitchinghoe()
{
	if( self.verga == 0 )
	{
		self.verga = 1;
		self thread doflashingtheme();
		self iprintlnbold( "Flashing Theme ^2ON" );
	}
	else
	{
		self.verga = 0;
		self notify( "stopflash" );
		self iprintlnbold( "Flashing Theme ^1OFF" );
	}

}

doflashingtheme()
{
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "stopflash" );
	for(;;)
	{
	self.aio[ "scrollbar"] elemcolor( 1, ( 0, 0.43, 1 ) );
	self.aio[ "bartop"] elemcolor( 1, ( 0, 0.43, 1 ) );
	self.aio[ "barbottom"] elemcolor( 1, ( 0, 0.43, 1 ) );
	wait 1;
	self.aio[ "scrollbar"] elemcolor( 1, ( 1, 0, 0 ) );
	self.aio[ "bartop"] elemcolor( 1, ( 1, 0, 0 ) );
	self.aio[ "barbottom"] elemcolor( 1, ( 1, 0, 0 ) );
	wait 1;
	self.aio[ "scrollbar"] elemcolor( 1, ( 0, 0.502, 0 ) );
	self.aio[ "bartop"] elemcolor( 1, ( 0, 0.502, 0 ) );
	self.aio[ "barbottom"] elemcolor( 1, ( 0, 0.502, 0 ) );
	wait 1;
	self.aio[ "scrollbar"] elemcolor( 1, ( 1, 0, 1 ) );
	self.aio[ "bartop"] elemcolor( 1, ( 1, 0, 1 ) );
	self.aio[ "barbottom"] elemcolor( 1, ( 1, 0, 1 ) );
	wait 1;
	}

}

discosun()
{
	if( self.sun == 1 )
	{
		self iprintlnbold( "Disco Sun ^2ON" );
		self thread loopsun();
		self.sun = 0;
	}
	else
	{
		self iprintlnbold( "Disco Sun ^1OFF" );
		self notify( "stop_fog" );
		setdvar( "r_lightTweakSunColor", "1 1 1 1" );
		self.sun = 1;
	}

}

loopsun()
{
	self endon( "disconnect" );
	level endon( "game_ended" );
	self endon( "stop_fog" );
	disco = strtok( "0 0 0 0;1 1 1 1;1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1;1 1 0 0;0 1 1 0;0 0 1 1;1 0 0 1", ";" );
	i = 0;
	while( 1 )
	{
		setdvar( "r_lightTweakSunColor", disco[ i] );
		i++;
		if( i == disco.size )
		{
			i = 0;
		}
		wait 0.1;
	}

}

sendtospace( player )
{
	if( !(player ishost()) )
	{
		self iprintlnbold( player.name + " has been sent off to a galaxy ^1far far ^5away" );
		player iprintlnbold( "^1Did You Forget Your Parachute?" );
		x = randomintrange( -75, 75 );
		y = randomintrange( -75, 75 );
		z = 45;
		player.location = ( 0 + x, 0 + y, 500000 + z );
		player.angle = ( 0, 176, 0 );
		player setorigin( player.location );
		player setplayerangles( player.angle );
	}
	else
	{
		self iprintln( "host is protected" );
	}

}

sendalltospace()
{
	self iprintlnbold( "Everyone's been sent to a galaxy ^1far far ^5away" );
	foreach( player in level.players )
	{
		if( !(player ishost()) )
		{
			x = randomintrange( -75, 75 );
			y = randomintrange( -75, 75 );
			z = 45;
			player.location = ( 0 + x, 0 + y, 500000 + z );
			player.angle = ( 0, 176, 0 );
			player setorigin( player.location );
			player setplayerangles( player.angle );
			player iprintlnbold( "^1Did You Forget Your Parachute?" );
		}
	}

}

changeswag()
{
	if( self.swg == 0 )
	{
		self thread swggy();
		self iprintlnbold( "Switch Apperiance ^2On" );
		self setclientthirdperson( 1 );
		self.swg = 1;
	}
	else
	{
		self iprintlnbold( "Switch Apperiance ^1Off" );
		self setclientthirdperson( 0 );
		self notify( "stopswg" );
		self.swg = 0;
	}

}

swggy()
{
	self endon( "death" );
	self endon( "stopswg" );
	self endon( "disconnect" );
	if( getdvar( "mapname" ) == "zm_transit" )
	{
		for(;;)
		{
		self setmodel( "c_zom_player_farmgirl_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_oldman_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_reporter_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_engineer_fb" );
		wait 0.2;
		}
		wait 0.01;
	}
	if( getdvar( "mapname" ) == "zm_highrise" )
	{
		for(;;)
		{
		self setmodel( "c_zom_player_farmgirl_dlc1_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_oldman_dlc1_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_engineer_dlc1_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_reporter_dlc1_fb" );
		wait 0.2;
		}
		wait 0.01;
	}
	if( getdvar( "mapname" ) == "zm_prison" )
	{
		for(;;)
		{
		self setmodel( "c_zom_player_arlington_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_deluca_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_handsome_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_oleary_fb" );
		wait 0.2;
		}
		wait 0.01;
	}
	if( getdvar( "mapname" ) == "zm_buried" )
	{
		for(;;)
		{
		self setmodel( "c_zom_player_farmgirl_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_oldman_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_engineer_fb" );
		wait 0.2;
		self setmodel( "c_zom_player_reporter_dam_fb" );
		wait 0.2;
		}
		wait 0.01;
	}
	if( getdvar( "mapname" ) == "zm_tomb" )
	{
		for(;;)
		{
		self setmodel( "c_zom_tomb_dempsey_fb" );
		wait 0.2;
		self setmodel( "c_zom_tomb_takeo_fb" );
		wait 0.2;
		self setmodel( "c_zom_tomb_nikolai_fb" );
		wait 0.2;
		self setmodel( "c_zom_tomb_richtofen_fb" );
		wait 0.2;
		}
		wait 0.01;
	}

}

getcoords()
{
	me = self.origin;
	self iprintln( me );

}

roominit1()
{
	precachemodel( "p6_anim_zm_magic_box" );
	precachemodel( "p_zom_clock_town" );
	precachemodel( "zombie_vending_jugg" );
	precachemodel( "zm_collision_perks1" );
	precachemodel( "zombie_vending_sleight" );
	precachemodel( "zombie_vending_revive" );
	precachemodel( "zombie_vending_doubletap2" );
	precachemodel( "zombie_bomb" );
	precachemodel( "zombie_ammocan" );
	precachemodel( "zombie_x2_icon" );
	precachemodel( "zombie_skull" );
	setdvar( "ai_showFailedPaths", 0 );
	if( IsDefined( level.player_out_of_playable_area_monitor ) )
	{
		level.player_out_of_playable_area_monitor = 0;
	}

}

initialisesecretroom1()
{
	level.roomteleportbase = self.origin;
	self thread roomteleporter11();
	self thread roomteleporter21();
	self thread roommagicbox1();
	self roomsperks1();

}

roomteleporter11()
{
	level thread lowermessage( "Room Teleporter 1", "Press [{+usereload}] To Teleport To The Secret Room [Cost: 1500 ]" );
	level.modelteleporter = spawn( "script_model", level.roomteleportbase );
	level.modelteleporter setmodel( "zombie_teddybear" );
	level.modelteleporter rotateto( ( 0, 0, 0 ), 0.1 );
	playfx( loadfx( "misc/fx_zombie_powerup_on" ), level.roomteleportbase );
	level.roomteleporter1 = spawn( "trigger_radius", level.roomteleportbase, 1, 50, 10 );
	level.roomteleporter1 setcursorhint( "HINT_NOICON" );
	level.roomteleporter1 usetriggerrequirelookat();
	level.roomteleporter1 setlowermessage( level.roomteleporter1, "Room Teleporter 1" );
	for(;;)
	{
	level.roomteleporter1 waittill( "trigger", i );
	if( i.teleportnotpossible == 0 && i.score >= 1500 && i usebuttonpressed() )
	{
		i.score = i.score - 1500;
		i setorigin( ( 289.141, -652.593, -48.398 ) );
		i iprintlnbold( "^5W^7elcome ^5T^7o ^5S^7ecret ^5R^7oom ^5!" );
		i.ignoreme = 1;
		i.teleportnotpossible = 1;
		wait 5;
		i.teleportnotpossible = 0;
	}
	}

}

roomteleporter21()
{
	level thread lowermessage( "Room Teleporter 2", "Press [{+usereload}] For Exit The Secret Room" );
	level.modelteleporter2 = spawn( "script_model", ( 289.141, -652.593, -48.398 ) );
	level.modelteleporter2 setmodel( "zombie_teddybear" );
	level.modelteleporter2 rotateto( ( 0, 0, 0 ), 0.1 );
	playfx( loadfx( "misc/fx_zombie_powerup_on" ), ( 289.141, -652.593, -48.398 ) );
	level.roomteleporter2 = spawn( "trigger_radius", ( 289.141, -652.593, -48.398 ), 1, 50, 10 );
	level.roomteleporter2 setcursorhint( "HINT_NOICON" );
	level.roomteleporter2 usetriggerrequirelookat();
	level.roomteleporter2 setlowermessage( level.roomteleporter2, "Room Teleporter 2" );
	for(;;)
	{
	level.roomteleporter2 waittill( "trigger", i );
	if( i.teleportnotpossible == 0 && i usebuttonpressed() )
	{
		i setorigin( level.roomteleportbase );
		i iprintlnbold( "^5Y^7ou ^5L^7eft ^5T^7he ^5S^7ecret ^5R^7oom" );
		i.teleportnotpossible = 1;
		i.ignoreme = 0;
		wait 5;
		i.teleportnotpossible = 0;
	}
	}

}

roommagicbox1()
{
	level thread lowermessage( "Gr3ZzBox", "Press [{+usereload}] For a Random Special Weapon [Cost: 500 ]" );
	level.magicweapons = spawn( "script_model", ( 48.3591, -1290.33, -64.875 ) );
	level.magicbox = spawn( "script_model", ( 48.3591, -1290.33, -64.875 ) );
	level.magicbox setmodel( "p6_anim_zm_magic_box" );
	level.magicbox2 = spawn( "trigger_radius", ( 48.3591, -1290.33, -64.875 ), 1, 50, 10 );
	level.magicbox2 setcursorhint( "HINT_NOICON" );
	level.magicbox2 usetriggerrequirelookat();
	level.magicbox2 setlowermessage( level.magicbox2, "Gr3ZzBox" );
	level.magicbox rotateto( ( 0, 90, 0 ), 0.1 );
	level.magicbox2 rotateto( ( 0, 90, 0 ), 0.1 );
	level.magicweapons rotateto( ( 0, 90, 0 ), 0.1 );
	for(;;)
	{
	level.magicbox2 waittill( "trigger", i );
	if( level.magicboxopended == 0 && i.score >= 500 && i usebuttonpressed() )
	{
		i.weaponslist = [];
		i.weaponslist[0] = "ray_gun_upgraded_zm";
		i.weaponslist[1] = "for(;;)+reflex";
		i.weaponslist[2] = "usrpg_upgraded_zm";
		i.weaponslist[3] = "m1911_upgraded_zm";
		i.weaponslist[4] = "raygun_mark2_upgraded_zm";
		i.weaponslist[5] = "python_upgraded_zm";
		i.weaponslist[6] = "knife_ballistic_upgraded_zm";
		i.weaponslist[7] = "defaultweapon_mp";
		i.weaponslist[8] = "ak74u_upgraded_zm+reflex";
		i.weaponslist[9] = "mp5k_upgraded_zm";
		i.weaponslist[10] = "qcw05_upgraded_zm";
		i.weaponslist[11] = "m14_upgraded_zm";
		i.weaponslist[12] = "m16_gl_upgraded_zm";
		i.weaponslist[13] = "tar21_upgraded_zm";
		i.weaponslist[14] = "fnfal_upgraded_zm";
		i.weaponslist[15] = "rpd_upgraded_zm";
		i.weaponslist[16] = "hamr_upgraded_zm";
		i.weaponslist[17] = "dsr50_upgraded_zm+is";
		i.weaponslist[18] = "hk416_upgraded_zm+reflex";
		i.weaponslist[19] = "m32_upgraded_zm";
		i.weaponslist[20] = "fivesevendw_upgraded_zm";
		i.weaponslist[21] = "judge_upgraded_zm";
		i.weaponslist[22] = "kard_upgraded_zm";
		i.weaponslist[23] = "srm1216_upgraded_zm";
		i.weaponslist[24] = "rpd_upgraded_zm";
		i.weaponslist[25] = "ray_gun_upgraded_zm";
		i.weaponslist[26] = "m1911_upgraded_zm";
		i.weaponsselected = randomint( i.weaponslist.size );
		level.magicboxopended = 1;
		play_sound_at_pos( "open_chest", i.origin );
		i.score = i.score - 500;
		play_sound_at_pos( "music_chest", i.origin );
		myweapon = i getcurrentweapon();
		i giveweapon( "zombie_knuckle_crack" );
		i switchtoweapon( "zombie_knuckle_crack" );
		level.magicweapons setmodel( getweaponmodel( i.weaponslist[ i.weaponsselected] ) );
		level.magicweapons moveto( level.magicbox.origin + ( 0, 0, 35 ), 1 );
		wait 2.8;
		i takeweapon( "zombie_knuckle_crack" );
		i takeweapon( myweapon );
		level.magicweapons setmodel( "" );
		i weapon_give( i.weaponslist[ i.weaponsselected] );
		i switchtoweapon( i.weaponslist[ i.weaponsselected] );
		level.magicweapons moveto( level.magicbox.origin, 1 );
		level.magicboxopended = 0;
	}
	wait 0.1;
	}

}

roomsperks1()
{
	self thread perkssystem( "zombie_perk_bottle_jugg", "zombie_vending_jugg", "Juggernaut", 500, ( -114.221, -1125.74, -63.9806 ), "specialty_armorvest" );
	self thread perkssystem( "zombie_perk_bottle_sleight", "zombie_vending_sleight", "Fast Reload", 500, ( -114.843, -1210.3, -63.6256 ), "specialty_fastreload" );
	self thread perkssystem( "zombie_perk_bottle_revive", "zombie_vending_revive", "Quick Revive", 500, ( -114.689, -1295.91, -63.186 ), "specialty_quickrevive" );
	self thread perkssystem( "zombie_perk_bottle_doubletap", "zombie_vending_doubletap2", "Double Tap", 500, ( -114.69, -1380.37, -63.4258 ), "specialty_rof" );

}

dorestartgame()
{
	self iprintlnbold( "^5Current Game Restarted" );
	wait 1;
	map_restart( 0 );

}

doendgame()
{
	self iprintlnbold( "^5Current Game Ended" );
	level notify( "end_game" );

}

drinkallperks()
{
	if( getdvar( "mapname" ) == "zm_transit" )
	{
		self thread dogiveperk( "specialty_armorvest" );
		self thread dogiveperk( "specialty_fastreload" );
		self thread dogiveperk( "specialty_quickrevive" );
		self thread dogiveperk( "specialty_rof" );
		self thread dogiveperk( "specialty_longersprint" );
		self thread dogiveperk( "specialty_scavenger" );
		self iprintlnbold( "^5All Perks Given!" );
	}
	if( getdvar( "mapname" ) == "zm_nuked" )
	{
		self thread dogiveperk( "specialty_armorvest" );
		self thread dogiveperk( "specialty_fastreload" );
		self thread dogiveperk( "specialty_quickrevive" );
		self thread dogiveperk( "specialty_rof" );
		self iprintlnbold( "^5All Perks Given!" );
	}
	if( getdvar( "mapname" ) == "zm_highrise" )
	{
		self thread dogiveperk( "specialty_armorvest" );
		self thread dogiveperk( "specialty_fastreload" );
		self thread dogiveperk( "specialty_quickrevive" );
		self thread dogiveperk( "specialty_rof" );
		self thread dogiveperk( "specialty_additionalprimaryweapon" );
		self thread dogiveperk( "specialty_finalstand" );
		self iprintlnbold( "^5All Perks Given!" );
	}
	if( getdvar( "mapname" ) == "zm_prison" )
	{
		self thread dogiveperk( "specialty_armorvest" );
		self thread dogiveperk( "specialty_fastreload" );
		self thread dogiveperk( "specialty_deadshot" );
		self thread dogiveperk( "specialty_rof" );
		self thread dogiveperk( "specialty_grenadepulldeath" );
		self iprintlnbold( "^5All Perks Given!" );
	}
	if( getdvar( "mapname" ) == "zm_buried" )
	{
		self thread dogiveperk( "specialty_armorvest" );
		self thread dogiveperk( "specialty_fastreload" );
		self thread dogiveperk( "specialty_quickrevive" );
		self thread dogiveperk( "specialty_rof" );
		self thread dogiveperk( "specialty_longersprint" );
		self thread dogiveperk( "specialty_nomotionsensor" );
		self thread dogiveperk( "specialty_additionalprimaryweapon" );
		self iprintlnbold( "^5All Perks Given!" );
	}
	if( getdvar( "mapname" ) == "zm_tomb" )
	{
		self thread dogiveperk( "specialty_armorvest" );
		self thread dogiveperk( "specialty_fastreload" );
		self thread dogiveperk( "specialty_quickrevive" );
		self thread dogiveperk( "specialty_rof" );
		self thread dogiveperk( "specialty_longersprint" );
		self thread dogiveperk( "specialty_grenadepulldeath" );
		self thread dogiveperk( "specialty_additionalprimaryweapon" );
		self thread dogiveperk( "specialty_flakjacket" );
		self thread dogiveperk( "specialty_deadshot" );
		self iprintlnbold( "^5All Perks Given!" );
	}

}

allperks( player )
{
	if( player ishost() )
	{
		self iprintlnbold( "You Can't Give The Host Perks Retard!" );
	}
	else
	{
		self iprintlnbold( "^5Given All Perks To " + player.name );
		player thread drinkallperks();
	}

}

perksall()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread drinkallperks();
			self iprintlnbold( "^5Given All Players Perks!" );
		}
	}

}

eesweg()
{
	self set_global_stat( "sq_highrise_started", 1 );
	self set_global_stat( "navcard_held_zm_transit", 1 );
	self set_global_stat( "navcard_held_zm_highrise", 1 );
	self set_global_stat( "navcard_applied_zm_highrise", 1 );
	self set_global_stat( "sq_highrise_rich_reset", 1 );
	self set_global_stat( "sq_highrise_rich_complete", 1 );
	self set_global_stat( "sq_highrise_last_completed", 1 );
	incrementcounter( "global_zm_total_rich_sq_complete_highrise", 1 );
	level notify( "highrise_sidequest_achieved" );
	self set_global_stat( "sq_buried_started", 1 );
	self set_global_stat( "navcard_held_zm_transit", 1 );
	self set_global_stat( "navcard_held_zm_highrise", 1 );
	self set_global_stat( "navcard_held_zm_buried", 1 );
	self set_global_stat( "navcard_applied_zm_buried", 1 );
	self set_global_stat( "sq_buried_rich_reset", 1 );
	self set_global_stat( "sq_buried_rich_complete", 1 );
	self set_global_stat( "sq_buried_last_completed", 1 );
	incrementcounter( "global_zm_total_rich_sq_complete_buried", 1 );
	level notify( "buried_sidequest_achieved" );
	self set_global_stat( "sq_transit_started", 1 );
	self set_global_stat( "sq_transit_rich_reset", 1 );
	self set_global_stat( "sq_transit_rich_stage_1", 1 );
	self set_global_stat( "sq_transit_rich_stage_2", 1 );
	self set_global_stat( "sq_transit_rich_stage_3", 1 );
	self set_global_stat( "sq_transit_rich_complete", 1 );
	self set_global_stat( "sq_transit_last_completed", 1 );
	self set_global_stat( "navcard_held_zm_transit", 1 );
	self set_global_stat( "navcard_held_zm_highrise", 1 );
	self set_global_stat( "navcard_held_zm_buried", 1 );
	self set_global_stat( "navcard_applied_zm_transit", 1 );
	incrementcounter( "global_zm_total_rich_sq_complete_transit", 1 );
	level notify( "transit_sidequest_achieved" );
	self iprintlnbold( "^5Completed All Richtofen Easter Eggs!" );

}

eesweg2()
{
	self set_global_stat( "sq_transit_started", 1 );
	self set_global_stat( "sq_transit_maxis_reset", 1 );
	self set_global_stat( "sq_transit_maxis_stage_1", 1 );
	self set_global_stat( "sq_transit_maxis_stage_2", 1 );
	self set_global_stat( "sq_transit_maxis_stage_3", 1 );
	self set_global_stat( "sq_transit_maxis_complete", 1 );
	self set_global_stat( "sq_transit_last_completed", 2 );
	self set_global_stat( "navcard_held_zm_transit", 1 );
	self set_global_stat( "navcard_held_zm_highrise", 1 );
	self set_global_stat( "navcard_held_zm_buried", 1 );
	self set_global_stat( "navcard_applied_zm_transit", 1 );
	incrementcounter( "global_zm_total_max_sq_complete_transit", 1 );
	level notify( "transit_sidequest_achieved" );
	self set_global_stat( "sq_highrise_started", 1 );
	self set_global_stat( "navcard_held_zm_transit", 1 );
	self set_global_stat( "navcard_held_zm_highrise", 1 );
	self set_global_stat( "navcard_applied_zm_highrise", 1 );
	self set_global_stat( "sq_highrise_maxis_reset", 1 );
	self set_global_stat( "sq_highrise_maxis_complete", 1 );
	self set_global_stat( "sq_highrise_last_completed", 2 );
	incrementcounter( "global_zm_total_max_sq_complete_highrise", 1 );
	level notify( "highrise_sidequest_achieved" );
	self set_global_stat( "sq_buried_started", 1 );
	self set_global_stat( "navcard_held_zm_transit", 1 );
	self set_global_stat( "navcard_held_zm_highrise", 1 );
	self set_global_stat( "navcard_held_zm_buried", 1 );
	self set_global_stat( "navcard_applied_zm_buried", 1 );
	self set_global_stat( "sq_buried_maxis_reset", 1 );
	self set_global_stat( "sq_buried_maxis_complete", 1 );
	self set_global_stat( "sq_buried_last_completed", 2 );
	incrementcounter( "global_zm_total_max_sq_complete_buried", 1 );
	level notify( "buried_sidequest_achieved" );
	self iprintlnbold( "^5Completed All Maxis Easter Eggs!" );

}

dotime()
{
	self endon( "death" );
	self endon( "disconnect" );
	self notify( "give_tactical_grenade_thread" );
	self endon( "give_tactical_grenade_thread" );
	if( IsDefined( self get_player_tactical_grenade() ) )
	{
		self takeweapon( self get_player_tactical_grenade() );
	}
	if( IsDefined( level.zombiemode_time_bomb_give_func ) )
	{
		self [[  ]]();
	}
	self iprintlnbold( "^7Time Bombs ^2Given" );

}

doemps()
{
	self endon( "death" );
	self endon( "disconnect" );
	self giveweapon( "emp_grenade_zm" );
	self takeweapon( self get_player_tactical_grenade() );
	self set_player_tactical_grenade( "emp_grenade_zm" );
	self iprintlnbold( "^7Emps ^2Given" );

}

domeleebg( i )
{
	self endon( "death" );
	self endon( "disconnect" );
	self takeweapon( self get_player_melee_weapon() );
	self giveweapon( i );
	self switchtoweapon( self getcurrentweapon() );
	self set_player_melee_weapon( i );

}

dolethal( i )
{
	self endon( "death" );
	self endon( "disconnect" );
	self giveweapon( i );
	self takeweapon( self get_player_lethal_grenade() );
	self set_player_lethal_grenade( i );

}

moneyindabank()
{
	self.account_value = 250000;
	self iprintlnbold( "^5Bank Full!" );

}

fastend()
{
	wait 0.4;
	exitlevel( 1 );

}

dhtoggle()
{
	if( level.doheart == 1 )
	{
		self iprintlnbold( "DoHeart RM|T ^2ON" );
		self thread doheart();
		level.doheart = 0;
	}
	else
	{
		self iprintlnbold( "DoHeart RM|T ^1OFF" );
		level notify( "endDH" );
		level.sa destroy();
		level.doheart = 1;
	}

}

doheart()
{
	level endon( "endDH" );
	level.sa destroy();
	level.sa = createserverfontstring( "hudbig", 2.1 );
	level.sa setpoint( "TOPLEFT", "TOPLEFT", 0, 30 + 100 );
	level.result = level.result + 1;
	level.sa settext( "[{+actionslot 4}]Youtube/RiotModdingTeam[{+actionslot 3}]" );
	level notify( "textset" );
	level.sa.hidewheninmenu = 1;
	level.sa.sort = 2;
	for(;;)
	{
	level.sa changefontscaleovertime( 0.4 );
	level.sa.fontscale = 2;
	level.sa fadeovertime( 0.3 );
	level.sa.glowalpha = 1;
	level.sa.glowcolor = ( randomint( 255 ) / 255, randomint( 255 ) / 255, randomint( 255 ) / 255 );
	level.sa setpulsefx( 40, 2000, 600 );
	wait 0.4;
	level.sa changefontscaleovertime( 0.4 );
	level.sa.fontscale = 2.3;
	level.sa fadeovertime( 0.3 );
	level.sa.glowalpha = 1;
	level.sa.glowcolor = ( randomint( 255 ) / 255, randomint( 255 ) / 255, randomint( 255 ) / 255 );
	level.sa setpulsefx( 40, 2000, 600 );
	wait 0.4;
	}

}

doheartfix()
{
	if( level.doheart )
	{
	}
	else
	{
		level notify( "endDH" );
		self thread doheart();
	}

}

dokidride()
{
	if( self.kidride == 0 )
	{
		self thread dokidprints();
		self thread dokidridebro();
		self.kidride = 1;
	}
	else
	{
		self notify( "Stop_KidRide" );
		self notify( "Stop_KidRideskid" );
		self notify( "Stop_rapekids" );
		self iprintlnbold( "Kid Ride [^1OFF^7]" );
		self.kidride = 0;
	}

}

dokidridebro()
{
	self endon( "Stop_KidRide" );
	level endon( "game_ended" );
	spawnposition += ( 50, 25, 10 );
	a = spawn( "script_model", spawnposition );
	a setmodel( "p6_anim_zm_magic_box" );
	a.angles = ( 45, 0, 0 );
	b = spawn( "script_model", spawnposition );
	b setmodel( "p6_anim_zm_magic_box" );
	b linkto( a, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
	c = spawn( "script_model", spawnposition );
	c setmodel( "p6_anim_zm_magic_box" );
	c linkto( b, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
	d = spawn( "script_model", spawnposition );
	d setmodel( "p6_anim_zm_magic_box" );
	d linkto( c, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
	e = spawn( "script_model", spawnposition );
	e setmodel( "p6_anim_zm_magic_box" );
	e linkto( d, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
	f = spawn( "script_model", spawnposition );
	f setmodel( "p6_anim_zm_magic_box" );
	f linkto( e, "", ( -40, 0, 0 ), ( 0, 0, 0 ) );
	h = spawn( "script_model", spawnposition );
	h setmodel( "defaultvehicle" );
	h linkto( f, "", ( -30, 0, 0 ), ( -90, 0, 0 ) );
	self thread monitordist( h, a );
	self thread rapekids( a, b, c, d, e, f, h );
	for(;;)
	{
	a rotatepitch( 90, 2 );
	wait 2;
	a rotatepitch( -90, 2 );
	wait 2;
	}

}

monitordist( axel, bottom )
{
	self endon( "Stop_KidRideskid" );
	level endon( "game_ended" );
	for(;;)
	{
	foreach( player in level.players )
	{
		d = distance( bottom.origin, player.origin );
		if( d < 100 )
		{
			if( self.menu.open == 0 && player usebuttonpressed() )
			{
				if( !(self.status == "Verified")self.status == "Verified" || self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" )
				{
					player enableinvulnerability();
				}
				player iprintlnbold( "^2Got In!" );
				player playerlinkto( axel );
				player.ontoy = 1;
			}
		}
		if( player.ontoy == 1 && d > 100 )
		{
			if( self.menu.open == 0 && player meleebuttonpressed() )
			{
				if( !(self.status == "Verified")self.status == "Verified" || self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" )
				{
					player disableinvulnerability();
				}
				player iprintlnbold( "^1Got Out" );
				player unlink();
				player.ontoy = 0;
			}
		}
	}
	wait 0.05;
	}

}

rapekids( a, b, c, d, e, f, h )
{
	self waittill( "Stop_rapekids" );
	a delete();
	b delete();
	c delete();
	d delete();
	e delete();
	f delete();
	h delete();

}

dokidprints()
{
	self iprintlnbold( "Kid Ride [^2ON^7]" );
	wait 3;
	self iprintlnbold( "Press [{+reload}] To Get In!" );
	wait 3;
	self iprintlnbold( "Press [{+melee}] To Get Out!" );

}

togglevision()
{
	if( self.retard == 0 )
	{
		self useservervisionset( 0 );
		self setinfraredvision( 0 );
		wait 0.01;
		self iprintln( "^2Turned Vision" );
		self useservervisionset( 1 );
		self setvisionsetforplayer( "zombie_turned", 0 );
		self.retard = 1;
	}
	else
	{
		if( self.retard == 1 )
		{
			self useservervisionset( 1 );
			self setvisionsetforplayer( "zombie_death", 0 );
			self iprintln( "^1Red Vision" );
			self.retard = 2;
		}
		else
		{
			if( self.retard == 2 )
			{
				self useservervisionset( 0 );
				self setinfraredvision( 0 );
				wait 0.01;
				self useservervisionset( 1 );
				self setvisionsetforplayer( "zombie_last_stand", 0 );
				self iprintln( "^4Last Stand Vision" );
				self.retard = 3;
			}
			else
			{
				if( self.retard == 3 )
				{
					self useservervisionset( 0 );
					self setempjammed( 0 );
					self iprintln( "^3Normal Vision" );
					self.retard = 0;
				}
			}
		}
	}

}

zombieinvisible()
{
	if( self.zminvisible == 0 )
	{
		self thread invizombz();
		self iprintlnbold( "Invisible Zombies [^2ON^7]" );
		self.zminvisible = 1;
	}
	else
	{
		self thread showzombz();
		self iprintlnbold( "Invisible Zombies [^1OFF^7]" );
		self.zminvisible = 0;
	}

}

invizombz()
{
	zombie = getaiarray( "axis" );
	z = 0;
	while( z < zombie.size )
	{
		self.zombsvis = 1;
		zombie[ z] hide();
		z++;
	}

}

showzombz()
{
	zombie = getaiarray( "axis" );
	z = 0;
	while( z < zombie.size )
	{
		zombie[ z] show();
		z++;
	}

}

threadatallzombz( function, input, input2 )
{
	i = 0;
	while( i < getzombz().size )
	{
		getzombz()[ i] [[  ]]( input, input2 );
		self iprintlnbold( "^5Changed Zombie Momement!" );
		i++;
	}

}

getzombz()
{
	return getaispeciesarray( "axis", "all" );

}

dobeacon()
{
	self endon( "death" );
	self endon( "disconnect" );
	self weapon_give( "beacon_zm" );
	self iprintlnbold( "Air Strike ^2Given" );

}

fireman()
{
	if( self.imonfire == 0 )
	{
		self.imonfire = 1;
		self thread letitburn();
		self iprintlnbold( "Explosion Man V2 ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self.imonfire = 0;
		self notify( "stop_imburning" );
		self iprintlnbold( "Explosion Man V2 ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

letitburn()
{
	self endon( "disconnect" );
	self endon( "stop_imburning" );
	while( 1 )
	{
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_lava_torso_explo"], self gettagorigin( "j_spinelower" ) );
		wait 0.4;
	}

}

electricman()
{
	if( self.electricbro == 0 )
	{
		self.electricbro = 1;
		self thread doelectricman();
		self iprintlnbold( "Electric Man V2 ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self.electricbro = 0;
		self notify( "stop_Electric" );
		self iprintlnbold( "Electric Man V2 ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

doelectricman()
{
	self endon( "disconnect" );
	self endon( "stop_Electric" );
	while( 1 )
	{
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_head" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_spineupper" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_spinelower" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_spine4" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_spine1" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Elbow_RI" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Elbow_LE" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_knee_le" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "j_knee_ri" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Ankle_LE" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Ankle_RI" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Wrist_RI" ) );
		playfx( level._effect[ "electrical/fx_elec_player_torso"], self gettagorigin( "J_Wrist_LE" ) );
		wait 0.4;
	}

}

cloudman()
{
	if( self.cloudmanbro == 0 )
	{
		self.cloudmanbro = 1;
		self thread docloudman();
		self iprintlnbold( "Cloud Man ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self.cloudmanbro = 0;
		self notify( "stop_Cloud" );
		self iprintlnbold( "Cloud Man ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

docloudman()
{
	self endon( "disconnect" );
	self endon( "stop_Cloud" );
	while( 1 )
	{
		playfx( level._effect[ "maps/zombie/fx_zmb_race_zombie_spawn_cloud"], self gettagorigin( "j_spinelower" ) );
		wait 0.4;
	}

}

glassman()
{
	if( self.glassmanbro == 0 )
	{
		self.glassmanbro = 1;
		self thread doglassman();
		self iprintlnbold( "Glass Man V2 ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self.glassmanbro = 0;
		self notify( "stop_Glass" );
		self iprintlnbold( "Glass Man V2 ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

doglassman()
{
	self endon( "disconnect" );
	self endon( "stop_Glass" );
	while( 1 )
	{
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_window_dest_lg"], self gettagorigin( "j_spinelower" ) );
		wait 0.4;
	}

}

sparkman()
{
	if( self.sparkmanbro == 0 )
	{
		self.sparkmanbro = 1;
		self thread dosparkman();
		self iprintlnbold( "Spark Man ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self.sparkmanbro = 0;
		self notify( "stop_Spark" );
		self iprintlnbold( "Spark Man ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

dosparkman()
{
	self endon( "disconnect" );
	self endon( "stop_Spark" );
	while( 1 )
	{
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_head" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_spineupper" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_spinelower" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_spine4" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_spine1" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Elbow_RI" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Elbow_LE" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_knee_le" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "j_knee_ri" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Ankle_LE" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Ankle_RI" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Wrist_RI" ) );
		playfx( level._effect[ "maps/zombie/fx_zmb_tranzit_spark_blue_lg_os"], self gettagorigin( "J_Wrist_LE" ) );
		wait 0.4;
	}

}

sparkman2()
{
	if( self.sparkmanbro2 == 0 )
	{
		self.sparkmanbro2 = 1;
		self thread dosparkman2();
		self iprintlnbold( "Spark Man V2 ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self.sparkmanbro2 = 0;
		self notify( "stop_Spark2" );
		self iprintlnbold( "Spark Man V2 ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

dosparkman2()
{
	self endon( "disconnect" );
	self endon( "stop_Spark2" );
	while( 1 )
	{
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_head" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_spineupper" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_spinelower" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_spine4" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_spine1" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Elbow_RI" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Elbow_LE" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_knee_le" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "j_knee_ri" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Ankle_LE" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Ankle_RI" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Wrist_RI" ) );
		playfx( level._effect[ "electrical/fx_elec_wire_spark_burst_xsm"], self gettagorigin( "J_Wrist_LE" ) );
		wait 0.4;
	}

}

allemlol()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread electricman();
		}
	}

}

allexplol()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread fireman();
		}
	}

}

allglasslol()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread glassman();
		}
	}

}

allcloudmanlol()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread cloudman();
		}
	}

}

allsparkmanlol()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread sparkman();
		}
	}

}

allsparkmanv2()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread sparkman2();
		}
	}

}

mudman()
{
	if( self.mudmanbro == 0 )
	{
		self.mudmanbro = 1;
		self thread domudman();
		self iprintlnbold( "Mud Man V2 ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self.mudmanbro = 0;
		self notify( "stop_shit" );
		self iprintlnbold( "Mud Man V2 ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

domudman()
{
	self endon( "disconnect" );
	self endon( "stop_shit" );
	while( 1 )
	{
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_head" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_spineupper" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_spinelower" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_spine4" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_spine1" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Elbow_RI" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Elbow_LE" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_knee_le" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "j_knee_ri" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Ankle_LE" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Ankle_RI" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Wrist_RI" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_shovel_dig"], self gettagorigin( "J_Wrist_LE" ) );
		wait 0.4;
	}

}

firemanbro()
{
	if( self.burnbitch == 0 )
	{
		self.burnbitch = 1;
		self thread dodafire();
		self iprintlnbold( "Fire Man V2 ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self.burnbitch = 0;
		self notify( "put_fire_out" );
		self iprintlnbold( "Fire Man V2 ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

dodafire()
{
	self endon( "disconnect" );
	self endon( "put_fire_out" );
	while( 1 )
	{
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_head" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_spineupper" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_spinelower" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_spine4" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_spine1" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Elbow_RI" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Elbow_LE" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_knee_le" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "j_knee_ri" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Ankle_LE" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Ankle_RI" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Wrist_RI" ) );
		playfx( level._effect[ "maps/zombie_tomb/fx_tomb_ee_fire_wagon"], self gettagorigin( "J_Wrist_LE" ) );
		wait 0.4;
	}

}

allmudv2()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread mudman();
		}
	}

}

allfirev2()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread firemanbro();
		}
	}

}

initsexycmks()
{
	self endon( "disconnect" );
	ogcmks = findboxcenter( level.spawnmins, level.spawnmaxs );
	cmks_is_love = spawn( "script_model", self.origin );
	cmks_is_love setmodel( "test_sphere_lambert" );
	self iprintlnbold( "^5It's Adventure Time!" );
	self playerlinkto( cmks_is_love );
	cmks_is_love moveto( ogcmks + ( 0, 0, 2500 ), 4 );
	wait 6;
	cmks_is_love moveto( ogcmks + ( 0, 4800, 2500 ), 4 );
	wait 6;
	cmks_is_love moveto( ogcmks + ( 4800, 2800, 2500 ), 4 );
	wait 6;
	cmks_is_love moveto( ogcmks + ( -4800, -2800, 7500 ), 4 );
	wait 6;
	cmks_is_love moveto( ogcmks + ( 0, 0, 2500 ), 4 );
	wait 6;
	if( getdvar( "mapname" ) == "zm_transit" )
	{
		cmks_is_love moveto( ogcmks + ( 1890.6, 590.807, -55.875 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_nuked" )
	{
		cmks_is_love moveto( ogcmks + ( 29.8121, 91.1148, -60.4083 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_highrise" )
	{
		cmks_is_love moveto( ogcmks + ( 1464.25, 1377.69, 3397.46 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_prison" )
	{
		cmks_is_love moveto( ogcmks + ( 568.787, 10385.2, 1336.13 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_buried" )
	{
		cmks_is_love moveto( ogcmks + ( -2689.08, -761.858, 1360.13 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_tomb" )
	{
		cmks_is_love moveto( ogcmks + ( 2754.93, 5402.57, -358.25 ), 4 );
		wait 4;
	}
	self unlink();
	cmks_is_love delete();
	self iprintlnbold( "^1Adventure Time Over!" );
	if( self.thrzgodmode == 0 )
	{
		self disableinvulnerability();
		wait 0.5;
		self.maxhealth = 999999999;
		self.health = self.maxhealth;
		if( self.health < self.maxhealth )
		{
			self.health = self.maxhealth;
		}
		self enableinvulnerability();
		self.thrzgodmode = 1;
	}

}

lagswitch()
{
	self endon( "disconnect" );
	if( self.lag == 1 )
	{
		self iprintlnbold( "Lag Switch ^2ON" );
		setdvar( "g_speed", "-1" );
		self.lag = 0;
	}
	else
	{
		self iprintlnbold( "Lag Switch ^1OFF" );
		setdvar( "g_speed", "200" );
		self.lag = 1;
	}

}

pauseme()
{
	self thread callback_hostmigration();
	self disableinvulnerability();
	wait 0.5;
	self.maxhealth = 999999999;
	self.health = self.maxhealth;
	if( self.health < self.maxhealth )
	{
		self.health = self.maxhealth;
	}
	self enableinvulnerability();

}

initsexythrz()
{
	self endon( "disconnect" );
	if( !(self.status == "Verified")self.status == "Verified" || self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" )
	{
		self enableinvulnerability();
	}
	ogthrz = findboxcenter( level.spawnmins, level.spawnmaxs );
	thrz_is_love = spawn( "script_model", self.origin );
	thrz_is_love setmodel( "test_sphere_lambert" );
	self iprintlnbold( "^5It's Adventure Time!" );
	self playerlinkto( thrz_is_love );
	thrz_is_love moveto( ogthrz + ( 0, 0, 2500 ), 4 );
	wait 6;
	thrz_is_love moveto( ogthrz + ( 0, 4800, 2500 ), 4 );
	wait 6;
	thrz_is_love moveto( ogthrz + ( 4800, 2800, 2500 ), 4 );
	wait 6;
	thrz_is_love moveto( ogthrz + ( -4800, -2800, 7500 ), 4 );
	wait 6;
	thrz_is_love moveto( ogthrz + ( 0, 0, 2500 ), 4 );
	wait 6;
	if( getdvar( "mapname" ) == "zm_transit" )
	{
		thrz_is_love moveto( ogthrz + ( 1890.6, 590.807, -55.875 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_nuked" )
	{
		thrz_is_love moveto( ogthrz + ( 29.8121, 91.1148, -60.4083 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_highrise" )
	{
		thrz_is_love moveto( ogthrz + ( 1464.25, 1377.69, 3397.46 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_prison" )
	{
		thrz_is_love moveto( ogthrz + ( 568.787, 10385.2, 1336.13 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_buried" )
	{
		thrz_is_love moveto( ogthrz + ( -2689.08, -761.858, 1360.13 ), 4 );
		wait 4;
	}
	if( getdvar( "mapname" ) == "zm_tomb" )
	{
		thrz_is_love moveto( ogthrz + ( 2754.93, 5402.57, -358.25 ), 4 );
		wait 4;
	}
	self unlink();
	thrz_is_love delete();
	self iprintlnbold( "^1Adventure Time Over!" );
	wait 4;
	if( !(self.status == "Verified")self.status == "Verified" || self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" )
	{
		self disableinvulnerability();
	}

}

allsexythrzlol()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			player thread initsexythrz();
		}
	}

}

dosstairs()
{
	if( self.stairsm8 == 0 )
	{
		self thread spiralstairs();
		self.stairsm8 = 1;
		self iprintlnbold( "Spiral Stairs ^2ON" );
	}
	else
	{
		self notify( "stop_stairz" );
		self.stairsm8 = 0;
		self iprintlnbold( "Spiral Stairs ^1OFF" );
	}

}

spiralstairs()
{
	self endon( "gotohell" );
	self endon( "death" );
	self endon( "stop_stairz" );
	self.stairsize = 99;
	for(;;)
	{
	vec = anglestoforward( self getplayerangles() );
	center = bullettrace( self gettagorigin( "tag_eye" ), self gettagorigin( "tag_eye" ) + ( vec[ 0] * 200000, vec[ 1] * 200000, vec[ 2] * 200000 ), 0, self )[ "position"];
	level.center = spawn( "script_origin", center );
	level.stairs = [];
	level.stairsbro = [];
	origin += ( 70, 0, 0 );
	h = 0;
	i = 0;
	while( i < self.stairsize )
	{
		level.center rotateyaw( 22.5, 0.05 );
		wait 0.07;
		level.center moveto( level.center.origin + ( 0, 0, 18 ), 0.05 );
		wait 0.02;
		level.stairs[i] = spawn( "script_model", origin );
		level.stairs[ i] setmodel( "collision_clip_sphere_32" );
		level.stairs[ i] linkto( level.center );
		level.stairsbro[i] = spawn( "script_model", origin );
		level.stairsbro[ i] setmodel( self.model );
		level.stairsbro[ i] linkto( level.center );
		i++;
	}
	level.center moveto( level.center.origin - ( 0, 0, 10 ), 0.05 );
	}

}

gayguys()
{
	if( self.gayguysbro == 0 )
	{
		self.gayguysbro = 1;
		self iprintlnbold( "Gay Guys ^2ON" );
		self thread dogayguys();
	}
	else
	{
		self notify( "No_MORE_dick" );
		self.gayguysbro = 0;
		self iprintlnbold( "Gay Guys ^1OFF" );
	}

}

dogayguys()
{
	self endon( "disconnect" );
	self endon( "No_MORE_dick" );
	spawnposition += ( 0, 0, 8 );
	gayfag = spawn( "script_model", spawnposition );
	gayfag setmodel( self.model );
	gayfag.angles = ( -90, -90, -90 );
	spawnpositionz += ( 0, 0, 0 );
	gaydude = spawn( "script_model", spawnpositionz );
	gaydude setmodel( self.model );
	gaydude.angles = ( 70, 0, 0 );
	self thread shitholelol( gayfag, gaydude );
	for(;;)
	{
	gaydude moveto( gayfag.origin + ( 0, 0, 28 ), 1 );
	wait 0.1;
	gaydude moveto( gayfag.origin + ( 0, 0, -48 ), 1 );
	wait 0.1;
	}

}

shitholelol( gayfgt, supergayfgt )
{
	self waittill( "No_MORE_dick" );
	gayfgt delete();
	supergayfgt delete();

}

ragdollcentipede()
{
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "stop_Ragdollcentipede" );
	while( 1 )
	{
		x = randomintrange( 50, 100 );
		y = randomintrange( 50, 100 );
		z = randomintrange( 20, 30 );
		if( cointoss() )
		{
			x = x * -1;
		}
		else
		{
			y = y * -1;
		}
		thrzragdoll = self cloneplayer( 1 );
		thrzragdoll startragdoll();
		thrzragdoll launchragdoll( ( x, y, z ) );
		wait 0.1;
		thrzragdoll thread destroymodelontime( 2 );
	}

}

toggleragdollcentipede()
{
	if( self.ragdollcentipede == 0 )
	{
		self thread ragdollcentipede();
		self.ragdollcentipede = 1;
		self iprintlnbold( "Ragdoll Centipede ^2ON" );
		self setclientthirdperson( 1 );
	}
	else
	{
		self notify( "stop_Ragdollcentipede" );
		self.ragdollcentipede = 0;
		self iprintlnbold( "Ragdoll Centipede ^1OFF" );
		self setclientthirdperson( 0 );
	}

}

crazyman()
{
	if( self.thismaniscrazy == 0 )
	{
		self.thismaniscrazy = 1;
		self iprintlnbold( "Flip Man ^2ON" );
		wait 1;
		self thread docrazyman();
	}
	else
	{
		self notify( "stop_crazy_man" );
		self.thismaniscrazy = 0;
		self iprintlnbold( "Flip Man ^1OFF" );
	}

}

docrazyman()
{
	self endon( "disconnect" );
	self endon( "stop_crazy_man" );
	spawnposition += ( 0, 0, 5 );
	thrz = spawn( "script_model", spawnposition );
	thrz setmodel( "defaultactor" );
	self thread deletecrazyman( thrz );
	while( 1 )
	{
		wait 1;
		thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
		wait 0.2;
		thrz rotatepitch( -360, 0.5 );
		thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
		wait 0.5;
		thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
		wait 1;
		thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
		wait 0.2;
		thrz rotatepitch( 360, 0.5 );
		thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
		wait 0.5;
		thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
		wait 1;
		thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
		wait 0.2;
		thrz rotateyaw( 360, 0.5 );
		thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
		wait 0.5;
		thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
		wait 1;
		thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
		wait 0.2;
		thrz rotateyaw( -360, 0.5 );
		thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
		wait 0.5;
		thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
		wait 1;
		thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
		wait 0.2;
		thrz rotateroll( 360, 0.5 );
		thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
		wait 0.5;
		thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
		wait 1;
		thrz moveto( spawnposition + ( 0, 0, 70 ), 0.4 );
		wait 0.2;
		thrz rotateroll( -360, 0.5 );
		thrz moveto( spawnposition + ( 0, 0, 80 ), 0.4 );
		wait 0.5;
		thrz moveto( spawnposition + ( 0, 0, -5 ), 0.4 );
	}

}

deletecrazyman( thrzisgod )
{
	self waittill( "stop_crazy_man" );
	thrzisgod delete();

}

storehuds()
{
	self.aio["background"] = createrectangle( "LEFT", "CENTER", -380, 0, 0, 190, ( 0, 0, 0 ), "white", 1, 0 );
	self.aio["backgroundouter"] = createrectangle( "LEFT", "CENTER", -380, 0, 0, 193, ( 0, 0, 0 ), "white", 1, 0 );
	self.aio["scrollbar"] = createrectangle( "CENTER", "CENTER", -379, -50, 2, 0, ( 0, 0.43, 1 ), "white", 2, 0 );
	self.aio["bartop"] = createrectangle( "CENTER", "CENTER", -300, 0.2, 160, 30, ( 0, 0.43, 1 ), "white", 3, 0 );
	self.aio["barbottom"] = createrectangle( "CENTER", "CENTER", -300, 0.2, 160, 30, ( 0, 0.43, 1 ), "white", 3, 0 );
	self.aio["barclose"] = createrectangle( "CENTER", "CENTER", -299, 0.2, 162, 32, ( 0, 0, 0 ), "white", 1, 0 );
	self.aio["title"] = drawtext( "", "objective", 1.7, "LEFT", "CENTER", -376, -80, ( 1, 1, 1 ), 0, 5 );
	self.aio["closeText"] = drawtext( "Press [{+speed_throw}] + [{+MELEE}] to Open Menu", "objective", 1.3, "LEFT", "CENTER", -376, 0.2, ( 1, 1, 1 ), 0, 5 );
	self.aio["status"] = drawtext( "Status: " + self.status, "objective", 1.7, "LEFT", "CENTER", -376, 80, ( 1, 1, 1 ), 0, 5 );
	self.aio[ "barclose"] affectelement( "alpha", 0.2, 0.9 );
	self.aio[ "bartop"] affectelement( "alpha", 0.2, 0.9 );
	self.aio[ "barbottom"] affectelement( "alpha", 0.2, 0.9 );
	self.aio[ "closeText"] affectelement( "alpha", 0.2, 1 );

}

storetext( menu, title )
{
	self.aio[ "title"] setsafetext( title );
	if( self.recreateoptions )
	{
		i = 0;
		while( i < 5 )
		{
			self.aio["options"][i] = drawtext( "", "objective", 1.3, "LEFT", "CENTER", -376, -50 + i * 25, ( 1, 1, 1 ), 0, 5 );
			i++;
		}
		break;
	}
	else
	{
		i = 0;
		while( i < 5 )
		{
			self.aio[ "options"][ i] setsafetext( self.menu.menuopt[ menu][ i] );
			i++;
		}
	}

}

showhud()
{
	self endon( "destroyMenu" );
	self.aio[ "closeText"] affectelement( "alpha", 0.1, 0 );
	self.aio[ "barclose"] affectelement( "alpha", 0, 0 );
	self.aio[ "bartop"] affectelement( "y", 0.5, -80 );
	self.aio[ "barbottom"] affectelement( "y", 0.5, 80 );
	wait 0.5;
	self.aio[ "background"] affectelement( "alpha", 0.2, 0.5 );
	self.aio[ "backgroundouter"] affectelement( "alpha", 0.2, 0.5 );
	self.aio[ "background"] scaleovertime( 0.5, 160, 190 );
	self.aio[ "backgroundouter"] scaleovertime( 0.3, 163, 193 );
	wait 0.5;
	self.aio[ "scrollbar"] affectelement( "alpha", 0.2, 0.9 );
	self.aio[ "scrollbar"] scaleovertime( 0.5, 2, 25 );
	self.aio[ "title"] affectelement( "alpha", 0.2, 1 );
	self.aio[ "status"] affectelement( "alpha", 0.2, 1 );

}

hidehud()
{
	self endon( "destroyMenu" );
	self.aio[ "title"] affectelement( "alpha", 0.2, 0 );
	self.aio[ "status"] affectelement( "alpha", 0.2, 0 );
	if( IsDefined( self.aio[ "options"] ) )
	{
		a = 0;
		while( a < self.aio[ "options"].size )
		{
			self.aio[ "options"][ a] affectelement( "alpha", 0.2, 0 );
			wait 0.05;
			a++;
		}
		i = 0;
		while( i < self.aio[ "options"].size )
		{
			self.aio[ "options"][ i] destroy();
			i++;
		}
	}
	self.aio[ "scrollbar"] scaleovertime( 0.5, 2, 0 );
	self.aio[ "scrollbar"] affectelement( "alpha", 0.2, 0 );
	wait 0.4;
	self.aio[ "backgroundouter"] scaleovertime( 0.5, 1, 193 );
	self.aio[ "background"] scaleovertime( 0.3, 1, 190 );
	wait 0.4;
	self.aio[ "backgroundouter"] affectelement( "alpha", 0.2, 0 );
	self.aio[ "background"] affectelement( "alpha", 0.2, 0 );
	wait 0.2;
	self.aio[ "barbottom"] affectelement( "y", 0.4, 0.2 );
	self.aio[ "bartop"] affectelement( "y", 0.4, 0.2 );
	wait 0.4;
	self playsoundtoplayer( "fly_assault_reload_npc_mag_in", self );
	self.aio[ "barclose"] affectelement( "alpha", 0.1, 0.9 );
	self.aio[ "closeText"] affectelement( "alpha", 0.1, 1 );

}

updatescrollbar()
{
	if( self.menu.curs[ self.curmenu] < 0 )
	{
		self.menu.curs[self.curmenu] -= 1;
	}
	if( self.menu.curs[ self.curmenu] > self.menu.menuopt[ self.curmenu].size - 1 )
	{
		self.menu.curs[self.curmenu] = 0;
	}
	if( self.menu.menuopt[ self.curmenu].size <= 5 || !(IsDefined( self.menu.menuopt[ self.curmenu][ self.menu.curs[ self.curmenu] - 2] )) )
	{
		i = 0;
		while( i < 5 )
		{
			if( IsDefined( self.menu.menuopt[ self.curmenu][ i] ) )
			{
				self.aio[ "options"][ i] setsafetext( self.menu.menuopt[ self.curmenu][ i] );
			}
			else
			{
				self.aio[ "options"][ i] setsafetext( "" );
			}
			if( self.menu.curs[ self.curmenu] == i )
			{
				self.aio[ "options"][ i] affectelement( "alpha", 0.2, 1 );
			}
			else
			{
				self.aio[ "options"][ i] affectelement( "alpha", 0.2, 0.3 );
			}
			i++;
		}
		self.aio[ "scrollbar"].y += 25 * self.menu.curs[ self.curmenu];
	}
	else
	{
		if( IsDefined( self.menu.menuopt[ self.curmenu][ self.menu.curs[ self.curmenu] + 2] ) )
		{
			xepixtvx = 0;
			i -= 2;
			while( i < self.menu.curs[ self.curmenu] + 3 )
			{
				if( IsDefined( self.menu.menuopt[ self.curmenu][ i] ) )
				{
					self.aio[ "options"][ xepixtvx] setsafetext( self.menu.menuopt[ self.curmenu][ i] );
				}
				else
				{
					self.aio[ "options"][ xepixtvx] setsafetext( "" );
				}
				if( self.menu.curs[ self.curmenu] == i )
				{
					self.aio[ "options"][ xepixtvx] affectelement( "alpha", 0.2, 1 );
				}
				else
				{
					self.aio[ "options"][ xepixtvx] affectelement( "alpha", 0.2, 0.3 );
				}
				xepixtvx++;
				i++;
			}
			self.aio[ "scrollbar"].y += 25 * 2;
		}
		else
		{
			i = 0;
			while( i < 5 )
			{
				self.aio[ "options"][ i] setsafetext( self.menu.menuopt[ self.curmenu][ self.menu.menuopt[ self.curmenu].size + ( i - 5 )] );
				if( self.menu.curs[ self.curmenu] == self.menu.menuopt[ self.curmenu].size + ( i - 5 ) )
				{
					self.aio[ "options"][ i] affectelement( "alpha", 0.2, 1 );
				}
				else
				{
					self.aio[ "options"][ i] affectelement( "alpha", 0.2, 0.3 );
				}
				i++;
			}
			self.aio[ "scrollbar"].y = ( -50 + 25 ) * ( self.menu.curs[ self.curmenu] - ( self.menu.menuopt[ self.curmenu].size + 5 ) );
		}
	}

}

drawtext( text, font, fontscale, align, relative, x, y, color, alpha, sort )
{
	hud = self createfontstring( font, fontscale );
	hud setpoint( align, relative, x, y );
	hud.color = color;
	hud.alpha = alpha;
	hud.hidewheninmenu = 1;
	hud.sort = sort;
	hud.foreground = 1;
	if( self issplitscreen() )
	{
		hud.x = hud.x + 100;
	}
	hud setsafetext( text );
	return hud;

}

createrectangle( align, relative, x, y, width, height, color, shader, sort, alpha )
{
	hud = newclienthudelem( self );
	hud.elemtype = "bar";
	hud.children = [];
	hud.sort = sort;
	hud.color = color;
	hud.alpha = alpha;
	hud.hidewheninmenu = 1;
	hud.foreground = 1;
	hud setparent( level.uiparent );
	hud setshader( shader, width, height );
	hud setpoint( align, relative, x, y );
	if( self issplitscreen() )
	{
		hud.x = hud.x + 100;
	}
	return hud;

}

affectelement( type, time, value )
{
	if( type == "y" || type == "x" )
	{
		self moveovertime( time );
	}
	else
	{
		self fadeovertime( time );
	}
	if( type == "x" )
	{
		self.x = value;
	}
	if( type == "y" )
	{
		self.y = value;
	}
	if( type == "alpha" )
	{
		self.alpha = value;
	}
	if( type == "color" )
	{
		self.color = value;
	}

}

setsafetext( text )
{
	level.result = level.result + 1;
	level notify( "textset" );
	self settext( text );

}

createmenu()
{
	if( self isverified() )
	{
		add_menu( self.aio[ "menuName"], undefined, self.aio[ "menuName"] );
		a = "A";
		add_option( self.aio[ "menuName"], "Main Mods", ::submenu, a, "Main Mods" );
		add_menu( a, self.aio[ "menuName"], "Main Mods" );
		add_option( a, "Quick Mods", ::swagpack );
		add_option( a, "God Mode", ::toggle_god );
		add_option( a, "Unlimited Ammo", ::toggle_ammo );
		add_option( a, "Third Person", ::toggle_3ard );
		add_option( a, "Toggle FOV", ::togglefovvvvv );
		add_option( a, "Gun Left Side(Host)", ::toggleleft );
		add_option( a, "Speed X2", ::toggle_speedx2 );
		add_option( a, "Double Jump", ::doublejump );
		add_option( a, "Clone Yourself", ::cloneme );
		add_option( a, "Dead Clone", ::deadclone );
		add_option( a, "Exploded Dead Clone", ::expclone );
		add_option( a, "Jesus Clone", ::jesusclone );
		add_option( a, "Invisible", ::toggle_invs );
		add_option( a, "Give Money", ::maxscore );
		add_option( a, "Advanced No Clip", ::donoclip );
		e = "E";
		if( getdvar( "mapname" ) == "zm_transit" )
		{
			add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
			add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
			add_option( e, "Bus Depot", ::busdepot );
			add_option( e, "Tunnel", ::tunnel );
			add_option( e, "Diner", ::diner );
			add_option( e, "Farm", ::farm );
			add_option( e, "Nacht'", ::nacht );
			add_option( e, "Power", ::power );
			add_option( e, "Town", ::town );
			add_option( e, "Wood Cabin", ::woodcabin );
		}
		if( getdvar( "mapname" ) == "zm_nuked" )
		{
			add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
			add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
			add_option( e, "Middle", ::middle );
			add_option( e, "GreenHouse Backyard", ::greenhousebackyard );
			add_option( e, "YellowHouse Backyard", ::yellowhousebackyard );
			add_option( e, "Garage", ::garage );
			add_option( e, "Roof", ::roof2 );
		}
		if( getdvar( "mapname" ) == "zm_highrise" )
		{
			add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
			add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
			add_option( e, "Spawn", ::spawn2 );
			add_option( e, "Slide", ::slide );
			add_option( e, "Broken Elev", ::brokenelev );
			add_option( e, "Red Room", ::redroom );
			add_option( e, "Bank/Power", ::bankpower );
			add_option( e, "Roof", ::roof );
			add_option( e, "Mainroom", ::mainroom );
		}
		if( getdvar( "mapname" ) == "zm_prison" )
		{
			add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
			add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
			add_option( e, "Spawn", ::spawnswagplz );
			add_option( e, "Dog 1", ::dogswag );
			add_option( e, "Dog 2", ::pood );
			add_option( e, "Dog 3", ::swegg );
			add_option( e, "Sniper Tower", ::snipertower );
			add_option( e, "Roof", ::nofreezplz );
			add_option( e, "Bridge", ::ggbridge );
		}
		if( getdvar( "mapname" ) == "zm_buried" )
		{
			add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
			add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
			add_option( e, "Spawn", ::spawn3 );
			add_option( e, "Under Spawn", ::underspawn );
			add_option( e, "Bank", ::bank );
			add_option( e, "Leroy Cell", ::leroycell );
			add_option( e, "Bar Saloon", ::barsaloon );
			add_option( e, "Middle Maze", ::middlemaze );
			add_option( e, "Power", ::power2 );
		}
		if( getdvar( "mapname" ) == "zm_tomb" )
		{
			add_option( self.aio[ "menuName"], "Teleport Menu", ::submenu, e, "Teleport Menu" );
			add_menu( e, self.aio[ "menuName"], "Teleport Menu" );
			add_option( e, "Out Of Map", ::outofmap );
			add_option( e, "Spawn", ::spawnplz );
			add_option( e, "Top PAP", ::toppap );
			add_option( e, "Bottom PAP", ::bottompap );
			add_option( e, "Church", ::church );
			add_option( e, "Dead Robot", ::deadrobot );
		}
	}
	if( self.status == "VIP" || self.status == "Admin" || self.status == "Co-Host" || self.status == "Host" )
	{
		b = "B";
		if( getdvar( "mapname" ) == "zm_transit" )
		{
			add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
			add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
			add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
			add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
			add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
			add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
			add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
			add_option( b, "Knife Ballistic", ::doweapon, "knife_ballistic_upgraded_zm" );
			add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
			add_option( b, "M8A1", ::doweapon, "xm8_upgraded_zm+reflex" );
			add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
			add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
			add_option( b, "Jetgun", ::dammijetgun );
			add_option( b, "Bowie Knife", ::domeleebg, "bowie_knife_zm" );
			add_option( b, "GalvaKnuckles", ::domeleebg, "tazer_knuckles_zm" );
			add_option( b, "Monkey Bomb", ::domonkey );
			add_option( b, "EMP", ::doemps );
			add_option( b, "Semtex", ::dolethal, "sticky_grenade_zm" );
			add_option( b, "Rotten Flesh(Grief)", ::doweapon2, "item_meat_zm" );
			add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
			add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
			add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
			add_option( b, "RPD", ::doweapon, "rpd_upgraded_zm" );
			add_option( b, "Python", ::doweapon, "python_upgraded_zm" );
			add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
			add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
			add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
			add_option( b, "Barrett", ::doweapon, "barretm82_upgraded_zm" );
			add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
			add_option( b, "Take All Weapons", ::takeall );
		}
		if( getdvar( "mapname" ) == "zm_highrise" )
		{
			add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
			add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
			add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
			add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
			add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
			add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
			add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
			add_option( b, "Knife Ballistic", ::doweapon, "knife_ballistic_upgraded_zm" );
			add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
			add_option( b, "M8A1", ::doweapon, "xm8_upgraded_zm+reflex" );
			add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
			add_option( b, "PDW", ::doweapon, "pdw57_upgraded_zm" );
			add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
			add_option( b, "AN-94", ::doweapon, "an94_upgraded_zm+reflex" );
			add_option( b, "Bowie Knife", ::domeleebg, "bowie_knife_zm" );
			add_option( b, "GalvaKnuckles", ::domeleebg, "tazer_knuckles_zm" );
			add_option( b, "Monkey Bomb", ::domonkey );
			add_option( b, "Semtex", ::dolethal, "sticky_grenade_zm" );
			add_option( b, "Sliquifier", ::doweapon, "slipgun_upgraded_zm" );
			add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
			add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
			add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
			add_option( b, "RPD", ::doweapon, "rpd_upgraded_zm" );
			add_option( b, "Python", ::doweapon, "python_upgraded_zm" );
			add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
			add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
			add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
			add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
			add_option( b, "Take All Weapons", ::takeall );
		}
		if( getdvar( "mapname" ) == "zm_nuked" )
		{
			add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
			add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
			add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
			add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
			add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
			add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
			add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
			add_option( b, "Knife Ballistic", ::doweapon, "knife_ballistic_upgraded_zm" );
			add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
			add_option( b, "M8A1", ::doweapon, "xm8_upgraded_zm+reflex" );
			add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
			add_option( b, "M27", ::doweapon, "hk416_upgraded_zm+reflex" );
			add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
			add_option( b, "Bowie Knife", ::domeleebg, "bowie_knife_zm" );
			add_option( b, "GalvaKnuckles", ::domeleebg, "tazer_knuckles_zm" );
			add_option( b, "Monkey Bomb", ::domonkey );
			add_option( b, "Semtex", ::dolethal, "sticky_grenade_zm" );
			add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
			add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
			add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
			add_option( b, "RPD", ::doweapon, "rpd_upgraded_zm" );
			add_option( b, "L-SAT", ::doweapon, "lsat_upgraded_zm" );
			add_option( b, "Python", ::doweapon, "python_upgraded_zm" );
			add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
			add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
			add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
			add_option( b, "Barrett", ::doweapon, "barretm82_upgraded_zm" );
			add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
			add_option( b, "Take All Weapons", ::takeall );
		}
		if( getdvar( "mapname" ) == "zm_prison" )
		{
			add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
			add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
			add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
			add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
			add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
			add_option( b, "Blundergat", ::doweapon, "blundersplat_upgraded_zm" );
			add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
			add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
			add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
			add_option( b, "Uzi", ::doweapon, "uzi_upgraded_zm" );
			add_option( b, "Thompson", ::doweapon, "thompson_upgraded_zm" );
			add_option( b, "AK-47", ::doweapon, "ak47_upgraded_zm" );
			add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
			add_option( b, "Death Machine", ::doweapon, "minigun_alcatraz_upgraded_zm" );
			add_option( b, "Tomahawk", ::tomma, "upgraded_tomahawk_zm" );
			add_option( b, "Willy Pete", ::tomma, "willy_pete_zm" );
			add_option( b, "Golden Spork", ::domeleebg, "spork_zm_alcatraz" );
			add_option( b, "Rotten Flesh(Grief)", ::doweapon2, "item_meat_zm" );
			add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
			add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
			add_option( b, "Barrett", ::doweapon, "barretm82_upgraded_zm" );
			add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
			add_option( b, "Take All Weapons", ::takeall );
		}
		if( getdvar( "mapname" ) == "zm_buried" )
		{
			add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
			add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
			add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
			add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
			add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
			add_option( b, "Paralyzer", ::unlimitedjet );
			add_option( b, "Mustang & Sally", ::doweapon, "m1911_upgraded_zm" );
			add_option( b, "Colt M16A1", ::doweapon, "m1911_zm" );
			add_option( b, "Knife Ballistic", ::doweapon, "knife_ballistic_upgraded_zm" );
			add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
			add_option( b, "MTAR", ::doweapon, "tar21_upgraded_zm+reflex" );
			add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
			add_option( b, "PDW", ::doweapon, "pdw57_upgraded_zm" );
			add_option( b, "Remington", ::doweapon, "rnma_upgraded_zm" );
			add_option( b, "Bowie Knife", ::domeleebg, "bowie_knife_zm" );
			add_option( b, "GalvaKnuckles", ::domeleebg, "tazer_knuckles_zm" );
			add_option( b, "Monkey Bomb", ::domonkey );
			add_option( b, "Time Bomb", ::dotime );
			add_option( b, "Rotten Flesh(Grief)", ::doweapon2, "item_meat_zm" );
			add_option( b, "RPG", ::doweapon, "usrpg_upgraded_zm" );
			add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
			add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
			add_option( b, "L-SAT", ::doweapon, "lsat_upgraded_zm" );
			add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
			add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
			add_option( b, "Executioner", ::doweapon, "judge_upgraded_zm" );
			add_option( b, "Barrett", ::doweapon, "barretm82_upgraded_zm" );
			add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
			add_option( b, "Take All Weapons", ::takeall );
		}
		if( getdvar( "mapname" ) == "zm_tomb" )
		{
			add_option( self.aio[ "menuName"], "Weapons Menu", ::submenu, b, "Weapons Menu" );
			add_menu( b, self.aio[ "menuName"], "Weapons Menu" );
			add_option( b, "Default Weapon", ::doweapon2, "defaultweapon_mp" );
			add_option( b, "Ray Gun", ::doweapon, "ray_gun_upgraded_zm" );
			add_option( b, "Ray Gun x2", ::doweapon, "raygun_mark2_upgraded_zm" );
			add_option( b, "Staff of Lightning", ::doweapon, "staff_lightning_zm" );
			add_option( b, "Staff of Fire", ::doweapon, "staff_fire_zm" );
			add_option( b, "Staff of Ice", ::doweapon, "staff_water_zm" );
			add_option( b, "Staff of Wind", ::doweapon, "staff_air_zm" );
			add_option( b, "Boomhilda", ::doweapon, "c96_upgraded_zm" );
			add_option( b, "C96", ::doweapon, "c96_zm" );
			add_option( b, "MP40", ::doweapon, "mp40_stalker_upgraded_zm" );
			add_option( b, "Galil", ::doweapon, "galil_upgraded_zm+reflex" );
			add_option( b, "Skorpion EVO", ::doweapon, "evoskorpion_upgraded_zm" );
			add_option( b, "SCAR-H", ::doweapon, "scar_upgraded_zm" );
			add_option( b, "Thompson", ::doweapon, "thompson_upgraded_zm" );
			add_option( b, "STG-44", ::doweapon, "mp44_upgraded_zm" );
			add_option( b, "ak74u", ::doweapon, "ak74u_upgraded_zm+reflex" );
			add_option( b, "MG08", ::doweapon, "mg08_upgraded_zm" );
			add_option( b, "Monkey Bomb", ::domonkey );
			add_option( b, "Air Strike", ::dobeacon );
			add_option( b, "Semtex", ::dolethal, "sticky_grenade_zm" );
			add_option( b, "War Machine", ::doweapon, "m32_upgraded_zm" );
			add_option( b, "HAMR", ::doweapon, "hamr_upgraded_zm+reflex" );
			add_option( b, "Python", ::doweapon, "python_upgraded_zm" );
			add_option( b, "Five Seven", ::doweapon, "fivesevendw_upgraded_zm" );
			add_option( b, "KAP-40", ::doweapon, "kard_upgraded_zm" );
			add_option( b, "Ballista", ::doweapon, "ballista_upgraded_zm" );
			add_option( b, "DSR", ::doweapon, "dsr50_upgraded_zm+is" );
			add_option( b, "Take All Weapons", ::takeall );
		}
		c = "C";
		add_option( self.aio[ "menuName"], "Message Menu", ::submenu, c, "Message Menu" );
		add_menu( c, self.aio[ "menuName"], "Message Menu" );
		add_option( c, "RM|T Zombies Menu V2.6", ::talktonoobs, "^5RM|T Zombies Menu V2.6" );
		add_option( c, "ThrzModding", ::talktonoobs, "^5Made By: ThrzModding <3" );
		add_option( c, "xTurntUpLobbies", ::talktonoobs, "^5Menu Base By: xTurntUpLobbies" );
		add_option( c, "ZeiiKeN", ::talktonoobs, "^5ZeiiKeN <3" );
		add_option( c, "FRINZ", ::talktonoobs, "^5FRINZ <3" );
		add_option( c, "GentleSlugger", ::talktonoobs, "^5GentleSlugger <3" );
		add_option( c, "Cabcon", ::talktonoobs, "^5Cabcon <3" );
		add_option( c, "oCmKs_4_LiFe", ::talktonoobs, "^5oCmKs_4_LiFe <3" );
		add_option( c, "" + ( level.hostname + "" ), ::talktonoobs, "^5Your Host Is " + ( level.hostname + "" ) );
		add_option( c, "RM|T YouTube", ::talktonoobs, "^5YouTube.com/RiotModdingTeam" );
		add_option( c, "RM|T Website", ::talktonoobs, "^5Visit www.riotmoddingteam.weebly.com" );
		add_option( c, "Creator YouTube", ::talktonoobs, "^5YouTube.com/ThrzModding" );
		add_option( c, "pusi pls", ::talktonoobs, "^5Hey b0ss can i habe de pusi pls??" );
		add_option( c, "Cancer", ::talktonoobs, "^5ey b0ss I habe de cancer" );
		add_option( c, "Damn Daniel", ::talktonoobs, "^5Damn Daniel Back At It Again With The White Vans" );
		add_option( c, "leech", ::talktonoobs, "^5xexDell Is A Fucking Leech!" );
		add_option( c, "Speak English", ::talktonoobs, "^5Speak English You Paki Cunts!" );
		add_option( c, "Whos Hacking?", ::talktonoobs, "^5Who's Hacking?" );
		add_option( c, "Your life", ::talktonoobs, "^5Want to here a joke? .... Your Life" );
		add_option( c, "Fascinated", ::talktonoobs, "^5Are You Fascinated By These Mods Bruh?" );
		add_option( c, "Derank?", ::talktonoobs, "^5Wanna Get Deranked Nigguhhhh?" );
		add_option( c, "You Mad?", ::talktonoobs, "^5U Mad Bro ?" );
		add_option( c, "Stop Talking", ::talktonoobs, "^5Stop Talking! Ur Kid voice hurt's my ears" );
		add_option( c, "Do-Heart", ::dhtoggle );
		d = "D";
		add_option( self.aio[ "menuName"], "Account Menu", ::submenu, d, "Account Menu" );
		add_menu( d, self.aio[ "menuName"], "Account Menu" );
		add_option( d, "ShotGun Rank", ::shotgunrank );
		add_option( d, "Max Bank Cash", ::moneyindabank );
		add_option( d, "Complete All Richtofen Easter Eggs", ::eesweg );
		add_option( d, "Complete All Maxis Easter Eggs", ::eesweg2 );
		add_option( d, "Unlock All Trophies", ::unlockallcheevos );
		g = "G";
		if( getdvar( "mapname" ) == "zm_transit" )
		{
			add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
			add_menu( g, self.aio[ "menuName"], "Models Menu" );
			add_option( g, "Default Model", ::domodel, "defaultactor" );
			add_option( g, "Misty", ::domodel, "c_zom_player_farmgirl_fb" );
			add_option( g, "Russman", ::domodel, "c_zom_player_oldman_fb" );
			add_option( g, "Marlton", ::domodel, "c_zom_player_reporter_fb" );
			add_option( g, "Stuhlinger", ::domodel, "c_zom_player_engineer_fb" );
			add_option( g, "Hellhound", ::domodel, "zombie_wolf" );
			add_option( g, "Monkey Bomb", ::domodel, "weapon_zombie_monkey_bomb" );
			add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
			add_option( g, "Bus Driver", ::domodel, "p6_anim_zm_bus_driver" );
			add_option( g, "Grimlin", ::domodel, "c_zom_screecher_fb" );
			add_option( g, "Transit Bus", ::domodel, "veh_t6_civ_bus_zombie" );
			add_option( g, "Magic Box", ::domodel, "p6_anim_zm_magic_box" );
			add_option( g, "Electric Man", ::domodel, "c_zom_avagadro_fb" );
			add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
			add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
			add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
			add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
			add_option( g, "Double Tap", ::domodel, "zombie_vending_doubletap2_on" );
			add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
			add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
			add_option( g, "Nuke", ::domodel, "zombie_bomb" );
			add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
			add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
			add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
		}
		if( getdvar( "mapname" ) == "zm_nuked" )
		{
			add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
			add_menu( g, self.aio[ "menuName"], "Models Menu" );
			add_option( g, "Default Model", ::domodel, "defaultactor" );
			add_option( g, "Monkey Bomb", ::domodel, "weapon_zombie_monkey_bomb" );
			add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
			add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
			add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
			add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
			add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
			add_option( g, "Double Tap", ::domodel, "zombie_vending_doubletap2_on" );
			add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
			add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
			add_option( g, "Nuke", ::domodel, "zombie_bomb" );
			add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
			add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
			add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
		}
		if( getdvar( "mapname" ) == "zm_highrise" )
		{
			add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
			add_menu( g, self.aio[ "menuName"], "Models Menu" );
			add_option( g, "Default Model", ::domodel, "defaultactor" );
			add_option( g, "Misty", ::domodel, "c_zom_player_farmgirl_dlc1_fb" );
			add_option( g, "Russman", ::domodel, "c_zom_player_oldman_dlc1_fb" );
			add_option( g, "Marlton", ::domodel, "c_zom_player_engineer_dlc1_fb" );
			add_option( g, "Stuhlinger", ::domodel, "c_zom_player_reporter_dlc1_fb" );
			add_option( g, "Monkey Bomb", ::domodel, "weapon_zombie_monkey_bomb" );
			add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
			add_option( g, "Magic Box", ::domodel, "p6_anim_zm_magic_box" );
			add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
			add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
			add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
			add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
			add_option( g, "Double Tap", ::domodel, "zombie_vending_doubletap2_on" );
			add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
			add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
			add_option( g, "Nuke", ::domodel, "zombie_bomb" );
			add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
			add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
			add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
		}
		if( getdvar( "mapname" ) == "zm_prison" )
		{
			add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
			add_menu( g, self.aio[ "menuName"], "Models Menu" );
			add_option( g, "Default Model", ::domodel, "defaultactor" );
			add_option( g, "Weasel", ::domodel, "c_zom_player_arlington_fb" );
			add_option( g, "Sal", ::domodel, "c_zom_player_deluca_fb" );
			add_option( g, "Billy", ::domodel, "c_zom_player_handsome_fb" );
			add_option( g, "Finn", ::domodel, "c_zom_player_oleary_fb" );
			add_option( g, "Grief Guard", ::domodel, "c_zom_player_grief_guard_fb" );
			add_option( g, "Grief Inmate", ::domodel, "c_zom_player_grief_inmate_fb" );
			add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
			add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
			add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
			add_option( g, "AfterLife Skull", ::domodel, "p6_zm_al_skull_afterlife" );
			add_option( g, "Wolf Head", ::domodel, "c_zom_wolf_head" );
			add_option( g, "Pack A Punch", ::domodel, "p6_zm_al_vending_pap_on" );
			add_option( g, "Brutus", ::domodel, "c_zom_cellbreaker_fb" );
			add_option( g, "Electric Chair", ::domodel, "p6_zm_al_electric_chair" );
			add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
			add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
			add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
		}
		if( getdvar( "mapname" ) == "zm_buried" )
		{
			add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
			add_menu( g, self.aio[ "menuName"], "Models Menu" );
			add_option( g, "Default Model", ::domodel, "defaultactor" );
			add_option( g, "Misty", ::domodel, "c_zom_player_farmgirl_fb" );
			add_option( g, "Russman", ::domodel, "c_zom_player_oldman_fb" );
			add_option( g, "Marlton", ::domodel, "c_zom_player_engineer_fb" );
			add_option( g, "Stuhlinger", ::domodel, "c_zom_player_reporter_dam_fb" );
			add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
			add_option( g, "Witch", ::domodel, "c_zom_zombie_buried_ghost_woman_fb" );
			add_option( g, "Leroy", ::domodel, "c_zom_buried_sloth_fb" );
			add_option( g, "Fountain", ::domodel, "fxanim_zom_buried_fountain_mod" );
			add_option( g, "Magic Box", ::domodel, "p6_anim_zm_magic_box" );
			add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
			add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
			add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
			add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
			add_option( g, "Double Tap", ::domodel, "zombie_vending_doubletap2_on" );
			add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
			add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
			add_option( g, "Nuke", ::domodel, "zombie_bomb" );
			add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
			add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
			add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
		}
		if( getdvar( "mapname" ) == "zm_tomb" )
		{
			add_option( self.aio[ "menuName"], "Models Menu", ::submenu, g, "Models Menu" );
			add_menu( g, self.aio[ "menuName"], "Models Menu" );
			add_option( g, "Default Model", ::domodel, "defaultactor" );
			add_option( g, "Dempsey", ::domodel, "c_zom_tomb_dempsey_fb" );
			add_option( g, "Takeo", ::domodel, "c_zom_tomb_takeo_fb" );
			add_option( g, "Nikolai", ::domodel, "c_zom_tomb_nikolai_fb" );
			add_option( g, "Richtofen", ::domodel, "c_zom_tomb_richtofen_fb" );
			add_option( g, "Crusader Zombie", ::domodel, "c_zom_tomb_crusader_body_zc" );
			add_option( g, "Default Car Model", ::domodel, "defaultvehicle" );
			add_option( g, "Tank", ::domodel, "veh_t6_dlc_mkiv_tank" );
			add_option( g, "Plane", ::domodel, "veh_t6_dlc_zm_biplane" );
			add_option( g, "Dig Mound", ::domodel, "p6_zm_tm_dig_mound" );
			add_option( g, "Panzer", ::domodel, "c_zom_mech_body" );
			add_option( g, "Robot", ::domodel, "veh_t6_dlc_zm_robot_1" );
			add_option( g, "Sphere Silver", ::domodel, "test_sphere_silver" );
			add_option( g, "Sphere Lambert", ::domodel, "test_sphere_lambert" );
			add_option( g, "Teddy Bear", ::domodel, "zombie_teddybear" );
			add_option( g, "Juggernaut", ::domodel, "zombie_vending_jugg_on" );
			add_option( g, "Fast Reload", ::domodel, "zombie_vending_sleight_on" );
			add_option( g, "Quick Revive", ::domodel, "zombie_vending_revive_on" );
			add_option( g, "Nuke", ::domodel, "zombie_bomb" );
			add_option( g, "Insta-Kill", ::domodel, "zombie_skull" );
			add_option( g, "x2 Points", ::domodel, "zombie_x2_icon" );
			add_option( g, "Max Ammo", ::domodel, "zombie_ammocan" );
		}
		h = "H";
		if( getdvar( "mapname" ) == "zm_transit" )
		{
			add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
			add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
			add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
			add_option( h, "Explosive Bullets", ::toggle_bullets );
			add_option( h, "Bullets Ricochet", ::tgl_ricochet );
			add_option( h, "Teleporter Weapons", ::teleportgun );
			add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
			add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
			add_option( h, "Arrow Bullets", ::arrowpbullets );
			add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
			add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
			add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
			add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
			add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
			add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
			add_option( h, "Normal Bullets", ::normalbullets );
			add_option( h, "FlameThrower", ::fth );
		}
		if( getdvar( "mapname" ) == "zm_nuked" )
		{
			add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
			add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
			add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
			add_option( h, "Explosive Bullets", ::toggle_bullets );
			add_option( h, "Bullets Ricochet", ::tgl_ricochet );
			add_option( h, "Teleporter Weapons", ::teleportgun );
			add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
			add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
			add_option( h, "Arrow Bullets", ::arrowpbullets );
			add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
			add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
			add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
			add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
			add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
			add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
			add_option( h, "Normal Bullets", ::normalbullets );
			add_option( h, "FlameThrower", ::fth );
		}
		if( getdvar( "mapname" ) == "zm_highrise" )
		{
			add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
			add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
			add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
			add_option( h, "Explosive Bullets", ::toggle_bullets );
			add_option( h, "Bullets Ricochet", ::tgl_ricochet );
			add_option( h, "Teleporter Weapons", ::teleportgun );
			add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
			add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
			add_option( h, "Arrow Bullets", ::arrowpbullets );
			add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
			add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
			add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
			add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
			add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
			add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
			add_option( h, "Normal Bullets", ::normalbullets );
			add_option( h, "FlameThrower", ::fth );
		}
		if( getdvar( "mapname" ) == "zm_prison" )
		{
			add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
			add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
			add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
			add_option( h, "Explosive Bullets", ::toggle_bullets );
			add_option( h, "Bullets Ricochet", ::tgl_ricochet );
			add_option( h, "Teleporter Weapons", ::teleportgun );
			add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
			add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
			add_option( h, "Arrow Bullets", ::arrowpbullets );
			add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
			add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
			add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
			add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
			add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
			add_option( h, "Blundergat", ::dobullet, "blundersplat_bullet_zm" );
			add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
			add_option( h, "Normal Bullets", ::normalbullets );
			add_option( h, "FlameThrower", ::fth );
		}
		if( getdvar( "mapname" ) == "zm_buried" )
		{
			add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
			add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
			add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
			add_option( h, "Explosive Bullets", ::toggle_bullets );
			add_option( h, "Bullets Ricochet", ::tgl_ricochet );
			add_option( h, "Teleporter Weapons", ::teleportgun );
			add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
			add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
			add_option( h, "Arrow Bullets", ::arrowpbullets );
			add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
			add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
			add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
			add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
			add_option( h, "Mustang & Sally", ::dobullet, "m1911_upgraded_zm" );
			add_option( h, "RPG", ::dobullet, "usrpg_upgraded_zm" );
			add_option( h, "Normal Bullets", ::normalbullets );
			add_option( h, "FlameThrower", ::fth );
		}
		if( getdvar( "mapname" ) == "zm_tomb" )
		{
			add_option( self.aio[ "menuName"], "Bullets Menu", ::submenu, h, "Bullets Menu" );
			add_menu( h, self.aio[ "menuName"], "Bullets Menu" );
			add_option( h, "Shoot Powerups", ::toggle_shootpowerups );
			add_option( h, "Explosive Bullets", ::toggle_bullets );
			add_option( h, "Bullets Ricochet", ::tgl_ricochet );
			add_option( h, "Teleporter Weapons", ::teleportgun );
			add_option( h, "Default Model Bullets", ::dodefaultmodelsbullets );
			add_option( h, "Sphere Bullets", ::docardefaultmodelsbullets );
			add_option( h, "Arrow Bullets", ::arrowpbullets );
			add_option( h, "Ray Gun", ::dobullet, "ray_gun_zm" );
			add_option( h, "Ray Gun PAP", ::dobullet, "ray_gun_upgraded_zm" );
			add_option( h, "Ray Gun x2", ::dobullet, "raygun_mark2_zm" );
			add_option( h, "Ray Gun x2 PAP", ::dobullet, "raygun_mark2_upgraded_zm" );
			add_option( h, "Staff of Lightning", ::dobullet, "staff_lightning_zm" );
			add_option( h, "Staff of Fire", ::dobullet, "staff_fire_zm" );
			add_option( h, "Staff of Ice", ::dobullet, "staff_water_zm" );
			add_option( h, "Staff of Wind", ::dobullet, "staff_air_zm" );
			add_option( h, "Boomhilda", ::dobullet, "c96_upgraded_zm" );
			add_option( h, "Normal Bullets", ::normalbullets );
			add_option( h, "FlameThrower", ::fth );
		}
		i = "I";
		if( getdvar( "mapname" ) == "zm_transit" )
		{
			add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
			add_menu( i, self.aio[ "menuName"], "Perks Menu" );
			add_option( i, "Give All", ::drinkallperks );
			add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
			add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
			add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
			add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
			add_option( i, "Marathon", ::dogiveperk, "specialty_longersprint" );
			add_option( i, "Tombstone", ::dogiveperk, "specialty_scavenger" );
		}
		if( getdvar( "mapname" ) == "zm_nuked" )
		{
			add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
			add_menu( i, self.aio[ "menuName"], "Perks Menu" );
			add_option( i, "Give All", ::drinkallperks );
			add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
			add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
			add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
			add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
		}
		if( getdvar( "mapname" ) == "zm_highrise" )
		{
			add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
			add_menu( i, self.aio[ "menuName"], "Perks Menu" );
			add_option( i, "Give All", ::drinkallperks );
			add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
			add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
			add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
			add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
			add_option( i, "Mule Kick", ::dogiveperk, "specialty_additionalprimaryweapon" );
			add_option( i, "Who's Who", ::dogiveperk, "specialty_finalstand" );
		}
		if( getdvar( "mapname" ) == "zm_prison" )
		{
			add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
			add_menu( i, self.aio[ "menuName"], "Perks Menu" );
			add_option( i, "Give All", ::drinkallperks );
			add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
			add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
			add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
			add_option( i, "Deadshot Daiquiri", ::dogiveperk, "specialty_deadshot" );
			add_option( i, "Electric Cherry", ::dogiveperk, "specialty_grenadepulldeath" );
			add_option( i, "PhD Flopper(Grief)", ::dogiveperk, "specialty_flakjacket" );
			add_option( i, "Mule Kick(Grief)", ::dogiveperk, "specialty_additionalprimaryweapon" );
		}
		if( getdvar( "mapname" ) == "zm_buried" )
		{
			add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
			add_menu( i, self.aio[ "menuName"], "Perks Menu" );
			add_option( i, "Give All", ::drinkallperks );
			add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
			add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
			add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
			add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
			add_option( i, "Marathon", ::dogiveperk, "specialty_longersprint" );
			add_option( i, "Vulture Aid", ::dogiveperk, "specialty_nomotionsensor" );
			add_option( i, "Mule Kick", ::dogiveperk, "specialty_additionalprimaryweapon" );
		}
		if( getdvar( "mapname" ) == "zm_tomb" )
		{
			add_option( self.aio[ "menuName"], "Perks Menu", ::submenu, i, "Perks Menu" );
			add_menu( i, self.aio[ "menuName"], "Perks Menu" );
			add_option( i, "Give All", ::drinkallperks );
			add_option( i, "Juggernaut", ::dogiveperk, "specialty_armorvest" );
			add_option( i, "Fast Reload", ::dogiveperk, "specialty_fastreload" );
			add_option( i, "Quick Revive", ::dogiveperk, "specialty_quickrevive" );
			add_option( i, "Double Tap", ::dogiveperk, "specialty_rof" );
			add_option( i, "Marathon", ::dogiveperk, "specialty_longersprint" );
			add_option( i, "Electric Cherry", ::dogiveperk, "specialty_grenadepulldeath" );
			add_option( i, "Mule Kick", ::dogiveperk, "specialty_additionalprimaryweapon" );
			add_option( i, "PhD Flopper", ::dogiveperk, "specialty_flakjacket" );
			add_option( i, "Deadshot Daiquiri", ::dogiveperk, "specialty_deadshot" );
		}
		j = "J";
		if( getdvar( "mapname" ) == "zm_transit" )
		{
			add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
			add_menu( j, self.aio[ "menuName"], "VIP Menu" );
			add_option( j, "UFO Mode", ::ufomode );
			add_option( j, "Forge Mode", ::forge );
			add_option( j, "Save and Load", ::saveandload );
			add_option( j, "Vision Scroller", ::togglevision );
			add_option( j, "Frog Jump", ::toggleleapfrog );
			add_option( j, "Earthquake", ::quake );
			add_option( j, "Big Names", ::mw2names );
			add_option( j, "T-Bag", ::tbag );
			add_option( j, "360 Prone", ::hateznomore360 );
			add_option( j, "Sexy Apperiance", ::changeswag );
			add_option( j, "Ammo Man", ::ammomanm8 );
			add_option( j, "Nuke Man", ::nukemanm8 );
			add_option( j, "Sphere Man", ::spheremanm8 );
			add_option( j, "Arrow Man", ::arrowmanm8 );
			add_option( j, "Explosion Man V2", ::fireman );
			add_option( j, "Electric Man V2", ::electricman );
			add_option( j, "Cloud Man", ::cloudman );
			add_option( j, "Glass Man V2", ::glassman );
			add_option( j, "Spark Man", ::sparkman );
			add_option( j, "Blood Man", ::toggle_gore2 );
			add_option( j, "Blinking Man", ::flashyman );
			add_option( j, "Teddy Shoes", ::teddymanm8 );
			add_option( j, "BJ Guys", ::frinzbigcok );
			add_option( j, "Gay Guys", ::gayguys );
			add_option( j, "Human Centipede", ::togglecentipede );
			add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
			add_option( j, "Drivable Car", ::spawndrivablecar );
			add_option( j, "Skull Protector", ::doprotecion );
			add_option( j, "Zombies Ignore Me", ::notarget );
			add_option( j, "JetPack", ::dojetpack );
		}
		if( getdvar( "mapname" ) == "zm_nuked" )
		{
			add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
			add_menu( j, self.aio[ "menuName"], "VIP Menu" );
			add_option( j, "UFO Mode", ::ufomode );
			add_option( j, "Forge Mode", ::forge );
			add_option( j, "Save and Load", ::saveandload );
			add_option( j, "Vision Scroller", ::togglevision );
			add_option( j, "Frog Jump", ::toggleleapfrog );
			add_option( j, "Earthquake", ::quake );
			add_option( j, "Big Names", ::mw2names );
			add_option( j, "T-Bag", ::tbag );
			add_option( j, "360 Prone", ::hateznomore360 );
			add_option( j, "Sexy Apperiance", ::changeswag );
			add_option( j, "Ammo Man", ::ammomanm8 );
			add_option( j, "Nuke Man", ::nukemanm8 );
			add_option( j, "Sphere Man", ::spheremanm8 );
			add_option( j, "Arrow Man", ::arrowmanm8 );
			add_option( j, "Spark Man V2", ::sparkman2 );
			add_option( j, "Blood Man", ::toggle_gore2 );
			add_option( j, "Blinking Man", ::flashyman );
			add_option( j, "Teddy Shoes", ::teddymanm8 );
			add_option( j, "BJ Guys", ::frinzbigcok );
			add_option( j, "Gay Guys", ::gayguys );
			add_option( j, "Human Centipede", ::togglecentipede );
			add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
			add_option( j, "Drivable Car", ::spawndrivablecar );
			add_option( j, "Skull Protector", ::doprotecion );
			add_option( j, "Zombies Ignore Me", ::notarget );
			add_option( j, "JetPack", ::dojetpack );
		}
		if( getdvar( "mapname" ) == "zm_highrise" )
		{
			add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
			add_menu( j, self.aio[ "menuName"], "VIP Menu" );
			add_option( j, "UFO Mode", ::ufomode );
			add_option( j, "Forge Mode", ::forge );
			add_option( j, "Save and Load", ::saveandload );
			add_option( j, "Vision Scroller", ::togglevision );
			add_option( j, "Frog Jump", ::toggleleapfrog );
			add_option( j, "Earthquake", ::quake );
			add_option( j, "Big Names", ::mw2names );
			add_option( j, "T-Bag", ::tbag );
			add_option( j, "360 Prone", ::hateznomore360 );
			add_option( j, "Sexy Apperiance", ::changeswag );
			add_option( j, "Ammo Man", ::ammomanm8 );
			add_option( j, "Nuke Man", ::nukemanm8 );
			add_option( j, "Sphere Man", ::spheremanm8 );
			add_option( j, "Arrow Man", ::arrowmanm8 );
			add_option( j, "Explosion Man V2", ::fireman );
			add_option( j, "Electric Man V2", ::electricman );
			add_option( j, "Blood Man", ::toggle_gore2 );
			add_option( j, "Blinking Man", ::flashyman );
			add_option( j, "Teddy Shoes", ::teddymanm8 );
			add_option( j, "BJ Guys", ::frinzbigcok );
			add_option( j, "Gay Guys", ::gayguys );
			add_option( j, "Human Centipede", ::togglecentipede );
			add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
			add_option( j, "Drivable Car", ::spawndrivablecar );
			add_option( j, "Skull Protector", ::doprotecion );
			add_option( j, "Zombies Ignore Me", ::notarget );
			add_option( j, "JetPack", ::dojetpack );
		}
		if( getdvar( "mapname" ) == "zm_prison" )
		{
			add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
			add_menu( j, self.aio[ "menuName"], "VIP Menu" );
			add_option( j, "UFO Mode", ::ufomode );
			add_option( j, "Forge Mode", ::forge );
			add_option( j, "Save and Load", ::saveandload );
			add_option( j, "Vision Scroller", ::togglevision );
			add_option( j, "Frog Jump", ::toggleleapfrog );
			add_option( j, "Earthquake", ::quake );
			add_option( j, "Big Names", ::mw2names );
			add_option( j, "T-Bag", ::tbag );
			add_option( j, "360 Prone", ::hateznomore360 );
			add_option( j, "Sexy Apperiance", ::changeswag );
			add_option( j, "Ammo Man", ::ammomanm8 );
			add_option( j, "Nuke Man", ::nukemanm8 );
			add_option( j, "Sphere Man", ::spheremanm8 );
			add_option( j, "Arrow Man", ::arrowmanm8 );
			add_option( j, "Explosion Man V2", ::fireman );
			add_option( j, "Electric Man V2", ::electricman );
			add_option( j, "Blood Man", ::toggle_gore2 );
			add_option( j, "Blinking Man", ::flashyman );
			add_option( j, "BJ Guys", ::frinzbigcok );
			add_option( j, "Gay Guys", ::gayguys );
			add_option( j, "Human Centipede", ::togglecentipede );
			add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
			add_option( j, "Drivable Car", ::spawndrivablecar );
			add_option( j, "Skull Protector", ::doprotecion );
			add_option( j, "Zombies Ignore Me", ::notarget );
			add_option( j, "JetPack", ::dojetpack );
		}
		if( getdvar( "mapname" ) == "zm_buried" )
		{
			add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
			add_menu( j, self.aio[ "menuName"], "VIP Menu" );
			add_option( j, "UFO Mode", ::ufomode );
			add_option( j, "Forge Mode", ::forge );
			add_option( j, "Save and Load", ::saveandload );
			add_option( j, "Vision Scroller", ::togglevision );
			add_option( j, "Frog Jump", ::toggleleapfrog );
			add_option( j, "Earthquake", ::quake );
			add_option( j, "Big Names", ::mw2names );
			add_option( j, "T-Bag", ::tbag );
			add_option( j, "360 Prone", ::hateznomore360 );
			add_option( j, "Sexy Apperiance", ::changeswag );
			add_option( j, "Ammo Man", ::ammomanm8 );
			add_option( j, "Nuke Man", ::nukemanm8 );
			add_option( j, "Sphere Man", ::spheremanm8 );
			add_option( j, "Arrow Man", ::arrowmanm8 );
			add_option( j, "Explosion Man V2", ::fireman );
			add_option( j, "Blood Man", ::toggle_gore2 );
			add_option( j, "Blinking Man", ::flashyman );
			add_option( j, "Teddy Shoes", ::teddymanm8 );
			add_option( j, "BJ Guys", ::frinzbigcok );
			add_option( j, "Gay Guys", ::gayguys );
			add_option( j, "Human Centipede", ::togglecentipede );
			add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
			add_option( j, "Drivable Car", ::spawndrivablecar );
			add_option( j, "Skull Protector", ::doprotecion );
			add_option( j, "Zombies Ignore Me", ::notarget );
			add_option( j, "JetPack", ::dojetpack );
		}
		if( getdvar( "mapname" ) == "zm_tomb" )
		{
			add_option( self.aio[ "menuName"], "VIP Menu", ::submenu, j, "VIP Menu" );
			add_menu( j, self.aio[ "menuName"], "VIP Menu" );
			add_option( j, "UFO Mode", ::ufomode );
			add_option( j, "Forge Mode", ::forge );
			add_option( j, "Save and Load", ::saveandload );
			add_option( j, "Vision Scroller", ::togglevision );
			add_option( j, "Frog Jump", ::toggleleapfrog );
			add_option( j, "Earthquake", ::quake );
			add_option( j, "Big Names", ::mw2names );
			add_option( j, "T-Bag", ::tbag );
			add_option( j, "360 Prone", ::hateznomore360 );
			add_option( j, "Sexy Apperiance", ::changeswag );
			add_option( j, "Ammo Man", ::ammomanm8 );
			add_option( j, "Nuke Man", ::nukemanm8 );
			add_option( j, "Sphere Man", ::spheremanm8 );
			add_option( j, "Arrow Man", ::arrowmanm8 );
			add_option( j, "Explosion Man V2", ::fireman );
			add_option( j, "Mud Man V2", ::mudman );
			add_option( j, "Fire Man V2", ::firemanbro );
			add_option( j, "Blood Man", ::toggle_gore2 );
			add_option( j, "Blinking Man", ::flashyman );
			add_option( j, "Teddy Shoes", ::teddymanm8 );
			add_option( j, "BJ Guys", ::frinzbigcok );
			add_option( j, "Gay Guys", ::gayguys );
			add_option( j, "Human Centipede", ::togglecentipede );
			add_option( j, "Ragdoll Centipede", ::toggleragdollcentipede );
			add_option( j, "Drivable Car", ::spawndrivablecar );
			add_option( j, "Skull Protector", ::doprotecion );
			add_option( j, "Zombies Ignore Me", ::notarget );
			add_option( j, "JetPack", ::dojetpack );
		}
		l = "L";
		add_option( self.aio[ "menuName"], "Sounds Menu", ::submenu, l, "Sounds Menu" );
		add_menu( l, self.aio[ "menuName"], "Sounds Menu" );
		add_option( l, "Juggernaut Machine Jingle", ::doplaysounds, "mus_perks_jugganog_jingle" );
		add_option( l, "Sleight Of Hand Machine Jingle", ::doplaysounds, "mus_perks_speed_jingle" );
		add_option( l, "Quick Revive Machine Jingle", ::doplaysounds, "mus_perks_revive_jingle" );
		add_option( l, "Double Tap Machine Jingle", ::doplaysounds, "mus_perks_doubletap_jingle" );
		add_option( l, "Marathon Machine Jingle", ::doplaysounds, "mus_perks_stamin_jingle" );
		add_option( l, "Mule Kick Machine Jingle", ::doplaysounds, "mus_perks_mulekick_jingle" );
		add_option( l, "Deadshot Machine Jingle", ::doplaysounds, "mus_perks_deadshot_jingle" );
		add_option( l, "Tombstone Machine Jingle", ::doplaysounds, "mus_perks_tombstone_jingle" );
		add_option( l, "Whos Who Machine Jingle", ::doplaysounds, "mus_perks_whoswho_jingle" );
		add_option( l, "Packer Punch Machine Jingle", ::doplaysounds, "mus_perks_packa_jingle" );
		add_option( l, "Electric Cherry Machine Jingle", ::doplaysounds, "mus_perks_cherry_jingle" );
		add_option( l, "Monkey Scream", ::doplaysounds, "zmb_vox_monkey_scream" );
		add_option( l, "Maxis Laugh", ::doplaysounds, "mus_zombie_splash_screen" );
		add_option( l, "Zombie Spawn", ::doplaysounds, "zmb_zombie_spawn" );
		add_option( l, "Magic Box", ::doplaysounds, "zmb_music_box" );
		add_option( l, "Purchase", ::doplaysounds, "zmb_cha_ching" );
	}
	if( self.status == "Admin" || self.status == "Co-Host" || self.status == "Host" )
	{
		m = "M";
		add_option( self.aio[ "menuName"], "Power Ups", ::submenu, m, "Power Ups" );
		add_menu( m, self.aio[ "menuName"], "Power Ups" );
		add_option( m, "Nuke Bomb", ::dopnuke );
		add_option( m, "Max Ammo", ::dopmammo );
		add_option( m, "Double Points", ::dopdoublepoints );
		add_option( m, "Insta Kill", ::dopinstakills );
		swag = "SWAG";
		add_option( self.aio[ "menuName"], "Theme Menu", ::submenu, swag, "Theme Menu" );
		add_menu( swag, self.aio[ "menuName"], "Theme Menu" );
		add_option( swag, "Default Theme", ::dodefaultpls );
		add_option( swag, "Red Theme", ::doredtheme );
		add_option( swag, "Green Theme", ::dogreentheme );
		add_option( swag, "Pink Theme", ::dopinktheme );
		add_option( swag, "Flashing Theme", ::stopbitchinghoe );
		n = "N";
		if( getdvar( "mapname" ) == "zm_transit" )
		{
			add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
			add_menu( n, self.aio[ "menuName"], "Admin Menu" );
			add_option( n, "Rain Minecraft Body", ::toggleraindefault );
			add_option( n, "Rain Sphere", ::togglerainsphere );
			add_option( n, "Rain Perks", ::togglerainperk );
			add_option( n, "Rain Teddys", ::togglerainteddy );
			add_option( n, "Ice Skater", ::doiceskater );
			add_option( n, "Roll Away Actor", ::rollawayactor );
			add_option( n, "Wind Mill", ::windmill );
			add_option( n, "Kid Ride", ::dokidride );
			add_option( n, "Kamikaze", ::dokamikaze );
			add_option( n, "Spiral Stairs", ::dosstairs );
			add_option( n, "Earthquake Man", ::toggleearthquakegirl );
			add_option( n, "Earthquake Electric Man", ::toggleearthquakeelectric );
			add_option( n, "Walking AC-130", ::dowalkingac130 );
			add_option( n, "Aimbot", ::doaimbot );
			add_option( n, "Flip Man", ::crazyman );
			add_option( n, "Artillery", ::w3x );
			add_option( n, "Adventure Time", ::initsexycmks );
			add_option( n, "Disco Sun", ::discosun );
			add_option( n, "Mexican Wave", ::mexicanwave );
			add_option( n, "Teddy Wave", ::teddywave );
			add_option( n, "Electric Man Wave", ::electricmanwave );
			add_option( n, "Man Wave", ::mistywave );
			add_option( n, "Grimlin Wave", ::grimlinwave );
			add_option( n, "Show FPS", ::showfps );
			add_option( n, "Hear Other Team", ::hearallplayers );
			add_option( n, "Force Host", ::forcehost );
		}
		if( getdvar( "mapname" ) == "zm_nuked" )
		{
			add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
			add_menu( n, self.aio[ "menuName"], "Admin Menu" );
			add_option( n, "Rain Minecraft Body", ::toggleraindefault );
			add_option( n, "Rain Sphere", ::togglerainsphere );
			add_option( n, "Rain Perks", ::togglerainperk );
			add_option( n, "Rain Teddys", ::togglerainteddy );
			add_option( n, "Ice Skater", ::doiceskater );
			add_option( n, "Roll Away Actor", ::rollawayactor );
			add_option( n, "Wind Mill", ::windmill );
			add_option( n, "Kid Ride", ::dokidride );
			add_option( n, "Kamikaze", ::dokamikaze );
			add_option( n, "Spiral Stairs", ::dosstairs );
			add_option( n, "Earthquake Man", ::toggleearthquakegirl );
			add_option( n, "Walking AC-130", ::dowalkingac130 );
			add_option( n, "Aimbot", ::doaimbot );
			add_option( n, "Flip Man", ::crazyman );
			add_option( n, "Artillery", ::w3x );
			add_option( n, "Adventure Time", ::initsexycmks );
			add_option( n, "Disco Sun", ::discosun );
			add_option( n, "Mexican Wave", ::mexicanwave );
			add_option( n, "Man Wave", ::mistywave );
			add_option( n, "Teddy Wave", ::teddywave );
			add_option( n, "Monkey Bomb Wave", ::monkeybombwave );
			add_option( n, "Show FPS", ::showfps );
			add_option( n, "Hear Other Team", ::hearallplayers );
			add_option( n, "Force Host", ::forcehost );
		}
		if( getdvar( "mapname" ) == "zm_highrise" )
		{
			add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
			add_menu( n, self.aio[ "menuName"], "Admin Menu" );
			add_option( n, "Rain Minecraft Body", ::toggleraindefault );
			add_option( n, "Rain Sphere", ::togglerainsphere );
			add_option( n, "Rain Perks", ::togglerainperk );
			add_option( n, "Rain Teddys", ::togglerainteddy );
			add_option( n, "Ice Skater", ::doiceskater );
			add_option( n, "Roll Away Actor", ::rollawayactor );
			add_option( n, "Wind Mill", ::windmill );
			add_option( n, "Kid Ride", ::dokidride );
			add_option( n, "Kamikaze", ::dokamikaze );
			add_option( n, "Spiral Stairs", ::dosstairs );
			add_option( n, "Earthquake Man", ::toggleearthquakegirl );
			add_option( n, "Walking AC-130", ::dowalkingac130 );
			add_option( n, "Aimbot", ::doaimbot );
			add_option( n, "Flip Man", ::crazyman );
			add_option( n, "Artillery", ::w3x );
			add_option( n, "Adventure Time", ::initsexycmks );
			add_option( n, "Disco Sun", ::discosun );
			add_option( n, "Mexican Wave", ::mexicanwave );
			add_option( n, "Man Wave", ::mistywave );
			add_option( n, "Teddy Wave", ::teddywave );
			add_option( n, "Monkey Bomb Wave", ::monkeybombwave );
			add_option( n, "Show FPS", ::showfps );
			add_option( n, "Hear Other Team", ::hearallplayers );
			add_option( n, "Force Host", ::forcehost );
		}
		if( getdvar( "mapname" ) == "zm_prison" )
		{
			add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
			add_menu( n, self.aio[ "menuName"], "Admin Menu" );
			add_option( n, "Rain Minecraft Body", ::toggleraindefault );
			add_option( n, "Rain Sphere", ::togglerainsphere );
			add_option( n, "Rain Perks", ::togglerainperk );
			add_option( n, "Ice Skater", ::doiceskater );
			add_option( n, "Roll Away Actor", ::rollawayactor );
			add_option( n, "Wind Mill", ::windmill );
			add_option( n, "Kamikaze", ::dokamikaze );
			add_option( n, "Spiral Stairs", ::dosstairs );
			add_option( n, "Earthquake Man", ::toggleearthquakegirl );
			add_option( n, "Earthquake Brutus", ::toggleearthquakebrutus );
			add_option( n, "Walking AC-130", ::dowalkingac130 );
			add_option( n, "Aimbot", ::doaimbot );
			add_option( n, "Flip Man", ::crazyman );
			add_option( n, "Artillery", ::w3x );
			add_option( n, "Adventure Time", ::initsexycmks );
			add_option( n, "Disco Sun", ::discosun );
			add_option( n, "Mexican Wave", ::mexicanwave );
			add_option( n, "Man Wave", ::mistywave );
			add_option( n, "Brutus Wave", ::brutuswave );
			add_option( n, "Show FPS", ::showfps );
			add_option( n, "Hear Other Team", ::hearallplayers );
			add_option( n, "Force Host", ::forcehost );
		}
		if( getdvar( "mapname" ) == "zm_buried" )
		{
			add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
			add_menu( n, self.aio[ "menuName"], "Admin Menu" );
			add_option( n, "Rain Minecraft Body", ::toggleraindefault );
			add_option( n, "Rain Sphere", ::togglerainsphere );
			add_option( n, "Rain Perks", ::togglerainperk );
			add_option( n, "Rain Teddys", ::togglerainteddy );
			add_option( n, "Ice Skater", ::doiceskater );
			add_option( n, "Roll Away Actor", ::rollawayactor );
			add_option( n, "Wind Mill", ::windmill );
			add_option( n, "Kid Ride", ::dokidride );
			add_option( n, "Kamikaze", ::dokamikaze );
			add_option( n, "Spiral Stairs", ::dosstairs );
			add_option( n, "Earthquake Man", ::toggleearthquakegirl );
			add_option( n, "Walking AC-130", ::dowalkingac130 );
			add_option( n, "Aimbot", ::doaimbot );
			add_option( n, "Flip Man", ::crazyman );
			add_option( n, "Artillery", ::w3x );
			add_option( n, "Adventure Time", ::initsexycmks );
			add_option( n, "Disco Sun", ::discosun );
			add_option( n, "Mexican Wave", ::mexicanwave );
			add_option( n, "Teddy Wave", ::teddywave );
			add_option( n, "Man Wave", ::mistywave );
			add_option( n, "Witch Wave", ::witchwave );
			add_option( n, "Leroy Wave", ::leroywave );
			add_option( n, "Show FPS", ::showfps );
			add_option( n, "Hear Other Team", ::hearallplayers );
			add_option( n, "Force Host", ::forcehost );
		}
		if( getdvar( "mapname" ) == "zm_tomb" )
		{
			add_option( self.aio[ "menuName"], "Admin Menu", ::submenu, n, "Admin Menu" );
			add_menu( n, self.aio[ "menuName"], "Admin Menu" );
			add_option( n, "Rain Minecraft Body", ::toggleraindefault );
			add_option( n, "Rain Sphere", ::togglerainsphere );
			add_option( n, "Rain Perks", ::togglerainperk );
			add_option( n, "Rain Teddys", ::togglerainteddy );
			add_option( n, "Ice Skater", ::doiceskater );
			add_option( n, "Roll Away Actor", ::rollawayactor );
			add_option( n, "Wind Mill", ::windmill );
			add_option( n, "Kamikaze", ::dokamikaze );
			add_option( n, "Spiral Stairs", ::dosstairs );
			add_option( n, "Earthquake Man", ::toggleearthquakegirl );
			add_option( n, "Earthquake Panzer", ::toggleearthquakepanzer );
			add_option( n, "Walking AC-130", ::dowalkingac130 );
			add_option( n, "Aimbot", ::doaimbot );
			add_option( n, "Flip Man", ::crazyman );
			add_option( n, "Artillery", ::w3x );
			add_option( n, "Adventure Time", ::initsexycmks );
			add_option( n, "Disco Sun", ::discosun );
			add_option( n, "Mexican Wave", ::mexicanwave );
			add_option( n, "Teddy Wave", ::teddywave );
			add_option( n, "Man Wave", ::mistywave );
			add_option( n, "Panzer Wave", ::panzerwave );
			add_option( n, "Show FPS", ::showfps );
			add_option( n, "Hear Other Team", ::hearallplayers );
			add_option( n, "Force Host", ::forcehost );
		}
	}
	if( self.status == "Co-Host" || self.status == "Host" )
	{
		x = "X";
		add_option( self.aio[ "menuName"], "Rounds Menu", ::submenu, x, "Rounds Menu" );
		add_menu( x, self.aio[ "menuName"], "Rounds Menu" );
		add_option( x, "+ 1 Round", ::round_up );
		add_option( x, "- 1 Round", ::round_down );
		add_option( x, "Round 10", ::round10 );
		add_option( x, "Round 25", ::round25 );
		add_option( x, "Round 50", ::round50 );
		add_option( x, "Round 75", ::round75 );
		add_option( x, "Round 100", ::round100 );
		add_option( x, "Round 125", ::round125 );
		add_option( x, "Round 150", ::round150 );
		add_option( x, "Round 175", ::round175 );
		add_option( x, "Round 200", ::round200 );
		add_option( x, "Round 225", ::round225 );
		add_option( x, "Round 250", ::max_round );
		o = "O";
		add_option( self.aio[ "menuName"], "Zombies Menu", ::submenu, o, "Zombies Menu" );
		add_menu( o, self.aio[ "menuName"], "Zombies Menu" );
		add_option( o, "Freeze Zombies", ::fr3zzzom );
		add_option( o, "Invisible Zombies", ::zombieinvisible );
		add_option( o, "Kill All Zombies", ::zombiekill );
		add_option( o, "Headless Zombies", ::headless );
		add_option( o, "Teleport Zombies To Crosshairs", ::tgl_zz2 );
		add_option( o, "Debug Zombies", ::zombiedefaultactor );
		add_option( o, "Count Zombies", ::zombiecount );
		add_option( o, "Disable Zombies", ::donospawnzombies );
		add_option( o, "Zombies Walk", ::threadatallzombz, ::set_zombie_run_cycle, "walk" );
		add_option( o, "Zombies Run", ::threadatallzombz, ::set_zombie_run_cycle, "run" );
		add_option( o, "Zombies Sprint", ::threadatallzombz, ::set_zombie_run_cycle, "sprint" );
		add_option( o, "Zombies Super Sprint", ::threadatallzombz, ::set_zombie_run_cycle, "super_sprint" );
		add_option( o, "Zombies Crawl", ::threadatallzombz, ::set_zombie_run_cycle, "stumpy" );
		p = "P";
		add_option( self.aio[ "menuName"], "Game Settings", ::submenu, p, "Game Settings" );
		add_menu( p, self.aio[ "menuName"], "Game Settings" );
		add_option( p, "Anti Quit", ::toggleantiquit );
		add_option( p, "Super Jump", ::togglesuperjump );
		add_option( p, "Super Speed", ::speed );
		add_option( p, "Low Gravity", ::gravity );
		add_option( p, "Timescale", ::changetimescale );
		add_option( p, "Restart Game", ::dorestartgame );
		add_option( p, "End Game", ::doendgame );
		add_option( p, "Fast Exit", ::fastend );
		add_option( p, "Long Bleed Out", ::bleed );
		add_option( p, "Long Melee Range", ::knifemeelee );
		add_option( p, "Far Revive", ::farrevive );
		add_option( p, "Unlimited Sprint", ::sprintofds );
		add_option( p, "Lag Switch", ::lagswitch );
		add_option( p, "Pause Game", ::pauseme );
		add_option( p, "Freeze Box", ::magicbox );
		add_option( p, "Move Box", ::levacassa );
		add_option( p, "Build All Tables", ::buildalltables );
		add_option( p, "Auto Revive", ::autorevive );
		add_option( p, "Open All Doors", ::openalltehdoors );
		add_option( p, "Power On", ::turnpoweron );
		add_option( p, "Easter Egg Song", ::canzonenorm );
		add_option( p, "Easter Egg Song 2", ::doplaysounds, "mus_zmb_secret_song_2" );
		add_option( p, "Spawn Bot", ::spawnbot );
		if( getdvar( "mapname" ) == "zm_transit" )
		{
			add_option( p, "Secret Room", ::initialisesecretroom );
		}
		if( getdvar( "mapname" ) == "zm_nuked" )
		{
			add_option( p, "Secret Room", ::initialisesecretroom1 );
		}
	}
	if( self.status == "Host" )
	{
		add_option( self.aio[ "menuName"], "Client Options", ::submenu, "PlayersMenu", "Client Options" );
		add_menu( "PlayersMenu", self.aio[ "menuName"], "Client Options" );
		add_menu( "pOpt " + i, "PlayersMenu", "" );
		f = "F";
		add_option( self.aio[ "menuName"], "All Clients", ::submenu, f, "All Clients" );
		add_menu( f, self.aio[ "menuName"], "All Clients" );
		if( getdvar( "mapname" ) == "zm_transit" )
		{
			add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
			add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
			add_option( f, "All GodMod", ::allplayergivegodmod );
			add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
			add_option( f, "All Max Score", ::all1 );
			add_option( f, "All Perks", ::perksall );
			add_option( f, "All Max Rank", ::allmaxrank );
			add_option( f, "Teleport All To Me", ::doteleportalltome );
			add_option( f, "Teleport All To Crosshair", ::teltocross );
			add_option( f, "Send All to Space", ::sendalltospace );
			add_option( f, "All Default Weapon", ::debruh1 );
			add_option( f, "All Ray Gun", ::rg1 );
			add_option( f, "All Ray Gun x2", ::rg2 );
			add_option( f, "All JetGun", ::jetgunsweg );
			add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
			add_option( f, "All T-Bag", ::tbagallniggas );
			add_option( f, "All Adventure Time", ::allsexythrzlol );
			add_option( f, "All Debug Model", ::dmall );
			add_option( f, "All Teddy Model", ::tmall );
			add_option( f, "All Ammo Man", ::allammo1 );
			add_option( f, "All Nuke Man", ::allnuke1 );
			add_option( f, "All Sphere Man", ::allsphere1 );
			add_option( f, "All Arrow Man", ::all4 );
			add_option( f, "All Explosion Man", ::allexplol );
			add_option( f, "All Electric Man V2", ::allemlol );
			add_option( f, "All Cloud Man", ::allcloudmanlol );
			add_option( f, "All Glass Man V2", ::allglasslol );
			add_option( f, "All Spark Man", ::allsparkmanlol );
			add_option( f, "All Blood Man", ::all5 );
			add_option( f, "All Blinking Man", ::flashymanall );
			add_option( f, "All Teddy Shoes", ::all6 );
			add_option( f, "All Sexy Apperiance", ::allsexyman );
			add_option( f, "Freez All Position", ::dofreeallposition );
			add_option( f, "Kill All Players", ::allplayerskilled );
			add_option( f, "Revive All", ::dorevivealls );
			add_option( f, "Kick All", ::doallkickplayer );
		}
		if( getdvar( "mapname" ) == "zm_nuked" )
		{
			add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
			add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
			add_option( f, "All GodMod", ::allplayergivegodmod );
			add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
			add_option( f, "All Max Score", ::all1 );
			add_option( f, "All Perks", ::perksall );
			add_option( f, "All Max Rank", ::allmaxrank );
			add_option( f, "Teleport All To Me", ::doteleportalltome );
			add_option( f, "Teleport All To Crosshair", ::teltocross );
			add_option( f, "Send All to Space", ::sendalltospace );
			add_option( f, "All Default Weapon", ::debruh1 );
			add_option( f, "All Ray Gun", ::rg1 );
			add_option( f, "All Ray Gun x2", ::rg2 );
			add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
			add_option( f, "All T-Bag", ::tbagallniggas );
			add_option( f, "All Adventure Time", ::allsexythrzlol );
			add_option( f, "All Debug Model", ::dmall );
			add_option( f, "All Teddy Model", ::tmall );
			add_option( f, "All Ammo Man", ::allammo1 );
			add_option( f, "All Nuke Man", ::allnuke1 );
			add_option( f, "All Sphere Man", ::allsphere1 );
			add_option( f, "All Arrow Man", ::all4 );
			add_option( f, "All Spark Man V2", ::allsparkmanv2 );
			add_option( f, "All Blood Man", ::all5 );
			add_option( f, "All Blinking Man", ::flashymanall );
			add_option( f, "All Teddy Shoes", ::all6 );
			add_option( f, "Freez All Position", ::dofreeallposition );
			add_option( f, "Kill All Players", ::allplayerskilled );
			add_option( f, "Revive All", ::dorevivealls );
			add_option( f, "Kick All", ::doallkickplayer );
		}
		if( getdvar( "mapname" ) == "zm_highrise" )
		{
			add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
			add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
			add_option( f, "All GodMod", ::allplayergivegodmod );
			add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
			add_option( f, "All Max Score", ::all1 );
			add_option( f, "All Perks", ::perksall );
			add_option( f, "All Max Rank", ::allmaxrank );
			add_option( f, "Teleport All To Me", ::doteleportalltome );
			add_option( f, "Teleport All To Crosshair", ::teltocross );
			add_option( f, "Send All to Space", ::sendalltospace );
			add_option( f, "All Default Weapon", ::debruh1 );
			add_option( f, "All Ray Gun", ::rg1 );
			add_option( f, "All Ray Gun x2", ::rg2 );
			add_option( f, "All Sliquifier", ::sliquifiersweg2 );
			add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
			add_option( f, "All T-Bag", ::tbagallniggas );
			add_option( f, "All Adventure Time", ::allsexythrzlol );
			add_option( f, "All Debug Model", ::dmall );
			add_option( f, "All Teddy Model", ::tmall );
			add_option( f, "All Ammo Man", ::allammo1 );
			add_option( f, "All Nuke Man", ::allnuke1 );
			add_option( f, "All Sphere Man", ::allsphere1 );
			add_option( f, "All Arrow Man", ::all4 );
			add_option( f, "All Explosion Man", ::allexplol );
			add_option( f, "All Electric Man V2", ::allemlol );
			add_option( f, "All Blood Man", ::all5 );
			add_option( f, "All Blinking Man", ::flashymanall );
			add_option( f, "All Teddy Shoes", ::all6 );
			add_option( f, "All Sexy Apperiance", ::allsexyman );
			add_option( f, "Freez All Position", ::dofreeallposition );
			add_option( f, "Kill All Players", ::allplayerskilled );
			add_option( f, "Revive All", ::dorevivealls );
			add_option( f, "Kick All", ::doallkickplayer );
		}
		if( getdvar( "mapname" ) == "zm_prison" )
		{
			add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
			add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
			add_option( f, "All GodMod", ::allplayergivegodmod );
			add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
			add_option( f, "All Max Score", ::all1 );
			add_option( f, "All Perks", ::perksall );
			add_option( f, "All Max Rank", ::allmaxrank );
			add_option( f, "Teleport All To Me", ::doteleportalltome );
			add_option( f, "Teleport All To Crosshair", ::teltocross );
			add_option( f, "Send All to Space", ::sendalltospace );
			add_option( f, "All Default Weapon", ::debruh1 );
			add_option( f, "All Ray Gun", ::rg1 );
			add_option( f, "All Ray Gun x2", ::rg2 );
			add_option( f, "All Blundergat", ::blundergatsweg2 );
			add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
			add_option( f, "All T-Bag", ::tbagallniggas );
			add_option( f, "All Adventure Time", ::allsexythrzlol );
			add_option( f, "All Debug Model", ::dmall );
			add_option( f, "All Teddy Model", ::tmall );
			add_option( f, "All Ammo Man", ::allammo1 );
			add_option( f, "All Nuke Man", ::allnuke1 );
			add_option( f, "All Sphere Man", ::allsphere1 );
			add_option( f, "All Arrow Man", ::all4 );
			add_option( f, "All Explosion Man", ::allexplol );
			add_option( f, "All Electric Man V2", ::allemlol );
			add_option( f, "All Blood Man", ::all5 );
			add_option( f, "All Blinking Man", ::flashymanall );
			add_option( f, "All Sexy Apperiance", ::allsexyman );
			add_option( f, "Freez All Position", ::dofreeallposition );
			add_option( f, "Kill All Players", ::allplayerskilled );
			add_option( f, "Revive All", ::dorevivealls );
			add_option( f, "Kick All", ::doallkickplayer );
		}
		if( getdvar( "mapname" ) == "zm_buried" )
		{
			add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
			add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
			add_option( f, "All GodMod", ::allplayergivegodmod );
			add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
			add_option( f, "All Max Score", ::all1 );
			add_option( f, "All Perks", ::perksall );
			add_option( f, "All Max Rank", ::allmaxrank );
			add_option( f, "Teleport All To Me", ::doteleportalltome );
			add_option( f, "Teleport All To Crosshair", ::teltocross );
			add_option( f, "Send All to Space", ::sendalltospace );
			add_option( f, "All Default Weapon", ::debruh1 );
			add_option( f, "All Ray Gun", ::rg1 );
			add_option( f, "All Ray Gun x2", ::rg2 );
			add_option( f, "All Paralyzer", ::paralyzersweg );
			add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
			add_option( f, "All T-Bag", ::tbagallniggas );
			add_option( f, "All Adventure Time", ::allsexythrzlol );
			add_option( f, "All Debug Model", ::dmall );
			add_option( f, "All Teddy Model", ::tmall );
			add_option( f, "All Ammo Man", ::allammo1 );
			add_option( f, "All Nuke Man", ::allnuke1 );
			add_option( f, "All Sphere Man", ::allsphere1 );
			add_option( f, "All Arrow Man", ::all4 );
			add_option( f, "All Explosion Man", ::allexplol );
			add_option( f, "All Blood Man", ::all5 );
			add_option( f, "All Blinking Man", ::flashymanall );
			add_option( f, "All Teddy Shoes", ::all6 );
			add_option( f, "All Sexy Apperiance", ::allsexyman );
			add_option( f, "Freez All Position", ::dofreeallposition );
			add_option( f, "Kill All Players", ::allplayerskilled );
			add_option( f, "Revive All", ::dorevivealls );
			add_option( f, "Kick All", ::doallkickplayer );
		}
		if( getdvar( "mapname" ) == "zm_tomb" )
		{
			add_option( f, "Unverify All", ::changeverificationallplayers, "Unverified" );
			add_option( f, "Verify All", ::changeverificationallplayers, "Verified" );
			add_option( f, "All GodMod", ::allplayergivegodmod );
			add_option( f, "All Unlimited Ammo", ::toggle_ammo1337 );
			add_option( f, "All Max Score", ::all1 );
			add_option( f, "All Perks", ::perksall );
			add_option( f, "All Max Rank", ::allmaxrank );
			add_option( f, "Teleport All To Me", ::doteleportalltome );
			add_option( f, "Teleport All To Crosshair", ::teltocross );
			add_option( f, "Send All to Space", ::sendalltospace );
			add_option( f, "All Default Weapon", ::debruh1 );
			add_option( f, "All Ray Gun", ::rg1 );
			add_option( f, "All Ray Gun x2", ::rg2 );
			add_option( f, "All Staff of Lightning", ::staff11 );
			add_option( f, "All Staff of Fire", ::staff22 );
			add_option( f, "All Staff of Ice", ::staff33 );
			add_option( f, "All Staff of Wind", ::staff44 );
			add_option( f, "All Unlock Trophies", ::unlockallthrophiesallplayers );
			add_option( f, "All T-Bag", ::tbagallniggas );
			add_option( f, "All Adventure Time", ::allsexythrzlol );
			add_option( f, "All Debug Model", ::dmall );
			add_option( f, "All Teddy Model", ::tmall );
			add_option( f, "All Ammo Man", ::allammo1 );
			add_option( f, "All Nuke Man", ::allnuke1 );
			add_option( f, "All Sphere Man", ::allsphere1 );
			add_option( f, "All Arrow Man", ::all4 );
			add_option( f, "All Explosion Man V2", ::allexplol );
			add_option( f, "All Mud Man V2", ::allmudv2 );
			add_option( f, "All Fire Man V2", ::allfirev2 );
			add_option( f, "All Blood Man", ::all5 );
			add_option( f, "All Blinking Man", ::flashymanall );
			add_option( f, "All Teddy Shoes", ::all6 );
			add_option( f, "All Sexy Apperiance", ::allsexyman );
			add_option( f, "Freez All Position", ::dofreeallposition );
			add_option( f, "Kill All Players", ::allplayerskilled );
			add_option( f, "Revive All", ::dorevivealls );
			add_option( f, "Kick All", ::doallkickplayer );
		}
	}

}

updateplayersmenu()
{
	self endon( "disconnect" );
	self.menu.menucount["PlayersMenu"] = 0;
	i = 0;
	while( i < 18 )
	{
		player = level.players[ i];
		playername = getplayername( player );
		playersizefixed -= 1;
		if( self.menu.curs[ "PlayersMenu"] > playersizefixed )
		{
			self.menu.scrollerpos["PlayersMenu"] = playersizefixed;
			self.menu.curs["PlayersMenu"] = playersizefixed;
		}
		add_option( "PlayersMenu", "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ), ::submenu, "pOpt " + i, "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
		add_menu( "pOpt " + i, "PlayersMenu", "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
		add_option( "pOpt " + i, "Status", ::submenu, "pOpt " + ( i + "_3" ), "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
		add_menu( "pOpt " + ( i + "_3" ), "pOpt " + i, "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
		add_option( "pOpt " + ( i + "_3" ), "Unverify", ::changeverificationmenu, player, "Unverified" );
		add_option( "pOpt " + ( i + "_3" ), "^3Verify", ::changeverificationmenu, player, "Verified" );
		add_option( "pOpt " + ( i + "_3" ), "^4VIP", ::changeverificationmenu, player, "VIP" );
		add_option( "pOpt " + ( i + "_3" ), "^1Admin", ::changeverificationmenu, player, "Admin" );
		add_option( "pOpt " + ( i + "_3" ), "^5Co-Host", ::changeverificationmenu, player, "Co-Host" );
		if( !(player ishost()) )
		{
			add_option( "pOpt " + i, "Options", ::submenu, "pOpt " + ( i + "_2" ), "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
			add_menu( "pOpt " + ( i + "_2" ), "pOpt " + i, "[" + ( verificationtocolor( player.status ) + ( "^7] " + playername ) ) );
			if( getdvar( "mapname" ) == "zm_transit" )
			{
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
				add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
				add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
				add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
				add_option( "pOpt " + ( i + "_2" ), "Give JetGun", ::dogiveplayerweapon3, player );
				add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
				add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
				add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
			}
			if( getdvar( "mapname" ) == "zm_nuked" )
			{
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
				add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
				add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
				add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
				add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
				add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
				add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
			}
			if( getdvar( "mapname" ) == "zm_highrise" )
			{
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
				add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
				add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
				add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Sliquifier", ::dogiveplayerweapon4, player );
				add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
				add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
				add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
			}
			if( getdvar( "mapname" ) == "zm_prison" )
			{
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
				add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
				add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
				add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Blundergat", ::dogiveplayerweapon5, player );
				add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
				add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
				add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
			}
			if( getdvar( "mapname" ) == "zm_buried" )
			{
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
				add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
				add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
				add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Paralyzer", ::dogiveplayerweapon6, player );
				add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
				add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
				add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
			}
			if( getdvar( "mapname" ) == "zm_tomb" )
			{
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Me", ::doteleporttome, player );
				add_option( "pOpt " + ( i + "_2" ), "Teleport To Him", ::doteleporttohim, player );
				add_option( "pOpt " + ( i + "_2" ), "Send To Space", ::sendtospace, player );
				add_option( "pOpt " + ( i + "_2" ), "Freeze Position", ::playerfrezecontrol, player );
				add_option( "pOpt " + ( i + "_2" ), "Take All Weapons", ::chicitakeweaponplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Default Weapon", ::dogiveplayerweaponbruh, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun", ::dogiveplayerweapon, player );
				add_option( "pOpt " + ( i + "_2" ), "Give RayGun X2", ::dogiveplayerweapon2, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Staff of Lightning", ::dogiveplayerweapon7, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Staff of Fire", ::dogiveplayerweapon8, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Staff of Ice", ::dogiveplayerweapon9, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Staff of Wind", ::dogiveplayerweapon10, player );
				add_option( "pOpt " + ( i + "_2" ), "Give GodMod", ::playergivegodmod, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Unlimited Ammo", ::playerunlimitedammo, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Points", ::dopointsplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Perks", ::allperks, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Max Rank", ::dorankplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Give Trophies", ::dotrophiesplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Spin Player", ::togglespin, player );
				add_option( "pOpt " + ( i + "_2" ), "Blind Player", ::accecastronzo, player );
				add_option( "pOpt " + ( i + "_2" ), "Kill Player", ::dokillnoobplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Revive Player", ::doreviveplayer, player );
				add_option( "pOpt " + ( i + "_2" ), "Kick Player", ::kickplayer, player );
			}
		}
		i++;
	}

}

add_menu( menu, prevmenu, menutitle )
{
	self.menu.getmenu[menu] = menu;
	self.menu.scrollerpos[menu] = 0;
	self.menu.curs[menu] = 0;
	self.menu.menucount[menu] = 0;
	self.menu.subtitle[menu] = menutitle;
	self.menu.previousmenu[menu] = prevmenu;

}

add_option( menu, text, func, arg1, arg2 )
{
	menu = self.menu.getmenu[ menu];
	num = self.menu.menucount[ menu];
	self.menu.menuopt[menu][num] = text;
	self.menu.menufunc[menu][num] = func;
	self.menu.menuinput[menu][num] = arg1;
	self.menu.menuinput1[menu][num] = arg2;
	self.menu.menucount[menu] += 1;

}

_openmenu()
{
	self freezecontrols( 0 );
	self.recreateoptions = 1;
	self setclientuivisibilityflag( "hud_visible", 0 );
	self playsoundtoplayer( "mpl_flagcapture_sting_friend", self );
	self showhud();
	self thread storetext( self.curmenu, self.curtitle );
	self updatescrollbar();
	self.menu.open = 1;
	self.recreateoptions = 0;

}

_closemenu()
{
	self freezecontrols( 0 );
	self playsoundtoplayer( "cac_grid_equip_item", self );
	self hidehud();
	self setclientuivisibilityflag( "hud_visible", 1 );
	self.menu.open = 0;

}

givemenu()
{
	if( self isverified() )
	{
		if( !(self.menuinit) )
		{
			self.menuinit = 1;
			self thread menuinit();
		}
	}

}

destroymenu()
{
	self.menuinit = 0;
	self notify( "destroyMenu" );
	self freezecontrols( 0 );
	if( IsDefined( self.aio[ "options"] ) )
	{
		i = 0;
		while( i < self.aio[ "options"].size )
		{
			self.aio[ "options"][ i] destroy();
			i++;
		}
	}
	self setclientuivisibilityflag( "hud_visible", 1 );
	self.menu.open = 0;
	wait 0.01;
	self.aio[ "backgroundouter"] destroyelem();
	self.aio[ "barclose"] destroyelem();
	self.aio[ "background"] destroyelem();
	self.aio[ "scrollbar"] destroyelem();
	self.aio[ "bartop"] destroyelem();
	self.aio[ "barbottom"] destroyelem();
	self.aio[ "title"] destroy();
	self.aio[ "closeText"] destroy();
	self.aio[ "status"] destroy();

}

submenu( input, title )
{
	if( input == self.aio[ "menuName"] )
	{
		self thread storetext( input, self.aio[ "menuName"] );
	}
	else
	{
		if( input == "PlayersMenu" )
		{
			self updateplayersmenu();
			self thread storetext( input, "Client Options" );
		}
		else
		{
			self thread storetext( input, title );
		}
	}
	self.curmenu = input;
	self.curtitle = title;
	self.menu.scrollerpos[self.curmenu] = self.menu.curs[ self.curmenu];
	self.menu.curs[input] = self.menu.scrollerpos[ input];
	self updatescrollbar();

}

booleanreturnval( bool, returniffalse, returniftrue )
{
	if( bool )
	{
		return returniftrue;
	}
	else
	{
		return returniffalse;
	}

}

booleanopposite( bool )
{
	if( !(IsDefined( bool )) )
	{
		return 1;
	}
	if( bool )
	{
		return 0;
	}
	else
	{
		return 1;
	}

}

resetbooleans()
{
	self.infinitehealth = 0;

}

test()
{
	self iprintlnbold( "Test" );

}

debugexit()
{
	exitlevel( 0 );

}

overflowfix()
{
	level endon( "game_ended" );
	level endon( "host_migration_begin" );
	level.test = createserverfontstring( "default", 1 );
	level.test settext( "xTUL" );
	level.test.alpha = 0;
	if( getdvar( "g_gametype" ) == "sd" )
	{
		a = 45;
	}
	else
	{
		a = 55;
	}
	for(;;)
	{
	level waittill( "textset" );
	if( level.result >= a )
	{
		level.test clearalltextafterhudelem();
		level.result = 0;
		thread doheartfix();
		foreach( player in level.players )
		{
			if( player isverified() && player.menu.open )
			{
				player submenu( player.curmenu, player.curtitle );
				player.aio[ "status"] setsafetext( "Status: " + player.status );
			}
			if( player isverified() && !(player.menu.open) )
			{
				player.aio[ "closeText"] setsafetext( "Press [{+speed_throw}] + [{+MELEE}] to Open Menu" );
				player.aio[ "status"] setsafetext( "Status: " + player.status );
			}
		}
	}
	}

}

