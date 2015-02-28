/// npc_speak_fairy(fairy_inst, speak_type)

with (argument0)
{
    switch (argument1)
    {
        case speak.greet:
            if (npc_is_following_player(id))
            {
                dialogue_set_message(0, "Is something wrong?");
                dialogue_set_responses("Forget about that", "Not really");
                dialogue_set_result(1, speak.help_me);
                dialogue_set_message(2, "Alrighty then");
            }
            else
            {
                dialogue_set_message(0, "Oh, hello there " + player_get_name() + ".");
                dialogue_set_message(0, "Is something on your mind?");
                dialogue_set_responses("How are you?", 
                                       "Can you help me?", 
                                       "Nevermind");
                dialogue_set_result(1, speak.talk);    
                dialogue_set_result(2, speak.help_me);
                dialogue_set_result(3, speak.goodbye);
            }
        break;
        
        case speak.talk:
            dialogue_set_message(0, "I'm fine, thank you for asking.");
        break;
        
        case speak.help_me:
            if (npc_is_following_player(id))
            {
                dialogue_set_message(0, "Alright. If you need anything, feel free to ask.");
                dialogue_set_endaction(0, endaction_fairy_unfollow);
            }
            else if (player_has_follower())
            {
                dialogue_set_message(0, "Sorry, but you already have someone helping you.");
            }
            else if (npc_fairy_get_energy(id) >= energy_min)
            {
                dialogue_set_message(0, "Sure!");
                dialogue_set_endaction(0, endaction_fairy_follow);
            }
            else
            {
                dialogue_set_message(0, "Sorry, I'm too tired");
            }
        break;
        
        case speak.goodbye:
            dialogue_set_message(0, "Alright then. Maybe another time.");
        break;
    }
}