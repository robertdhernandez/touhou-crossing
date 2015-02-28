/// npc_fairy_can_work(fairy_inst)

return npc_fairy_is_free(id) and not npc_fairy_is_tired(id) and npc_fairy_get_energy(id) > energy_min;