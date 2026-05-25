image_angle = point_direction(x,y,mouse_x,mouse_y);
rad = image_angle *pi/180
bulletSpd = 10;
xVel = bulletSpd*cos(rad);
yVel = -bulletSpd*sin(rad);
x=xpos;
y=ypos;