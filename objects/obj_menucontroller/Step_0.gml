// Get player input
//Handle player input and move cursor
if ((keyboard_check_pressed(cont_UP) || gamepad_button_check_pressed(0,gp_padu)) && (menu_history[array_length(menu_history)-1] != "Change Characters"))
{
	if(obj_cursor.cursor_target = 0)
	{obj_cursor.cursor_target = array_length(menu_display)-1}
	else
	{obj_cursor.cursor_target-=1}
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
if ((keyboard_check_pressed(cont_DOWN) || gamepad_button_check_pressed(0,gp_padd)) && (menu_history[array_length(menu_history)-1] != "Change Characters"))
{
	if(obj_cursor.cursor_target = array_length(menu_display)-1)
	{obj_cursor.cursor_target = 0}
	else
	{obj_cursor.cursor_target+=1}
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
if ((keyboard_check_pressed(cont_LEFT) || gamepad_button_check_pressed(0,gp_padl)) && (menu_history[array_length(menu_history)-1] = "Change Characters"))
{
	if(obj_cursor.cursor_target = 0)
	{obj_cursor.cursor_target = array_length(menu_display)-1}
	else
	{obj_cursor.cursor_target-=1}
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
if ((keyboard_check_pressed(cont_RIGHT) || gamepad_button_check_pressed(0,gp_padr)) && (menu_history[array_length(menu_history)-1] = "Change Characters"))
{
	if(obj_cursor.cursor_target = array_length(menu_display)-1)
	{obj_cursor.cursor_target = 0}
	else
	{obj_cursor.cursor_target+=1}
	audio_play_sound(choose(snd_cursor1,snd_cursor2),1,false)
}
if(keyboard_check_pressed(cont_A) || gamepad_button_check_pressed(0,gp_face1))
{
	scr_confirm(current_menu,obj_cursor.cursor_target)
	
}
if(keyboard_check_pressed(cont_B) || gamepad_button_check_pressed(0,gp_face2))
{
	scr_cancel(current_menu,obj_cursor.cursor_target)
	
}

switch current_menu{
  case "Title Screen":{
	room_goto(rom_title_screen)
	instance_destroy(self)
	break;
  }
  case "Main Menu":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = "Local Play"                           //Fill array with relevant data
	menu_display[1] = "Online Play"
	menu_display[2] = "Leaderboards"
	menu_display[3] = "Replays"
	menu_display[4] = "Help & Options"
	menu_display[5] = "Download Content"
	menu_display[6] = "Adjust Screen"
	break;
  }
  case "Local Play":{  			  //>
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = "Change Characters"                           //Fill array with relevant data
	menu_display[1] = "Select a Chapter"
	menu_display[2] = "Status Menu"
	menu_display[3] = "Shop"
	menu_display[4] = "Start the Game"
	break;
  }
  case "Change Characters":{  	  //>
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Soma Cruz"                  //Fill array with relevant data
	menu_display[1]  = "Alucard"
	menu_display[2]  = "Jonathan Morris"
	menu_display[3]  = "Julius Belmont"
	menu_display[4]  = "Richter Belmont"
	menu_display[5]  = "Shanoa"
	menu_display[6]  = "Charlotte Aulin"
	menu_display[7]  = "Yoko Belnades"                  
	menu_display[8]  = "Maria Renard"
	menu_display[9]  = "Simon Belmont"
	menu_display[10] = "Getsu Fuma"
	break;
  }
  case "Soma Cruz":{ 			  
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"      
	break;
  }
  case "Alucard":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"      
	break;
  }
  case "Jonathan Morris":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"  
	break;
  }
  case "Julius Belmont":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"        
	break;
  }
  case "Richter Belmont":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"          
	break;
  }
  case "Shanoa":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"     
	break;
  }
  case "Charlotte Aulin":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"   
	break;
  }
  case "Yoko Belnades":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"     
	break;
  }
  case "Maria Renard":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"      
	break;
  }
  case "Simon Belmont":{
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"            
	break;
  }
  case "Getsu Fuma":{			//<
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  = "Color 1"            //Fill array with relevant data
	menu_display[1]  = "Color 2"
	menu_display[2]  = "Color 3"
	menu_display[3]  = "Color 4"
	menu_display[4]  = "Color 5"
	menu_display[5]  = "Color 6"
	menu_display[6]  = "Color 7"
	menu_display[7]  = "Color 8"                
	break;
  }
  case "Select a Chapter":{		//><
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
    menu_display[0]	 = "Chapter 1"
	menu_display[1]	 = "Chapter 2"
	menu_display[2]	 = "Chapter 3"
	menu_display[3]	 = "Chapter 4"
	menu_display[4]	 = "Chapter 5"
	menu_display[5]	 = "Chapter 6"
	menu_display[6]	 = "Chapter 7"
	menu_display[7]	 = "Chapter 8"
	menu_display[8]	 = "Chapter 9"
	menu_display[9]	 = "Chapter 10"
	menu_display[10] = "Chapter 11"
	menu_display[11] = "Hub"
	break;
  }
  case "Status Menu":{		    //><
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]	 = "Offensive Gear"
	menu_display[1]	 = "Defensive Gear"
	menu_display[2]	 = "Martial Arts"
	menu_display[3]	 = "Monster Compendium"
	menu_display[4]	 = "Item Compendium"
	menu_display[5]	 = "Controller Settings"
	menu_display[6]	 = "Sound Settings"
	menu_display[7]	 = "Window Settings"
	menu_display[8]	 = "Screen Settings"
	menu_display[9]	 = "Camera Settings"
	break;
  }
  case "Shop":{					//><
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]	 = "Buy"
	menu_display[1]	 = "Sell"
	menu_display[2]	 = "Exit Shop"
	break;
  }
  case "Online Play": {			//>
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]	 = "Co-op Mode"
	menu_display[1]	 = "Survival Mode"
	menu_display[2]	 = "Check Invites"
	break;
  }
  case "Co-op Mode": {			//><
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]	 = "Quick Match"     // Join first available room
	menu_display[1]	 = "Custom Match"    // Show a list of all available rooms
	menu_display[2]	 = "Create a Team"   // Create new room
	break;
  }
  case "Survival Mode": {		//><
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]	 = "Quick Match"     // Join first available room
	menu_display[1]	 = "Custom Match"    // Show a list of all available rooms
	menu_display[2]	 = "Create a Team"   // Create new room
	break;
  }
  case "Help & Options": {		//>
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = "How to Play"                           //Fill array with relevant data
	menu_display[1] = "Controls"
	menu_display[2] = "Settings"
	menu_display[3] = "Monster Compendium"
	menu_display[4] = "Item Compendium"
	break;
  }
  case "How to Play": {			//>
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0]  =
	@"Your ultimate goal in this game is to
	destroy Castlevania, a ghoulish citadel
	which has manifested itself within
	the pages of the cursed Grimoire.
	Within each chapter lies a twisted
	reimagining of one of the casstle's prior
	incarnations, guarded by a boss
	symbolizing that particular area.
	Defeat the boss and open the chest
	that appears to unlock a new chapter.
	Completed chapters can be revisited
	at any time."
	menu_display[1]  = "The Grimoire"
	menu_display[2]  = "Double Jump"
	menu_display[3]  = "Treasure Chests"
	menu_display[4]  = "Skeleton Form"
	menu_display[5]  = "Reviving"
	menu_display[6]  = "Mastery"
	menu_display[7]  = "Soul"
	menu_display[8]  = "Dark Magic"
	menu_display[9]  = "Martial Arts"
	menu_display[10] = "Bound Spells"
	menu_display[11] = "Glyph"
	menu_display[12] = "Magnes"
	menu_display[13] = "Dual Crush"
	break;
  }
  case "The Grimoire": {
   array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
   menu_display[0] = 
   @"A cursed book within which lies the
   sum of all Castlevania's history--as well
   as an incarnation of the castle itself.
   Fortunately, the forces of good which
   have time and again been the castle's
   undoing are also recorded withing these
   pages.
   Borrow their power and forever erase
   Castlevania from this unholy tome."
   break;
  }
  case "Double Jump": {
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"This allows you to jump a second time
	in midair to reach greater heights."
	break;
  }
  case "Treasure Chests": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"Myriad treasure chests can be
	found throughout Castlevania.
	The type of chest determines what
	sort of helpful item you'll find inside,
	from health-replenishing food to
	rare weapons.  In Co-op Mode, you
	receive items from the chests
	your allies open, too."
	break;
  }
  case "Skeleton Form": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"If you perish during Co-op Modes,
	a grave will appear where you died,
	but you can continue to fight in
	skeleton form.  Skeletons have
	limited abilities and cannot use
	items.  If your whole team is recuded
	to bones, it's Game Over."
	break;
  }
  case "Reviving": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"Use Water of Life to revive an ally
	who has been reduced to
	skeleton form.  During Co-op Modes,
	Water of Life can be found in blue
	treasure chests, but only the player
	who opens the chest receives it.
	Any unused Water of Life will be
	returned at the end of the chapter."
	break;
  }
  case "Mastery": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"Use the same subweapon continually
	and your mastery of that subweapon
	will increase, powering it up over time.
	As characters gain mastery of
	subweapons, their base weapon
	stats will grow in kind."
	break;
  }
  case "Soul": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"Enemy abilities are some-
	times relseased in spirit form at
	the moment of a foe's demise.
	Souls fall into three categories.
	BULLETS:  You can set up to four
	Bullet Souls.  Activate them by
	holding the Hunter Skills button
	and pressing up, down, left, or
	right directional button.
	GUARDIANS:  Once you have a
	Guardian Soul equipped, you may
	use it with a press of the
	Personal Skill button.
	ENCHANTMENTS:  The power of
	an Enchantment Soul is harnessed
	simply by equipping it."
	break;
  }
  case "Dark Magic": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"Spells which are mastered by collectin
	magic scrolls.  You can set up to four
	types of Dark Magic, which are activated
	by holding the Hunter Skills button
	and pressing up, down, left, or right
	on the directional buttons."
	break;
  }
  case "Martial Arts": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"Physically demanding skills which are
	mastered by collecting martial art
	scrolls, and performed using a
	combinatin of the directional buttons
	and other buttons."
	break;
  }
  case "Bound Spells": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"Magic acquired by locking projectiles
	and other enemy spells withing th
	pages of the Book of Binding.   If you
	succeed, the magic becomes your
	own.  You can set up to four types
	of Spells, which are activated by
	holding the Hunter Skills button and
	pressing up, down, left, or right on
	the directional buttons."
	break;
  }
  case "Glyph": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"Magical sigils which appear when
	adversaries cast magic; by absorbing
	these symbols (holding down the
	up button), you can sometimes
	learn their magic.  You can set up
	to four Glyphs, which are activated
	by holding the Hunter Skills button
	and pressing up, down, left, or right
	on the directional buttons."
	break;
  }
  case "Magnes": {
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"A Glyph which grants Shanoa extra
	mobility using the Personal Skill
	button.  Press the button while
	near a magnet to attach to it.  Next,
	press the directional buttons opposite
	your destination to build up tension.
	Lastly, release the button and you
	will spring back the other way at
	rocket speed."
	break;
  }
  case "Dual Crush": {			//<
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = 
	@"During Co-op modes, if you and
	another player are near each
	other and certain conditions are
	met, you can press the Confirm action
	button to signal to the other player
	that you want to execute a Dual Crush.
	If the other player presses the
	Confirm action button within the
	time limit, you will join forces to perform
	this powerful move."
	break;
  }
  case "Controls": {			//><
    array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	break;
  }
  case "Settings": {			//>
	array_delete(menu_display,0,array_length(menu_display))  //Clearing array
	
	menu_display[0] = "Controller Settings"
	menu_display[1] = "Sound Settings"
	menu_display[2] = "Window Settings"
	menu_display[3] = "Screen Settings"
	menu_display[4] = "Camera Settings"
	break;
  }
  case "Controller Settings": { //<>
	menu_display[0]  = "Attack 1"
	menu_display[1]  = "Attack 2"
	menu_display[2]  = "Personal Skill"
	menu_display[3]  = "Hunter Skills"
	menu_display[4]  = "Jump"
	menu_display[5]  = "Use item"
	menu_display[6]  = "Back-dash"
	menu_display[7]  = "Confirm action"
	menu_display[8]  = "Display Phrases"
	menu_display[9]  = "Vibration"
	menu_display[10] = "Defaults"
	menu_display[11] = "Done"
	
	break;
  }
	  
}

//Set new cursor position
obj_cursor.x = 1190  //1200
obj_cursor.y = 225 + (obj_cursor.cursor_target *75) //208


