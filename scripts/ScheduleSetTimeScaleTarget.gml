/// ScheduleSetTimeScaleTarget(target,scale)

var _schedules = SharedScheduler().schedules;  
var _index = -1;

repeat(ds_list_size(_schedules))
{
    // Cache schedule
    var _schedule = _schedules[| ++_index];
    
    // IF schedule belongs to target
    if (_schedule[SGMS_SCHEDULE.TARGET] == argument0)
    {
        ScheduleSetTimeScale(_schedule[SGMS_SCHEDULE.ID], argument1);
    }
}