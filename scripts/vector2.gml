#define vector2
/// vector2(x, y)
/// Creates a vector

var vec;
vec[1] = argument1;
vec[0] = argument0;

return vec;

#define vector2_add
/// vector2_add(vec1, vec2)
/// Adds two vectors

return vector2(argument0[0] + argument1[0], argument0[1] + argument1[1]);

#define vector2_sub
/// vector2_sub(vec1, vec2)
/// Subtracts two vectors

return vector2_add(argument0, vector2_neg(argument1));

#define vector2_neg
/// vector2_neg(vec)
/// Negates a vector

return vector2(-argument0[0], -argument0[1]);

#define vector2_eq
/// vector2_eq(vec1, vec2)
/// Checks if two vectors are equal

return argument0[0] == argument1[0] and argument0[1] == argument1[1];

#define vector2_mag
/// vector2_mag(vec)
/// Magnitude of a vector

return sqrt(sqr(argument0[0]) + sqr(argument0[1]));

#define vector2_norm
/// vector2_norm(vec)
/// Normalizes a vector

var mag = vector2_mag(argument0);
return vector2(argument0[0] / mag, argument0[1] / mag);

#define vector2_dot
/// vector2_dot(vec1, vec2)
/// Dot product of two vectors

return argument0[0] * argument1[0] + argument0[1] * argument1[1];
