// Textbox settings
spr = spr_textbox;
textbox_width = 1248; // In px
textbox_height = 192;
textbox_x = 64; // Top Left
textbox_y = 544;

// Text settings
text_width = 992;
text_x = 96; // Top Left
text_y = 576;

// Speaker settings (If any)
spr_namebox = undefined;
namebox_width = 512; // In px
namebox_height = 64;
namebox_x = 96; // Top left
namebox_y = 502;
name_x = 98; // Top Left
name_y = 502;

spr_imagebox = undefined;
imagebox_width = 128; // In px
imagebox_height = 128;
imagebox_x = 96; // Top Left
imagebox_y = 590;

speaker_image = undefined;
speaker_image_x = 96; // Top Left
speaker_image_y = 590;

// Options settings
spr_optionbox = spr_textbox;
optionbox_width = 320; // In px
optionbox_height = 64;
optionbox_x = 956; // Top Left
optionbox_y = 470;
optionbox_spacing = 16; // In px
option_x = 960;
option_y = 474;
option_arrow_x = optionbox_x - 64;
option_arrow_y = optionbox_y;
current_option = 0;

// Typist settings
typist = new __scribble_class_typist(false);
typist.in(1,0.4); // The speed of the typing
typist.ease(SCRIBBLE_EASE.BOUNCE,15,15,0.4,0.4,0,0.8); // The animation of the typing
typist.character_delay_add(".", 0.5); // Characters that create a lil pause
typist.character_delay_add(",", 0.25);
typist.character_delay_add("!", 0.5);
typist.character_delay_add("?", 0.5);
// Process line 0
if lines[0].Name != ""
{
	scr_speaker_settings(lines[0].Name)
}
current_line = 0;