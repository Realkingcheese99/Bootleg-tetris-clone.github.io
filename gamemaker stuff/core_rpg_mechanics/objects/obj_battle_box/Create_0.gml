size = 300;
slices = 6;
moving = false;
steps = 12;
nextturn = false
//creating 2d battle box array
/*
KEY:
0: empty
1: P1
2: P2
3: P3
4: enemy id 1
5: enemy id 2
6: enemy id 3
*/
grid = array_create(slices);
for(var i = 0; i < slices; i++) {
	grid[i] = array_create(slices, -1);
}

entities = array_create(power(slices,2));
for(var i = 0; i <power(slices,2); i++) {
	entities[i] = array_create(4, -1)
}




/*
prevpos = array_create(3);
for(var i = 0; i < 3; i++) {
	prevpos[i] = array_create(2*array_length(xpos),0);
}
*/
//party
spawn_at(3,5,10,entityTypes.pm1);
spawn_at(5,5,10,entityTypes.miserabulb);
spawn_at(5,3,10,entityTypes.miserabulb);
//enemies
spawn_at(0,2,10,entityTypes.miserabulb);
spawn_at(0,0,10,entityTypes.miserabulb);
spawn_at(2,0,10,entityTypes.miserabulb);