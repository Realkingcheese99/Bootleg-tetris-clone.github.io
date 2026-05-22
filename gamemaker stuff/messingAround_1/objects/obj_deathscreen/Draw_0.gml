timer++;
draw_self();
draw_set_font(fnt_title);

//you died
draw_text_transformed_color(dieX,dieY+range*sin(timer/100),"you died lmao",0.9,0.9,cos(timer/100)*range/3,#000000,#000000,#000000,#000000,255);
draw_text_transformed_color(dieX,dieY+range*sin(timer/100),"you died lmao",0.925,0.925,cos(timer/100)*range/3,#404040,#404040,#404040,#404040,255);
draw_text_transformed_color(dieX,dieY+range*sin(timer/100),"you died lmao",0.95,0.95,cos(timer/100)*range/3,#808080,#808080,#808080,#808080,255);
draw_text_transformed_color(dieX,dieY+range*sin(timer/100),"you died lmao",0.975,0.975,cos(timer/100)*range/3,#C0C0C0,#C0C0C0,#C0C0C0,#C0C0C0,255);
draw_text_transformed(dieX,dieY+range*sin(timer/100),"you died lmao",1,1,cos(timer/100)*range/3);
//retry
draw_set_font(fnt_title);
draw_text_transformed_color(retryX,retryY+range*sin(timer/100)/2,"retry",0.9,0.9,cos(timer/100)*range/3,#000000,#000000,#000000,#000000,255);
draw_text_transformed_color(retryX,retryY+range*sin(timer/100)/2,"retry",0.925,0.925,cos(timer/100)*range/3,#404040,#404040,#404040,#404040,255);
draw_text_transformed_color(retryX,retryY+range*sin(timer/100)/2,"retry",0.95,0.95,cos(timer/100)*range/3,#808080,#808080,#808080,#808080,255);
draw_text_transformed_color(retryX,retryY+range*sin(timer/100)/2,"retry",0.975,0.975,cos(timer/100)*range/3,#C0C0C0,#C0C0C0,#C0C0C0,#C0C0C0,255);
draw_text_transformed(retryX,retryY+range*sin(timer/100)/2,"retry",1,1,cos(timer/100)*range/3);
