switch(room){
	case rm_game:
	draw_text(20, 20, "SCORE: " + string(score))
	draw_text(20, 40, "LIVES: " + string(lives))
	break
	
	case rm_start:
	draw_set_halign(fa_center)
	draw_text_transformed_color(
		room_width/2,
		100,
		"ASTEROIDS",
		3, 3, 0,
		c_yellow, c_yellow, c_yellow, c_yellow,
		1
	)
	
	draw_text(
		room_width/2, 200,
		@"Score 1,000 points to win!

		UP: Move
		LEFT/RIGHT: Change Direction
		SPACE: Shoot
		
		>> PRESS ENTER TO START <<"
	)
	draw_set_halign(fa_left)
	break
	
	case rm_gameover:
	draw_set_halign(fa_center)
	draw_text_transformed_color(
	room_width/2,
	150,
	"GAME OVER",
	3, 3, 0,
	c_red, c_red, c_red, c_red,
	1
	)
	
	draw_text(
		room_width/2, 250,
		"FINAL SCORE: " + string(score)
	)
	draw_text(
		room_width/2, 300,
		">> PRESS ENTER TO RESTART <<"
	)
	draw_set_halign(fa_left)
	break
	
	case rm_win:
	draw_set_halign(fa_center)
	draw_text_transformed_color(
	room_width/2,
	200,
	"YOU WON!",
	3, 3, 0,
	c_green, c_green, c_green, c_green,
	1
	)
	
	draw_text(
		room_width/2, 300,
		">> PRESS ENTER TO RESTART <<"
	)
	draw_set_halign(fa_left)
	break
}

draw_set_font(Fnt_text)