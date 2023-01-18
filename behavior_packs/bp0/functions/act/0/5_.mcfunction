
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.5"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.0.5"}]}

execute @s[scores={second=0}] ~ ~ ~ particle rwm:interact -12.5 68.5 -210.5

execute @s[scores={var1=1}] ~ ~ ~ dialogue open @e[type=rwm:host,c=1] @s npc.tuthost.1
scoreboard players remove @s[scores={var1=1..}] var1 1