
execute @s[tag=!touch,scores={var1=0}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.keyboard.0.-1"}]}
execute @s[tag=touch,scores={var1=0}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.touch.0.-1"}]}

execute @s[scores={second=0,var1=0}] ~ ~ ~ particle rwm:interact -13 56.5 -324

execute @s[scores={var1=160}] ~ ~ ~ event entity @e[type=rwm:start] despawn
execute @s[scores={var1=160}] ~ ~ ~ fill -11 56 -323 -13 57 -323 barrier
execute @s[scores={var1=160}] ~ ~ ~ effect @s blindness 7 0 true
execute @s[scores={var1=160}] ~ ~ ~ effect @s invisibility 1000000 0 true
execute @s[scores={var1=160}] ~ ~ ~ titleraw @s times 20 60 20
execute @s[scores={var1=160}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.blank","with": ["\n"]}]}
execute @s[scores={var1=160}] ~ ~ ~ titleraw @s subtitle {"rawtext":[{"translate":"title.intro.1","with": ["\n"]}]}
execute @s[scores={var1=60}] ~ ~ ~ titleraw @s title {"rawtext":[{"translate":"title.intro.2","with": ["\n"]}]}

execute @s[scores={var1=60}] ~ ~ ~ function act/0/0
execute @s[scores={var1=1..}] ~ ~ ~ scoreboard players remove @s var1 1