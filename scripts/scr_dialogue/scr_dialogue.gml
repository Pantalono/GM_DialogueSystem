/// @func scr_dialogue(_text)
/// @param {string} _text The name of the dialogue you want to start
/// @desc Creates a textbox and starts a dialogue
function scr_dialogue(_text)
{
	var _lines = scr_get_dialogue(_text);
	show_debug_message(_lines[array_length(_lines)-1])
	instance_create_depth(0,0,-9999,obj_textbox, // Remember the depth is defined here
	{lines : _lines})
}

/// @func dlg_line(_text)
/// @param {string} _text The actual dialogue
/// @param {string} _name Does the character have a name? (Defaults to "")
/// @desc Adds a line of dialogue to the array
function dlg_line(_text, _name = "")
{
	array_push(lines, {Text: _text, Name: _name});
}
/// @func dlg_option(_option)
/// @param {string} _text The option text
/// @param {string} _text What dialogue to go to if this option is chosen
/// @desc Adds an option to the previous dialogue
function dlg_option(_option, _dialogue_outcome)
{
	var last = array_length(lines)-1
	var fulloption = {OptName: _option, Outcome: _dialogue_outcome}
	if variable_struct_exists(array_last(lines),"Options")
	{
		array_push(lines[last].Options,fulloption)
	}
	else
	{
		var def = lines[last]
		lines[last] = {Text: lines[last].Text, Name: lines[last].Name, Options: [fulloption]}
	}
}