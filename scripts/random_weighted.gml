/// random_weighted(v1, v2 [, v3, ..., v15])

var sum = 0;
for (var i = 0; i < argument_count; i++)
    sum += argument[i];
    
var rand = random(sum);

for (var i = 0; i < argument_count; i++)
{
    if (rand < argument[i])
        return i;
    
    rand -= argument[i];
}
