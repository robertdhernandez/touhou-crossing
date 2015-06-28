/// player_get_sprite(type, direction)

var is_renko = argument0 == player_type.renko;

switch (round_direction(argument1))
{
    case 0: return iff(is_renko, spr_renko_000, spr_maribel_000); break;
    case 1: return iff(is_renko, spr_renko_045, spr_maribel_045); break;
    case 2: return iff(is_renko, spr_renko_090, spr_maribel_090); break;
    case 3: return iff(is_renko, spr_renko_135, spr_maribel_135); break;
    case 4: return iff(is_renko, spr_renko_180, spr_maribel_180); break;
    case 5: return iff(is_renko, spr_renko_225, spr_maribel_225); break;
    case 6: return iff(is_renko, spr_renko_270, spr_maribel_270); break;
    case 7: return iff(is_renko, spr_renko_315, spr_maribel_315); break;
}
