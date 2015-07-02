/// player_get_sprite(type, direction)

switch (round_direction(argument1))
{
    case 0: 
        switch (argument0) 
        { 
            case player_sprite.renko:    return spr_renko_000;
            case player_sprite.maribel:  return spr_maribel_000;
            case player_sprite.sumireko: return spr_sumireko_000;
        }
    case 1:
        switch (argument0) 
        { 
            case player_sprite.renko:    return spr_renko_045;
            case player_sprite.maribel:  return spr_maribel_045;
            case player_sprite.sumireko: return spr_sumireko_045;
        }
    case 2: 
        switch (argument0) 
        { 
            case player_sprite.renko:    return spr_renko_090;
            case player_sprite.maribel:  return spr_maribel_090;
            case player_sprite.sumireko: return spr_sumireko_090;
        }
    case 3:
        switch (argument0) 
        { 
            case player_sprite.renko:    return spr_renko_135;
            case player_sprite.maribel:  return spr_maribel_135;
            case player_sprite.sumireko: return spr_sumireko_135;
        }
    case 4: 
        switch (argument0) 
        { 
            case player_sprite.renko:    return spr_renko_180;
            case player_sprite.maribel:  return spr_maribel_180;
            case player_sprite.sumireko: return spr_sumireko_180;
        }
    case 5: 
        switch (argument0) 
        { 
            case player_sprite.renko:    return spr_renko_225;
            case player_sprite.maribel:  return spr_maribel_225;
            case player_sprite.sumireko: return spr_sumireko_225;
        }
    case 6: 
        switch (argument0) 
        { 
            case player_sprite.renko:    return spr_renko_270;
            case player_sprite.maribel:  return spr_maribel_270;
            case player_sprite.sumireko: return spr_sumireko_270;
        }
    case 7: 
        switch (argument0) 
        { 
            case player_sprite.renko:    return spr_renko_315;
            case player_sprite.maribel:  return spr_maribel_315;
            case player_sprite.sumireko: return spr_sumireko_315;
        }
}
