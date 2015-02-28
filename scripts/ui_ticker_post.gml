/// ui_ticker_post(str [, str2, ..., str15])

with (obj_ui_ticker)
{
    show = true;
    for (var i = 0; i < argument_count; i++)
        ds_queue_enqueue(queue, argument[i]);
}