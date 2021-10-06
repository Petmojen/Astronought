if(instance_place(x+15,y,all))
{
	dropChance = round(random_range(0,global.playerHealthPoints))
	if(dropChance <= 4)
	{
		with(instance_create_depth(x,y,10,pickUp)){
		speed -= 2;
		}
	}
}