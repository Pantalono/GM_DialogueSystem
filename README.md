This dialogue system uses scribble, https://github.com/JujuAdams/scribble, to use this to it's full extent, you should probably know how scribble works, plus, it's an amazing and well updated tool for game maker.
This dialogue system is divided between three parts, obj_textbox, which has all the settings for, well, the textbox, written_dialogues, which has the written text and speaker settings, which manages the individual settings of each line.
When creating a new dialogue, it's reccomendable to go to written_dialogues, currently there are two commands, dlg_line, which is a normal text line, and dlg_option, which adds an option to the last line of dialogue.
When creating a dlg_line you have the option to add a second string input for the speaker or character of the phrase. By default, only the name will appear, but you may choose to add an speaker sprite, a soundfont or else in speaker settings.

This system works the following way, first, you input all the individual lines as structs into an array. For example:
line[0] = {Text: "Good morning everyone!", Name: "Jhonathan Fakename"}
Then, the object is created, in the object, you see weather there is a character or not, if there isn't, you resort to the defaults, if there is, you modify the typewriter settings, the image, etc, according to the instructions in speaker settings.

For the options it's a little more complicated. Options are always found at the end of a line of dialogues because when you choose an option, you proably want to display a different answer depending on what you choose.
scr_option has two parameters, first the option name, second the resulting dialogue. This is added in an array to the last line of the dialogue, let me show you another example:
line[1] = {Text: "[wave]What should we do today?", Name: "Jhonathan Fakename", Options: [{OptText: "Let's go out and play! :D", Outcome: "Playing"}, {OptText: "I'm eating a rock, Jhonathan", Outcome: "Confusion"}
