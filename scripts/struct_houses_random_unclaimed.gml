/// struct_houses_random_unclaimed()

if (struct_houses_count_available() < 1) 
    return -1;

var count = instance_number(obj_struct_house) - 1;
while (true)
{
    var find = instance_find(obj_struct_house, irandom(count));
    if (struct_house_is_unowned(find))
        return find;
}