/// player_get_sprite(type, direction)

var is_renko = argument0 == player_type.renko;

switch (round_direction(argument1))
{
    case   0: return iff(is_renko, spr_renko_000, spr_maribel_000); break;
    case  45: return iff(is_renko, spr_renko_045, spr_maribel_045); break;
    case  90: return iff(is_renko, spr_renko_090, spr_maribel_090); break;
    case 135: return iff(is_renko, spr_renko_135, spr_maribel_135); break;
    case 180: return iff(is_renko, spr_renko_180, spr_maribel_180); break;
    case 225: return iff(is_renko, spr_renko_225, spr_maribel_225); break;
    case 270: return iff(is_renko, spr_renko_270, spr_maribel_270); break;
    case 315: return iff(is_renko, spr_renko_315, spr_maribel_315); break;
}