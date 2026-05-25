sprite = asset_get_index(string_concat("spr_ast",size));
//object_set_sprite(obj_ast, sprite);
sprite_index = sprite;
range = 10;
spin = random_range(-range/2,range/2)
splitRange = 60-30*size;
spd = 2 + size*1.5 + random_range(-1,1);
xVel = spd*cos(angle);
yVel = spd*sin(angle);
offScreen = true;
timer = 0;