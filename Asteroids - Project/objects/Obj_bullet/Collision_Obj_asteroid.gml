score += 10;

instance_destroy();

with(other){
	instance_destroy();
	if(sprite_index == Spr_asteroid3)
	{
		repeat(2)
		{
			var new_asteroid = instance_create_layer(x, y, "Instances", Obj_asteroid);
			new_asteroid.sprite_index = Spr_asteroid2;
		}
	}
	else if(sprite_index == Spr_asteroid2)
	{
		repeat(2)
		{
			var new_asteroid = instance_create_layer(x, y, "Instances", Obj_asteroid)
			new_asteroid.sprite_index = Spr_asteroid1;
		}
	}
	
	repeat(10){
		instance_create_layer(x, y, "Instances", Obj_debris);
	}
	
}