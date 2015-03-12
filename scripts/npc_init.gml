/// npc_init()

enum npc
{
    alice,
    aya,
    chen,
    cirno,
    eirin,
    flandre,
    hatate,
    iku,
    kanako,
    marisa,
    meiling,
    momiji,
    nazrin,
    okuu,
    patchy,
    ran,
    reimu,
    reisen,
    remi,
    rumia,
    sakuya,
    sanae,
    suika,
    suwako,
    tewi,
    wriggle,
    yamame,
    youmu,
    yukari,
    yuugi,
    yuuka,
    yuyuko,
    fairy = -100,
    player = -200,
}

/// NPC static data

var placeholder_dialogue = dialogue_json_load("Dialogue/dialogue_placeholder.json");

global.npc_count = 32;

global.npc_name[npc.alice] = "Alice";
global.npc_icon[npc.alice] = spr_alice_icon;
global.npc_mask[npc.alice] = mask_alice;
global.npc_animate_idle[npc.alice] = false;
global.npc_dialogue[npc.alice] = placeholder_dialogue;
global.npc_walk_000[npc.alice] = spr_alice_000;
global.npc_walk_045[npc.alice] = spr_alice_045;
global.npc_walk_090[npc.alice] = spr_alice_090;
global.npc_walk_135[npc.alice] = spr_alice_135;
global.npc_walk_180[npc.alice] = spr_alice_180;
global.npc_walk_225[npc.alice] = spr_alice_225;
global.npc_walk_270[npc.alice] = spr_alice_270;
global.npc_walk_315[npc.alice] = spr_alice_315;

global.npc_name[npc.aya] = "Aya";
global.npc_icon[npc.aya] = spr_aya_icon;
global.npc_mask[npc.aya] = mask_alice;
global.npc_dialogue[npc.aya] = placeholder_dialogue;
global.npc_animate_idle[npc.aya] = false;
global.npc_walk_000[npc.aya] = spr_aya_000;
global.npc_walk_045[npc.aya] = spr_aya_045;
global.npc_walk_090[npc.aya] = spr_aya_090;
global.npc_walk_135[npc.aya] = spr_aya_135;
global.npc_walk_180[npc.aya] = spr_aya_180;
global.npc_walk_225[npc.aya] = spr_aya_225;
global.npc_walk_270[npc.aya] = spr_aya_270;
global.npc_walk_315[npc.aya] = spr_aya_315;

global.npc_name[npc.chen] = "Chen";
global.npc_icon[npc.chen] = spr_chen_icon;
global.npc_mask[npc.chen] = mask_chen;
global.npc_dialogue[npc.chen] = placeholder_dialogue;
global.npc_animate_idle[npc.chen] = false;
global.npc_walk_000[npc.chen] = spr_chen_000;
global.npc_walk_045[npc.chen] = spr_chen_045;
global.npc_walk_090[npc.chen] = spr_chen_090;
global.npc_walk_135[npc.chen] = spr_chen_135;
global.npc_walk_180[npc.chen] = spr_chen_180;
global.npc_walk_225[npc.chen] = spr_chen_225;
global.npc_walk_270[npc.chen] = spr_chen_270;
global.npc_walk_315[npc.chen] = spr_chen_315;

global.npc_name[npc.cirno] = "Cirno";
global.npc_icon[npc.cirno] = spr_cirno_icon;
global.npc_mask[npc.cirno] = mask_cirno;
global.npc_dialogue[npc.cirno] = placeholder_dialogue;
global.npc_animate_idle[npc.cirno] = true;
global.npc_walk_000[npc.cirno] = spr_cirno_000;
global.npc_walk_045[npc.cirno] = spr_cirno_045;
global.npc_walk_090[npc.cirno] = spr_cirno_090;
global.npc_walk_135[npc.cirno] = spr_cirno_135;
global.npc_walk_180[npc.cirno] = spr_cirno_180;
global.npc_walk_225[npc.cirno] = spr_cirno_225;
global.npc_walk_270[npc.cirno] = spr_cirno_270;
global.npc_walk_315[npc.cirno] = spr_cirno_315;

global.npc_name[npc.eirin] = "Eirin";
global.npc_icon[npc.eirin] = spr_eirin_icon;
global.npc_mask[npc.eirin] = mask_eirin;
global.npc_dialogue[npc.eirin] = placeholder_dialogue;
global.npc_animate_idle[npc.eirin] = false;
global.npc_walk_000[npc.eirin] = spr_eirin_000;
global.npc_walk_045[npc.eirin] = spr_eirin_045;
global.npc_walk_090[npc.eirin] = spr_eirin_090;
global.npc_walk_135[npc.eirin] = spr_eirin_135;
global.npc_walk_180[npc.eirin] = spr_eirin_180;
global.npc_walk_225[npc.eirin] = spr_eirin_225;
global.npc_walk_270[npc.eirin] = spr_eirin_270;
global.npc_walk_315[npc.eirin] = spr_eirin_315;

global.npc_name[npc.flandre] = "Flandre";
global.npc_icon[npc.flandre] = spr_flandre_icon;
global.npc_mask[npc.flandre] = mask_flandre;
global.npc_dialogue[npc.flandre] = placeholder_dialogue;
global.npc_animate_idle[npc.flandre] = false;
global.npc_walk_000[npc.flandre] = spr_flandre_000;
global.npc_walk_045[npc.flandre] = spr_flandre_045;
global.npc_walk_090[npc.flandre] = spr_flandre_090;
global.npc_walk_135[npc.flandre] = spr_flandre_135;
global.npc_walk_180[npc.flandre] = spr_flandre_180;
global.npc_walk_225[npc.flandre] = spr_flandre_225;
global.npc_walk_270[npc.flandre] = spr_flandre_270;
global.npc_walk_315[npc.flandre] = spr_flandre_315;

global.npc_name[npc.hatate] = "Hatate";
global.npc_icon[npc.hatate] = spr_hatate_icon;
global.npc_mask[npc.hatate] = mask_hatate;
global.npc_dialogue[npc.hatate] = placeholder_dialogue;
global.npc_animate_idle[npc.hatate] = false;
global.npc_walk_000[npc.hatate] = spr_hatate_000;
global.npc_walk_045[npc.hatate] = spr_hatate_045;
global.npc_walk_090[npc.hatate] = spr_hatate_090;
global.npc_walk_135[npc.hatate] = spr_hatate_135;
global.npc_walk_180[npc.hatate] = spr_hatate_180;
global.npc_walk_225[npc.hatate] = spr_hatate_225;
global.npc_walk_270[npc.hatate] = spr_hatate_270;
global.npc_walk_315[npc.hatate] = spr_hatate_315;

global.npc_name[npc.iku] = "Iku";
global.npc_icon[npc.iku] = spr_iku_icon;
global.npc_mask[npc.iku] = mask_iku;
global.npc_dialogue[npc.iku] = placeholder_dialogue;
global.npc_animate_idle[npc.iku] = true;
global.npc_walk_000[npc.iku] = spr_iku_000;
global.npc_walk_045[npc.iku] = spr_iku_045;
global.npc_walk_090[npc.iku] = spr_iku_090;
global.npc_walk_135[npc.iku] = spr_iku_135;
global.npc_walk_180[npc.iku] = spr_iku_180;
global.npc_walk_225[npc.iku] = spr_iku_225;
global.npc_walk_270[npc.iku] = spr_iku_270;
global.npc_walk_315[npc.iku] = spr_iku_315;

global.npc_name[npc.kanako] = "Kanako";
global.npc_icon[npc.kanako] = spr_kanako_icon;
global.npc_mask[npc.kanako] = mask_kanako;
global.npc_dialogue[npc.kanako] = placeholder_dialogue;
global.npc_animate_idle[npc.kanako] = false;
global.npc_walk_000[npc.kanako] = spr_kanako_000;
global.npc_walk_045[npc.kanako] = spr_kanako_045;
global.npc_walk_090[npc.kanako] = spr_kanako_090;
global.npc_walk_135[npc.kanako] = spr_kanako_135;
global.npc_walk_180[npc.kanako] = spr_kanako_180;
global.npc_walk_225[npc.kanako] = spr_kanako_225;
global.npc_walk_270[npc.kanako] = spr_kanako_270;
global.npc_walk_315[npc.kanako] = spr_kanako_315;

global.npc_name[npc.marisa] = "Marisa";
global.npc_icon[npc.marisa] = spr_marisa_icon;
global.npc_mask[npc.marisa] = mask_marisa;
global.npc_dialogue[npc.marisa] = placeholder_dialogue;
global.npc_animate_idle[npc.marisa] = false;
global.npc_walk_000[npc.marisa] = spr_marisa_000;
global.npc_walk_045[npc.marisa] = spr_marisa_045;
global.npc_walk_090[npc.marisa] = spr_marisa_090;
global.npc_walk_135[npc.marisa] = spr_marisa_135;
global.npc_walk_180[npc.marisa] = spr_marisa_180;
global.npc_walk_225[npc.marisa] = spr_marisa_225;
global.npc_walk_270[npc.marisa] = spr_marisa_270;
global.npc_walk_315[npc.marisa] = spr_marisa_315;

global.npc_name[npc.meiling] = "Meiling";
global.npc_icon[npc.meiling] = spr_meiling_icon;
global.npc_mask[npc.meiling] = mask_meiling;
global.npc_dialogue[npc.meiling] = placeholder_dialogue;
global.npc_animate_idle[npc.meiling] = false;
global.npc_walk_000[npc.meiling] = spr_meiling_000;
global.npc_walk_045[npc.meiling] = spr_meiling_045;
global.npc_walk_090[npc.meiling] = spr_meiling_090;
global.npc_walk_135[npc.meiling] = spr_meiling_135;
global.npc_walk_180[npc.meiling] = spr_meiling_180;
global.npc_walk_225[npc.meiling] = spr_meiling_225;
global.npc_walk_270[npc.meiling] = spr_meiling_270;
global.npc_walk_315[npc.meiling] = spr_meiling_315;

global.npc_name[npc.momiji] = "Momiji";
global.npc_icon[npc.momiji] = spr_momiji_icon;
global.npc_mask[npc.momiji] = mask_momiji;
global.npc_dialogue[npc.momiji] = placeholder_dialogue;
global.npc_animate_idle[npc.momiji] = false;
global.npc_walk_000[npc.momiji] = spr_momiji_000;
global.npc_walk_045[npc.momiji] = spr_momiji_045;
global.npc_walk_090[npc.momiji] = spr_momiji_090;
global.npc_walk_135[npc.momiji] = spr_momiji_135;
global.npc_walk_180[npc.momiji] = spr_momiji_180;
global.npc_walk_225[npc.momiji] = spr_momiji_225;
global.npc_walk_270[npc.momiji] = spr_momiji_270;
global.npc_walk_315[npc.momiji] = spr_momiji_315;

global.npc_name[npc.nazrin] = "Nazrin";
global.npc_icon[npc.nazrin] = spr_nazrin_icon;
global.npc_mask[npc.nazrin] = mask_nazrin;
global.npc_dialogue[npc.nazrin] = placeholder_dialogue;
global.npc_animate_idle[npc.nazrin] = false;
global.npc_walk_000[npc.nazrin] = spr_nazrin_000;
global.npc_walk_045[npc.nazrin] = spr_nazrin_045;
global.npc_walk_090[npc.nazrin] = spr_nazrin_090;
global.npc_walk_135[npc.nazrin] = spr_nazrin_135;
global.npc_walk_180[npc.nazrin] = spr_nazrin_180;
global.npc_walk_225[npc.nazrin] = spr_nazrin_225;
global.npc_walk_270[npc.nazrin] = spr_nazrin_270;
global.npc_walk_315[npc.nazrin] = spr_nazrin_315;

global.npc_name[npc.okuu] = "Okuu";
global.npc_icon[npc.okuu] = spr_okuu_icon;
global.npc_mask[npc.okuu] = mask_okuu;
global.npc_dialogue[npc.okuu] = placeholder_dialogue;
global.npc_animate_idle[npc.okuu] = false;
global.npc_walk_000[npc.okuu] = spr_okuu_000;
global.npc_walk_045[npc.okuu] = spr_okuu_045;
global.npc_walk_090[npc.okuu] = spr_okuu_090;
global.npc_walk_135[npc.okuu] = spr_okuu_135;
global.npc_walk_180[npc.okuu] = spr_okuu_180;
global.npc_walk_225[npc.okuu] = spr_okuu_225;
global.npc_walk_270[npc.okuu] = spr_okuu_270;
global.npc_walk_315[npc.okuu] = spr_okuu_315;

global.npc_name[npc.patchy] = "Patchy";
global.npc_icon[npc.patchy] = spr_patchy_icon;
global.npc_mask[npc.patchy] = mask_patchy;
global.npc_dialogue[npc.patchy] = placeholder_dialogue;
global.npc_animate_idle[npc.patchy] = true;
global.npc_walk_000[npc.patchy] = spr_patchy_000;
global.npc_walk_045[npc.patchy] = spr_patchy_045;
global.npc_walk_090[npc.patchy] = spr_patchy_090;
global.npc_walk_135[npc.patchy] = spr_patchy_135;
global.npc_walk_180[npc.patchy] = spr_patchy_180;
global.npc_walk_225[npc.patchy] = spr_patchy_225;
global.npc_walk_270[npc.patchy] = spr_patchy_270;
global.npc_walk_315[npc.patchy] = spr_patchy_315;

global.npc_name[npc.ran] = "Ran";
global.npc_icon[npc.ran] = spr_ran_icon;
global.npc_mask[npc.ran] = mask_ran;
global.npc_dialogue[npc.ran] = placeholder_dialogue;
global.npc_animate_idle[npc.ran] = false;
global.npc_walk_000[npc.ran] = spr_ran_000;
global.npc_walk_045[npc.ran] = spr_ran_045;
global.npc_walk_090[npc.ran] = spr_ran_090;
global.npc_walk_135[npc.ran] = spr_ran_135;
global.npc_walk_180[npc.ran] = spr_ran_180;
global.npc_walk_225[npc.ran] = spr_ran_225;
global.npc_walk_270[npc.ran] = spr_ran_270;
global.npc_walk_315[npc.ran] = spr_ran_315;

global.npc_name[npc.reimu] = "Reimu";
global.npc_icon[npc.reimu] = spr_reimu_icon;
global.npc_mask[npc.reimu] = mask_reimu;
global.npc_dialogue[npc.reimu] = placeholder_dialogue;
global.npc_animate_idle[npc.reimu] = false;
global.npc_walk_000[npc.reimu] = spr_reimu_000;
global.npc_walk_045[npc.reimu] = spr_reimu_045;
global.npc_walk_090[npc.reimu] = spr_reimu_090;
global.npc_walk_135[npc.reimu] = spr_reimu_135;
global.npc_walk_180[npc.reimu] = spr_reimu_180;
global.npc_walk_225[npc.reimu] = spr_reimu_225;
global.npc_walk_270[npc.reimu] = spr_reimu_270;
global.npc_walk_315[npc.reimu] = spr_reimu_315;

global.npc_name[npc.reisen] = "Reisen";
global.npc_icon[npc.reisen] = spr_reisen_icon;
global.npc_mask[npc.reisen] = mask_reisen;
global.npc_dialogue[npc.reisen] = placeholder_dialogue;
global.npc_animate_idle[npc.reisen] = false;
global.npc_walk_000[npc.reisen] = spr_reisen_000;
global.npc_walk_045[npc.reisen] = spr_reisen_045;
global.npc_walk_090[npc.reisen] = spr_reisen_090;
global.npc_walk_135[npc.reisen] = spr_reisen_135;
global.npc_walk_180[npc.reisen] = spr_reisen_180;
global.npc_walk_225[npc.reisen] = spr_reisen_225;
global.npc_walk_270[npc.reisen] = spr_reisen_270;
global.npc_walk_315[npc.reisen] = spr_reisen_315;

global.npc_name[npc.remi] = "Remilia";
global.npc_icon[npc.remi] = spr_remi_icon;
global.npc_mask[npc.remi] = mask_remi;
global.npc_dialogue[npc.remi] = placeholder_dialogue;
global.npc_animate_idle[npc.remi] = false;
global.npc_walk_000[npc.remi] = spr_remi_000;
global.npc_walk_045[npc.remi] = spr_remi_045;
global.npc_walk_090[npc.remi] = spr_remi_090;
global.npc_walk_135[npc.remi] = spr_remi_135;
global.npc_walk_180[npc.remi] = spr_remi_180;
global.npc_walk_225[npc.remi] = spr_remi_225;
global.npc_walk_270[npc.remi] = spr_remi_270;
global.npc_walk_315[npc.remi] = spr_remi_315;

global.npc_name[npc.rumia] = "Rumia";
global.npc_icon[npc.rumia] = spr_rumia_icon;
global.npc_mask[npc.rumia] = mask_rumia;
global.npc_dialogue[npc.rumia] = placeholder_dialogue;
global.npc_animate_idle[npc.rumia] = true;
global.npc_walk_000[npc.rumia] = spr_rumia_000;
global.npc_walk_045[npc.rumia] = spr_rumia_045;
global.npc_walk_090[npc.rumia] = spr_rumia_090;
global.npc_walk_135[npc.rumia] = spr_rumia_135;
global.npc_walk_180[npc.rumia] = spr_rumia_180;
global.npc_walk_225[npc.rumia] = spr_rumia_225;
global.npc_walk_270[npc.rumia] = spr_rumia_270;
global.npc_walk_315[npc.rumia] = spr_rumia_315;

global.npc_name[npc.sakuya] = "Sakuya";
global.npc_icon[npc.sakuya] = spr_sakuya_icon;
global.npc_mask[npc.sakuya] = mask_sakuya;
global.npc_dialogue[npc.sakuya] = placeholder_dialogue;
global.npc_animate_idle[npc.sakuya] = false;
global.npc_walk_000[npc.sakuya] = spr_sakuya_000;
global.npc_walk_045[npc.sakuya] = spr_sakuya_045;
global.npc_walk_090[npc.sakuya] = spr_sakuya_090;
global.npc_walk_135[npc.sakuya] = spr_sakuya_135;
global.npc_walk_180[npc.sakuya] = spr_sakuya_180;
global.npc_walk_225[npc.sakuya] = spr_sakuya_225;
global.npc_walk_270[npc.sakuya] = spr_sakuya_270;
global.npc_walk_315[npc.sakuya] = spr_sakuya_315;

global.npc_name[npc.sanae] = "Sanae";
global.npc_icon[npc.sanae] = spr_sanae_icon;
global.npc_mask[npc.sanae] = mask_sanae;
global.npc_dialogue[npc.sanae] = placeholder_dialogue;
global.npc_animate_idle[npc.sanae] = false;
global.npc_walk_000[npc.sanae] = spr_sanae_000;
global.npc_walk_045[npc.sanae] = spr_sanae_045;
global.npc_walk_090[npc.sanae] = spr_sanae_090;
global.npc_walk_135[npc.sanae] = spr_sanae_135;
global.npc_walk_180[npc.sanae] = spr_sanae_180;
global.npc_walk_225[npc.sanae] = spr_sanae_225;
global.npc_walk_270[npc.sanae] = spr_sanae_270;
global.npc_walk_315[npc.sanae] = spr_sanae_315;

global.npc_name[npc.suika] = "Suika";
global.npc_icon[npc.suika] = spr_suika_icon;
global.npc_mask[npc.suika] = mask_suika;
global.npc_dialogue[npc.suika] = placeholder_dialogue;
global.npc_animate_idle[npc.suika] = false;
global.npc_walk_000[npc.suika] = spr_suika_000;
global.npc_walk_045[npc.suika] = spr_suika_045;
global.npc_walk_090[npc.suika] = spr_suika_090;
global.npc_walk_135[npc.suika] = spr_suika_135;
global.npc_walk_180[npc.suika] = spr_suika_180;
global.npc_walk_225[npc.suika] = spr_suika_225;
global.npc_walk_270[npc.suika] = spr_suika_270;
global.npc_walk_315[npc.suika] = spr_suika_315;

global.npc_name[npc.suwako] = "Suwako";
global.npc_icon[npc.suwako] = spr_suwako_icon;
global.npc_mask[npc.suwako] = mask_suwako;
global.npc_dialogue[npc.suwako] = placeholder_dialogue;
global.npc_animate_idle[npc.suwako] = false;
global.npc_walk_000[npc.suwako] = spr_suwako_000;
global.npc_walk_045[npc.suwako] = spr_suwako_045;
global.npc_walk_090[npc.suwako] = spr_suwako_090;
global.npc_walk_135[npc.suwako] = spr_suwako_135;
global.npc_walk_180[npc.suwako] = spr_suwako_180;
global.npc_walk_225[npc.suwako] = spr_suwako_225;
global.npc_walk_270[npc.suwako] = spr_suwako_270;
global.npc_walk_315[npc.suwako] = spr_suwako_315;

global.npc_name[npc.tewi] = "Tewi";
global.npc_icon[npc.tewi] = spr_tewi_icon;
global.npc_mask[npc.tewi] = mask_tewi;
global.npc_dialogue[npc.tewi] = placeholder_dialogue;
global.npc_animate_idle[npc.tewi] = false;
global.npc_walk_000[npc.tewi] = spr_tewi_000;
global.npc_walk_045[npc.tewi] = spr_tewi_045;
global.npc_walk_090[npc.tewi] = spr_tewi_090;
global.npc_walk_135[npc.tewi] = spr_tewi_135;
global.npc_walk_180[npc.tewi] = spr_tewi_180;
global.npc_walk_225[npc.tewi] = spr_tewi_225;
global.npc_walk_270[npc.tewi] = spr_tewi_270;
global.npc_walk_315[npc.tewi] = spr_tewi_315;

global.npc_name[npc.wriggle] = "Wriggle";
global.npc_icon[npc.wriggle] = spr_wriggle_icon;
global.npc_mask[npc.wriggle] = mask_wriggle;
global.npc_dialogue[npc.wriggle] = placeholder_dialogue;
global.npc_animate_idle[npc.wriggle] = false;
global.npc_walk_000[npc.wriggle] = spr_wriggle_000;
global.npc_walk_045[npc.wriggle] = spr_wriggle_045;
global.npc_walk_090[npc.wriggle] = spr_wriggle_090;
global.npc_walk_135[npc.wriggle] = spr_wriggle_135;
global.npc_walk_180[npc.wriggle] = spr_wriggle_180;
global.npc_walk_225[npc.wriggle] = spr_wriggle_225;
global.npc_walk_270[npc.wriggle] = spr_wriggle_270;
global.npc_walk_315[npc.wriggle] = spr_wriggle_315;

global.npc_name[npc.yamame] = "Yamame";
global.npc_icon[npc.yamame] = spr_yamame_icon;
global.npc_mask[npc.yamame] = mask_yamame;
global.npc_dialogue[npc.yamame] = placeholder_dialogue;
global.npc_animate_idle[npc.yamame] = false;
global.npc_walk_000[npc.yamame] = spr_yamame_000;
global.npc_walk_045[npc.yamame] = spr_yamame_045;
global.npc_walk_090[npc.yamame] = spr_yamame_090;
global.npc_walk_135[npc.yamame] = spr_yamame_135;
global.npc_walk_180[npc.yamame] = spr_yamame_180;
global.npc_walk_225[npc.yamame] = spr_yamame_225;
global.npc_walk_270[npc.yamame] = spr_yamame_270;
global.npc_walk_315[npc.yamame] = spr_yamame_315;

global.npc_name[npc.youmu] = "Youmu";
global.npc_icon[npc.youmu] = spr_youmu_icon;
global.npc_mask[npc.youmu] = mask_youmu;
global.npc_dialogue[npc.youmu] = placeholder_dialogue;
global.npc_animate_idle[npc.youmu] = false;
global.npc_walk_000[npc.youmu] = spr_youmu_000;
global.npc_walk_045[npc.youmu] = spr_youmu_045;
global.npc_walk_090[npc.youmu] = spr_youmu_090;
global.npc_walk_135[npc.youmu] = spr_youmu_135;
global.npc_walk_180[npc.youmu] = spr_youmu_180;
global.npc_walk_225[npc.youmu] = spr_youmu_225;
global.npc_walk_270[npc.youmu] = spr_youmu_270;
global.npc_walk_315[npc.youmu] = spr_youmu_315;

global.npc_name[npc.yukari] = "Yukari";
global.npc_icon[npc.yukari] = spr_yukari_icon;
global.npc_mask[npc.yukari] = mask_yukari;
global.npc_dialogue[npc.yukari] = placeholder_dialogue;
global.npc_animate_idle[npc.yukari] = false;
global.npc_walk_000[npc.yukari] = spr_yukari_000;
global.npc_walk_045[npc.yukari] = spr_yukari_045;
global.npc_walk_090[npc.yukari] = spr_yukari_090;
global.npc_walk_135[npc.yukari] = spr_yukari_135;
global.npc_walk_180[npc.yukari] = spr_yukari_180;
global.npc_walk_225[npc.yukari] = spr_yukari_225;
global.npc_walk_270[npc.yukari] = spr_yukari_270;
global.npc_walk_315[npc.yukari] = spr_yukari_315;

global.npc_name[npc.yuugi] = "Yuugi";
global.npc_icon[npc.yuugi] = spr_yuugi_icon;
global.npc_mask[npc.yuugi] = mask_yuugi;
global.npc_dialogue[npc.yuugi] = placeholder_dialogue;
global.npc_animate_idle[npc.yuugi] = false;
global.npc_walk_000[npc.yuugi] = spr_yuugi_000;
global.npc_walk_045[npc.yuugi] = spr_yuugi_045;
global.npc_walk_090[npc.yuugi] = spr_yuugi_090;
global.npc_walk_135[npc.yuugi] = spr_yuugi_135;
global.npc_walk_180[npc.yuugi] = spr_yuugi_180;
global.npc_walk_225[npc.yuugi] = spr_yuugi_225;
global.npc_walk_270[npc.yuugi] = spr_yuugi_270;
global.npc_walk_315[npc.yuugi] = spr_yuugi_315;

global.npc_name[npc.yuuka] = "Yuuka";
global.npc_icon[npc.yuuka] = spr_yuuka_icon;
global.npc_mask[npc.yuuka] = mask_yuugi;
global.npc_dialogue[npc.yuuka] = placeholder_dialogue;
global.npc_animate_idle[npc.yuuka] = false;
global.npc_walk_000[npc.yuuka] = spr_yuuka_000;
global.npc_walk_045[npc.yuuka] = spr_yuuka_045;
global.npc_walk_090[npc.yuuka] = spr_yuuka_090;
global.npc_walk_135[npc.yuuka] = spr_yuuka_135;
global.npc_walk_180[npc.yuuka] = spr_yuuka_180;
global.npc_walk_225[npc.yuuka] = spr_yuuka_225;
global.npc_walk_270[npc.yuuka] = spr_yuuka_270;
global.npc_walk_315[npc.yuuka] = spr_yuuka_315;

global.npc_name[npc.yuyuko] = "Yuyuko";
global.npc_icon[npc.yuyuko] = spr_yuyuko_icon;
global.npc_mask[npc.yuyuko] = mask_yuyuko;
global.npc_dialogue[npc.yuyuko] = placeholder_dialogue;
global.npc_animate_idle[npc.yuyuko] = true;
global.npc_walk_000[npc.yuyuko] = spr_yuyuko_000;
global.npc_walk_045[npc.yuyuko] = spr_yuyuko_045;
global.npc_walk_090[npc.yuyuko] = spr_yuyuko_090;
global.npc_walk_135[npc.yuyuko] = spr_yuyuko_135;
global.npc_walk_180[npc.yuyuko] = spr_yuyuko_180;
global.npc_walk_225[npc.yuyuko] = spr_yuyuko_225;
global.npc_walk_270[npc.yuyuko] = spr_yuyuko_270;
global.npc_walk_315[npc.yuyuko] = spr_yuyuko_315;

/// NPC fairy data

global.npc_fairy_dialogue = dialogue_json_load("Dialogue/dialogue_fairy.json");

global.npc_fairy_walk_000[0] = spr_fairy_a_000;
global.npc_fairy_walk_045[0] = spr_fairy_a_045;
global.npc_fairy_walk_090[0] = spr_fairy_a_090;
global.npc_fairy_walk_135[0] = spr_fairy_a_135;
global.npc_fairy_walk_180[0] = spr_fairy_a_180;
global.npc_fairy_walk_225[0] = spr_fairy_a_225;
global.npc_fairy_walk_270[0] = spr_fairy_a_270;
global.npc_fairy_walk_315[0] = spr_fairy_a_315;

global.npc_fairy_walk_000[1] = spr_fairy_b_000;
global.npc_fairy_walk_045[1] = spr_fairy_b_045;
global.npc_fairy_walk_090[1] = spr_fairy_b_090;
global.npc_fairy_walk_135[1] = spr_fairy_b_135;
global.npc_fairy_walk_180[1] = spr_fairy_b_180;
global.npc_fairy_walk_225[1] = spr_fairy_b_225;
global.npc_fairy_walk_270[1] = spr_fairy_b_270;
global.npc_fairy_walk_315[1] = spr_fairy_b_315;

global.npc_fairy_walk_000[2] = spr_fairy_c_000;
global.npc_fairy_walk_045[2] = spr_fairy_c_045;
global.npc_fairy_walk_090[2] = spr_fairy_c_090;
global.npc_fairy_walk_135[2] = spr_fairy_c_135;
global.npc_fairy_walk_180[2] = spr_fairy_c_180;
global.npc_fairy_walk_225[2] = spr_fairy_c_225;
global.npc_fairy_walk_270[2] = spr_fairy_c_270;
global.npc_fairy_walk_315[2] = spr_fairy_c_315;

global.npc_fairy_walk_000[3] = spr_fairy_d_000;
global.npc_fairy_walk_045[3] = spr_fairy_d_045;
global.npc_fairy_walk_090[3] = spr_fairy_d_090;
global.npc_fairy_walk_135[3] = spr_fairy_d_135;
global.npc_fairy_walk_180[3] = spr_fairy_d_180;
global.npc_fairy_walk_225[3] = spr_fairy_d_225;
global.npc_fairy_walk_270[3] = spr_fairy_d_270;
global.npc_fairy_walk_315[3] = spr_fairy_d_315;

global.npc_fairy_walk_000[4] = spr_fairy_e_000;
global.npc_fairy_walk_045[4] = spr_fairy_e_045;
global.npc_fairy_walk_090[4] = spr_fairy_e_090;
global.npc_fairy_walk_135[4] = spr_fairy_e_135;
global.npc_fairy_walk_180[4] = spr_fairy_e_180;
global.npc_fairy_walk_225[4] = spr_fairy_e_225;
global.npc_fairy_walk_270[4] = spr_fairy_e_270;
global.npc_fairy_walk_315[4] = spr_fairy_e_315;

/// NPC world data

for (var i = 0; i < global.npc_count; i++)
{
    global.npc_world_home[i] = -1;
    global.npc_world_present[i] = false;
}

/// NPC instance data

for (var i = 0; i < global.npc_count; i++)
{
    global.npc_inst_building[i] = -1;
}
