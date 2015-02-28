/// npc_speak_default(npc_inst, speak_reason)

with (argument0)
{
    switch (argument1)
    {
        case speak.greet:
            dialogue_set_message(0, "Hello.");
            dialogue_set_responses("How are things?", "Nevermind");
            dialogue_set_result(1, speak.talk);
            dialogue_set_result(2, speak.goodbye);
        break;
        
        case speak.talk:
            dialogue_set_message(0, "I'm talking.");
        break;
        
        case speak.goodbye:
            dialogue_set_message(0, "Okay. Goodbye!");
        break;
    }
}