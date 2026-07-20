// dlg_line adds a normal text line, you may additionally add a character's name (E.g, Jhonson B. Jhonson)
// dlg_option adds an option to the last sent line


/// @func scr_dialogue(_text)
/// @param {string} _text The name of the dialogue
/// @desc Returns settings and text needed for a specific dialogue
function scr_get_dialogue(_text)
{
	lines = []
	switch(_text)
	{
		case "Test":
		dlg_line("[wave]Wow! I am so fucking hungry!")
		dlg_line("I said that! Jhonson B. Jhonshon","Jhonson B. Jhonson");
		dlg_line("I think there is something down my throat! :D ifdaoygfyailgoycmgaofigfoagfoafdahfoaihfagf","Jhonson B. Jhonson");
		dlg_option("You Fool!","Test a")
		dlg_option("Lemme Help", "Test b")
		return lines;
		
		case "Test a":
		dlg_line(":O","Jhonson B. Jhonson")
		dlg_line(">:)")
		return lines;
		
		case "Test b":
		dlg_line("Thank you twinn", "Jhonson B. Jhonson")
		return lines;
	}
	// Juust in case we mess up
	show_error("No dialogue has the input name",false)
}