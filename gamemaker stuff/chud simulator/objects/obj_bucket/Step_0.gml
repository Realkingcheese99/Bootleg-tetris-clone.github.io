//x = global.playerData[0] + (global.playerData[2]/2) + (3*global.playerData[2]*global.playerData[3]/4) - (global.playerData[2]/4) + global.playerData[3]*10;
x = global.playerData[0] + (global.playerData[2]/2) + (sprite_width+10)*global.playerData[3];
y = global.playerData[1];
global.water = clamp(global.water, 0, global.maxWater);