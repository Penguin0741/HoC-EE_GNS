
tag @s remove in_area
tag @s[x=-138,y=83,z=69,r=5] add in_area
tag @s[x=-138,y=83,z=68,r=5] add in_area
tag @s[x=-138,y=83,z=66,r=5] add in_area
tag @s[x=-138,y=83,z=65,r=5] add in_area
tag @s[x=-138,y=83,z=63,r=5] add in_area
tag @s[x=-138,y=83,z=62,r=5] add in_area
execute @s[scores={var1=0},tag=!in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.1"}]}
execute @s[scores={var1=0},tag=!in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.1"}]}

particle rwm:sparkle -138 83 69
particle rwm:sparkle -138 83 68
particle rwm:sparkle -138 83 66
particle rwm:sparkle -138 83 65
particle rwm:sparkle -138 83 63
particle rwm:sparkle -138 83 62

execute @s ~ ~ ~ detect -138 83 69 lever 9 function act/7/3
execute @s ~ ~ ~ detect -138 83 68 lever 1 function act/7/3
execute @s ~ ~ ~ detect -138 83 66 lever 9 function act/7/3
execute @s ~ ~ ~ detect -138 83 65 lever 1 function act/7/3
execute @s ~ ~ ~ detect -138 83 63 lever 9 function act/7/3
execute @s ~ ~ ~ detect -138 83 62 lever 1 function act/7/3

execute @a[x=-112,y=81,z=63,dx=5,dy=5,dz=8] ~ ~ ~ event entity @e[type=rwm:enderman_butler] add_goto

execute @e[type=rwm:enderman_butler,x=-128,y=80,z=73,dx=1,dy=1,dz=1] ~ ~ ~ event entity @e[tag=target] despawn
execute @e[type=rwm:enderman_butler,x=-128,y=80,z=73,dx=1,dy=1,dz=1] ~ ~ ~ tp @s ~ ~-0.3 ~