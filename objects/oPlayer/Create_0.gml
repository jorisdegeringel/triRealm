hsp = 0;
vsp = 0;
accel = 0.7;
max_hsp = 6;
decel = 0.9;

state_on_floor = true;
jumpspeed = -18;
jumpbuffer = 10;
my_gravity = 1.2;
max_vsp = 6;

blocked = false;

coins = 0;

randomize();
dialog = 
[
    ["OMG, yes!", "Dopamine spike", "Meaning to live"],
    ["Another! This must be fate", "I deserve this", "The coins speak to me"],
    ["More, more, more", "This is addicting", "I can do this forever"],
	["Should I tell anyone?", "Wonder if this changes me somehow.", "$$$"]
]

array_shuffle_ext(dialog[0]);
array_shuffle_ext(dialog[1]);
array_shuffle_ext(dialog[2]);
array_shuffle_ext(dialog[3]);