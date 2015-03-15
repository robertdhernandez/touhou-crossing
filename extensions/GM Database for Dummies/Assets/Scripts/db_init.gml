///db_init([debug_messages])
globalvar DB_MAP, DB_DEBUG_MODE;
DB_MAP = ds_map_create();

if argument_count and argument[0]{
    DB_DEBUG_MODE = true;
}
else DB_DEBUG_MODE = false;