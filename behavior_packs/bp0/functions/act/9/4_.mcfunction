
tag @s remove in_area
tag @s[x=-124,y=77,z=122,r=5] add in_area
execute @s[scores={var1=0},tag=!in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.look.1"}]}
execute @s[scores={var1=0},tag=!in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.0"}]}
execute @s[scores={var1=0},tag=in_area,tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.look.1"}]}

particle rwm:sparkle -124 77 122
execute @s[scores={var1=0,second=0},tag=in_area] ~ ~ ~ particle rwm:interact -124 77 121

execute @s ~ ~ ~ detect -124 77 122 stone_button 9 function act/9/5