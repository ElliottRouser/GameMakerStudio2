//code that runs every frame
						
//keyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//Horizontal Movement
xDirection = right - left;
xVector = xSpeed * xDirection;

//check to see if there is a wall, and if there is stop movement, if there isnt continue movement

if place_meeting(x + xVector, y,Object4)
   {
		//check one pixel to the left or right of us until we collide with oWall
        // ! means "not"
		while (!place_meeting(x + xVector, y,Object4))
			{
			//only move 1 pixel at a time until you hit oWall
			 x = x + xDirection;
			}
			xVector = 0;
   }
//oterwise move normal
x = x + xVector

//Vertical Movement
yVector = yVector + grv;

if (place_meeting(x, y + sign(yVector), Object4))
   {
		//check one pixel to the up or down of us until we collide with Object4
        // ! means "not"
		//"sign" is going to return the positive or negative sign for a value (-1. +1)
		//sign(yVector) if yVector is positive it will return a positive 1, and if our yVector is negative, it will return a -1
		while(!place_meeting(x, y + sign(yVector), Object4))
			{
			//only move 1 pixel at a time until you hit object4
			 y = y + sign(yVector);
			}
			yVector = 0;
   }
//oterwise move normal
y = y + yVector;

//if we are touching the ground or touching object4 and we press the jump key, fly like an eagle
if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector = jumpForce;
}

