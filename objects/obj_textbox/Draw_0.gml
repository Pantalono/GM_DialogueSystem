// Processing input
var nextline = keyboard_check_pressed(vk_space)
var opt_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
var opt_down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))
if nextline
{
if typist.get_state() == 1
{
	if struct_exists(lines[current_line],"Options")
	{
		scr_dialogue(lines[current_line].Options[current_option].Outcome)
		instance_destroy();
		exit;
	}
	current_line++;
	current_option = 0;
	if current_line == array_length(lines)
	{
		instance_destroy();
		exit;
	}
	if lines[current_line].Name != ""
	{
		// Remember that you have to reboot ALL settings changed between each character 
		scr_speaker_settings(lines[current_line].Name)
	}
	else
	{
		// Return to basic settings
		typist.in(1,0.4); 
		typist.ease(SCRIBBLE_EASE.BOUNCE,15,15,0.4,0.4,0,0.8);
		speaker_image = undefined;
		typist.sound(-1,0,0,0);
		text_x = 192;
		text_y = 672;
	}
}
else{typist.skip()}
}
// Common use variables
var phrase = lines[current_line]
// Draw textbox
var txt_w = textbox_width / sprite_get_width(spr);
var txt_h = textbox_height / sprite_get_height(spr);
draw_sprite_ext(spr, 0, textbox_x, textbox_y, txt_w, txt_h, 0, c_white, 1);

// Draw speaker
if spr_namebox != undefined
{
	var nm_w = namebox_width / sprite_get_width(spr_namebox);
	var nm_h = namebox_height / sprite_get_height(spr_namebox);
	draw_sprite_ext(spr_namebox, 0, namebox_x, namebox_y, nm_w, nm_h, 0, c_white, 1);
}
if lines[current_line].Name != ""
{
	draw_text_scribble(name_x, name_y, "[c_black]"+lines[current_line].Name);
}
if speaker_image != undefined
{
	draw_sprite(speaker_image,0,speaker_image_x,speaker_image_y);
}

// Draw Options
if struct_exists(phrase,"Options")
{
	var opt_n = array_length(phrase.Options)
	var opt_w = optionbox_width / sprite_get_width(spr);
	var opt_h = optionbox_height / sprite_get_height(spr);
	for (var i = 0; i < opt_n; i++)
	{
		draw_sprite_ext(spr_optionbox, 0, optionbox_x, optionbox_y - i * (optionbox_spacing + optionbox_height), opt_w, opt_h, 0, c_white, 1);
		draw_text_scribble(option_x, option_y - i * (optionbox_spacing + optionbox_height), "[c_black]"+ phrase.Options[i].OptName);
	}
	draw_sprite(spr_optarrow, 0, option_arrow_x, option_arrow_y - current_option * (optionbox_spacing + optionbox_height))
	if opt_up {current_option++}
	if opt_down{current_option--}
	current_option = clamp(current_option, 0, opt_n - 1)
}

scribble(phrase.Text).wrap(text_width).draw(text_x, text_y, typist);