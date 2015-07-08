#define vec2
/// vec2(x, y)
/// Creates a vector

var vec;
vec[1] = argument1;
vec[0] = argument0;

return vec;

#define vec2_add
/// vec2_add(vec1, vec2)
/// Adds two vectors

return vec2(argument0[0] + argument1[0], argument0[1] + argument1[1]);

#define vec2_sub
/// vec2_sub(vec1, vec2)
/// Subtracts two vectors

return vec2_add(argument0, vec2_neg(argument1));

#define vec2_mul
/// vec2_mul(vec, val)
/// Multiplies a vector by a scalar value

return vec2(argument0[0] * argument1, argument0[1] * argument1);

#define vec2_div
/// vec2_div(vec, val)
/// Divides a vector by a scalar value

return vec2(argument0[0] / argument1, argument0[1] / argument1);

#define vec2_neg
/// vec2_neg(vec)
/// Negates a vector

return vec2(-argument0[0], -argument0[1]);

#define vec2_eq
/// vec2_eq(vec1, vec2)
/// Checks if two vectors are equal

return argument0[0] == argument1[0] and argument0[1] == argument1[1];

#define vec2_neq
/// vec2_neq(vec1, vec2)
/// Checks if two vectors are NOT equal

return not vec2_eq(argument0, argument1);

#define vec2_mag
/// vec2_mag(vec)
/// Magnitude of a vector

return sqrt(sqr(argument0[0]) + sqr(argument0[1]));

#define vec2_magsqr
/// vec2_magsqr(vec)
/// Magnitude of a vector, squared

return sqr(argument0[0]) + sqr(argument0[1]);

#define vec2_clamp
/// vec2_clamp(vec, min, max)
/// Clamps a vector

var mag = vec2_mag(argument0);
var tar = clamp(mag, argument1, argument2);

if (tar == mag)
    return argument0;

return vec2_mul(vec2_norm(argument0), tar);

#define vec2_dot
/// vec2_dot(vec1, vec2)
/// Dot product of two vectors

return argument0[0] * argument1[0] + argument0[1] * argument1[1];

#define vec2_norm
/// vec2_norm(vec)
/// Normalizes a vector

var mag = vec2_mag(argument0);
return vec2(argument0[0] / mag, argument0[1] / mag);

#define vec2_string
/// vec2_string(vec)

return "(" + string(argument0[0]) + "," + string(argument0[1]) + ")";
