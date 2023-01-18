## Runs when the player is looking FOR a particle (on a loop)
execute @s[scores={var1=0},tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.1"}]}
execute @s[scores={var1=0},tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.0.1"}]}

execute @s[scores={var1=1},tag=!dlgopened,tag=!touch] ~ ~ ~ dialogue open @e[tag=tutskip] @s npc.keyboard.tutskip.1
execute @s[scores={var1=1},tag=!dlgopened,tag=touch] ~ ~ ~ dialogue open @e[tag=tutskip] @s npc.touch.tutskip.1
scoreboard players remove @s[scores={var1=2..}] var1 1

# Particles
execute @s[scores={lookcount=0,var1=0}] ~ ~ ~ particle rwm:target_looking -12 70 -258
execute @s[scores={lookcount=1,var1=0}] ~ ~ ~ particle rwm:target_looking -15 69.5 -259
execute @s[scores={lookcount=2,var1=0}] ~ ~ ~ particle rwm:target_looking -16 68.5 -262
execute @s[scores={lookcount=3,var1=0}] ~ ~ ~ particle rwm:target_looking -14 68.5 -265
execute @s[scores={lookcount=4,var1=0}] ~ ~ ~ particle rwm:target_looking -10 68.5 -265
execute @s[scores={lookcount=5,var1=0}] ~ ~ ~ particle rwm:target_looking -8 68.5 -262
execute @s[scores={lookcount=6,var1=0}] ~ ~ ~ particle rwm:target_looking -9 69.5 -259
execute @s[scores={lookcount=7,var1=0}] ~ ~ ~ particle rwm:target_looking -12 71.5 -258
execute @s[scores={lookcount=8,var1=0}] ~ ~ ~ particle rwm:target_looking -12 68.5 -258

# Target found?
execute @s[scores={lookcount=0,var1=0}] ~ ~ ~ execute @a[rxm=-30,rx=-5,rym=-15,ry=15] ~ ~ ~ function act/0/1_found
execute @s[scores={lookcount=1,var1=0}] ~ ~ ~ execute @a[rxm=-20,rx=0,rym=38,ry=60] ~ ~ ~ function act/0/1_found
execute @s[scores={lookcount=2,var1=0}] ~ ~ ~ execute @a[rxm=-7,rx=11,rym=80,ry=105] ~ ~ ~ function act/0/1_found
execute @s[scores={lookcount=3,var1=0}] ~ ~ ~ execute @a[rxm=-10,rx=15,rym=135,ry=160] ~ ~ ~ function act/0/1_found
execute @s[scores={lookcount=4,var1=0}] ~ ~ ~ execute @a[rxm=-10,rx=15,rym=-160,ry=-135] ~ ~ ~ function act/0/1_found
execute @s[scores={lookcount=5,var1=0}] ~ ~ ~ execute @a[rxm=-7,rx=11,rym=-105,ry=-80] ~ ~ ~ function act/0/1_found
execute @s[scores={lookcount=6,var1=0}] ~ ~ ~ execute @a[rxm=-20,rx=0,rym=-60,ry=-30] ~ ~ ~ function act/0/1_found
execute @s[scores={lookcount=7,var1=0}] ~ ~ ~ execute @a[rxm=-50,rx=-25,rym=-15,ry=15] ~ ~ ~ function act/0/1_found
execute @s[scores={lookcount=8,var1=0}] ~ ~ ~ execute @a[rxm=-10,rx=15,rym=-15,ry=15] ~ ~ ~ function act/0/1_found

