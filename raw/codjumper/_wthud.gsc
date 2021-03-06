// This file has been autogenerated using CoD4X 1.8 server. //
// If it contains wrong data, please create issue here:     //
//    https://github.com/callofduty4x/CoD4x_Server/issues   //
#include common_scripts\utility;
#include codjumper\_cj_utility;
//300, 425, 240, 48

init(){
  PreCacheShader("hud_fps_125");
  PreCacheShader("hud_fps_250");
  PreCacheShader("hud_fps_333");
  PreCacheShader("hud_wt0_125");
  PreCacheShader("hud_wt0_250");
  PreCacheShader("hud_wt0_333");
  PreCacheShader("hud_wt1_125");
  PreCacheShader("hud_wt1_250");
  PreCacheShader("hud_wt1_333");
  PreCacheShader("hud_wt2_125");
  PreCacheShader("hud_wt2_250");
  PreCacheShader("hud_wt2_333");
}

watchWTHud(){
  self endon("disconnect");
  while(true){
    self waittill("refresh_huds");
    if(self.sessionstate == "playing")
      self thread playerWTHUDLoop();
    else{
      self resetWTHudDvars();
    }
  }
}

resetWTHudDvars(){
  self thread killWTHud();
  self setClientdvar("cg_drawminimap", get_cjcfg("CJ_HUD_MINIMAP"));
  self setClientdvar("cg_drawfps", get_cjcfg("CJ_HUD_FPS"));
  self setClientdvar("cg_drawIprintlnbold", 1);
  self setClientdvar("cg_drawTime", 1);
  self.cj_block_clienthud = false;
}

killWTHud(){
  self endon("disconnect");

  if(isDefined(self.cj["hud"]["wt"]))
    self.cj["hud"]["wt"] destroy();
}

blockOtherHuds(){
   self.cj_block_clienthud = true;
}

unblockOtherHuds(){
   self.cj_block_clienthud = false;
}

checkforhide(){
  self endon("disconnect");

  while(self codjumper\_cj_utility::get_cjcfg("CJ_HUD_WT")){
      if(isDefined(self.cj["hud"]["vote"]))
        self.cj["hud"]["vote"].alpha = 0;
      if(isDefined(self.cj["hud"]["voteno"]))
        self.cj["hud"]["voteno"].alpha = 0;
      if(isDefined(self.cj["hud"]["voteyes"]))
        self.cj["hud"]["voteyes"].alpha = 0;
      if(isDefined(self.cj["hud"]["votenokey"]))
        self.cj["hud"]["votenokey"].alpha = 0;
      if(isDefined(self.cj["hud"]["voteyeskey"]))
        self.cj["hud"]["voteyeskey"].alpha = 0;
      if(isDefined(self.cj["hud"]["votetime"]))
        self.cj["hud"]["votetime"].alpha = 0;
      if(isDefined(self.cj["hud"]["votearg"]))
        self.cj["hud"]["votearg"].alpha = 0;
      if(isDefined(self.cj["hud"]["votebg"]))
        self.cj["hud"]["votebg"].alpha = 0;
      if(isDefined(self.cj["hud"]["advert"]))
        self.cj["hud"]["advert"].alpha = 0;

  wait 0.05;
  }
  if(isDefined(self.cj["hud"]["vote"]))
    self.cj["hud"]["vote"].alpha = 1;
  if(isDefined(self.cj["hud"]["voteno"]))
    self.cj["hud"]["voteno"].alpha = 1;
  if(isDefined(self.cj["hud"]["voteyes"]))
    self.cj["hud"]["voteyes"].alpha = 1;
  if(isDefined(self.cj["hud"]["votenokey"]))
    self.cj["hud"]["votenokey"].alpha = 1;
  if(isDefined(self.cj["hud"]["voteyeskey"]))
    self.cj["hud"]["voteyeskey"].alpha = 1;
  if(isDefined(self.cj["hud"]["votetime"]))
    self.cj["hud"]["votetime"].alpha = 1;
  if(isDefined(self.cj["hud"]["votearg"]))
    self.cj["hud"]["votearg"].alpha = 1;
  if(isDefined(self.cj["hud"]["votebg"]))
    self.cj["hud"]["votebg"].alpha = 1;
  if(isDefined(self.cj["hud"]["advert"]))
    self.cj["hud"]["advert"].alpha = 0.8;

}

playerWTHUDLoop(){
  self endon("refresh_huds");
  self endon("disconnect");
  self killWTHud();

  self setClientdvar("cg_drawfps", 0);
  self setClientdvar("cg_drawIprintlnbold", 0);
  self setClientdvar("cg_drawTime", 0);
  self setClientdvar("cg_drawminimap", 0);

  switch(int(self codjumper\_cj_utility::get_cjcfg("CJ_HUD_WT"))){
    case 1:
      println("Case 1");
      self thread checkforhide();
      self.cj["hud"]["wt"] = addTextHud(self, 0, 360, 1 , "right", "top", "right","top",4,0);
      shader = "hud_wt0_";
      x = 160;
      y = 72;
      break;
    case 2:
      println("Case 2");
      self.cj["hud"]["wt"] = addTextHud(self, 0, 345, 1 , "right", "top", "right","top",4,0);
      shader = "hud_wt1_";
      x = 150;
      y = 150;
      break;
    case 3:
    println("Case 3");
      self.cj["hud"]["wt"] = addTextHud(self, 0, 345, 1 , "right", "top", "right","top",4,0);
      shader = "hud_wt2_";
      x = 150;
      y = 150;
      break;
    default:
      self resetWTHudDvars();
      return;
  }

  last_clientfps = 0;
  while(int(self codjumper\_cj_utility::get_cjcfg("CJ_HUD_WT")) > 0){
    wait 0.05;

    if(last_clientfps == getDvarInt("com_maxfps")) continue;

    switch(getDvarInt("com_maxfps")){
      case 125:
        self.cj["hud"]["wt"] setShader(shader + "125", x, y);
        break;
      case 250:
        self.cj["hud"]["wt"] setShader(shader + "250", x, y);
        break;
      case 333:
        self.cj["hud"]["wt"] setShader(shader + "333", x, y);
        break;
      default:
        self.cj["hud"]["wt"] setShader("");
        break;
    }
  }

}

addTextHud( who, x, y, alpha, alignX, alignY, horiz, vert, fontScale, sort ) {
	if( isPlayer( who ) )
		hud = newClientHudElem( who );
	else
		hud = newHudElem();

	hud.x = x;
	hud.y = y;
	hud.alpha = alpha;
	hud.sort = sort;
	hud.alignX = alignX;
	hud.alignY = alignY;
	if(isdefined(vert))
		hud.vertAlign = vert;
	if(isdefined(horiz))
		hud.horzAlign = horiz;
	if(fontScale != 0)
		hud.fontScale = fontScale;
	hud.foreground = 1;
	hud.archived = 0;
	return hud;
}
