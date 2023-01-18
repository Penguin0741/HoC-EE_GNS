
execute @s[tag=!touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.4"}]}
execute @s[tag=touch] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.0.4"}]}

execute @s[tag=!dlgopened,tag=!touch,scores={var1=1}] ~ ~ ~ dialogue open @e[type=npc,tag=tuthelp] @s npc.keyboard.tuthelp.1
execute @s[tag=!dlgopened,tag=touch] ~ ~ ~ scoreboard players set @s var1 0

# Advance once the button has been pressed
execute @s[scores={var1=0}] ~ ~ ~ detect -12 68 -213 polished_blackstone_button 9 function act/0/5

# Highlight the button with a bunch of particles
execute @s[scores={var1=0}] ~ ~ ~ particle rwm:sparkle -12 68 -213
execute @s[scores={second=0,var1=0}] ~ ~ ~ particle rwm:interact -12 68 -214

execute @s[scores={second=0,var1=0}] ~ ~ ~ particle rwm:guide -12 67 -219
execute @s[scores={second=0,var1=0}] ~ ~ ~ particle rwm:guide -12 67 -218
execute @s[scores={second=0,var1=0}] ~ ~ ~ particle rwm:guide -12 67 -217
execute @s[scores={second=0,var1=0}] ~ ~ ~ particle rwm:guide -12 67 -216
execute @s[scores={second=0,var1=0}] ~ ~ ~ particle rwm:guide -12 67 -215
execute @s[scores={second=0,var1=0}] ~ ~ ~ particle rwm:guide -12 67 -214

scoreboard players remove @s[scores={var1=2..}] var1 1