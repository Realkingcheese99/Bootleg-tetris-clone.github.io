sprite = asset_get_index(string_concat("spr_particle",size));
sprite_index = sprite;
x=spawnX;
y=spawnY;
alarm[0] = lifetime;
spd = random_range(3*maxSpd/4,maxSpd);
angle = random(2*pi);
xVel = spd*cos(angle);
yVel = -spd*sin(angle);

/*variables set on spawn:
size (0-3)
spawnX
spawnY
lifetime
maxSpd
*/