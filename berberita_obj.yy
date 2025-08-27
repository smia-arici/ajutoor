//create event
my_textbox = noone;
my_text[0] = "Ba vlade, cumetre, acum te-ai trezit?"
my_text[1] = "Ba da prost dispus mai esti..."


//step event
	// Check for a collision with the player object.
if (place_meeting(x, y, Object1)) {
    // If a textbox doesn't exist yet, create one.
	if (keyboard_check(vk_space)) {
    if (my_textbox == noone) {
        my_textbox = instance_create_layer(x, y, "text", Obj_textbox);
        // Pass the dialogue array from THIS character to the newly created textbox.
    my_textbox.text = my_text;
    }}
} else {
    // If the player moves away, destroy the textbox.
    if (my_textbox != noone) {
        instance_destroy(my_textbox);
		my_textbox = noone;
    }}
