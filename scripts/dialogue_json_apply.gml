/// dialogue_json_apply(dialogue)

var dialogue = argument0;

var text = dialogue[? json_text];
if (not is_undefined(text))
{
    var size = ds_list_size(text);
    for (var i = 0; i < size; i++)
        dialogue_set_message(0, text[| i]);
}

dialogue_set_endaction(0, dialogue[? json_endaction]);

var response_list = dialogue[? json_response];
if (not is_undefined(response_list))
{
    var size = ds_list_size(response_list);
    dialogue_set_num_responses(size);
    
    for (var i = 0; i < size; i++)
    {
        var response_object = response_list[| i];
        dialogue_set_response(i, response_object[? json_reply]);
        dialogue_set_result(i + 1, response_object[? json_goto]);    
        dialogue_set_endaction(i + 1, response_object[? json_endaction]);
        
        var text = response_object[? json_text];
        if (not is_undefined(text))
        {
            var text_size = ds_list_size(text);
            for (var j = 0; j < text_size; j++)
                dialogue_set_message(i + 1, text[| j]);
        }
    }
}
