if(instance_place(x+15,y,oLittleBoy))
{
	dropChance = round(random_range(0,global.playerHealthPoints))
	if(dropChance <= 5)
	{
		with(instance_create_depth(x,y,10,pickUp)){
		speed -= 2;
		}
	}
}