x=x+bulletSpd*cos(degtorad(image_angle));
y=y-bulletSpd*sin(degtorad(image_angle));
if(((y<-100 || y>room_height+100) || (x<-100 || x>room_width+100))) {
	instance_destroy();
}
