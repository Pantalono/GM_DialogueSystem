/// @func scr_speaker_settings(_name)
/// @param {string} _text The name of the speaker
/// @desc Returns settings needed for a dialogue
function scr_speaker_settings(_name)
{
	switch(_name)
	{
	case "Jhonson B. Jhonson":
		speaker_image = spr_testspeakerhungry;
		spr_imagebox = spr_textbox;
		spr_namebox = spr_textbox;
		typist.sound(snd_speaker,0.02,0.8,1.2);
		text_x = 246; // Top Left
		text_y = 590;
		/* If you want to change the typing, or anything in the obj_textbox
		settings, do it here :3
		*/
	break;
	}
}