var randomangle = random(360);
var o;

o = instance_create(x, y, obj_debris);
o.angle = 30 + randomangle;
o.image_yscale = (image_yscale/2);
o = instance_create(x, y, obj_debris);
o.angle = 330 + randomangle;
o.image_yscale = (image_yscale/2);
o = instance_create(x, y, obj_debris);
o.angle = 120 + randomangle;
o = instance_create(x, y, obj_debris);
o.angle = 240 + randomangle;

with obj_debris
{
    direction = angle;
    image_angle = angle;
    speed = 3;
}

audio_play_sound(snd_die, 10,0);
if (global.life > 0)
{
    global.life -= 1;
    instance_create(room_width/2, room_height/2, obj_ship);
}
else
{
    instance_create(0, 0, obj_gameover);
}

instance_destroy();
