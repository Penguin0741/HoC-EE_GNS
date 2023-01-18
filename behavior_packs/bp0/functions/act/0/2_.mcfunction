## Runs when a player is looking AT a particle (on a loop)
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.2"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.0.2"}]}

# Particles
execute @s[scores={lookcount=0}] ~ ~ ~ particle rwm:target_found -12 70 -258
execute @s[scores={lookcount=1}] ~ ~ ~ particle rwm:target_found -15 69.5 -259
execute @s[scores={lookcount=2}] ~ ~ ~ particle rwm:target_found -16 68.5 -262
execute @s[scores={lookcount=3}] ~ ~ ~ particle rwm:target_found -14 68.5 -265
execute @s[scores={lookcount=4}] ~ ~ ~ particle rwm:target_found -10 68.5 -265
execute @s[scores={lookcount=5}] ~ ~ ~ particle rwm:target_found -8 68.5 -262
execute @s[scores={lookcount=6}] ~ ~ ~ particle rwm:target_found -9 69.5 -259
execute @s[scores={lookcount=7}] ~ ~ ~ particle rwm:target_found -12 71.5 -258
execute @s[scores={lookcount=8}] ~ ~ ~ particle rwm:target_found -12 68.5 -258

# Increase timer
scoreboard players add @s timer 1

# Target lost?
tag @s add invert

execute @s[scores={lookcount=0}] ~ ~ ~ execute @a[rxm=-30,rx=-5,rym=-15,ry=15] ~ ~ ~ tag @s remove invert
execute @s[scores={lookcount=1}] ~ ~ ~ execute @a[rxm=-20,rx=0,rym=38,ry=60] ~ ~ ~ tag @s remove invert
execute @s[scores={lookcount=2}] ~ ~ ~ execute @a[rxm=-7,rx=11,rym=80,ry=105] ~ ~ ~ tag @s remove invert
execute @s[scores={lookcount=3}] ~ ~ ~ execute @a[rxm=-10,rx=15,rym=135,ry=160] ~ ~ ~ tag @s remove invert
execute @s[scores={lookcount=4}] ~ ~ ~ execute @a[rxm=-10,rx=15,rym=-160,ry=-135] ~ ~ ~ tag @s remove invert
execute @s[scores={lookcount=5}] ~ ~ ~ execute @a[rxm=-7,rx=11,rym=-105,ry=-80] ~ ~ ~ tag @s remove invert
execute @s[scores={lookcount=6}] ~ ~ ~ execute @a[rxm=-20,rx=0,rym=-60,ry=-30] ~ ~ ~ tag @s remove invert
execute @s[scores={lookcount=7}] ~ ~ ~ execute @a[rxm=-50,rx=-25,rym=-15,ry=15] ~ ~ ~ tag @s remove invert
execute @s[scores={lookcount=8}] ~ ~ ~ execute @a[rxm=-10,rx=15,rym=-15,ry=15] ~ ~ ~ tag @s remove invert

execute @s[tag=invert] ~ ~ ~ function act/0/2_lost
tag @s remove invert

# Done looking?
execute @s[scores={timer=20..}] ~ ~ ~ function act/0/2_next